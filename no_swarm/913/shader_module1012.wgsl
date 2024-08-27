struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<bool>(false, false)), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), Struct_1(false, -1710f), vec2<u32>(0u, 30634u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_3(global1.a, vec3<i32>(_wgslsmith_sub_i32(2147483647i, global1.b.x), 13598i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, global1.b.x) ^ (global1.b.x & 0i), -14391i)), global1.c, _wgslsmith_mod_vec2_u32(vec2<u32>(global1.d.x, global1.d.x) & global1.d, vec2<u32>(reverseBits(~74491u), 107761u)));
    var var_1 = vec3<bool>(false, false, any(!vec4<bool>(any(vec2<bool>(arg_1.a, var_0.c.a)), global1.b.x == -1i, false, arg_0.x)));
    let var_2 = var_0.a;
    let var_3 = 1111f;
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-119f, var_0.c.b, -1000f, var_3), vec4<f32>(-1889f, var_0.c.b, -1219f, -1891f), false))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2183f, var_3, global1.c.b, var_0.c.b), vec4<f32>(-1000f, var_0.c.b, global1.c.b, global1.c.b), false))))), vec4<f32>(_wgslsmith_f_op_f32(1384f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1164f * var_3)))), _wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b, global1.c.b), _wgslsmith_f_op_f32(-226f - 1551f)) * 935f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(438f + _wgslsmith_f_op_f32(var_0.c.b + -665f))))));
    return i32(-1i) * -(i32(-1i) * -_wgslsmith_add_i32(var_0.b.x, var_0.b.x));
}

fn func_2(arg_0: i32) -> vec3<i32> {
    global1 = Struct_3(global1.a, u_input.d, global1.c, global1.d);
    var var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, -1561f, global1.c.b) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.c.b, 107f, global1.c.b), vec3<f32>(481f, global1.c.b, -414f))))));
    var var_2 = global1.a;
    var var_3 = vec3<i32>(-14850i, -2752i, arg_0);
    return _wgslsmith_add_vec3_i32(u_input.c.xwz, vec3<i32>(_wgslsmith_clamp_i32(func_3(!vec3<bool>(true, var_0.a.x, var_2.a.x), global1.c), _wgslsmith_div_i32(2147483647i, abs(2147483647i)), ~2147483647i & _wgslsmith_mult_i32(u_input.b, u_input.c.x)), firstLeadingBit(i32(-1i) * -1759i), -1i));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = vec3<i32>(24707i, func_3(select(vec3<bool>(true, true, true), !(!vec3<bool>(false, false, global1.a.a.x)), any(global0[_wgslsmith_index_u32(1u, 13u)])), global1.c), -1i >> (u_input.a % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1495f - global1.c.b))), global1.c.b, 968f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.c.b, global1.c.b), _wgslsmith_f_op_f32(arg_0 * -443f), arg_0, _wgslsmith_f_op_f32(global1.c.b - arg_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1145f, global1.c.b, global1.c.b, global1.c.b))))));
    var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-315f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(661f - 2083f) + -597f)), _wgslsmith_f_op_f32(f32(-1f) * -594f), -1487f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2212f)) + 1124f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0, 1264f)))), var_1.x, global1.c.b, _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, var_1.x, global1.c.b), vec4<f32>(546f, 1461f, global1.c.b, global1.c.b))))))))));
    let var_2 = Struct_1(true, _wgslsmith_f_op_f32(-541f - _wgslsmith_f_op_f32(floor(var_1.x))));
    let var_3 = _wgslsmith_f_op_f32(floor(arg_0));
    return Struct_3(Struct_2(global1.a.a), -vec3<i32>((var_0.x & arg_1.x) ^ (-5207i << (u_input.a % 32u)), -var_0.x, var_0.x), var_2, ~abs(~global1.d));
}

fn func_1() -> bool {
    global1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.b), global1.c.b), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d, global1.b), _wgslsmith_sub_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.c.x, global1.b.x), vec3<i32>(global1.b.x, -1i, -2147483647i)), _wgslsmith_mult_vec3_i32(u_input.d, func_2(2147483647i)))));
    global1 = Struct_3(global1.a, func_4(_wgslsmith_f_op_f32(global1.c.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.c.b)), _wgslsmith_f_op_f32(global1.c.b * -1044f))), global1.b).b, global1.c, global1.d);
    global0 = array<vec3<bool>, 13>();
    var var_0 = func_4(global1.c.b, u_input.d).a;
    let var_1 = ~vec2<i32>(_wgslsmith_mod_i32(u_input.b, 2147483647i), func_4(global1.c.b, vec3<i32>(reverseBits(global1.b.x), max(global1.b.x, -2147483647i), func_3(vec3<bool>(true, var_0.a.x, global1.c.a), global1.c))).b.x);
    return func_4(-1666f, countOneBits(countOneBits(global1.b))).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(Struct_2(vec2<bool>(any(!global1.a.a), func_1())), ~(-_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.d.x, -38891i, 2147483647i), vec3<i32>(u_input.b, global1.b.x, 7346i))), Struct_1(select(!(!global1.c.a), (global1.c.a | true) | false, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b))))), vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), 1u));
    var var_0 = vec4<u32>(4642u, _wgslsmith_div_u32(u_input.a, 4294967295u), max(~(~u_input.a), 11731u) << (1u % 32u), ~(~(global1.d.x ^ select(global1.d.x, 1u, true))));
    var var_1 = abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.xyx, vec3<u32>(27755u, 6816u, u_input.a)), ~var_0.zww), vec3<u32>(func_4(_wgslsmith_f_op_f32(-global1.c.b), _wgslsmith_sub_vec3_i32(global1.b, global1.b)).d.x, ~var_0.x, _wgslsmith_mult_u32(reverseBits(4294967295u), func_4(global1.c.b, global1.b).d.x))));
    var_0 = max(~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 18215u, global1.d.x, global1.d.x), min(vec4<u32>(u_input.a, 70670u, 0u, 0u), max(vec4<u32>(77665u, global1.d.x, 4294967295u, var_0.x), vec4<u32>(u_input.a, global1.d.x, 54700u, 2954u)))), max(vec4<u32>(24811u, _wgslsmith_sub_u32(~u_input.a, ~103091u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global1.d, vec2<u32>(1u, 4294967295u)), u_input.a), 4294967295u | select(60160u, var_0.x, global1.c.a)), vec4<u32>(global1.d.x, countOneBits(4873u), ~var_0.x, ~(~65551u))));
    var var_2 = !vec2<bool>(global1.a.a.x, !all(vec3<bool>(global1.c.a, true, global1.a.a.x)));
    var_0 = vec4<u32>(~_wgslsmith_add_u32(global1.d.x, u_input.a), ~u_input.a, 99168u, ~global1.d.x);
    let var_3 = global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(countOneBits(func_3(global0[_wgslsmith_index_u32(u_input.a, 13u)], global1.c)), 0i, u_input.c.x, ~(~u_input.d.x)), _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(min(0i, global1.b.x), 0i, 1i, u_input.b | -44493i)), any(vec2<bool>(true, true))));
}

