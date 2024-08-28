struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec4<i32>(i32(-2147483648), -56387i, i32(-2147483648), -11990i), 4426i, Struct_2(Struct_1(19460u))), Struct_4(vec4<i32>(16773i, 42529i, 2147483647i, i32(-2147483648)), 24247i, Struct_2(Struct_1(1u))));

var<private> global1: array<bool, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = select(arg_0.yw, select(!vec2<bool>(true, 1u < arg_3.a.a), select(vec2<bool>(any(arg_0), all(vec3<bool>(false, global1[_wgslsmith_index_u32(27203u, 26u)], arg_0.x))), select(!vec2<bool>(true, arg_0.x), vec2<bool>(true, arg_0.x), arg_0.xz), _wgslsmith_sub_u32(arg_3.a.a, arg_3.a.a) != arg_3.a.a), true), vec2<bool>(false, true));
    global1 = array<bool, 26>();
    let var_1 = ~arg_3.a.a == ~(~firstTrailingBit(87860u));
    let var_2 = arg_3.a.a;
    global0 = array<Struct_4, 2>();
    return ~38384u;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(abs(vec2<u32>(~56656u, 4294967295u >> (1u % 32u))) | abs(vec2<u32>(~4294967295u, func_3(vec4<bool>(global1[_wgslsmith_index_u32(4080u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], true, true), 1i, vec3<f32>(767f, -290f, -958f), Struct_2(Struct_1(18599u))))));
    global0 = array<Struct_4, 2>();
    return Struct_1(149951u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_3 {
    global1 = array<bool, 26>();
    global0 = array<Struct_4, 2>();
    let var_0 = global0[_wgslsmith_index_u32(~arg_0.c.a.a ^ abs(func_2().a), 2u)];
    let var_1 = 68548u;
    global1 = array<bool, 26>();
    return arg_1;
}

fn func_1(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = func_4(global0[_wgslsmith_index_u32(~reverseBits(arg_0.x) << (arg_0.x % 32u), 2u)], Struct_3(Struct_2(func_2()), any(select(!vec3<bool>(global1[_wgslsmith_index_u32(5619u, 26u)], true, true), !vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 26u)], false), true)), Struct_2(func_2())));
    global1 = array<bool, 26>();
    let var_1 = ~firstLeadingBit(-2147483647i);
    let var_2 = vec3<u32>(countOneBits(firstLeadingBit(0u ^ select(6644u, var_0.a.a.a, true))), _wgslsmith_div_u32(var_0.c.a.a, arg_0.x), 0u);
    global1 = array<bool, 26>();
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(-162f)), _wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(-676f - -321f));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_u32(~(~1u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~firstTrailingBit(vec3<u32>(0u, 0u, 11531u))), _wgslsmith_mult_u32(31905u, countOneBits(max(53790u, 0u)))));
    var_0 = reverseBits(select(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 57007u, 0u), vec3<u32>(1u, 16909u, 0u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_add_vec3_u32(~vec3<u32>(56815u, 71277u, 44194u), vec3<u32>(1u, 1u, 1u))), ~1u, !global1[_wgslsmith_index_u32(91871u, 26u)]));
    return Struct_3(Struct_2(func_2()), !global1[_wgslsmith_index_u32(4294967295u, 26u)], Struct_2(Struct_1(func_4(global0[_wgslsmith_index_u32(1u, 2u)], func_4(global0[_wgslsmith_index_u32(24201u, 2u)], Struct_3(Struct_2(Struct_1(70850u)), global1[_wgslsmith_index_u32(94869u, 26u)], Struct_2(Struct_1(11034u))))).a.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(trunc(1629f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-286f, -113f, 1029f, -1078f), vec4<f32>(-873f, -485f, -277f, 649f))) - _wgslsmith_f_op_vec4_f32(func_1(vec3<u32>(0u, 20684u, 30882u))))))));
    global1 = array<bool, 26>();
    var var_1 = ~vec2<u32>(~_wgslsmith_div_u32(46472u >> (var_0.a.a.a % 32u), firstLeadingBit(var_0.a.a.a)), var_0.c.a.a);
    let var_2 = Struct_3(func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-350f - _wgslsmith_f_op_f32(min(530f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(104f, -1000f, -2155f, 419f), vec4<f32>(-1954f, -1023f, -969f, 451f), true)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1552f, -216f, -609f, 1126f)))))).a, !(!var_0.b), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.x, 19023u));
}

