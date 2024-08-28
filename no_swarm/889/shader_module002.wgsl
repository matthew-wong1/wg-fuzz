struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(29029u, 72773u, 54433u, 4294967295u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = !vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, false), false)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !all(vec3<bool>(true, true, true)), (-1000f >= _wgslsmith_f_op_f32(step(arg_0, 490f))) || (~u_input.d.x != 62000u));
    let var_1 = arg_2.b;
    global0 = vec4<u32>(~23581u, ~_wgslsmith_div_u32(0u, global0.x & 0u), global0.x, max(~1u, 1u));
    let var_2 = Struct_5(false, !vec3<bool>(!all(var_0.xwy), var_0.x, true), firstLeadingBit(var_1.c.x), arg_2.b, Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.d.x - -1767f) - var_1.d.x), var_1, vec4<u32>(1u, ~global0.x, 4294967295u, ~u_input.d.x), countOneBits(0u)), Struct_2(_wgslsmith_f_op_f32(exp2(var_1.d.x)), var_1, u_input.d, _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_2.c.xzz), u_input.d.wyw))));
    let var_3 = firstLeadingBit(max(vec2<i32>(-var_2.e.b.b.a.x, _wgslsmith_clamp_i32(select(34153i, -11837i, var_2.a), arg_2.b.c.x, ~u_input.e)), vec2<i32>(~9739i, 1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.d.b.x)) * _wgslsmith_f_op_f32(select(var_1.d.x, -1751f, false))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-479f + var_2.d.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1286f - arg_0) * _wgslsmith_f_op_f32(sign(var_1.b.x))))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = ~u_input.d;
    let var_0 = ~(~(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.d.x), max(global0.zy, global0.wy)) | max(vec2<u32>(78937u, 11272u) << (u_input.d.zw % vec2<u32>(32u)), ~vec2<u32>(0u, global0.x))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1054f)), _wgslsmith_f_op_f32(func_3(-1138f, arg_0, Struct_2(1012f, Struct_1(u_input.b, vec3<f32>(1000f, 460f, -453f), vec3<i32>(33893i, u_input.e, u_input.b.x), vec2<f32>(-609f, 2664f)), vec4<u32>(u_input.a, var_0.x, var_0.x, 8194u), var_0.x)))))), Struct_1(select(u_input.b, ~vec4<i32>(arg_0.x, u_input.e, arg_0.x, arg_0.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false)), vec3<f32>(_wgslsmith_f_op_f32(-349f * 1119f), _wgslsmith_div_f32(1176f, -788f), 1685f), u_input.b.yyw, vec2<f32>(_wgslsmith_f_op_f32(abs(-2283f)), _wgslsmith_f_op_f32(-702f - -1000f))), ~(~(~u_input.d)), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 0u, global0.x), global0.zxw), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.d.x), vec3<u32>(var_0.x, 36685u, 1u)) & global0.yzy)), Struct_2(1617f, Struct_1(_wgslsmith_div_vec4_i32(select(vec4<i32>(-8015i, 145i, -1i, 0i), vec4<i32>(2147483647i, 0i, -2147483647i, arg_0.x), true), u_input.b >> (u_input.d % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -973f, 1728f), vec3<f32>(-1068f, 1860f, 1195f), false)))), vec3<i32>(-1i) * -u_input.b.zyx, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(828f, 665f)))), ~(~vec4<u32>(33798u, 1u, 4294967295u, 1u)), _wgslsmith_mod_u32(global0.x, u_input.d.x)));
    let var_2 = vec2<f32>(var_1.a.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -325f));
    global0 = _wgslsmith_add_vec4_u32(~u_input.d >> (u_input.d % vec4<u32>(32u)), select(reverseBits(~abs(vec4<u32>(var_1.a.d, var_0.x, 4294967295u, u_input.a))), vec4<u32>(global0.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, var_0.x), var_1.a.c.x), u_input.d.x, 98548u), vec4<bool>(!all(vec3<bool>(false, true, false)), all(vec3<bool>(true, true, false)) & true, select(true, true, true), true)));
    return var_1.a.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> bool {
    var var_0 = arg_0.yz;
    let var_1 = vec4<bool>(var_0.x, any(arg_0), false, all(vec2<bool>(var_0.x, false)));
    var_0 = arg_0.xz;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * arg_1.b.b.x), func_2(~abs(reverseBits(vec2<i32>(arg_1.b.a.x, -2147483647i)))), ~(u_input.d | _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(0u, global0.x, 11119u, 43161u))), _wgslsmith_div_u32(arg_1.d, ~u_input.c));
    var var_3 = vec2<i32>(-abs(~u_input.e), _wgslsmith_mod_i32(~abs(-31988i), _wgslsmith_add_i32(~(-1i), var_2.b.a.x << (~1u % 32u))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), true), func_1(vec3<bool>(true, true, true), Struct_2(-1000f, Struct_1(vec4<i32>(-2204i, 52774i, u_input.b.x, -57240i), vec3<f32>(-623f, 1486f, 583f), vec3<i32>(u_input.e, 0i, 43813i), vec2<f32>(-133f, -1000f)), u_input.d, global0.x), _wgslsmith_f_op_f32(-665f + 1000f), u_input.b.x << (global0.x % 32u))), vec4<bool>(true, true, true, true)));
    let var_1 = u_input.b.x | u_input.e;
    var var_2 = Struct_5(!(true & func_1(vec3<bool>(true, true, true), Struct_2(-355f, Struct_1(u_input.b, vec3<f32>(682f, 1721f, 141f), vec3<i32>(6945i, 61363i, 2147483647i), vec2<f32>(-676f, 2037f)), vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u), u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -992f), countOneBits(u_input.e))), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), var_1, Struct_1(u_input.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -969f), 617f, -1045f), u_input.b.yyx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1045f, 168f)))) * vec2<f32>(_wgslsmith_f_op_f32(select(996f, 308f, true)), _wgslsmith_f_op_f32(490f - 427f)))), Struct_3(Struct_2(-1348f, func_2(max(vec2<i32>(var_1, var_1), u_input.b.xw)), u_input.d, 4294967295u), Struct_2(_wgslsmith_f_op_f32(max(-147f, 1386f)), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1390f, 1000f, 1132f) - vec3<f32>(100f, -2114f, 352f)), u_input.b.xyw, vec2<f32>(-1500f, -310f)), min(u_input.d, max(u_input.d, vec4<u32>(4294967295u, global0.x, u_input.c, 0u))), ~36002u)));
    var_0 = var_2.a;
    let var_3 = _wgslsmith_dot_vec2_i32(func_2(u_input.b.zw).c.zy, vec2<i32>(_wgslsmith_add_i32(var_2.c, -2147483647i) | var_2.e.a.b.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(-25401i, var_1), _wgslsmith_sub_i32(var_1, 22685i)))) >> (12474u % 32u);
    var_0 = var_2.a;
    let var_4 = Struct_3(var_2.e.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -664f))) * -1000f), Struct_1(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, 1i, var_3, -33118i), vec4<i32>(var_2.d.a.x, -26162i, -29987i, -30860i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.d.d.x, -454f, 893f), vec3<f32>(405f, var_2.e.a.b.b.x, var_2.e.a.b.d.x)))), vec3<i32>(_wgslsmith_add_i32(var_1, var_2.e.b.b.a.x), var_2.c, -2147483647i), var_2.d.b.xy), ~countOneBits(~vec4<u32>(u_input.a, u_input.a, 11723u, global0.x)), _wgslsmith_div_u32(50032u, global0.x ^ (4294967295u >> (1u % 32u)))));
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.a, -1841f, 105f, var_4.a.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1083f, var_4.b.b.d.x, var_4.a.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -397f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, -191f, -1253f, var_2.d.b.x)))))));
    var var_6 = -3280i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, ~u_input.e, 2147483647i), max(min(var_4.a.b.c.x, func_2(-vec2<i32>(var_1, 1i)).a.x), ~max(2147483647i, firstLeadingBit(1i))));
}

