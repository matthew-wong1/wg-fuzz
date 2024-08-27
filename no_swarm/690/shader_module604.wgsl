struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 31>;

var<private> global2: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, true));

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_1(select(!global3.a, !vec2<bool>(true, !arg_0.a.x), select(!global3.a, global4.a, select(vec2<bool>(global3.a.x, var_0.a.x), !vec2<bool>(global4.a.x, false), var_0.a))));
    global4 = Struct_1(global4.a);
    var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-1268f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-380f, 706f))))))));
    return arg_1 > reverseBits(arg_1);
}

fn func_2() -> Struct_1 {
    global2 = array<vec2<bool>, 15>();
    global0 = u_input.a;
    var var_0 = Struct_1(!(!(!global4.a)));
    global1 = array<u32, 31>();
    let var_1 = ~vec2<i32>(-(~(-35625i) & u_input.a), -2147483647i);
    return Struct_1(select(vec2<bool>(global3.a.x & var_0.a.x, func_3(Struct_1(vec2<bool>(global4.a.x, false)), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(32921u, 31u)], 31u)])), !vec2<bool>(var_0.a.x, false | global4.a.x), vec2<bool>(false, all(select(var_0.a, global3.a, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!vec2<bool>(true, false & arg_2.a.x));
    global0 = _wgslsmith_add_i32(~u_input.a, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.a, -2147483647i, u_input.a, 1i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_1.x, 1u, arg_1.x), _wgslsmith_div_vec4_u32(arg_1, arg_1)) % vec4<u32>(32u)), -vec4<i32>(u_input.a, u_input.a, 2147483647i, abs(-2147483647i))));
    let var_1 = countOneBits(_wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), -min(u_input.a, 5004i), countOneBits(~(-8376i)))) == (((u_input.a ^ ~1i) >> (firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 31u)] | global1[_wgslsmith_index_u32(29087u, 31u)], 31u)], 31u)]) % 32u)) & u_input.a);
    global0 = _wgslsmith_clamp_i32(-(min(max(-15356i, u_input.a), min(u_input.a, -1i)) & -u_input.a), 1i, -u_input.a);
    global4 = var_0;
    return Struct_1(vec2<bool>(func_2().a.x, global3.a.x));
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = func_4(func_2(), ~vec4<u32>(select(1u, _wgslsmith_div_u32(54031u, 6962u), !global3.a.x), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28644u, select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4850u, 31u)], 31u)], global4.a.x), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 31u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11061u, 31u)], 31u)], 31u)], 31u)]), 31u)], 31u)], _wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 4294967295u, 4294967295u), 31u)]), countOneBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4622u, 31u)], 31u)])), func_2());
    global0 = ~(~(-41906i));
    var var_1 = _wgslsmith_add_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(70466u, global1[_wgslsmith_index_u32(52925u, 31u)]) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 31u)], 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57968u, 31u)], 31u)]), ~vec2<u32>(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])) % 32u), 31u)], 31u)]), global1[_wgslsmith_index_u32(32623u, 31u)]);
    var var_2 = true;
    let var_3 = func_2();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 39225u;
    let x = u_input.a;
    s_output = StorageBuffer(~(4294967295u << (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 1u) | global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(29347u, 31u)], 31u)], 31u)] % 32u)), vec4<i32>(func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1052f, 2208f, -560f)))), 49129i, firstLeadingBit(~u_input.a), 1i) ^ ~countOneBits(-vec4<i32>(u_input.a, 30437i, u_input.a, 7530i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1716f), _wgslsmith_div_f32(1274f, 1000f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(155f))))) * 179f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2242f, 884f), vec2<f32>(-917f, -105f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1286f, _wgslsmith_f_op_f32(max(1669f, 474f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_div_f32(-1117f, -1249f)))));
}

