struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-2883f);

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(true, Struct_2(0i, vec3<bool>(false, false, true))), Struct_3(true, Struct_2(-6347i, vec3<bool>(false, true, false))), Struct_3(false, Struct_2(i32(-2147483648), vec3<bool>(false, true, true))), Struct_3(false, Struct_2(-69137i, vec3<bool>(false, false, false))), Struct_3(false, Struct_2(-87208i, vec3<bool>(true, false, true))), Struct_3(false, Struct_2(2147483647i, vec3<bool>(false, true, false))), Struct_3(true, Struct_2(-23553i, vec3<bool>(false, true, false))), Struct_3(true, Struct_2(1i, vec3<bool>(false, true, true))), Struct_3(false, Struct_2(0i, vec3<bool>(true, false, true))), Struct_3(true, Struct_2(-42275i, vec3<bool>(false, true, false))), Struct_3(false, Struct_2(2147483647i, vec3<bool>(true, false, true))), Struct_3(true, Struct_2(i32(-2147483648), vec3<bool>(true, false, false))), Struct_3(true, Struct_2(10129i, vec3<bool>(false, true, true))), Struct_3(true, Struct_2(1i, vec3<bool>(true, true, false))), Struct_3(true, Struct_2(-5662i, vec3<bool>(false, true, false))), Struct_3(false, Struct_2(-5037i, vec3<bool>(false, false, true))), Struct_3(true, Struct_2(-1i, vec3<bool>(false, false, false))), Struct_3(true, Struct_2(i32(-2147483648), vec3<bool>(true, false, false))), Struct_3(true, Struct_2(i32(-2147483648), vec3<bool>(true, true, false))), Struct_3(false, Struct_2(7247i, vec3<bool>(true, false, false))), Struct_3(false, Struct_2(-3228i, vec3<bool>(false, false, true))), Struct_3(true, Struct_2(34109i, vec3<bool>(true, false, true))), Struct_3(false, Struct_2(1665i, vec3<bool>(true, true, false))), Struct_3(true, Struct_2(1i, vec3<bool>(true, false, false))), Struct_3(true, Struct_2(48276i, vec3<bool>(false, true, false))), Struct_3(false, Struct_2(i32(-2147483648), vec3<bool>(true, false, false))), Struct_3(true, Struct_2(i32(-2147483648), vec3<bool>(false, true, true))));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global1 = array<Struct_1, 18>();
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 1213f, 2381f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a, -1895f, global0.a), vec3<f32>(-131f, global0.a, global0.a))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1418f, global0.a, -416f), vec3<f32>(global0.a, 438f, global0.a), false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, global0.a) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a, global0.a, global0.a), vec3<f32>(global0.a, global0.a, 581f))))))));
    let var_1 = var_0.yy;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~arg_1, 1u), 0u), 27u)];
    global1 = array<Struct_1, 18>();
    let var_3 = 1033f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1645f, -904f)) * _wgslsmith_f_op_f32(-307f + 358f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(125f))))))), _wgslsmith_f_op_f32(round(var_1.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(304f * _wgslsmith_f_op_f32(-global0.a)) + -1140f), _wgslsmith_f_op_f32(func_4(Struct_2(u_input.a.x, vec3<bool>(true, true, func_3(vec4<bool>(false, true, true, true)))), 42331u)));
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(26642u << (~4294967295u % 32u), _wgslsmith_clamp_u32(~72073u, ~4294967295u, _wgslsmith_div_u32(1u, 62529u))), max(1u, countOneBits(38398u) >> (1u % 32u))), max(~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(14856u, 65563u, 4294967295u)), ~vec3<u32>(4294967295u, 0u, 0u)), vec3<u32>(min(~52500u, ~1u), 4294967295u, select(0u, _wgslsmith_div_u32(83071u, 4294967295u), true))));
    var var_2 = !all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(all(vec3<bool>(true, true, true)), true)));
    var var_3 = 41875u;
    var_2 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, (13295i > u_input.a.x) && func_3(vec4<bool>(false, true, true, true)), func_3(vec4<bool>(true, true, false, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))));
    return Struct_2(u_input.a.x, vec3<bool>(true, false, true));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = ~1u;
    global1 = array<Struct_1, 18>();
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0, 1u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(global0.a, -653f))))), _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(53041u, select(58199u, 0u, true)), 18u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !(1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, _wgslsmith_clamp_u32(0u, 0u, 1u)), ~min(vec3<u32>(69744u, 37518u, 0u), vec3<u32>(6906u, 17951u, 32412u))));
    global0 = global1[_wgslsmith_index_u32(select(16730u, 33259u, _wgslsmith_f_op_f32(round(-197f)) > _wgslsmith_f_op_f32(-global0.a)), 18u)];
    global1 = array<Struct_1, 18>();
    global2 = array<Struct_3, 27>();
    var var_2 = abs(vec4<i32>(-1i, _wgslsmith_clamp_i32(firstLeadingBit(-22947i), (1i << (0u % 32u)) | ~u_input.a.x, _wgslsmith_mod_i32(6687i, 1i)), u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(select(vec2<u32>(17675u, 18171u), select(vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), true && var_0.b.x), !(!vec2<bool>(var_0.b.x, var_0.b.x))), vec2<u32>(min(~0u, ~85584u), 1u)), vec3<u32>(0u, ~106979u, 17945u), ~var_2.x);
}

