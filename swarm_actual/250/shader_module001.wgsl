struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(1i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(-37935i, 0i, -63734i, 2147483647i), vec4<i32>(5186i, 4074i, 2147483647i, i32(-2147483648)), vec4<i32>(44531i, -19098i, 13583i, 8705i), vec4<i32>(1i, -1i, i32(-2147483648), 8057i), vec4<i32>(0i, 0i, 0i, 21699i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -1799i), vec4<i32>(1i, 1i, -1i, 1i), vec4<i32>(4749i, 2147483647i, 18612i, 9915i), vec4<i32>(-56147i, 14482i, 40651i, -29200i), vec4<i32>(25083i, -22201i, -1i, 0i), vec4<i32>(i32(-2147483648), -44886i, -16402i, 10034i), vec4<i32>(-989i, -1i, -64190i, -45270i), vec4<i32>(-38896i, 1i, -81626i, 37131i), vec4<i32>(0i, -16671i, -2034i, 24793i), vec4<i32>(-27794i, 933i, 36505i, -26811i), vec4<i32>(-73026i, -10945i, -1i, 0i), vec4<i32>(-31735i, 28694i, -5382i, 1i), vec4<i32>(-20215i, i32(-2147483648), 1i, -32283i), vec4<i32>(-28693i, -1i, 0i, 0i), vec4<i32>(14245i, 3701i, -26598i, 3841i), vec4<i32>(2147483647i, 0i, 2147483647i, 24606i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.c.x * arg_1.d.x))))), 777f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c.x * -581f)));
    let var_1 = arg_1.a;
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_add_u32(max(1u, u_input.d << (1u % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(14588u, 7u)], 66076u), ~vec3<u32>(0u, 0u, u_input.b.x))), ~_wgslsmith_mod_u32(40663u, 4294967295u) >> (0u % 32u));
    var var_3 = 0u;
    let var_4 = true;
    return arg_2;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    let var_0 = any(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), !vec3<bool>(any(vec3<bool>(false, false, false)), false, true), false || all(vec2<bool>(true, true))));
    global1 = array<vec4<i32>, 22>();
    global1 = array<vec4<i32>, 22>();
    global0 = array<u32, 7>();
    global1 = array<vec4<i32>, 22>();
    return arg_0.b;
}

fn func_2() -> u32 {
    let var_0 = ~vec4<u32>(_wgslsmith_sub_u32(~u_input.d | _wgslsmith_add_u32(global0[_wgslsmith_index_u32(37210u, 7u)], 0u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], func_3(Struct_3(global1[_wgslsmith_index_u32(10552u, 22u)], u_input.b.x), Struct_3(global1[_wgslsmith_index_u32(u_input.a, 22u)], 31777u), vec4<f32>(1000f, -1859f, -950f, -215f), 2147483647i))), 4294967295u, 4294967295u, firstTrailingBit(min(reverseBits(15028u), 0u >> (1u % 32u))));
    var var_1 = _wgslsmith_clamp_i32(~(-2022i) ^ -select(-14814i, -5672i, true), 0i, max(~(42664i >> (0u % 32u)), 0i)) << (var_0.x % 32u);
    global0 = array<u32, 7>();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -510f), 1637f) + vec2<f32>(246f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1010f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(floor(-1222f)), _wgslsmith_div_f32(var_2.x, -185f)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(true, vec3<bool>(select(i32(-1i) * -2147483647i, ~29724i, true) <= 1i, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, false), vec2<bool>(true, true))), true));
    global1 = array<vec4<i32>, 22>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(828f)), 247f))) < -1247f, var_0.b);
    var var_2 = reverseBits(firstLeadingBit(vec4<i32>(~(-15892i), func_1(-2147483647i, Struct_2(Struct_1(vec2<f32>(-1000f, 667f), vec3<i32>(-19906i, 2147483647i, -2147483647i), vec3<f32>(2408f, 959f, 130f)), -49486i, 1617f, vec2<f32>(2008f, 984f)), -27949i, u_input.d), -65i, 42918i)) & global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 22u)]);
    var var_3 = ~vec4<i32>(17846i >> (func_2() % 32u), _wgslsmith_mod_i32(-1i, -6619i), ~(-22685i), -_wgslsmith_mod_i32(var_2.x, _wgslsmith_sub_i32(var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a, ~global0[_wgslsmith_index_u32(~83872u, 7u)], ~abs(1u), u_input.b.x), ~u_input.c);
}

