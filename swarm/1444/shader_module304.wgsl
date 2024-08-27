struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(0u, vec2<u32>(0u, 63963u), vec2<f32>(336f, -500f), -1i), Struct_1(25992u, vec2<u32>(0u, 4294967295u), vec2<f32>(-1384f, -908f), i32(-2147483648)), Struct_1(0u, vec2<u32>(0u, 87143u), vec2<f32>(-669f, -648f), 1i), Struct_1(0u, vec2<u32>(4294967295u, 15331u), vec2<f32>(270f, -823f), -43182i), Struct_1(12721u, vec2<u32>(35574u, 1u), vec2<f32>(-509f, 864f), -1i), Struct_1(0u, vec2<u32>(4294967295u, 0u), vec2<f32>(620f, -1041f), -9406i), Struct_1(4294967295u, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-349f, -229f), -2325i), Struct_1(77636u, vec2<u32>(39428u, 0u), vec2<f32>(-483f, 2660f), i32(-2147483648)), Struct_1(1u, vec2<u32>(11822u, 0u), vec2<f32>(-1118f, -400f), -10032i), Struct_1(12475u, vec2<u32>(4294967295u, 0u), vec2<f32>(-1508f, -834f), -22887i), Struct_1(0u, vec2<u32>(4294967295u, 63088u), vec2<f32>(1164f, -346f), -26339i), Struct_1(146485u, vec2<u32>(32719u, 73479u), vec2<f32>(1159f, -105f), 54055i), Struct_1(45272u, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(1251f, -853f), -1i), Struct_1(1u, vec2<u32>(1u, 84917u), vec2<f32>(844f, -128f), 1i), Struct_1(741u, vec2<u32>(1u, 4294967295u), vec2<f32>(-1086f, -860f), -30422i), Struct_1(1u, vec2<u32>(46034u, 39543u), vec2<f32>(1137f, 880f), -22662i), Struct_1(4294967295u, vec2<u32>(1u, 30430u), vec2<f32>(-1057f, -706f), -1i));

var<private> global2: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> vec2<f32> {
    let var_0 = Struct_1(u_input.e.x, vec2<u32>(7690u, _wgslsmith_add_u32(~43923u, 3207u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(arg_0.x, -1331f)) - _wgslsmith_f_op_vec2_f32(arg_0 * arg_0)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - arg_0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 702f) * arg_0))), arg_0, arg_1)), -global2.x);
    let var_1 = var_0.b;
    global0 = array<vec4<i32>, 15>();
    let var_2 = vec2<bool>(false, !(u_input.d > -1i));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, ~0u) ^ 83537u, 17u)];
    return var_0.c;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = !arg_0;
    var var_1 = Struct_1(firstLeadingBit(u_input.e.x), u_input.e.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(-1736f, -638f), false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(203f, 274f) + vec2<f32>(-159f, -1637f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1740f, -580f), vec2<f32>(-309f, -719f)), vec2<f32>(-154f, -587f), arg_0)))), ~abs(abs(~1i)));
    var var_2 = reverseBits(abs(u_input.b.yy & u_input.b.xz)) >> (vec2<u32>(select(_wgslsmith_dot_vec2_u32(u_input.e.zw, var_1.b), var_1.a << (u_input.e.x % 32u), any(select(vec3<bool>(true, arg_0, true), vec3<bool>(true, var_0, false), vec3<bool>(var_0, false, arg_0)))), ~4294967295u) % vec2<u32>(32u));
    let var_3 = global1[_wgslsmith_index_u32(min(~u_input.e.x, reverseBits(_wgslsmith_div_u32(1u, u_input.e.x))), 17u)];
    var var_4 = u_input.e;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.c.x))))), _wgslsmith_f_op_f32(667f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(126f, _wgslsmith_f_op_f32(trunc(1225f)), var_0)) * var_3.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    let var_0 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))))) || (max(arg_0.d, 0i) > 1i);
    var var_1 = vec3<f32>(arg_2.c.x, arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1445f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(var_0)).x * _wgslsmith_f_op_f32(floor(-463f)))));
    let var_2 = Struct_1(1u, _wgslsmith_mod_vec2_u32(~abs(u_input.e.xx), arg_1.yz), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.c))), arg_2.d >> ((~74516u & ((4294967295u >> (arg_1.x % 32u)) & ~55767u)) % 32u));
    let var_3 = var_2.a;
    global1 = array<Struct_1, 17>();
    return 1233f;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1196f)))) == -573f;
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_1(61998u, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u) << (u_input.e.zy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(u_input.e.zz, reverseBits(u_input.e.zw), u_input.e.zw ^ u_input.e.yy)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(func_2(arg_0 >= arg_0)))), 1i), u_input.e, Struct_1(abs(42489u), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(arg_3.xx, vec2<u32>(u_input.e.x, arg_3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 407f) * vec2<f32>(arg_0, 586f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1166f, arg_0), vec2<f32>(arg_0, -884f), vec2<bool>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2192f, arg_0) + vec2<f32>(arg_0, 1745f)))), -countOneBits(abs(arg_1))), -(~vec2<i32>(-1i, _wgslsmith_sub_i32(-24477i, arg_1)))));
    global0 = array<vec4<i32>, 15>();
    var var_2 = ~arg_3.x;
    var_1 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(865f, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.e.x, vec2<u32>(~u_input.e.x, 28996u << (u_input.e.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1351f))), 896f), -max(select(-9999i, ~1i, true), ~global2.x));
    var var_1 = ~1u;
    var_1 = 4294967295u;
    var var_2 = global2.x;
    let var_3 = _wgslsmith_f_op_f32(func_1(var_0.c.x, max(1i, u_input.b.x), true, u_input.e.xzy));
    global0 = array<vec4<i32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(trunc(562f))) + vec2<f32>(-1274f, 866f)), var_0.b);
}

