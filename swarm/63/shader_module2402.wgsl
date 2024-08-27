struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(-16320i, 0i, 4923i, -1i, -6425i, 11877i);

var<private> global1: i32 = -1i;

var<private> global2: f32;

var<private> global3: array<u32, 27>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    let var_1 = !(!arg_1.x);
    var var_2 = global4.a;
    let var_3 = 2147483647i;
    let var_4 = arg_3;
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    global1 = ~func_3(arg_0.b, !(!(!vec2<bool>(arg_1, true))), reverseBits(~58971u), Struct_1(global4.a, _wgslsmith_clamp_i32(~3280i, _wgslsmith_mod_i32(14985i, arg_0.b), _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 6u)]))));
    let var_0 = vec3<i32>(arg_0.b, reverseBits(0i), global0[_wgslsmith_index_u32(~(~48289u), 6u)]);
    var var_1 = _wgslsmith_add_u32(0u, abs(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)]), firstTrailingBit(vec3<u32>(1u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)]))))));
    let var_2 = arg_0;
    let var_3 = arg_1;
    return -(~((-vec2<i32>(global4.b, arg_0.b) & vec2<i32>(u_input.a, var_2.b)) << (vec2<u32>(_wgslsmith_div_u32(63579u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7964u, 27u)], 27u)], 27u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], global3[_wgslsmith_index_u32(1u, 27u)]), 27u)], 27u)]) % vec2<u32>(32u))));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_mod_vec2_i32(abs(-_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 6u)], -2106i), vec2<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19828u, 27u)], 27u)], 27u)], 27u)], 6u)], -2147483647i)), vec2<i32>(u_input.a, global4.b) & vec2<i32>(-6123i, global4.b))), func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1431f, 1000f))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(global4.b, 0i)), vec2<i32>(arg_0, global4.b))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(352f, -1070f, var_1)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 492f)) * 1765f)))), u_input.a & _wgslsmith_mod_i32(~var_0.x, -reverseBits(arg_0)));
    var var_4 = -(~vec3<i32>(1i, u_input.a >> (_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 4294967295u) % 32u), ~var_3.b));
    return var_1;
}

fn func_4(arg_0: bool) -> Struct_1 {
    global0 = array<i32, 6>();
    var var_0 = vec3<bool>(all(vec4<bool>(!all(vec3<bool>(arg_0, false, arg_0)), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63873u, 27u)], 27u)], 27u)] >= _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14359u, 27u)], 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)]), arg_0, arg_0)), true, !all(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, false), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, arg_0), arg_0))));
    global0 = array<i32, 6>();
    let var_1 = Struct_1(global4.a, 21930i);
    global0 = array<i32, 6>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    global3 = array<u32, 27>();
    var var_0 = func_4(!(!(!func_1(1i))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a - -1000f)))), -1334f)), -102f));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a, -1000f), vec2<f32>(var_0.a, global4.a))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global4.a, -299f), vec2<f32>(global4.a, -204f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1552f, -1594f) - vec2<f32>(511f, 1061f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a)))), -692f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32089u, 27u)] >> (1u % 32u), 27u)], ~reverseBits(countOneBits(17817u)), ~1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), 2147483647i, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3086u, 27u)], 27u)], 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16960u, 27u)], 27u)], 27u)], 27u)], global3[_wgslsmith_index_u32(0u, 27u)], 26501u), vec4<u32>(1u, global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9275u, 27u)], 27u)], 27u)], 27u)], 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(35314u, 27u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 25887u, global3[_wgslsmith_index_u32(59054u, 27u)], global3[_wgslsmith_index_u32(85762u, 27u)]))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(1u, 17206u, global3[_wgslsmith_index_u32(15398u, 27u)]), ~vec3<u32>(0u, 1040u, 44451u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)]), vec3<u32>(31903u, 13954u, 17318u)))), vec2<f32>(-955f, -522f), _wgslsmith_mult_i32(var_0.b, global4.b));
}

