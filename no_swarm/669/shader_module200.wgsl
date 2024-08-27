struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-443f, -1000f), vec2<f32>(1758f, -1234f), vec2<f32>(-471f, 354f), vec2<f32>(-289f, 1707f), vec2<f32>(-153f, -925f), vec2<f32>(-590f, 466f), vec2<f32>(-1050f, 1540f), vec2<f32>(-1598f, 1000f), vec2<f32>(-1000f, -198f), vec2<f32>(-493f, 1623f), vec2<f32>(-390f, -221f), vec2<f32>(495f, -242f), vec2<f32>(1222f, 246f), vec2<f32>(-915f, 592f), vec2<f32>(-1142f, 172f));

var<private> global2: i32;

var<private> global3: array<vec4<u32>, 29>;

var<private> global4: array<Struct_1, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = select(reverseBits(global3[_wgslsmith_index_u32(~max(49334u, ~0u), 29u)]), ~global3[_wgslsmith_index_u32(min(~(~4294967295u), ~abs(4294967295u)), 29u)], select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, any(vec2<bool>(false, true))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))), select(vec4<bool>(all(vec4<bool>(false, false, true, true)), false, true, any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(var_0.x, 15u)])));
    return select(vec4<bool>(true, true, !(_wgslsmith_f_op_f32(arg_0.a.x - 273f) >= -566f), (0u == _wgslsmith_sub_u32(var_0.x, var_0.x)) & any(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), true), true);
}

fn func_2() -> f32 {
    let var_0 = !(u_input.b.x == abs(_wgslsmith_add_i32(u_input.b.x, u_input.a ^ 1831i)));
    var var_1 = global4[_wgslsmith_index_u32(~74842u, 1u)];
    var var_2 = func_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(210f, var_1.a.x), vec2<f32>(var_1.a.x, -572f), vec2<bool>(true, var_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 603f))))));
    global4 = array<Struct_1, 1>();
    global3 = array<vec4<u32>, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -404f)))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(countOneBits(~(~(~43675u << (~4294967295u % 32u)))), 1u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-457f)), _wgslsmith_f_op_f32(func_2())), arg_0.yz))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(37167u, 0u, 0u)), 15u)]))));
    var var_4 = firstLeadingBit(~max(~1u, firstLeadingBit(0u)));
    return firstTrailingBit(abs(0u));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global1 = array<vec2<f32>, 15>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, -1522f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1079f)), -1000f)))));
    let var_2 = global4[_wgslsmith_index_u32(arg_1.x, 1u)];
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * -517f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1729f))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-779f - var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_4(-vec3<i32>(-25473i, u_input.a, 1i), global3[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-932f, 977f, -228f) * vec3<f32>(-790f, -1000f, -243f)), true, select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), 29u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1295f * _wgslsmith_f_op_f32(max(300f, -279f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1053f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(1u, 15u)] - vec2<f32>(var_0.a.x, 159f)) - var_0.a))));
    let var_2 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(min(~1u, _wgslsmith_mod_u32(58639u, 1u) ^ _wgslsmith_clamp_u32(4294967295u, 0u, 1u)), abs(~1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) - _wgslsmith_f_op_f32(787f - 1550f)), _wgslsmith_f_op_f32(887f - _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))), -203f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-198f, var_2.x, -813f, -254f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 1000f, -263f, -1419f), vec4<f32>(862f, 173f, 358f, -2488f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.x, 1159f, -556f, var_0.a.x))), vec4<f32>(-290f, var_2.x, 101f, var_1.a.x), true)), _wgslsmith_f_op_f32(var_1.a.x - 1228f) <= -336f))));
}

