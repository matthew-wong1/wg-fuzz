struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: bool;

var<private> global2: array<Struct_3, 23>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-10595i, 1000f, vec2<u32>(4294967295u, 30079u), true), Struct_1(72099i, -797f, vec2<u32>(100164u, 68880u), true), Struct_1(-1i, 680f, vec2<u32>(1u, 0u), false), Struct_1(1i, -189f, vec2<u32>(0u, 35327u), false), Struct_1(i32(-2147483648), -1200f, vec2<u32>(76961u, 22061u), true), Struct_1(0i, 727f, vec2<u32>(1u, 4294967295u), true), Struct_1(38110i, -740f, vec2<u32>(1u, 11882u), false), Struct_1(-23743i, -241f, vec2<u32>(10068u, 1u), false), Struct_1(-4056i, 126f, vec2<u32>(0u, 0u), true), Struct_1(i32(-2147483648), -483f, vec2<u32>(82517u, 18479u), true), Struct_1(-30432i, 552f, vec2<u32>(1u, 4294967295u), false), Struct_1(2147483647i, 462f, vec2<u32>(0u, 75116u), true), Struct_1(28338i, -1000f, vec2<u32>(5081u, 1u), false), Struct_1(1i, 321f, vec2<u32>(0u, 4294967295u), false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    global2 = array<Struct_3, 23>();
    let var_0 = u_input.b;
    let var_1 = Struct_3(select(!select(select(vec4<bool>(true, arg_0.d.d, false, arg_1), vec4<bool>(arg_0.d.d, false, false, false), vec4<bool>(arg_0.d.d, false, arg_1, arg_1)), !vec4<bool>(true, true, arg_0.d.d, true), !vec4<bool>(false, true, arg_0.d.d, true)), select(select(select(vec4<bool>(false, arg_0.d.d, true, arg_0.d.d), vec4<bool>(arg_0.d.d, arg_0.d.d, true, false), true), !vec4<bool>(arg_0.d.d, true, arg_0.d.d, arg_0.d.d), select(vec4<bool>(arg_0.d.d, arg_0.d.d, false, arg_1), vec4<bool>(true, false, false, arg_1), arg_1)), select(!vec4<bool>(false, arg_0.d.d, true, arg_0.d.d), select(vec4<bool>(false, false, true, true), vec4<bool>(arg_0.d.d, arg_0.d.d, arg_0.d.d, arg_0.d.d), vec4<bool>(arg_1, arg_1, false, true)), arg_0.d.d), arg_0.d.d), !select(select(vec4<bool>(arg_0.d.d, false, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_0.d.d), arg_0.d.d), vec4<bool>(arg_1, arg_0.d.d, arg_1, true), !vec4<bool>(false, arg_1, true, arg_0.d.d))), arg_0.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.b, 687f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b, _wgslsmith_f_op_f32(select(var_1.b.b, var_1.b.b, false)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(arg_0.b))))));
    var var_3 = Struct_3(!vec4<bool>(!(u_input.a.x < u_input.a.x), !all(var_1.a.zzz), !all(var_1.a), false), Struct_1(_wgslsmith_sub_i32(-arg_0.c.x, ~arg_0.a.x) >> (abs(1u) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -240f), ~var_1.b.c, !arg_0.d.d));
    return 1i;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_2(vec2<i32>(arg_0.b.a, min(i32(-1i) * -56172i, _wgslsmith_mult_i32(i32(-1i) * -1i, ~2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.b - arg_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b - _wgslsmith_f_op_f32(f32(-1f) * -861f)))), vec4<i32>(-9393i, abs(-u_input.b.x), reverseBits(~(-u_input.b.x)), ~func_3(Struct_2(vec2<i32>(0i, u_input.b.x), vec2<f32>(541f, 1986f), vec4<i32>(-1i, arg_0.b.a, arg_0.b.a, arg_0.b.a), Struct_1(7200i, 994f, arg_1.yx, false), u_input.b.x), false && arg_0.a.x)), Struct_1(-_wgslsmith_clamp_i32(~30387i, 5202i, 14057i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(551f * -741f) * _wgslsmith_f_op_f32(arg_0.b.b - arg_0.b.b))), abs(~(vec2<u32>(arg_1.x, 16142u) >> (vec2<u32>(u_input.a.x, 43746u) % vec2<u32>(32u)))), (arg_0.a.x & true) != any(vec4<bool>(false, false, arg_0.b.d, arg_0.b.d))), _wgslsmith_clamp_i32(27914i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yz), max(arg_0.b.a, arg_0.b.a)) >> (abs(~11817u) % 32u), _wgslsmith_mult_i32(~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), max(25915i, arg_0.b.a))));
    var var_1 = min(13668u, var_0.d.c.x);
    var var_2 = var_0.c;
    return arg_0.a.xz;
}

