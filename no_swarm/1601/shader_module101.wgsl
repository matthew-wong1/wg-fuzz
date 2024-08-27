struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(4294967295u, vec4<bool>(false, true, false, true), vec2<u32>(0u, 12220u), 50289u), Struct_1(2259u, vec4<bool>(false, true, true, true), vec2<u32>(38728u, 100541u), 29348u), Struct_1(0u, vec4<bool>(true, false, true, false), vec2<u32>(0u, 1u), 1u), Struct_1(1u, vec4<bool>(true, true, false, false), vec2<u32>(40491u, 0u), 1u), Struct_1(22862u, vec4<bool>(false, true, false, false), vec2<u32>(0u, 1u), 14989u), Struct_1(21360u, vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 82570u), 0u), Struct_1(0u, vec4<bool>(false, false, true, true), vec2<u32>(0u, 9094u), 21306u), Struct_1(22527u, vec4<bool>(true, false, false, false), vec2<u32>(11526u, 1u), 1u), Struct_1(67950u, vec4<bool>(true, true, false, true), vec2<u32>(10606u, 162366u), 4294967295u), Struct_1(0u, vec4<bool>(false, true, true, false), vec2<u32>(79718u, 4294967295u), 4294967295u), Struct_1(21841u, vec4<bool>(false, true, true, false), vec2<u32>(0u, 46368u), 4294967295u), Struct_1(0u, vec4<bool>(false, false, true, false), vec2<u32>(6589u, 0u), 1u), Struct_1(4294967295u, vec4<bool>(false, true, true, false), vec2<u32>(0u, 33756u), 10430u), Struct_1(107u, vec4<bool>(true, true, false, true), vec2<u32>(1u, 1u), 4294967295u), Struct_1(4294967295u, vec4<bool>(true, false, true, false), vec2<u32>(0u, 95125u), 1u), Struct_1(49849u, vec4<bool>(false, true, true, false), vec2<u32>(0u, 105825u), 1u), Struct_1(69440u, vec4<bool>(false, false, true, false), vec2<u32>(97629u, 72920u), 0u), Struct_1(4294967295u, vec4<bool>(true, false, true, true), vec2<u32>(66355u, 1u), 41131u), Struct_1(33595u, vec4<bool>(true, true, false, false), vec2<u32>(0u, 0u), 4294967295u), Struct_1(58203u, vec4<bool>(true, false, false, true), vec2<u32>(38854u, 55981u), 1u), Struct_1(2511u, vec4<bool>(false, false, false, false), vec2<u32>(86543u, 1u), 1u), Struct_1(580u, vec4<bool>(true, false, true, true), vec2<u32>(25387u, 52584u), 53680u), Struct_1(3817u, vec4<bool>(true, false, false, false), vec2<u32>(93673u, 920u), 4294967295u), Struct_1(8833u, vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 33385u), 30726u), Struct_1(4294967295u, vec4<bool>(false, true, false, false), vec2<u32>(0u, 15799u), 4294967295u), Struct_1(67764u, vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 0u), 18698u), Struct_1(32148u, vec4<bool>(true, true, true, false), vec2<u32>(1u, 26275u), 4294967295u));

var<private> global2: vec3<f32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(abs(~12995u), 27u)];
    global1 = array<Struct_1, 27>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(989f, global2.x, -1556f));
    global0 = array<u32, 14>();
    var var_2 = Struct_1(~u_input.a.x, var_0.b, abs(vec2<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~26068u, 14u)], 14u)], 14u)], ~20915u)), abs(0u));
    return 69972u;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = vec3<i32>(18360i << (1u % 32u), 1i, -38480i);
    let var_1 = var_0.x;
    var var_2 = vec2<bool>(arg_0.b.x, arg_0.b.x);
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    return abs(arg_2.x);
}

fn func_1(arg_0: vec3<i32>) -> bool {
    let var_0 = ~((_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mod_u32(4294967295u, 1u)) & _wgslsmith_dot_vec4_u32(u_input.a, select(u_input.a, u_input.a, true))) >> (~(~func_2(vec3<bool>(false, false, true))) % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x)))));
    let var_2 = global1[_wgslsmith_index_u32(var_0, 27u)];
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, var_2.a) & vec2<u32>(0u, 0u), vec2<u32>(28112u, 9265u)), u_input.a.wz), ~func_3(Struct_1(36348u, vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x), u_input.a.yz, 40170u), _wgslsmith_f_op_vec3_f32(vec3<f32>(621f, 875f, global2.x) - vec3<f32>(-2452f, var_1, global2.x)), u_input.a, Struct_2(u_input.a, vec2<f32>(-1587f, var_1)))) | u_input.a.x;
    var var_4 = !select(!select(var_2.b, select(var_2.b, var_2.b, vec4<bool>(false, false, var_2.b.x, var_2.b.x)), -2374f != var_1), !var_2.b, var_2.b);
    return any(vec2<bool>(!var_4.x, any(var_4.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global2.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), 1497f), !func_1(~(~vec3<i32>(0i, 41821i, -2147483647i))), !(firstLeadingBit(min(18400u, 0u)) <= _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 27260u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.a.x, 4294967295u)), func_2(vec3<bool>(true, true, true)))));
    var var_1 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71672u, 14u)], 14u)], 14u)]), 14u)], 14u)], ~u_input.a.x), ~1u, ~_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.zx)), ~vec4<u32>(firstTrailingBit(u_input.a.x), max(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)], 14u)]), ~u_input.a.x, ~9762u)), vec2<f32>(_wgslsmith_div_f32(global2.x, global2.x), global2.x));
    global0 = array<u32, 14>();
    var var_2 = true;
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(171f + 457f), global2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-440f, -1796f, 938f) * vec3<f32>(global2.x, 1682f, -291f)))))))));
    let var_3 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(10961u, 0u, 4294967295u, 4294967295u), vec4<u32>(min(1u, u_input.a.x), var_1.a.x, _wgslsmith_add_u32(var_1.a.x, 1u), abs(func_2(vec3<bool>(true, true, true)))), _wgslsmith_mod_vec4_u32(var_1.a, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.x, u_input.a.x, 9759u, 34289u), var_1.a), ~var_1.a)));
    var_0 = abs(global0[_wgslsmith_index_u32(1u, 14u)]) <= ~abs(_wgslsmith_clamp_u32(~33659u, _wgslsmith_add_u32(var_1.a.x, 19251u), var_1.a.x));
    let var_4 = Struct_1(var_3.x, vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), !(max(0u, 4294967295u) < var_3.x), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true), u_input.a.yz, global0[_wgslsmith_index_u32(0u, 14u)]);
    global1 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(-919f, _wgslsmith_sub_vec2_u32(u_input.a.xx, _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, 770u) ^ var_4.c, var_4.b.x & var_4.b.x), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.a.x), vec2<u32>(4294967295u, 5666u)), ~u_input.a.x))));
}

