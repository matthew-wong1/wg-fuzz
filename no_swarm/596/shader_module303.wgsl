struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, -907f, 210f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-680f, 295f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1180f, 737f, 242f), vec3<f32>(-758f, 1877f, 119f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-390f, 1676f, -986f)))) + vec3<f32>(-725f, _wgslsmith_div_f32(770f, 1300f), -885f)))));
    var var_1 = Struct_1(~u_input.a, global0.d.wzz, firstLeadingBit(-(~global0.c) | _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, -10575i, global0.c.x, -41323i), u_input.c), u_input.c)), min(global0.d, global0.d));
    var var_2 = vec2<f32>(-181f, _wgslsmith_f_op_f32(-var_0.x));
    var_2 = var_0.xy;
    var_1 = Struct_1(-4856i, ~var_1.b ^ var_1.d.xzx, ~select(var_1.c, ~u_input.c >> ((vec4<u32>(u_input.e.x, 34626u, var_1.d.x, 0u) | vec4<u32>(var_1.d.x, global0.b.x, 4294967295u, var_1.b.x)) % vec4<u32>(32u)), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true))), vec4<u32>(~4294967295u, ~(~1u), _wgslsmith_mult_u32(~(~global0.b.x), 68846u), _wgslsmith_add_u32(select(u_input.e.x, 0u, true) | 4294967295u, ~_wgslsmith_mod_u32(u_input.e.x, 0u))));
    return select(vec4<u32>(var_1.d.x, _wgslsmith_dot_vec3_u32(global0.d.ywy, ~(~global0.b)), var_1.d.x, global0.b.x), ~global0.d, !vec4<bool>(!all(vec4<bool>(false, false, true, false)), all(vec3<bool>(false, true, false)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), any(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = true;
    var var_1 = -vec3<i32>(2147483647i, 3350i, -20662i);
    let var_2 = arg_2;
    return _wgslsmith_add_vec4_u32(global0.d, func_3());
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_sub_i32(2147483647i, u_input.a), vec3<u32>(abs(countOneBits(~u_input.e.x)), ~4294967295u, u_input.e.x), _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(5715i, _wgslsmith_div_i32(-15046i, -1211i), arg_0.a, arg_2.x) << ((arg_0.d & func_2(24609u, u_input.e.x, arg_0)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(global0.d, vec4<u32>(~_wgslsmith_div_u32(global0.d.x, 4294967295u), global0.b.x, firstTrailingBit(global0.b.x & u_input.e.x), 8675u), ~_wgslsmith_mult_vec4_u32(arg_0.d, vec4<u32>(arg_0.d.x, arg_0.b.x, u_input.e.x, 34506u)) << (arg_0.d % vec4<u32>(32u))));
    let var_1 = ~(~func_2(55150u, _wgslsmith_add_u32(~arg_0.b.x, _wgslsmith_sub_u32(40939u, 29320u)), var_0).x);
    global0 = var_0;
    let var_2 = Struct_1(select(abs(-1i), u_input.c.x, true), var_0.d.xww, vec4<i32>(_wgslsmith_div_i32(~reverseBits(16927i), arg_2.x >> ((var_1 | 39077u) % 32u)), 6556i, global0.c.x, select(1i, -1i, true)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.d.x, 26042u, func_2(u_input.e.x, arg_0.b.x, Struct_1(-23798i, global0.d.ywy, vec4<i32>(global0.c.x, arg_0.a, arg_0.c.x, arg_2.x), global0.d)).x, _wgslsmith_mod_u32(var_1, arg_0.b.x)), reverseBits(global0.d)));
    let var_3 = select(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), true), vec4<bool>(true, all(vec2<bool>(false, false)), false, any(vec2<bool>(false, true))), vec4<bool>(true, false, true, true)), select(vec4<bool>(select(true, any(vec2<bool>(false, true)), true), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), abs(var_1) == ~var_2.d.x, any(vec2<bool>(true, true))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))), !select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)))), select(select(vec4<bool>(true, global0.b.x <= global0.d.x, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, 34659u < u_input.e.x, true)), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), all(vec3<bool>(true, select(true, true, false), true))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1394f, -519f) - vec2<f32>(-483f, -499f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 827f), vec2<f32>(-676f, -637f))))) + vec2<f32>(111f, -892f)), vec2<f32>(2495f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) * -2232f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c.x, global0.a, arg_1.c.x), -vec3<i32>(-2147483647i, arg_1.a, arg_1.c.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(global0.c), u_input.c), -vec4<i32>(u_input.b, u_input.c.x, arg_1.a, -2147483647i)), ~(-_wgslsmith_sub_i32(-2147483647i, u_input.b)), ~(37539i << (arg_1.b.x % 32u))), ~(~(-u_input.c)) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global0.a, arg_1.c.x, 42432i, u_input.a)), _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(16916i, arg_1.a, 2147483647i, u_input.b))), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c.x, u_input.b, u_input.d, 0i), countOneBits(u_input.c))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-743f + 1238f), 2623f)));
    var var_2 = firstTrailingBit(reverseBits(global0.b.x));
    let var_3 = select(~global0.d.yz, _wgslsmith_sub_vec2_u32(~arg_1.b.yy, vec2<u32>(~(~u_input.e.x), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, 6365u), arg_1.d.x))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, arg_1.c.x & global0.c.x), global0.a) != reverseBits(abs(global0.c.x)));
    global0 = Struct_1(-_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.c.zxy, vec3<i32>(arg_1.c.x, arg_1.a, -2147483647i)), u_input.d), global0.d.wzz, ~(~(-arg_1.c)), ~select(func_3(), vec4<u32>(0u, 78646u, reverseBits(0u), u_input.e.x), true));
    return vec3<bool>(!(firstTrailingBit(1i) != -(~arg_1.c.x)), !any(vec2<bool>(true, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(reverseBits(~_wgslsmith_sub_vec2_i32(vec2<i32>(-18450i, 2147483647i), global0.c.yx) >> ((u_input.e >> (_wgslsmith_add_vec2_u32(global0.b.zz, vec2<u32>(global0.d.x, u_input.e.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), select(~(-global0.c.zw) | (_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(-7069i, global0.a)) ^ _wgslsmith_clamp_vec2_i32(global0.c.xx, vec2<i32>(u_input.c.x, -17150i), u_input.c.wy)), vec2<i32>((global0.a >> (global0.b.x % 32u)) | ~47441i, u_input.b), all(func_4(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(-7332i, global0.d.zyw, vec4<i32>(2147483647i, global0.a, 1i, 51817i), global0.d), global0.c.wxz, vec2<i32>(73040i, u_input.c.x))), Struct_1(0i, global0.d.zzw, global0.c, vec4<u32>(global0.b.x, global0.d.x, u_input.e.x, 1u))))), select(vec2<bool>(true, select(false, false, false) || false), !select(func_4(vec2<f32>(1476f, 1253f), Struct_1(u_input.c.x, vec3<u32>(0u, 44113u, u_input.e.x), u_input.c, global0.d)).yx, func_4(vec2<f32>(-101f, 807f), Struct_1(33556i, global0.b, u_input.c, global0.d)).xx, true), select(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-364f, -446f) + vec2<f32>(-1289f, 277f)), Struct_1(1i, global0.b, global0.c, vec4<u32>(76676u, global0.d.x, global0.d.x, u_input.e.x))).xx, vec2<bool>(u_input.e.x <= global0.b.x, select(false, true, true)), all(vec2<bool>(false, false)))));
    global0 = Struct_1(-(0i & ~(u_input.a & -36922i)), ~global0.d.zwx, -abs(-u_input.c), vec4<u32>(global0.d.x, countOneBits(u_input.e.x), 4294967295u, ~global0.b.x));
    global0 = Struct_1(-(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), global0.c.yw) << (firstTrailingBit(0u) % 32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(global0.b, vec3<u32>(u_input.e.x, 18973u, u_input.e.x)) << (~global0.d.x % 32u), 0u << (global0.d.x % 32u), 4294967295u), global0.d.wzz), ~vec4<i32>(-44551i, var_0.x, abs(abs(-14587i)), global0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(90096u), 4294967295u >> (u_input.e.x % 32u), 1u, ~global0.b.x) & ~(~global0.d), firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.e.x, u_input.e.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.e.x, 17447u, 0u), vec4<u32>(1u, u_input.e.x, 115912u, 80556u)))), global0.d));
    var var_1 = Struct_1(_wgslsmith_mod_i32(u_input.c.x, 45518i), max(select(global0.b, ~global0.d.xxy, true), vec3<u32>(_wgslsmith_clamp_u32(global0.d.x, global0.b.x, global0.b.x), _wgslsmith_sub_u32(global0.b.x, 4294967295u), 33748u)) | abs(func_3().wxx >> (global0.d.wxy % vec3<u32>(32u))), u_input.c, ~(~(vec4<u32>(0u, global0.d.x, 4294967295u, 149006u) ^ global0.d)));
    global0 = Struct_1(-50489i, global0.b, -firstLeadingBit(-(vec4<i32>(var_0.x, var_1.c.x, -12035i, -2190i) >> (var_1.d % vec4<u32>(32u)))), ~max(min(global0.d, vec4<u32>(69807u, var_1.b.x, 22741u, 1u)), firstTrailingBit(var_1.d)) & ~var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.x, var_1.c.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-898f, _wgslsmith_f_op_f32(972f - 250f), _wgslsmith_f_op_f32(trunc(575f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(global0.c.x, global0.d.zzw, global0.c, global0.d), vec3<i32>(23439i, -1i, u_input.b), global0.c.zw)).x, _wgslsmith_f_op_f32(max(-106f, -1000f)), _wgslsmith_f_op_f32(step(286f, -1739f)))))), global0.b.x);
}