fn func_1() -> u32 {
    var var_0 = !func_2(global0[_wgslsmith_index_u32(~select(~u_input.a.x, u_input.a.x, true), 6u)], ~max(max(u_input.a, vec3<u32>(1u, u_input.a.x, 4294967295u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, reverseBits(-24527i << (u_input.a.x % 32u)) >> (abs(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) % 32u)), -_wgslsmith_mod_i32(~(~(-19144i)), -49096i));
    var var_2 = Struct_1(min(-50113i, firstLeadingBit(u_input.b.x | u_input.b.x)) << (((u_input.a.x << (select(68735u, u_input.a.x, false) % 32u)) & (0u ^ u_input.a.x)) % 32u), _wgslsmith_div_f32(_wgslsmith_div_f32(833f, _wgslsmith_f_op_f32(trunc(-812f))), -284f), u_input.a.zz, false);
    let var_3 = u_input.b | u_input.b;
    var var_4 = !select(select(vec3<bool>(-493f >= var_2.b, func_2(Struct_3(vec4<bool>(true, true, true, false), global3[_wgslsmith_index_u32(1u, 14u)]), vec3<u32>(var_2.c.x, 4294967295u, var_2.c.x)).x, any(vec4<bool>(true, false, true, false))), select(vec3<bool>(false, true, var_2.d), vec3<bool>(var_2.d, var_0.x, true), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x))), !select(vec3<bool>(false, true, true), vec3<bool>(var_0.x, true, false), var_2.d)), select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, all(vec4<bool>(var_0.x, false, true, var_0.x)), all(vec3<bool>(var_2.d, var_0.x, var_2.d))), !var_2.d), var_2.d);
    return ~abs(~0u);
}

fn func_4(arg_0: u32) -> StorageBuffer {
    var var_0 = !(!select(vec3<bool>(true, true, arg_0 <= arg_0), vec3<bool>(true, true, true), vec3<bool>(false, true, true)));
    global0 = array<Struct_3, 6>();
    global1 = false;
    let var_1 = vec2<u32>(1u, firstTrailingBit(14954u) | _wgslsmith_div_u32(countOneBits(max(u_input.a.x, 7403u)), ~0u));
    var var_2 = abs(~(~(abs(u_input.a) | vec3<u32>(21218u, arg_0, arg_0))));
    return StorageBuffer(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(firstLeadingBit(~var_1.x), u_input.a.x, ~4294967295u)), -vec3<i32>(u_input.b.x, 1i, min(firstTrailingBit(-1i), u_input.b.x)), u_input.b, _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, 7925i, 0i) ^ vec4<i32>(0i, u_input.b.x, -101937i, 11236i), vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x))), -(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 28242i, u_input.b.x, u_input.b.x), vec4<i32>(-45833i, 2147483647i, u_input.b.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(select(vec2<bool>(true, true || all(vec3<bool>(true, true, false))), vec2<bool>(true, true), true));
    let var_0 = _wgslsmith_mod_vec4_u32(abs(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, 27042u, u_input.a.x, u_input.a.x)))), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(u_input.a.x), _wgslsmith_sub_u32(abs(u_input.a.x), reverseBits(1u)), 0u, ~(~u_input.a.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(313u, 1u, u_input.a.x, 63032u), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 3996u))));
    global1 = false;
    global2 = array<Struct_3, 23>();
    var var_1 = _wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, ~0i), ~firstLeadingBit(-vec2<i32>(1i, 2147483647i) << (u_input.a.zx % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = func_4(func_1());
}

