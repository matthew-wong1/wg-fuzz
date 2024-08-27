struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, false));

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<f32>(-1303f, 716f)), Struct_1(vec2<f32>(185f, -668f)), Struct_1(vec2<f32>(458f, 458f)), Struct_1(vec2<f32>(452f, 1238f)), Struct_1(vec2<f32>(-1506f, 611f)), Struct_1(vec2<f32>(501f, -1794f)), Struct_1(vec2<f32>(138f, 604f)), Struct_1(vec2<f32>(649f, 189f)), Struct_1(vec2<f32>(884f, 605f)), Struct_1(vec2<f32>(475f, -151f)), Struct_1(vec2<f32>(352f, -806f)), Struct_1(vec2<f32>(-164f, -2056f)), Struct_1(vec2<f32>(544f, -1068f)), Struct_1(vec2<f32>(-1735f, 1101f)), Struct_1(vec2<f32>(-902f, -551f)), Struct_1(vec2<f32>(-1000f, -1056f)), Struct_1(vec2<f32>(-396f, -229f)), Struct_1(vec2<f32>(-290f, 1664f)), Struct_1(vec2<f32>(125f, -580f)), Struct_1(vec2<f32>(1164f, 1628f)), Struct_1(vec2<f32>(-2095f, -1413f)), Struct_1(vec2<f32>(1000f, 352f)), Struct_1(vec2<f32>(-213f, 1013f)), Struct_1(vec2<f32>(412f, 1112f)), Struct_1(vec2<f32>(1710f, 370f)), Struct_1(vec2<f32>(-957f, 1000f)), Struct_1(vec2<f32>(-1374f, 2013f)), Struct_1(vec2<f32>(-1000f, -539f)), Struct_1(vec2<f32>(-925f, 2300f)), Struct_1(vec2<f32>(1201f, -1064f)), Struct_1(vec2<f32>(-522f, -532f)), Struct_1(vec2<f32>(2130f, -146f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<bool>(global0.a.x, true, any(!(!vec4<bool>(false, global0.a.x, true, false))), true);
    let var_1 = var_0.yx;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_div_f32(-670f, -1000f), _wgslsmith_f_op_f32(abs(-140f)), _wgslsmith_f_op_f32(f32(-1f) * -1666f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f))), 170f, _wgslsmith_f_op_f32(-572f * -338f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(460f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))))));
    var_3 = _wgslsmith_f_op_f32(1000f - -133f);
    return Struct_2(select(vec2<bool>(true, var_1.x), global0.a, true));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = vec4<u32>(firstLeadingBit(~45900u), arg_0, max(firstLeadingBit(12642u), arg_1.x & arg_1.x), _wgslsmith_sub_u32(abs(~reverseBits(arg_1.x)), 0u));
    var var_1 = !(!vec2<bool>(any(!vec4<bool>(arg_2.a.x, arg_2.a.x, global0.a.x, global0.a.x)), global0.a.x));
    let var_2 = func_2();
    let var_3 = ~vec4<u32>(_wgslsmith_mult_u32(~arg_1.x, ~4294967295u), arg_0, 28596u, countOneBits(arg_1.x << (1u % 32u))) | ~vec4<u32>(_wgslsmith_sub_u32(arg_1.x >> (0u % 32u), ~arg_0), max(36401u >> (arg_1.x % 32u), arg_0), arg_1.x, ~75915u);
    var var_4 = -reverseBits(-vec4<i32>(u_input.a.x, countOneBits(33206i), -u_input.a.x, u_input.a.x << (arg_0 % 32u)));
    return var_3;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = vec4<bool>(-1i < _wgslsmith_mod_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(6416i, -71604i), vec2<i32>(-10062i, -2147483647i)), u_input.a.x ^ u_input.a.x, all(global0.a)), u_input.a.x), global0.a.x, 1u >= arg_1.x, false);
    return _wgslsmith_dot_vec4_u32(max(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_1.x, arg_1.x) ^ vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 4294967295u), ~vec4<u32>(9263u, 51110u, 0u, 0u)), vec4<u32>(arg_1.x, _wgslsmith_mult_u32(firstTrailingBit(17425u), 4294967295u), 1u, abs(34673u))), max(max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(29601u, 4294967295u, 18240u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 16042u, arg_1.x)), _wgslsmith_mod_u32(3175u, arg_1.x), arg_1.x, min(52737u, 29496u)), func_3(0u, arg_1.yx >> (vec2<u32>(arg_1.x, 15223u) % vec2<u32>(32u)), func_2())), ~(~vec4<u32>(25415u, arg_1.x, arg_1.x, arg_1.x)) >> (~(~vec4<u32>(arg_1.x, arg_1.x, 0u, arg_1.x)) % vec4<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_1, 32>();
    var var_0 = firstTrailingBit(~vec3<i32>(u_input.a.x, firstTrailingBit(17633i), arg_0));
    var var_1 = ~firstTrailingBit(vec2<u32>(~0u << (select(23061u, 1u, global0.a.x) % 32u), 4294967295u));
    global1 = array<Struct_1, 32>();
    let var_2 = Struct_2(!func_2().a);
    return -868f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(max(-277f, _wgslsmith_f_op_f32(func_4(u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1629f, -494f), vec2<f32>(1000f, -2004f)))), global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -459f), reverseBits(vec3<u32>(4816u, 41148u, 0u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 31650u), 32u)], 2147483647i), 32u)])))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1307f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1640f) * vec2<f32>(var_0, var_0))))));
    var var_2 = vec2<i32>(-52577i, ~u_input.a.x) ^ _wgslsmith_add_vec2_i32(u_input.a, reverseBits(vec2<i32>(u_input.a.x, -28910i)) | u_input.a);
    var var_3 = firstTrailingBit(firstTrailingBit(-3660i));
    var_3 = ~_wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -14022i, 2147483647i), vec3<i32>(var_2.x, 1i, u_input.a.x)), -vec3<i32>(38981i, 0i, -33718i)), ~abs(select(vec3<i32>(0i, 2147483647i, var_2.x), vec3<i32>(2673i, var_2.x, 5929i), global0.a.x)));
    var var_4 = vec4<u32>(~(~1u >> (_wgslsmith_add_u32(func_1(-1229f, vec3<u32>(4294967295u, 68627u, 56564u), global1[_wgslsmith_index_u32(59573u, 32u)], -1i), abs(50414u)) % 32u)), 52563u, ~55139u, 11665u);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_div_u32(51845u, var_4.x) ^ min(var_4.x, var_4.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-563f - -694f) + _wgslsmith_f_op_f32(var_1.a.x + 1007f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))))), _wgslsmith_div_vec4_i32(vec4<i32>(~var_2.x, -u_input.a.x, var_2.x, _wgslsmith_mod_i32(u_input.a.x, i32(-1i) * -2147483647i)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, 0i, var_2.x), vec4<i32>(var_2.x, u_input.a.x, 65228i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-48388i, -45858i, var_2.x, var_2.x), vec4<i32>(1i, 28929i, -1i, -25354i))), min(vec4<i32>(u_input.a.x, -11923i, 2147483647i, -2147483647i), min(vec4<i32>(-2147483647i, var_2.x, -17455i, -21656i), vec4<i32>(48814i, u_input.a.x, u_input.a.x, -20649i))))), ~max(vec2<u32>(3599u, _wgslsmith_clamp_u32(var_4.x, 29915u, var_4.x)), var_4.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1802f)));
}

