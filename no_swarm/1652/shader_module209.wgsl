struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, false, false, false, false, true);

var<private> global1: array<vec2<i32>, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_2 {
    let var_0 = 224f;
    var var_1 = 598f;
    let var_2 = ~vec3<i32>(abs(~u_input.b << (11631u % 32u)), u_input.b, _wgslsmith_clamp_i32(0i, u_input.b, u_input.c));
    global1 = array<vec2<i32>, 24>();
    global0 = array<bool, 8>();
    return Struct_2(global0[_wgslsmith_index_u32(countOneBits(~(u_input.a.x & 60800u)), 8u)], 52506i, u_input.b, u_input.a.x);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -381f);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(299f - arg_0), _wgslsmith_f_op_f32(abs(-278f)), _wgslsmith_f_op_f32(sign(429f)), _wgslsmith_f_op_f32(ceil(1709f))))), func_2(), arg_1);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-941f, var_1.a.x, arg_0))))), _wgslsmith_f_op_vec3_f32(-var_1.a.yyx))), 8746u, !global0[_wgslsmith_index_u32(arg_1.b.x, 8u)], func_2());
    var var_3 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, u_input.a.x), max(vec4<u32>(var_2.e.d, 68580u, arg_1.b.x, var_2.c), vec4<u32>(arg_1.b.x, 1u, arg_1.b.x, var_2.e.d))) >> (vec4<u32>(abs(_wgslsmith_div_u32(1u, 17900u)), 11863u, var_1.c.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b.x, 0u, 9859u), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), abs(vec3<u32>(var_1.b.d, var_1.b.d, 78467u)))) % vec4<u32>(32u)));
    return ~(var_3.x ^ u_input.a.x) << (48179u % 32u);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(arg_0.x, 8u)], 1i, 2147483647i, u_input.a.x);
    let var_1 = ~(arg_0.x | ~(~abs(arg_0.x)));
    var_0 = func_2();
    global1 = array<vec2<i32>, 24>();
    var var_2 = select(arg_0.x, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1456f), Struct_1(u_input.a.x, _wgslsmith_sub_vec2_u32(arg_0.xx, vec2<u32>(22732u, 54034u)) ^ vec2<u32>(1u, 1u), false)), true);
    return Struct_2(true, -1i, ~(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.b), global1[_wgslsmith_index_u32(var_0.d, 24u)]), u_input.b)), firstTrailingBit(0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 24>();
    var var_0 = vec2<u32>(u_input.a.x, 1u);
    global1 = array<vec2<i32>, 24>();
    global0 = array<bool, 8>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-979f, 1141f, -361f, -1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1632f, 1000f, 845f), vec4<f32>(-131f, -1180f, 1370f, -823f), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(1u, 8u)])))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-132f, -1053f, 3153f, -594f) - vec4<f32>(-169f, 387f, -1240f, -425f))))))), func_1(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, reverseBits(37210u), ~u_input.a.x, 0u), ~vec4<u32>(var_0.x, var_0.x, var_0.x, 1u) & ~vec4<u32>(128783u, var_0.x, 10587u, var_0.x))), Struct_1(firstTrailingBit(~max(4294967295u, var_0.x)), ~(~vec2<u32>(4294967295u, u_input.a.x)), select(all(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a.x, 8u)])), !global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 31762u, 20702u, var_0.x), vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x)), 8u)]) | func_2().a));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-384f + _wgslsmith_f_op_f32(select(var_1.a.x, 1010f, false))) * var_1.a.x)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.a.x))))))) * var_1.a.zy);
    var var_4 = false;
    var var_5 = vec2<u32>(~45803u, ~func_1(vec4<u32>(18298u, _wgslsmith_mult_u32(var_1.b.d, var_0.x), 13389u, ~u_input.a.x)).d);
    let x = u_input.a;
    s_output = StorageBuffer(46264u);
}

