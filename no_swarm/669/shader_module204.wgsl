struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28>;

var<private> global1: vec2<bool>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<bool> {
    global0 = array<vec4<bool>, 28>();
    let var_0 = Struct_1(arg_1.e.a, arg_0);
    let var_1 = ~u_input.b;
    global1 = vec2<bool>(all(global0[_wgslsmith_index_u32(~max(~u_input.b, 40644u), 28u)]), false);
    var var_2 = true;
    return vec2<bool>(var_0.a.x, (u_input.d.x == ~_wgslsmith_mult_u32(53003u, u_input.d.x)) && !((-2147483647i << (0u % 32u)) <= var_0.b.x));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<bool>, 28>();
    global1 = !(!(!vec2<bool>(global1.x != global1.x, true)));
    let var_0 = Struct_1(select(select(vec2<bool>(false, true), func_3(~vec4<i32>(u_input.a.x, -1i, -12687i, u_input.a.x), Struct_2(u_input.a.x, vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), u_input.a.x, Struct_1(vec2<bool>(global1.x, false), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 26054i)), Struct_1(vec2<bool>(false, global1.x), vec4<i32>(-12379i, u_input.a.x, u_input.a.x, 1i)))), !all(vec2<bool>(global1.x, global1.x))), func_3((vec4<i32>(u_input.a.x, 1516i, u_input.a.x, u_input.a.x) & vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)) >> (~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.d.x) % vec4<u32>(32u)), Struct_2(-18807i, vec4<i32>(u_input.a.x, -29174i, u_input.a.x, u_input.a.x), u_input.a.x, Struct_1(vec2<bool>(global1.x, global1.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(vec2<bool>(false, false), vec4<i32>(-32712i, u_input.a.x, -53011i, u_input.a.x)))), true), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(1i, u_input.a.x), 1216i, ~0i, 1i), vec4<i32>(-20601i, -u_input.a.x, u_input.a.x, ~u_input.a.x)) >> (~firstTrailingBit(firstLeadingBit(vec4<u32>(29134u, u_input.d.x, u_input.b, u_input.d.x))) % vec4<u32>(32u)));
    var var_1 = vec3<bool>(!select(global1.x, global1.x, all(vec2<bool>(false, var_0.a.x))) | (select(false, true, false) & all(vec4<bool>(true, false, var_0.a.x, true))), all(!var_0.a), false);
    global1 = var_1.zy;
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(43007u, _wgslsmith_dot_vec3_u32(vec3<u32>(38552u, u_input.c.x, u_input.d.x) & vec3<u32>(u_input.b, 0u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(20761u, u_input.d.x, 26509u), u_input.d.xww)), countOneBits(9262u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(u_input.d.x, u_input.c.x)), ~2328u)), firstLeadingBit(~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 57254u, 11078u, u_input.c.x), u_input.d))));
    let var_1 = ~arg_2.b;
    let var_2 = select(!(!vec3<bool>(0i != u_input.a.x, true, true)), !vec3<bool>(!arg_1.x, false, (var_0.x == 4294967295u) || true), false);
    let var_3 = vec4<u32>(~41046u, var_0.x, 56405u, var_0.x);
    let var_4 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(14984i, -42530i, -1i)), _wgslsmith_clamp_vec3_i32(arg_2.b.xyw, arg_0.b.zww, vec3<i32>(arg_2.b.x, u_input.a.x, arg_2.b.x)) & arg_0.b.zwz) & -u_input.a, reverseBits(var_1.wxw));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = ~firstTrailingBit(-arg_0.b);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(691f, -310f))))), 817f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), var_1.x, _wgslsmith_f_op_f32(-var_1.x)))));
    global0 = array<vec4<bool>, 28>();
    global1 = vec2<bool>(global1.x, !((arg_0.a.x & false) != !func_1(Struct_1(arg_0.a, vec4<i32>(arg_0.b.x, u_input.a.x, arg_0.b.x, var_0.x)), vec2<bool>(false, arg_0.a.x), arg_0).a.x));
    return vec4<i32>(u_input.a.x, -41567i ^ var_0.x, reverseBits(firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, max(var_0.x, -1i), var_0.x | 19352i))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(true, u_input.d.x > _wgslsmith_dot_vec4_u32(select(u_input.d, vec4<u32>(1u, u_input.d.x, u_input.c.x, 4294967295u) << (vec4<u32>(u_input.d.x, 37405u, 63973u, 1u) % vec4<u32>(32u)), true), vec4<u32>(4294967295u, ~u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.b, u_input.b, u_input.d.x, 0u)), _wgslsmith_sub_u32(u_input.d.x, u_input.b))));
    let var_0 = vec4<bool>(any(!select(global0[_wgslsmith_index_u32(90138u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)])) != false, true, false, any(!vec4<bool>(false, !global1.x, global1.x, true)));
    let var_1 = Struct_2(2147483647i, _wgslsmith_sub_vec4_i32(-func_4(func_1(Struct_1(vec2<bool>(false, var_0.x), vec4<i32>(u_input.a.x, u_input.a.x, 681i, -25050i)), vec2<bool>(false, global1.x), Struct_1(vec2<bool>(var_0.x, true), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 10493i))), ~u_input.d.yy), abs(vec4<i32>(countOneBits(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(11488i, u_input.a.x), 36523i))), _wgslsmith_div_i32(~u_input.a.x, firstTrailingBit(func_1(func_1(Struct_1(vec2<bool>(global1.x, false), vec4<i32>(u_input.a.x, 1i, u_input.a.x, -8032i)), vec2<bool>(true, var_0.x), Struct_1(vec2<bool>(global1.x, false), vec4<i32>(u_input.a.x, 1i, -22618i, u_input.a.x))), func_2().a, Struct_1(vec2<bool>(global1.x, var_0.x), vec4<i32>(u_input.a.x, -1i, 6558i, u_input.a.x))).b.x)), func_1(Struct_1(vec2<bool>(!global1.x, global1.x), max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(1i, 0i, u_input.a.x, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(11041i, u_input.a.x, -24539i, 2741i), vec4<i32>(18330i, u_input.a.x, -20469i, u_input.a.x)))), vec2<bool>(global1.x, func_1(Struct_1(var_0.zw, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), func_2().a, Struct_1(vec2<bool>(false, global1.x), vec4<i32>(u_input.a.x, -43982i, -2147483647i, 1i))).a.x), func_1(Struct_1(var_0.xw, abs(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), select(var_0.xy, var_0.zx, var_0.x), func_1(func_2(), select(var_0.xx, vec2<bool>(false, var_0.x), var_0.x), Struct_1(vec2<bool>(true, var_0.x), vec4<i32>(u_input.a.x, u_input.a.x, -20729i, u_input.a.x))))), Struct_1(func_2().a, -(~func_4(Struct_1(var_0.zx, vec4<i32>(3621i, u_input.a.x, -19616i, u_input.a.x)), vec2<u32>(4294967295u, 11373u)))));
    global1 = vec2<bool>(all(select(vec3<bool>(true, any(var_1.e.a), all(global0[_wgslsmith_index_u32(0u, 28u)])), vec3<bool>(all(var_0), all(vec2<bool>(false, var_1.e.a.x)), true), var_1.e.a.x)), !any(select(var_0.xy, vec2<bool>(true, false), var_0.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(243f, 970f, 147f) - vec3<f32>(1364f, -578f, 139f)))))), vec3<f32>(1f, 1f, 1f)));
    var var_3 = _wgslsmith_mult_u32(firstLeadingBit(~abs(_wgslsmith_mult_u32(u_input.d.x, 23879u))), select(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.d.x, u_input.b), firstLeadingBit(u_input.c)), 79390u), ~(~u_input.d.x), var_1.d.a.x));
    let var_4 = true;
    let var_5 = -func_4(func_2(), vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.d.x), 4294967295u)).x | u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, -283f, u_input.b, _wgslsmith_div_f32(_wgslsmith_div_f32(-1496f, -532f), _wgslsmith_f_op_f32(sign(-1296f))), u_input.d.x);
}

