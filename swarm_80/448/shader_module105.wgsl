struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>) -> vec4<i32> {
    global0 = array<bool, 1>();
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(23567u, u_input.a.x), 28857u) ^ ~_wgslsmith_mult_vec2_u32(u_input.a, u_input.a), u_input.a) >> (vec2<u32>(_wgslsmith_mod_u32(~(~u_input.a.x), u_input.a.x << (22243u % 32u)), 1u) % vec2<u32>(32u));
    let var_1 = global0[_wgslsmith_index_u32(8159u & ~(~1u >> (_wgslsmith_div_u32(~u_input.a.x, var_0.x) % 32u)), 1u)];
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1053f), -990f, 1575f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 399f, 2277f, arg_0.x) - arg_0) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1000f, 586f), arg_0))))));
    global0 = array<bool, 1>();
    return abs(vec4<i32>(_wgslsmith_mult_i32(-24746i, 14994i), ~_wgslsmith_clamp_i32(abs(0i), -2147483647i, 1i), ~(-1i), -6442i));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = vec4<bool>(1u != u_input.a.x, global0[_wgslsmith_index_u32(13734u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(37376u, 1u)]);
    var_0 = vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x << (_wgslsmith_sub_u32(~u_input.a.x, arg_0.x) % 32u), 1u)], !any(vec3<bool>(true, var_0.x, false & var_0.x)), global0[_wgslsmith_index_u32(49047u, 1u)], !(!global0[_wgslsmith_index_u32(u_input.a.x, 1u)]));
    var var_1 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(375f, -1017f, -949f, 153f) * arg_1)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, -231f, arg_1.x, -1050f), arg_1, vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], true, false, true))), vec4<f32>(1141f, arg_1.x, 898f, -1211f)))));
    global0 = array<bool, 1>();
    var_0 = !(!select(select(vec4<bool>(var_0.x, true, true, false), select(vec4<bool>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(38440u, 1u)], true), vec4<bool>(true, false, false, var_0.x), true), all(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), vec4<bool>(true, false, true, !var_0.x), select(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, false, false, false)), vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)], false, global0[_wgslsmith_index_u32(arg_0.x, 1u)]))));
    return arg_1.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = 16165i;
    global0 = array<bool, 1>();
    let var_1 = _wgslsmith_f_op_f32(func_2(abs(_wgslsmith_div_vec2_u32(~arg_1.xx ^ max(vec2<u32>(1u, arg_1.x), vec2<u32>(arg_1.x, arg_1.x)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(89660u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(u_input.a.x, 17617u) >> (u_input.a % vec2<u32>(32u))))), arg_0));
    let var_2 = true;
    global0 = array<bool, 1>();
    return u_input.a.x;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_i32(countOneBits(~vec2<i32>(2147483647i, _wgslsmith_mult_i32(0i, -19385i))), -vec2<i32>(1i ^ _wgslsmith_clamp_i32(-2147483647i, 35052i, 86197i), -41247i), vec2<i32>(-(~(-20096i)), select(2147483647i >> (u_input.a.x % 32u), _wgslsmith_mod_i32(-15752i, 6461i), false)) >> ((max(select(u_input.a, u_input.a, vec2<bool>(false, arg_0)), vec2<u32>(1u, 23995u) & u_input.a) & _wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.a), ~vec2<u32>(arg_2, u_input.a.x))) % vec2<u32>(32u)));
    var var_1 = abs(_wgslsmith_mod_u32(arg_2, 0u));
    global0 = array<bool, 1>();
    var_1 = ~(~u_input.a.x);
    var var_2 = any(!(!vec2<bool>(any(vec2<bool>(arg_0, true)), true)));
    return Struct_1(~abs(abs(arg_2)), max(var_0.x, abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(-42017i, 5218i, -2147483647i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, 16237i, 36248i), vec4<i32>(48522i, var_0.x, -30175i, var_0.x))))), ~(select(vec2<i32>(44538i, 69028i), min(vec2<i32>(-1i, var_0.x), vec2<i32>(8674i, var_0.x)), vec2<bool>(arg_0, global0[_wgslsmith_index_u32(15194u, 1u)])) << (u_input.a % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-711f, 427f))))), -519f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(all(vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(6675u, u_input.a.x, 1u), 1u)], !global0[_wgslsmith_index_u32(func_1(vec4<f32>(177f, -1237f, 1047f, 1429f), vec3<u32>(1u, 907u, 0u), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), 1u)])), vec2<f32>(-1268f, _wgslsmith_f_op_f32(-1826f - _wgslsmith_f_op_f32(trunc(-1478f)))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(38687u, u_input.a.x, 4294967295u, 55206u) << (select(vec4<u32>(5409u, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 1u)]) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~71724u, u_input.a.x | 1u, u_input.a.x, 6174u), _wgslsmith_sub_vec4_u32(vec4<u32>(76902u, 73903u, 41037u, u_input.a.x) & vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a.x, 1u, 1u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 40810u), vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], true)), vec4<u32>(1u, u_input.a.x, 22800u, u_input.a.x)))));
    let var_1 = Struct_2((func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-809f, -1324f, 321f, var_0.d)))).yx << (_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a.x, var_0.a)), vec2<u32>(u_input.a.x, var_0.a) & u_input.a) % vec2<u32>(32u))) & var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(167f, var_0.d, 996f, 1925f), vec4<f32>(-379f, var_0.d, 743f, 1000f), false)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.e, -287f, -1135f) + vec4<f32>(var_0.d, var_0.d, var_0.e, var_0.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-109f, 423f, 1330f, var_0.d) - vec4<f32>(var_0.d, var_0.d, var_0.e, var_0.e))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.e, 1000f, var_0.e, -1634f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d, var_0.d, -405f, var_0.e), vec4<f32>(var_0.d, 1367f, -454f, -142f), true)) + vec4<f32>(-1026f, -104f, var_0.e, 805f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))));
    global0 = array<bool, 1>();
    var var_3 = Struct_3(var_1, var_1.a);
    let var_4 = -1460f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec3<u32>(var_0.a, 0u, var_0.a)) & ~(vec3<u32>(1u, var_0.a, 1u) & select(vec3<u32>(4294967295u, var_0.a, var_0.a), vec3<u32>(1u, var_0.a, 29543u), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1569f * 784f) * _wgslsmith_f_op_f32(var_1.b.x - var_1.b.x)) - var_2)), vec4<i32>(-_wgslsmith_sub_i32(func_3(vec4<f32>(-156f, -690f, 378f, -811f)).x, var_0.c.x << (var_0.a % 32u)), -12672i, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.c, var_3.b), var_0.b ^ -9975i), 23311i), _wgslsmith_add_i32(~(i32(-1i) * -1i), ~(~(-31501i)))), vec2<f32>(_wgslsmith_f_op_f32(sign(-422f)), -2692f), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_0.a, var_0.a) >> (u_input.a % vec2<u32>(32u))), vec2<u32>(u_input.a.x, 25348u) | (vec2<u32>(var_0.a, 4294967295u) & vec2<u32>(var_0.a, 1u))), 4294967295u));
}

