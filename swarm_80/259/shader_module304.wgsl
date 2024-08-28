struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 9>;

var<private> global2: array<Struct_3, 3>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    var var_0 = vec4<i32>(5434i & abs(u_input.a), -2147483647i, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, abs(26685u)), 9u)], _wgslsmith_div_vec2_i32(-global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(reverseBits(46221u), 9u)])) << (0u % 32u), -(24229i >> (_wgslsmith_mod_u32(1u, abs(14218u)) % 32u)));
    global1 = array<vec2<i32>, 9>();
    var var_1 = ~(-1i);
    return 1f;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    var var_0 = ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_3, 0u, 1u) | vec4<u32>(42807u, arg_3, arg_3, arg_3), vec4<u32>(arg_3, 16489u, arg_3, 23133u) ^ vec4<u32>(arg_3, 32162u, 27001u, arg_3)) ^ countOneBits(~vec4<u32>(40710u, 4294967295u, 1u, 47844u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(arg_3, 0u, 20483u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_3, arg_3, 0u, 0u), vec4<u32>(1u, arg_3, arg_3, 51829u)), select(arg_1.c, arg_1.c, arg_1.c)), ~(~vec4<u32>(arg_3, arg_3, arg_3, 58028u))));
    global0 = arg_3 << (4294967295u % 32u);
    let var_1 = _wgslsmith_mod_vec4_i32(abs(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(68508i, u_input.b, -1i, 0i), vec4<i32>(u_input.b, -1i, 12736i, u_input.b), vec4<i32>(u_input.b, -2147483647i, -21287i, u_input.a)))), vec4<i32>(-reverseBits(u_input.a), 7602i, _wgslsmith_mult_i32(abs(u_input.a), u_input.b & -26827i), _wgslsmith_mod_i32(~u_input.b, _wgslsmith_mod_i32(9363i, 2147483647i)))) & abs(reverseBits(-vec4<i32>(u_input.a, 9504i, u_input.a, 0i) >> (~vec4<u32>(9997u, 30415u, 34776u, 4294967295u) % vec4<u32>(32u))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), Struct_1(all(!(!vec3<bool>(arg_2.d, false, false))), arg_1.c.x, arg_1.c, true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(520f, 172f, 833f, 550f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1216f, 728f, -219f, -539f) + vec4<f32>(-1009f, -454f, -1005f, -193f)))))), Struct_1(any(arg_1.c.zz), -35438i <= u_input.b, arg_2.c, true));
    let var_3 = var_2.c.yyz;
    return vec4<bool>(all(arg_2.c), !(!any(arg_1.c.wzx)), all(vec3<bool>(true, true, true)), !all(vec3<bool>(true, !var_2.b.d, !var_2.d.d)));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(124f - -1602f), _wgslsmith_f_op_f32(floor(1561f)), _wgslsmith_f_op_f32(f32(-1f) * -492f))))));
    let var_1 = Struct_2(true);
    global2 = array<Struct_3, 3>();
    let var_2 = -vec2<i32>(~u_input.a, firstLeadingBit(u_input.a));
    global0 = ~0u;
    return Struct_5(-652f, Struct_1(!var_1.a, true, !(!vec4<bool>(true, true, false, var_1.a)), true & !var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1328f, _wgslsmith_div_f32(-1626f, 684f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, 1072f))), -727f)), Struct_1(all(select(vec4<bool>(true, true, false, var_1.a), select(vec4<bool>(false, false, var_1.a, true), vec4<bool>(var_1.a, var_1.a, false, var_1.a), var_1.a), !vec4<bool>(var_1.a, var_1.a, false, var_1.a))), !var_1.a, select(select(vec4<bool>(false, var_1.a, false, var_1.a), func_3(Struct_2(true), Struct_1(true, var_1.a, vec4<bool>(false, var_1.a, false, var_1.a), true), Struct_1(var_1.a, var_1.a, vec4<bool>(var_1.a, var_1.a, false, var_1.a), var_1.a), 0u), select(vec4<bool>(false, var_1.a, false, true), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(false, var_1.a, true, var_1.a))), vec4<bool>(true, any(vec3<bool>(true, false, var_1.a)), var_1.a, select(var_1.a, false, var_1.a)), var_1.a), true));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: i32) -> Struct_4 {
    global0 = firstTrailingBit(~1u);
    var var_0 = global2[_wgslsmith_index_u32(39692u, 3u)];
    global0 = _wgslsmith_mult_u32(countOneBits(~(~(~var_0.a.x))), 1u);
    var var_1 = global2[_wgslsmith_index_u32(1u | var_0.a.x, 3u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-729f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1917f)) * _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x))))));
    return Struct_4(Struct_2(any(select(arg_0.d.c.zwz, arg_0.d.c.wyw, !arg_0.b.a))), Struct_3(var_0.a), var_0.a.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(func_2().c));
    let var_1 = 1897f;
    let var_2 = !(!(!all(!vec2<bool>(true, arg_1.a.a))));
    let var_3 = select(vec2<bool>(var_2, false), vec2<bool>(true, arg_1.a.a), vec2<bool>(func_4(func_2(), ~vec3<i32>(u_input.a, 1i, u_input.a) << (arg_1.b.a % vec3<u32>(32u)), vec4<bool>(any(vec4<bool>(arg_1.a.a, var_2, var_2, true)), true, arg_1.a.a, arg_1.a.a & var_2), u_input.a).a.a, var_2));
    global1 = array<vec2<i32>, 9>();
    return Struct_2(!(!var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(257f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-466f))) + 1f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1694f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))));
    let var_1 = _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(98046i, u_input.a), vec2<i32>(-18319i, 10737i)), i32(-1i) * -39868i, _wgslsmith_div_i32(-2147483647i, u_input.b)), vec4<i32>(8146i, 29911i, -(0i ^ u_input.a), i32(-1i) * -66226i)) << (abs(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u));
    var var_2 = func_5(vec2<u32>(5433u, ~max(41212u, ~49153u)), func_4(func_2(), var_1.wwz, vec4<bool>(false, false, true, !any(vec4<bool>(false, false, true, false))), -1i));
    var_2 = func_5(vec2<u32>(1u, 1u), Struct_4(func_4(Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -909f), func_2().d, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1427f, -232f) + vec4<f32>(var_0.x, 2676f, var_0.x, -687f)), Struct_1(var_2.a, var_2.a, vec4<bool>(true, true, true, false), true)), vec3<i32>(-2147483647i, _wgslsmith_add_i32(u_input.b, 13002i), firstTrailingBit(u_input.a)), vec4<bool>(!var_2.a, true, true, all(vec2<bool>(false, false))), abs(-2147483647i) >> (1u % 32u)).a, global2[_wgslsmith_index_u32(0u, 3u)], _wgslsmith_div_u32(4294967295u, 1u)));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(max(-300f, var_0.x)), Struct_1(var_2.a, func_4(func_2(), firstTrailingBit(-var_1.zyy), vec4<bool>(!var_2.a, true, false, false), -18657i).a.a, vec4<bool>(!(var_2.a == true), var_0.x <= -1394f, false, var_2.a), false), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, 359f))) + vec4<f32>(-1000f, -631f, 367f, var_0.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 337f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -533f, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1000f))))))), Struct_1(true, var_2.a, !func_2().d.c, var_2.a));
    global2 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1789f) + var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(-300f, _wgslsmith_f_op_f32(func_1())))), var_3.c.xzw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 240f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * _wgslsmith_f_op_f32(var_3.c.x + -337f)) + var_3.c.x)));
}

