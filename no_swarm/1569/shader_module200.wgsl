struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<i32>(-17508i, -9602i), false, 301f), Struct_2(vec2<i32>(0i, -1376i), true, 1000f), Struct_2(vec2<i32>(17416i, 0i), false, -549f), Struct_2(vec2<i32>(42753i, -31228i), false, -850f), Struct_2(vec2<i32>(11698i, i32(-2147483648)), true, -540f), Struct_2(vec2<i32>(0i, -75836i), false, 282f));

var<private> global2: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(575f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f), -624f)), arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(834f)))))) * arg_2.a.x));
    let var_1 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-375f - _wgslsmith_f_op_f32(-var_0.x)), 1010f)));
    var var_2 = Struct_1(63331i, 32652i, ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, global2.x), 4477i));
    let var_3 = vec3<bool>(true & arg_0.x, arg_0.x, arg_0.x & !(_wgslsmith_mult_u32(u_input.b, u_input.b) != ~31757u));
    var var_4 = Struct_1(-(~(-10917i)), -2147483647i, 1i);
    return max(max(global2.x, abs(~(-23979i))), -1i);
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(209f, -260f, -511f) - vec3<f32>(-1000f, -1273f, 162f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-165f, -939f, -638f), vec3<f32>(-162f, -452f, 455f))), vec3<f32>(_wgslsmith_f_op_f32(min(-545f, -365f)), _wgslsmith_f_op_f32(max(-2995f, 377f)), -450f))))), vec2<i32>(u_input.a.x, 1i));
    let var_1 = Struct_1(global2.x, var_0.b.x, _wgslsmith_add_i32(global2.x, func_3(vec2<bool>(false, true), 56064i, Struct_3(var_0.a, vec2<i32>(u_input.a.x, 3367i))) & (_wgslsmith_div_i32(2147483647i, global2.x) & (u_input.a.x >> (u_input.b % 32u)))));
    var var_2 = Struct_4(Struct_3(var_0.a, var_0.b), vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(-41291i, var_0.b.x, 17493i, 56689i), vec4<i32>(26449i, u_input.a.x, u_input.a.x, -29322i)) != (42480i | _wgslsmith_mod_i32(2147483647i, global2.x)), select(true, ~0i >= (2147483647i >> (u_input.b % 32u)), false), !(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) > _wgslsmith_f_op_f32(sign(var_0.a.x)))), _wgslsmith_mod_u32(8478u, u_input.b));
    let var_3 = ~(-_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, global2.x, global2.x, global2.x) >> (vec4<u32>(42247u, 0u, 14215u, u_input.b) % vec4<u32>(32u)), vec4<i32>(-1i, var_2.a.b.x, u_input.a.x, -17477i)), select(abs(vec4<i32>(global2.x, var_2.a.b.x, var_1.a, global2.x)), abs(vec4<i32>(global2.x, var_0.b.x, 32713i, 16292i)), all(var_2.b))));
    global1 = array<Struct_2, 6>();
    return vec4<bool>(all(vec4<bool>((var_0.b.x == var_3) | !var_2.b.x, var_2.b.x, true, true | var_2.b.x)), all(var_2.b), firstTrailingBit(u_input.b) >= 0u, any(select(!vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x), !vec4<bool>(var_2.b.x, var_2.b.x, true, var_2.b.x), select(!var_2.b.x, false, true))));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global1 = array<Struct_2, 6>();
    let var_0 = Struct_2(~_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, global2.x)), u_input.a.yx) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(26612u, 4294967295u)))) % vec2<u32>(32u)), !any(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2281f))));
    var var_1 = ~_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, 25758u)), vec3<u32>(u_input.b, u_input.b, u_input.b) << (~vec3<u32>(u_input.b, arg_0, arg_0) % vec3<u32>(32u))) >> (abs(max(~abs(vec3<u32>(arg_0, 4294967295u, 0u)), min(vec3<u32>(1u, arg_0, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_0, 1u), vec3<u32>(4294967295u, 4294967295u, 20683u))))) % vec3<u32>(32u));
    var var_2 = !(!(arg_0 == (~var_1.x | 1u)));
    var var_3 = vec4<u32>(~arg_0 << (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 8970u, u_input.b, 0u), firstTrailingBit(~vec4<u32>(3465u, u_input.b, 1u, var_1.x))) % 32u), _wgslsmith_div_u32(~arg_0, ~u_input.b << (u_input.b % 32u)), 17522u, _wgslsmith_div_u32(35401u, _wgslsmith_dot_vec3_u32(vec3<u32>(446u, u_input.b, u_input.b << (89903u % 32u)), vec3<u32>(var_1.x, ~u_input.b, var_1.x ^ 4294967295u))));
    return ~(~(var_3.xxz ^ reverseBits(var_3.zwx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(~10673u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b, 66994u), firstLeadingBit(1u)), vec2<u32>(u_input.b, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(u_input.b, u_input.b), abs(max(u_input.b, 37758u)), abs(~15234u)), ~abs(func_1(u_input.b))));
    var var_1 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(1767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -387f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-805f * 1311f)))), _wgslsmith_div_vec2_i32(abs(vec2<i32>(82208i, 9919i)), u_input.a.yy)), vec3<bool>(false, true, !(!any(vec2<bool>(false, true)))), ~17310u);
    var var_2 = Struct_2(-_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-30488i, 1i), ~vec2<i32>(16855i, 1i)), ~u_input.a.xx << (vec2<u32>(var_1.c, 4294967295u) % vec2<u32>(32u))), false, _wgslsmith_f_op_f32(-388f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1672f + _wgslsmith_f_op_f32(-1802f + var_1.a.a.x)))));
    global2 = _wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), select(~vec3<i32>(var_2.a.x >> (70922u % 32u), 19251i, var_2.a.x), _wgslsmith_clamp_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(u_input.a, u_input.a), vec3<i32>(var_2.a.x, -18273i, var_1.a.b.x) & vec3<i32>(u_input.a.x, -13574i, var_2.a.x)) ^ _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(var_2.a.x, global2.x, u_input.a.x)), ~u_input.a), select(!func_2().wyw, var_1.b, vec3<bool>(true, all(vec2<bool>(var_2.b, true)), false))));
    let var_3 = var_1.a;
    var var_4 = u_input.a;
    global1 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_2.a.x, _wgslsmith_mod_i32(max(1i, 2147483647i), var_3.b.x), true), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.a.x, var_1.a.b.x, var_3.b.x) << (~vec4<u32>(0u, 1u, var_1.c, 86120u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_4.x, 0i, global2.x, global2.x), vec4<i32>(-2147483647i, var_3.b.x, 25894i, var_1.a.b.x), var_2.b), abs(vec4<i32>(1i, var_1.a.b.x, -2147483647i, var_2.a.x))), max(vec4<i32>(var_4.x, 2147483647i, 23295i, var_2.a.x) & vec4<i32>(0i, -2147483647i, -30346i, -61398i), _wgslsmith_add_vec4_i32(vec4<i32>(-45380i, -40692i, 65376i, 2147483647i), vec4<i32>(u_input.a.x, -2147483647i, 79602i, -2147483647i))))), var_1.a.a.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.a.x))) + var_1.a.a.x)));
}

