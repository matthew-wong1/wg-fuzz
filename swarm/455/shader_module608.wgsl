struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(11478u, 1u, 124413u);

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: vec3<u32> = vec3<u32>(0u, 0u, 13772u);

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(~46983u >> ((_wgslsmith_dot_vec2_u32(global3.yz, global3.xy) ^ 1u) % 32u), global4.d, ~countOneBits(global4.c & ~global4.c), !global4.d);
    var var_1 = Struct_1(global3.x & ~global3.x, var_0.d, ~max(vec2<u32>(_wgslsmith_mod_u32(1u, var_0.a), 0u), ~(global4.c | global0.zz)), any(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(true, true, false, global4.b), vec4<bool>(false, true, true, var_0.d), var_0.b), true)));
    var var_2 = -abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -2147483647i) & _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -26424i), vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, -2147483647i)), -vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i)));
    var var_3 = !(!global4.d);
    return global4.d;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    var var_1 = Struct_1(firstTrailingBit(~arg_1), any(!(!vec3<bool>(false, false, arg_2.x))), vec2<u32>(~global4.c.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.a, arg_0.a, arg_3.c.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(63355u, global4.c.x, arg_1), vec3<u32>(global3.x, arg_3.a, 0u)), select(vec3<u32>(global4.a, 1u, 74115u), vec3<u32>(4779u, global0.x, global3.x), vec3<bool>(false, false, global4.d))))), false | !any(vec2<bool>(true, global4.b)));
    var_1 = var_0;
    var var_2 = select(vec3<bool>(func_3(), false && arg_0.b, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, var_1.c.x)) < reverseBits(91439u)), vec3<bool>(all(select(select(vec3<bool>(false, var_0.d, var_1.b), vec3<bool>(var_0.d, global4.d, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, arg_0.d), vec3<bool>(var_1.b, global4.b, true))), any(!vec4<bool>(true, arg_2.x, true, false)) && arg_2.x, 38160u <= _wgslsmith_mult_u32(arg_1, arg_0.a)), select(vec3<bool>(global4.b, (u_input.a & u_input.a) == abs(5201i), true), vec3<bool>(any(!vec3<bool>(arg_3.d, arg_2.x, var_0.d)), true, true || arg_3.d), var_1.b));
    var var_3 = -1i;
    return -1252f;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-725f, _wgslsmith_f_op_f32(ceil(-1000f)), 1229f, _wgslsmith_f_op_f32(floor(-1982f))), _wgslsmith_div_vec4_f32(vec4<f32>(1049f, -753f, 2345f, -180f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, -340f, -1042f, -180f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1475f, 1826f, -426f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-456f, 1820f, 840f, 1404f) - vec4<f32>(-2027f, 240f, 423f, 1004f))))), !global4.b)) * _wgslsmith_div_vec4_f32(vec4<f32>(190f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(global3.x, true, vec2<u32>(4294967295u, global4.a), global4.b), global0.x, vec2<bool>(global4.b, global4.b), Struct_1(global3.x, true, vec2<u32>(0u, 46260u), false))) - _wgslsmith_f_op_f32(-1322f + -583f)), 2165f, 1f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -845f), _wgslsmith_f_op_f32(f32(-1f) * -759f), 216f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(852f, -1811f, 644f, 1000f)))))));
    global3 = ~firstLeadingBit(~(select(vec3<u32>(6513u, 1u, global0.x), vec3<u32>(41234u, global0.x, 0u), vec3<bool>(global4.d, global4.b, global4.d)) ^ min(vec3<u32>(global3.x, global3.x, global3.x), vec3<u32>(1u, global0.x, global3.x))));
    global4 = Struct_1(abs(68885u), false, vec2<u32>(0u, ~_wgslsmith_div_u32(1u, reverseBits(21282u))), true);
    var var_1 = _wgslsmith_mod_vec3_i32(~(~vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(-u_input.a, u_input.a, u_input.a | -33227i)) ^ abs(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(u_input.a, u_input.a), -50680i), ~(~vec3<i32>(u_input.a, 1i, u_input.a))));
    var_1 = vec3<i32>(abs(-17613i), u_input.a, max(1i, reverseBits(var_1.x))) & vec3<i32>(-2147483647i, -_wgslsmith_mod_i32(~u_input.a, u_input.a & u_input.a), -(~_wgslsmith_add_i32(1i, 1i)));
    return _wgslsmith_f_op_f32(var_0.x * -1587f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, global0.x), global4.c.x), 1u) ^ global3.xz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(global3.x, global3.x), var_1.x, global4.a), _wgslsmith_div_vec3_u32(select(vec3<u32>(69388u, 54075u, 77597u), countOneBits(vec3<u32>(global0.x, global4.a, var_1.x)), global3.x <= global0.x), (vec3<u32>(9028u, 1u, 1u) << (vec3<u32>(44503u, global0.x, global3.x) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 5242u, var_1.x), vec3<u32>(4294967295u, 11530u, var_1.x), vec3<u32>(global4.a, global3.x, global0.x)) % vec3<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f - 1000f) * -1000f), -1205f, _wgslsmith_f_op_f32(782f * _wgslsmith_f_op_f32(func_1()))));
}

