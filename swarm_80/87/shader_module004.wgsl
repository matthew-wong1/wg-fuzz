struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(48923u, 76714u, 4294967295u), vec3<u32>(50941u, 2128u, 0u), vec3<u32>(1u, 7906u, 4294967295u), vec3<u32>(4313u, 21000u, 4294967295u), vec3<u32>(20558u, 2829u, 24529u), vec3<u32>(16000u, 30107u, 15687u), vec3<u32>(21810u, 40828u, 37478u), vec3<u32>(1u, 6462u, 1u), vec3<u32>(69650u, 17659u, 62031u));

var<private> global2: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(false, false, false, vec3<bool>(false, false, false)), Struct_4(true, false, false, vec3<bool>(true, false, true)), Struct_4(false, true, true, vec3<bool>(false, false, true)), Struct_4(true, false, false, vec3<bool>(true, true, false)), Struct_4(true, true, true, vec3<bool>(true, false, false)), Struct_4(true, true, false, vec3<bool>(false, true, false)), Struct_4(false, true, false, vec3<bool>(true, false, true)), Struct_4(true, false, false, vec3<bool>(true, false, true)), Struct_4(false, false, true, vec3<bool>(false, false, true)), Struct_4(true, true, true, vec3<bool>(false, true, true)), Struct_4(true, true, true, vec3<bool>(false, true, false)), Struct_4(true, false, false, vec3<bool>(true, false, false)), Struct_4(true, true, false, vec3<bool>(true, false, true)), Struct_4(false, false, false, vec3<bool>(true, false, false)), Struct_4(false, true, true, vec3<bool>(false, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global2 = array<Struct_4, 15>();
    global2 = array<Struct_4, 15>();
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(96134u, ~1u, 4294967295u, 1u), vec4<u32>(~1u, countOneBits(0u), ~_wgslsmith_div_u32(4294967295u, ~30306u), u_input.c.x));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))) * global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + global0.x), 1113f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1959f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - -1256f))) * global0.x)));
    let var_1 = _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(u_input.c.x), ~(u_input.b.x >> (var_0.x % 32u)) >> (4294967295u % 32u)), 9u)], _wgslsmith_sub_vec3_u32(reverseBits(countOneBits(abs(vec3<u32>(47591u, var_0.x, 1u)))), firstTrailingBit(vec3<u32>(0u, 1u, abs(u_input.b.x)))));
    return u_input.a.x <= -1i;
}

fn func_2() -> vec4<f32> {
    let var_0 = ~10867i;
    let var_1 = _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-286f)) - _wgslsmith_f_op_f32(step(global0.x, 1208f)))), _wgslsmith_f_op_f32(ceil(global0.x)), true))));
    global2 = array<Struct_4, 15>();
    let var_2 = global0.xz;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1384f - 669f)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_1, -2034f, -505f)) - vec4<f32>(-1410f, var_3.a, -332f, 1247f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -794f, -1000f, var_2.x), vec4<f32>(-507f, var_3.a, var_2.x, -214f), vec4<bool>(false, true, false, false)))), func_3())) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-933f - 2052f), var_1, _wgslsmith_f_op_f32(-var_3.a), -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2039f, 2137f, var_2.x, 466f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -229f, 104f, 2233f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, var_3.a, 693f, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(490f, -246f, global0.x, -1000f))))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> vec4<f32> {
    global1 = array<vec3<u32>, 9>();
    var var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, -16849i, -2147483647i) << (u_input.b.wxw % vec3<u32>(32u)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), select(vec3<i32>(-2147483647i, u_input.a.x, -1i), ~vec3<i32>(u_input.a.x, u_input.a.x, -69685i), false)), -57432i));
    return _wgslsmith_f_op_vec4_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 9>();
    global0 = vec4<f32>(1752f, global0.x, _wgslsmith_f_op_f32(select(global0.x, -1794f, true)), _wgslsmith_f_op_f32(abs(global0.x)));
    global2 = array<Struct_4, 15>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 1812f, global0.x, global0.x), vec4<f32>(-3462f, global0.x, global0.x, global0.x), vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec4_f32(func_1(false, vec3<bool>(false, true, false))), true)))));
    let var_0 = global2[_wgslsmith_index_u32(102671u >> (u_input.b.x % 32u), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec2_u32(u_input.c.xy, vec2<u32>(1u, 32458u), vec2<u32>(u_input.c.x, 33182u))) ^ u_input.c.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(695f)), -441f)))), global0.xz, 49911i);
}

