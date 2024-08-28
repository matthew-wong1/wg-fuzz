struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(1800f, 1020f, -1415f, 472f, 150f, -115f, -559f, 851f, 316f, -728f, -1843f, 1182f, 887f, -690f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = array<f32, 14>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~97745u, 14u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 14u)] - -761f))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(21302u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_1.b, 14u)], -1000f), vec2<f32>(1194f, global0[_wgslsmith_index_u32(0u, 14u)])), vec2<f32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)])))), !(!(global0[_wgslsmith_index_u32(arg_1.b, 14u)] > global0[_wgslsmith_index_u32(4294967295u, 14u)])))));
    var var_2 = _wgslsmith_f_op_f32(step(-501f, _wgslsmith_f_op_f32(sign(-104f))));
    var_2 = -1032f;
    return global0[_wgslsmith_index_u32(0u, 14u)];
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global0 = array<f32, 14>();
    var var_0 = Struct_1(u_input.a, u_input.a << (select(_wgslsmith_div_u32(~u_input.b.x, u_input.b.x), countOneBits(6556u), true) % 32u));
    var var_1 = !(!(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(40409u, 14u)])), _wgslsmith_f_op_f32(func_2(Struct_1(~u_input.b.x >> ((u_input.a >> (var_0.b % 32u)) % 32u), 1u), Struct_1(var_0.a, ~(~0u)))));
    global0 = array<f32, 14>();
    return (_wgslsmith_add_u32(~5829u, _wgslsmith_mult_u32(~var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 44725u, var_0.a, u_input.d), vec4<u32>(u_input.d, var_0.a, 66982u, var_0.a)))) ^ 8496u) & _wgslsmith_add_u32(abs(4294967295u), 23513u ^ _wgslsmith_mod_u32(~u_input.d, var_0.a ^ 4294967295u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 14u)]));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 14u)] * _wgslsmith_f_op_f32(abs(2215f))))), _wgslsmith_f_op_f32(round(-1003f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_1.a, 4294967295u, u_input.d)) >> (0u % 32u), 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.b, 14u)]) + _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_1.b, 14u)]))))));
    var var_3 = -arg_2.a & 0i;
    var var_4 = Struct_2(arg_2.a);
    return Struct_2(select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a >> (1u % 32u), -17825i, abs(arg_2.a)), ~(~vec3<i32>(arg_0, 20414i, 39577i))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(min(-14138i, -56785i), ~(-1i)), ~1i, reverseBits(arg_0)), global0[_wgslsmith_index_u32(var_1.b, 14u)] <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(77998u, 14u)], var_2.x) * 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    let var_1 = func_3(-1i, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 49995u), u_input.b.yz) & 1u, u_input.a), Struct_2(firstTrailingBit(select(_wgslsmith_add_i32(4483i, u_input.c), u_input.c, any(vec4<bool>(false, true, false, false))))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 1106f, global0[_wgslsmith_index_u32(0u, 14u)])) - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], -989f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1253f, -960f, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(807f, global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])))))));
    let var_2 = u_input.b.zz;
    var var_3 = Struct_2(var_1.a);
    var var_4 = func_3(~_wgslsmith_add_i32(_wgslsmith_sub_i32(5191i, var_1.a), func_3(var_1.a, Struct_1(23664u, var_2.x), Struct_2(var_1.a), 0u).a) << (~min(1u, _wgslsmith_clamp_u32(var_2.x, 50068u, u_input.a)) % 32u), Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, var_2.x & u_input.a), reverseBits(u_input.d << (19698u % 32u))), ~reverseBits(max(var_2.x, 4294967295u))), Struct_2(-9060i), ~(~(~(u_input.d & var_2.x))));
    var_3 = var_1;
    let var_5 = u_input.d == ~var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1009u, 14u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-550f)))))));
}

