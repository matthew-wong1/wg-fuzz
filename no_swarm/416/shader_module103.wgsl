struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(845f, 31992u), Struct_1(-1000f, 17663u), Struct_1(-1598f, 0u), Struct_1(1313f, 0u), Struct_1(-295f, 119905u), Struct_1(-103f, 4294967295u), Struct_1(-510f, 4294967295u), Struct_1(-661f, 17226u), Struct_1(1336f, 35067u), Struct_1(-1000f, 71102u), Struct_1(1000f, 12302u), Struct_1(447f, 0u), Struct_1(-339f, 16958u), Struct_1(-1762f, 1668u), Struct_1(139f, 0u), Struct_1(329f, 1u), Struct_1(-328f, 0u), Struct_1(-1000f, 11872u), Struct_1(-958f, 0u), Struct_1(1593f, 38316u), Struct_1(-744f, 0u), Struct_1(-929f, 5766u), Struct_1(-1342f, 92031u), Struct_1(1880f, 81106u), Struct_1(715f, 0u), Struct_1(-462f, 99033u), Struct_1(1012f, 37666u));

var<private> global2: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(1u, 0u, _wgslsmith_sub_u32(17171u, 8437u))), min(_wgslsmith_add_u32(min(4294967295u, 17657u), 0u), _wgslsmith_div_u32(1u, 32582u))) ^ min(83041u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(37427u, 4294967295u), vec2<u32>(32350u, 4294967295u)), 1u));
    var var_1 = 38572i;
    global2 = vec2<i32>(select(-6671i, select(2147483647i, 2147483647i, select(false, arg_0, arg_0)) | _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1.x, global2.x), -53349i), all(!(!vec3<bool>(true, arg_0, arg_0)))), 40148i);
    let var_2 = -724f;
    var var_3 = Struct_3(~(~40370u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(var_2, 1000f)), 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-883f, -616f)) + vec2<f32>(var_2, var_2)))))));
    return reverseBits(~countOneBits(firstTrailingBit(firstTrailingBit(vec4<u32>(0u, var_3.a, 4294967295u, 38598u)))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, 1u)), select(vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), select(vec2<bool>(false, arg_0.a.x), vec2<bool>(arg_0.a.x, arg_0.a.x), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(503f, 552f)))));
    let var_1 = -u_input.a.x;
    global1 = array<Struct_1, 27>();
    let var_2 = min(func_3(true, u_input.a.yx ^ ~_wgslsmith_div_vec2_i32(u_input.a.zy, u_input.a.yx)), ~select(vec4<u32>(reverseBits(18085u), firstTrailingBit(var_0.a), var_0.a, _wgslsmith_mod_u32(var_0.a, 0u)), ~countOneBits(vec4<u32>(4294967295u, 1u, 47304u, 1u)), !(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, true))));
    let var_3 = vec4<u32>(~1u, 3875u >> (_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(_wgslsmith_div_u32(var_0.a, var_0.a), ~27750u, ~var_0.a, ~var_0.a)) % 32u), var_0.a, select(_wgslsmith_dot_vec4_u32(var_2, _wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), var_2)), 1u, arg_1 != _wgslsmith_f_op_f32(-2445f - _wgslsmith_f_op_f32(trunc(405f)))));
    return global1[_wgslsmith_index_u32(1u, 27u)];
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = -(u_input.a.x << (arg_1.a % 32u));
    return func_2(Struct_2(!select(!arg_2, vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, false, arg_2.x, arg_2.x))), _wgslsmith_div_f32(-505f, arg_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1261f * _wgslsmith_div_f32(-1459f, 1f));
    let var_1 = Struct_1(-964f, 1u);
    let var_2 = func_1(var_1.b, Struct_3(1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(614f, -400f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, var_1.a) + vec2<f32>(329f, var_1.a))))), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(var_1.a - var_1.a))));
    var var_3 = Struct_2(vec4<bool>(!((u_input.a.x << (var_2.b % 32u)) <= global2.x), u_input.a.x == _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -18882i), var_2.b <= func_2(Struct_2(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(sign(var_1.a))).b, all(vec3<bool>(true, true, false))));
    var var_4 = var_1.b;
    var_0 = _wgslsmith_f_op_f32(abs(var_2.a));
    let var_5 = vec4<i32>(u_input.a.x, abs(global2.x), 0i, ~(global2.x | (global2.x << (4294967295u % 32u)))) >> ((vec4<u32>(var_1.b, ~4294967295u, func_1(0u, Struct_3(var_2.b, vec2<f32>(var_1.a, var_1.a)), select(vec4<bool>(var_3.a.x, var_3.a.x, true, var_3.a.x), var_3.a, vec4<bool>(var_3.a.x, var_3.a.x, false, false)), vec2<f32>(-280f, var_1.a)).b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 1u), ~vec2<u32>(24689u, 0u))) ^ vec4<u32>(_wgslsmith_sub_u32(var_1.b, var_2.b) ^ (1u & var_1.b), select(9695u, var_1.b, all(vec2<bool>(true, var_3.a.x))), 4030u, ~_wgslsmith_sub_u32(var_2.b, 33379u))) % vec4<u32>(32u));
    var var_6 = var_1.a;
    var_6 = -1625f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-929f * _wgslsmith_div_f32(var_1.a, var_1.a)))))), 38370i);
}

