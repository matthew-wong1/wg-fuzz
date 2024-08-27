struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(316f, 658f, -896f, -1198f, 159f, 848f, 429f);

var<private> global1: bool = false;

var<private> global2: vec4<f32> = vec4<f32>(-2292f, -1000f, 877f, -1340f);

var<private> global3: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(4294967295u, 40342u, 87575u), vec3<u32>(15767u, 83648u, 83563u), vec3<u32>(4294967295u, 52531u, 4294967295u), vec3<u32>(17250u, 1u, 35140u), vec3<u32>(77431u, 36949u, 95793u), vec3<u32>(1u, 1u, 79092u), vec3<u32>(56679u, 20991u, 1u), vec3<u32>(70540u, 13569u, 0u), vec3<u32>(28959u, 0u, 38069u), vec3<u32>(43271u, 1u, 0u), vec3<u32>(14113u, 17188u, 67167u), vec3<u32>(4294967295u, 172u, 1u), vec3<u32>(0u, 1u, 9861u), vec3<u32>(59087u, 0u, 28045u), vec3<u32>(23837u, 0u, 4294967295u), vec3<u32>(57042u, 6146u, 2808u), vec3<u32>(0u, 37232u, 10995u), vec3<u32>(103007u, 95111u, 24629u), vec3<u32>(60040u, 38309u, 51167u), vec3<u32>(0u, 1u, 1u));

var<private> global4: f32 = 1000f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = u_input.e;
    let var_1 = arg_2;
    global3 = array<vec3<u32>, 20>();
    global1 = true;
    var var_2 = select(false, true, any(vec2<bool>(true, true)));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-585f + global0[_wgslsmith_index_u32(var_1.a, 7u)]), 782f)), _wgslsmith_f_op_f32(max(1836f, 1374f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(457f - 1389f) * _wgslsmith_f_op_f32(select(global2.x, global0[_wgslsmith_index_u32(var_0.x, 7u)], false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_2.a, 7u)], global2.x)) * _wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, -438f, _wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.a, 7u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4187u, 7u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.a, 7u)] + global2.x), _wgslsmith_f_op_f32(max(853f, -424f)), -2206f)), all(vec2<bool>(global0[_wgslsmith_index_u32(8502u, 7u)] != 1471f, true))))));
}

fn func_2() -> Struct_1 {
    var var_0 = 71688i;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 7u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f - global0[_wgslsmith_index_u32(22011u, 7u)])))));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(select(u_input.d.x, -24717i, true), _wgslsmith_clamp_i32(8264i, 937i, u_input.d.x), Struct_1(1u))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, global0[_wgslsmith_index_u32(85903u, 7u)], 641f, global2.x))))), vec4<f32>(_wgslsmith_f_op_f32(1018f + global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.e.x, 0u), 1u), 7u)]), global2.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.b | _wgslsmith_div_u32(0u, u_input.b), 7u)]), _wgslsmith_f_op_f32(max(-1448f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1274f), _wgslsmith_div_f32(global2.x, 216f), true))))));
    global1 = true;
    var var_2 = Struct_1(~(_wgslsmith_mod_u32(45642u, u_input.b) << (72290u % 32u)) ^ 1u);
    return Struct_1(var_2.a);
}

fn func_1() -> f32 {
    var var_0 = !vec2<bool>(!(all(vec3<bool>(false, false, true)) && true), _wgslsmith_f_op_f32(trunc(1189f)) == 211f);
    var var_1 = Struct_1(u_input.e.x);
    let var_2 = 61325u;
    let var_3 = vec4<f32>(global2.x, -1876f, _wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(trunc(global2.x))))));
    let var_4 = func_2();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1071f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_3.x, 1953f)), -1052f)) - global0[_wgslsmith_index_u32(62350u, 7u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 20>();
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-536f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), -1266f), -1787f))), 1192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-890f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1071f)))) + 117f));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(u_input.c, 20u)], u_input.e.xwz), u_input.e.x, u_input.b), vec3<u32>(1u, abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.b, 75967u), vec3<u32>(u_input.c, 75722u, 0u)))) ^ max(u_input.b, _wgslsmith_sub_u32(_wgslsmith_mod_u32(62733u, 44755u), ~u_input.b)));
    global0 = array<f32, 7>();
    global4 = _wgslsmith_f_op_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), u_input.d.xx, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.wz, u_input.d.wx), u_input.d.wy), vec3<f32>(_wgslsmith_f_op_f32(1218f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1058f - var_0.x) * -1835f)), _wgslsmith_f_op_f32(select(-877f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global0[_wgslsmith_index_u32(u_input.e.x, 7u)])), any(vec2<bool>(true, true)))), var_0.x));
}

