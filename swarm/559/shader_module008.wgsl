struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(1328f, vec3<f32>(2034f, 1000f, -2017f)), Struct_5(422f, vec3<f32>(-346f, 933f, -1090f)), Struct_5(545f, vec3<f32>(-1026f, -1114f, 1511f)), Struct_5(-292f, vec3<f32>(681f, 284f, -2939f)), Struct_5(-333f, vec3<f32>(-1057f, -616f, -477f)), Struct_5(233f, vec3<f32>(245f, -1896f, 2027f)), Struct_5(1000f, vec3<f32>(1287f, 256f, 692f)), Struct_5(-269f, vec3<f32>(-2317f, -189f, -1621f)), Struct_5(-526f, vec3<f32>(1728f, -1000f, 900f)), Struct_5(-332f, vec3<f32>(-1027f, -1000f, -923f)), Struct_5(-294f, vec3<f32>(-676f, -1273f, 1323f)), Struct_5(-551f, vec3<f32>(337f, 615f, 678f)), Struct_5(-146f, vec3<f32>(-1000f, 387f, -1003f)), Struct_5(-1887f, vec3<f32>(1064f, 1314f, -310f)));

var<private> global1: array<i32, 19> = array<i32, 19>(-20152i, -7464i, 5577i, -54059i, 19956i, -8912i, 0i, 0i, i32(-2147483648), 49551i, 0i, -4836i, -40539i, -11774i, i32(-2147483648), -12443i, -1i, 1i, -3800i);

var<private> global2: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(62249u, vec2<bool>(true, false), vec3<f32>(-1995f, 1425f, -494f)), Struct_4(1u, vec2<bool>(true, false), vec3<f32>(-214f, 447f, 843f)), Struct_4(67646u, vec2<bool>(true, false), vec3<f32>(-1126f, 306f, 1309f)), Struct_4(71367u, vec2<bool>(true, true), vec3<f32>(885f, -1000f, 211f)), Struct_4(31248u, vec2<bool>(true, true), vec3<f32>(337f, -907f, -792f)), Struct_4(4294967295u, vec2<bool>(true, false), vec3<f32>(-2404f, -403f, -622f)), Struct_4(48940u, vec2<bool>(true, true), vec3<f32>(1000f, -1116f, -654f)), Struct_4(1u, vec2<bool>(false, false), vec3<f32>(146f, 1000f, 2150f)), Struct_4(78756u, vec2<bool>(true, true), vec3<f32>(213f, 1000f, -730f)), Struct_4(0u, vec2<bool>(false, false), vec3<f32>(1115f, -416f, 494f)), Struct_4(3074u, vec2<bool>(true, true), vec3<f32>(-308f, -280f, 615f)), Struct_4(8023u, vec2<bool>(true, false), vec3<f32>(-572f, 543f, -423f)), Struct_4(54483u, vec2<bool>(true, false), vec3<f32>(-1000f, -763f, -3537f)), Struct_4(12489u, vec2<bool>(true, false), vec3<f32>(-351f, 462f, -352f)), Struct_4(44653u, vec2<bool>(false, false), vec3<f32>(924f, -685f, -899f)));

var<private> global3: array<Struct_1, 32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_4 {
    global0 = array<Struct_5, 14>();
    let var_0 = vec2<bool>(!(-39551i < ~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 19u)], -2147483647i)), false);
    global3 = array<Struct_1, 32>();
    var var_1 = !var_0;
    global2 = array<Struct_4, 15>();
    return global2[_wgslsmith_index_u32(u_input.d, 15u)];
}

fn func_1(arg_0: Struct_2) -> u32 {
    global3 = array<Struct_1, 32>();
    global1 = array<i32, 19>();
    var var_0 = func_2();
    global0 = array<Struct_5, 14>();
    var var_1 = _wgslsmith_clamp_u32(33284u >> (u_input.c % 32u), ~16483u, 4294967295u);
    return ~(~24862u ^ var_0.a);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec3<f32> {
    global1 = array<i32, 19>();
    global2 = array<Struct_4, 15>();
    global3 = array<Struct_1, 32>();
    let var_0 = 64456u;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.wyz))));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) + arg_3.x)), 1932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 1000f) - _wgslsmith_f_op_f32(-1041f * arg_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec3<i32>(~firstTrailingBit(global1[_wgslsmith_index_u32(~0u, 19u)]), -u_input.b, ~41645i | u_input.b), vec3<i32>(_wgslsmith_clamp_i32(u_input.b, ~0i, global1[_wgslsmith_index_u32(func_1(Struct_2(vec4<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], u_input.b), 0u, u_input.a.x, vec4<f32>(-252f, -1235f, -3641f, -1398f), false)), 19u)]), ~global1[_wgslsmith_index_u32(u_input.d, 19u)], -12241i));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 14u)];
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -638f), -200f, 1046f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(-8353i, select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<u32>(6166u, 4294967295u, _wgslsmith_clamp_u32(1u, 22058u, 1u), 1u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-453f, 1762f, -843f, 1499f)))))));
    var var_3 = global2[_wgslsmith_index_u32(~u_input.a.x, 15u)];
    global0 = array<Struct_5, 14>();
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1318f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.x)))));
    global3 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(8755i, -(~u_input.b)), -(~u_input.b), -global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, var_3.a), _wgslsmith_div_u32(1u, u_input.d)), 19u)]), abs(var_0.x), vec3<u32>(u_input.d, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_3.a, 4294967295u, 1u, var_3.a)), ~vec4<u32>(34204u, 10425u, 4294967295u, 1320u)) | ~u_input.c, 1u));
}

