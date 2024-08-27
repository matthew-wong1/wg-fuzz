struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, false, true, false, true, false, false, false, true, false, true, false, true, false, false, false);

var<private> global2: i32 = 1i;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, 1000f, -311f, false), Struct_1(true, 939f, -1144f, true), Struct_1(true, -526f, -444f, false), Struct_1(false, 736f, -752f, false), Struct_1(true, -483f, -2202f, true), Struct_1(false, 2552f, 658f, true), Struct_1(false, 2069f, 242f, true), Struct_1(true, -271f, 1815f, false), Struct_1(false, 178f, -1268f, false), Struct_1(true, -287f, -121f, false), Struct_1(true, 836f, 151f, true), Struct_1(false, -1114f, 1365f, true), Struct_1(true, -1807f, 863f, true), Struct_1(false, 256f, 1015f, false), Struct_1(false, -1488f, -471f, false), Struct_1(true, -2485f, 641f, false), Struct_1(true, -231f, -1046f, false), Struct_1(false, 152f, -1844f, true), Struct_1(true, -830f, -101f, true), Struct_1(true, 1832f, 1181f, true), Struct_1(false, -882f, -135f, false), Struct_1(false, 134f, -1000f, false), Struct_1(true, -569f, -1367f, false), Struct_1(false, 1016f, -1293f, true), Struct_1(false, 1000f, -180f, false), Struct_1(false, 381f, 532f, false), Struct_1(false, 1625f, -1915f, false), Struct_1(true, 485f, 1263f, true), Struct_1(false, -1000f, -795f, true), Struct_1(true, -1268f, -478f, true), Struct_1(false, 525f, -567f, true), Struct_1(false, 2226f, -719f, false));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec2<bool> {
    let var_0 = ~u_input.d;
    let var_1 = global0.x;
    global2 = ~(select(~(-u_input.a), 42485i, true != any(vec2<bool>(true, false))) & u_input.c);
    var var_2 = global3[_wgslsmith_index_u32(select(u_input.d, 0u, true), 32u)];
    let var_3 = !(!vec3<bool>(true, any(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 17u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(var_0, 17u)]), var_2.d)), !global1[_wgslsmith_index_u32(7672u, 17u)]));
    return vec2<bool>(var_3.x, var_3.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = !func_2();
    global1 = array<bool, 17>();
    let var_1 = arg_0;
    global1 = array<bool, 17>();
    var var_2 = arg_1;
    return 774f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.b)) + _wgslsmith_f_op_f32(427f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(true, arg_0.b, global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), Struct_1(global1[_wgslsmith_index_u32(0u, 17u)], global0.x, global0.x, false), arg_0))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c, 1784f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_1.c), vec2<f32>(-1612f, arg_0.b), true)) * vec2<f32>(-474f, 602f)) * vec2<f32>(-1706f, _wgslsmith_f_op_f32(-arg_1.b)))));
    var var_2 = any(select(select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global1[_wgslsmith_index_u32(92147u, 17u)], true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, global1[_wgslsmith_index_u32(16369u, 17u)], arg_2, arg_1.a), vec4<bool>(false, arg_2, arg_2, global1[_wgslsmith_index_u32(5666u, 17u)])), vec4<bool>(true, true, true, true)), select(!vec4<bool>(false, arg_1.d, true, global1[_wgslsmith_index_u32(0u, 17u)]), select(vec4<bool>(arg_0.d, false, arg_2, false), vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], arg_1.a, false, arg_1.a)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 17u)], arg_0.a, false), vec4<bool>(true, arg_2, arg_2, true), true)), vec4<bool>(true, any(vec4<bool>(false, arg_0.a, global1[_wgslsmith_index_u32(u_input.d, 17u)], arg_2)), arg_2, true)), select(!(!vec4<bool>(arg_0.a, false, true, false)), vec4<bool>(arg_0.a, true, u_input.c >= u_input.e.x, any(vec3<bool>(arg_1.a, false, global1[_wgslsmith_index_u32(u_input.d, 17u)]))), vec4<bool>(all(vec3<bool>(false, true, false)), u_input.b.x == u_input.d, true, arg_0.a)), select(select(!vec4<bool>(arg_1.d, arg_1.a, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], arg_2), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], arg_1.d, arg_0.d, false), !vec4<bool>(arg_2, false, false, false)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 17u)], arg_1.a, false, true), vec4<bool>(global1[_wgslsmith_index_u32(4513u, 17u)], true, global1[_wgslsmith_index_u32(12278u, 17u)], arg_2), vec4<bool>(true, arg_2, arg_0.a, false)), !vec4<bool>(arg_2, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], true, true), select(vec4<bool>(arg_0.a, true, true, arg_1.a), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 17u)], true, arg_1.d, true), vec4<bool>(true, arg_2, true, true))), true || !arg_1.d)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(arg_1, Struct_1(arg_2, 311f, arg_1.b, arg_2), arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -473f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, -1000f)))), !vec2<bool>(_wgslsmith_f_op_f32(abs(global0.x)) >= -833f, firstTrailingBit(7156u) < _wgslsmith_mod_u32(30462u, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(~firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(max(119453u, u_input.d), 0u));
    let var_1 = vec2<u32>(u_input.d, ~(4294967295u >> (_wgslsmith_add_u32(u_input.b.x, 0u) % 32u))) << (u_input.b.zw % vec2<u32>(32u));
    global1 = array<bool, 17>();
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 17u)] != global1[_wgslsmith_index_u32(23952u, 17u)], _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -701f), global0.x, all(vec2<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 17u)])))) * _wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(~u_input.b.x, 32u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, 0u), 32u)], Struct_1(global1[_wgslsmith_index_u32(var_1.x, 17u)], 804f, 1113f, global1[_wgslsmith_index_u32(4294967295u, 17u)]))))), -1196f, !select(true, false, global1[_wgslsmith_index_u32(reverseBits(var_1.x), 17u)]));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-241f, -1000f)) + _wgslsmith_f_op_f32(step(global0.x, var_2.c)))), global0.x, -687f, _wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.b, global0.x, global0.x) - vec4<f32>(1000f, -1000f, var_2.c, 711f)))) * vec4<f32>(var_2.b, var_2.b, global0.x, _wgslsmith_f_op_f32(abs(1f)))));
    var var_4 = -360f;
    var var_5 = _wgslsmith_mult_i32(-(~(u_input.c | u_input.a)), u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-950f, 482f) * _wgslsmith_div_vec2_f32(var_3.zw, vec2<f32>(-1093f, -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19387u, var_1.x), vec2<u32>(22753u, 14546u)), 32u)], global3[_wgslsmith_index_u32(u_input.b.x ^ 4294967295u, 32u)], global1[_wgslsmith_index_u32(u_input.d, 17u)])))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(430f, _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-1047f * global0.x)), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-global0.x))), abs(vec2<u32>(u_input.b.x, var_1.x)));
}

