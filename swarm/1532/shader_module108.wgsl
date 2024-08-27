struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-1651i, -34524i, -1i, -20841i, -41098i, 16355i, -1i, -52295i, 29405i, 19563i, 2147483647i, 33532i, -2229i);

var<private> global1: array<u32, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> f32 {
    global1 = array<u32, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)), -817f), _wgslsmith_div_f32(-1369f, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-arg_2)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, _wgslsmith_clamp_u32(713u, _wgslsmith_sub_u32(4294967295u, arg_0), _wgslsmith_mod_u32(60737u, arg_0)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 21273u, global1[_wgslsmith_index_u32(arg_0, 8u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], u_input.c.x, u_input.c.x) ^ vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], u_input.c.x, global1[_wgslsmith_index_u32(0u, 8u)]))) & select(~vec3<u32>(27706u, global1[_wgslsmith_index_u32(8114u, 8u)], arg_0), ~(~vec3<u32>(47929u, 112149u, 21477u)), arg_1.b), ~(~firstLeadingBit(~vec3<u32>(33475u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61047u, 8u)], 8u)], global1[_wgslsmith_index_u32(arg_0, 8u)]))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(110f * arg_2)), -897f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.b, vec4<f32>(arg_2, 1693f, arg_2, -528f), arg_2, true)), _wgslsmith_f_op_f32(round(arg_2))), _wgslsmith_f_op_f32(func_2(1u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1049f, -1000f, arg_2, 1245f))), _wgslsmith_f_op_f32(func_2(var_0.x, vec4<f32>(arg_2, arg_2, arg_2, arg_2), arg_2, arg_1.b)), false))))));
    let var_2 = u_input.a;
    return vec3<u32>(firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(global1[_wgslsmith_index_u32(0u, 8u)], ~79417u), ~(1u ^ u_input.b), u_input.c.x), 8u)]), ~(~(~u_input.c.x)), ~var_0.x);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> bool {
    let var_0 = !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), false), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)));
    return !select(var_0.x, var_0.x, ((global0[_wgslsmith_index_u32(0u, 13u)] >> (0u % 32u)) != ~global0[_wgslsmith_index_u32(1u, 13u)]) || var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 8>();
    global0 = array<i32, 13>();
    let var_0 = func_3(978f, ~vec3<u32>(_wgslsmith_dot_vec3_u32(func_1(1413u, Struct_1(false, true), 899f, 0i), vec3<u32>(24341u, 20450u, global1[_wgslsmith_index_u32(u_input.b, 8u)])), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(10385u, 8u)], 4294967295u, 1u), ~u_input.c.x));
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1018f, 1119f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1457f, 193f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1451f, -311f) * vec2<f32>(304f, -814f)), vec2<f32>(-188f, -479f), select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, var_0))))) + vec2<f32>(-1562f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-695f)), _wgslsmith_f_op_f32(ceil(-432f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(728f, _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2058f - 770f), 1334f))));
    global1 = array<u32, 8>();
    global0 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(u_input.a.wzx << (vec3<u32>(u_input.c.x, u_input.b, u_input.c.x) % vec3<u32>(32u)), u_input.a.ywx, u_input.a.zyy), var_1.x);
}

