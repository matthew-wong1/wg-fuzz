struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 12>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<u32>) -> i32 {
    let var_0 = arg_2;
    var var_1 = reverseBits(vec3<u32>(68623u, _wgslsmith_div_u32(arg_1.x, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(58007u, arg_3.x))), ~34232u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, ~1u, _wgslsmith_mod_u32(arg_3.x, arg_1.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 10724u, 1u), vec3<u32>(35457u, 33451u, 4294967295u)), arg_3) % vec3<u32>(32u)));
    return 2147483647i;
}

fn func_2() -> Struct_2 {
    let var_0 = 0u;
    global0 = array<Struct_5, 12>();
    var var_1 = Struct_2(_wgslsmith_sub_i32(~(-1i), u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(581f)), -317f) + vec2<f32>(_wgslsmith_f_op_f32(abs(1386f)), _wgslsmith_f_op_f32(-122f + 1833f)))));
    var var_2 = 1i;
    return Struct_2(func_3(Struct_3(false, var_1.b, _wgslsmith_f_op_vec2_f32(var_1.b.a * var_1.b.a), var_1.b, vec4<i32>(2147483647i, 69955i, var_1.a, 0i) ^ vec4<i32>(var_1.a, 1i, 34395i, var_1.a)), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(var_0, var_0)), ~vec2<u32>(var_0, 4294967295u)), true, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 8089u, 40091u), vec3<u32>(26499u, var_0, 1u)), ~vec3<u32>(var_0, var_0, 39u))) >> (var_0 % 32u), var_1.b);
}

fn func_1() -> Struct_4 {
    let var_0 = func_2();
    global0 = array<Struct_5, 12>();
    global0 = array<Struct_5, 12>();
    global0 = array<Struct_5, 12>();
    var var_1 = true;
    return Struct_4(select(vec2<i32>(firstLeadingBit(var_0.a), ~var_0.a >> (1u % 32u)), abs(vec2<i32>(~30820i, firstTrailingBit(1i))), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 12>();
    let var_0 = ~4294967295u;
    var var_1 = var_0;
    let var_2 = firstLeadingBit(firstTrailingBit((vec4<u32>(0u, 0u, 1u, 1u) ^ vec4<u32>(0u, var_0, 34986u, 2388u)) & firstTrailingBit(vec4<u32>(39508u, var_0, var_0, 31659u))) ^ max(_wgslsmith_mult_vec4_u32(vec4<u32>(38523u, var_0, 4294967295u, var_0), firstLeadingBit(vec4<u32>(var_0, 1u, 0u, 81758u))), ~(vec4<u32>(var_0, var_0, var_0, var_0) ^ vec4<u32>(var_0, 0u, 37141u, var_0))));
    var var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(821f)), -1807f), _wgslsmith_f_op_f32(766f * 1f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f * _wgslsmith_div_f32(1565f, 1485f))))));
    var_1 = var_0 & 14363u;
    let var_5 = select(!vec2<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))) != (var_4 >= -1473f), !(var_4 >= -1391f)), select(!vec2<bool>(all(vec2<bool>(false, true)), select(false, false, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(abs(165f)) > var_4));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4, _wgslsmith_f_op_f32(-var_4), 1607f), vec3<f32>(_wgslsmith_f_op_f32(floor(355f)), var_4, _wgslsmith_f_op_f32(min(var_4, var_4))))) * vec3<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-183f)), 1675f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4))))), -1140f, ~(~u_input.a), 3460i);
}

