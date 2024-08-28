struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(1u, 1u, 48019u), vec3<u32>(0u, 4294967295u, 96124u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> i32 {
    var var_0 = !vec4<bool>(true, ~select(0u, u_input.b, false) < 66528u, true, false);
    var var_1 = Struct_3(u_input.a.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) ^ 4294967295u, 2u)], Struct_2(Struct_1(abs(vec4<i32>(-24298i, 1i, 2147483647i, -28799i)), 28079u, ~u_input.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-405f)))));
    var var_2 = false;
    let var_3 = var_0.xwy;
    let var_4 = _wgslsmith_div_u32(var_1.c.x, 103526u);
    return max(1065i, 1i);
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = select(select(vec4<bool>(true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))), vec4<bool>(select(true, any(vec2<bool>(false, false)), true), true, true, true | all(vec3<bool>(true, false, true)))), !(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false), any(vec4<bool>(true, false, true, false)))), true);
    let var_1 = 0i;
    let var_2 = Struct_5(arg_0.x, Struct_4(vec2<u32>(~u_input.b | u_input.a.x, abs(_wgslsmith_add_u32(11651u, u_input.b)))), Struct_3(countOneBits(min(u_input.b, ~u_input.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 273f)), vec2<f32>(-1724f, -347f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(690f, 1594f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(494f, -240f)))), global0[_wgslsmith_index_u32(countOneBits(u_input.b), 2u)], Struct_2(Struct_1(vec4<i32>(arg_0.x, arg_0.x, 2147483647i, -15905i), abs(u_input.b), reverseBits(u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2282f)))));
    return _wgslsmith_div_i32(-(~_wgslsmith_sub_i32(arg_0.x, 2147483647i)), -(~4285i)) != _wgslsmith_dot_vec2_i32(arg_0, firstLeadingBit(~arg_0));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = select(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), true), vec3<bool>(true, true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false))), any(vec3<bool>(arg_0 == arg_0, true, true))), vec3<bool>(true, !func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, -1i))), true), false);
    global0 = array<vec3<u32>, 2>();
    var var_1 = ~_wgslsmith_add_i32(-18751i, ~(-abs(arg_0)));
    return Struct_3(~(~(~u_input.b) | ~(~u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-209f, 227f), vec2<f32>(322f, 190f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1467f, 2876f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(488f, -1375f)), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), false))))), countOneBits(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, u_input.b, u_input.b)), select(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], vec3<bool>(var_0.x, var_0.x, var_0.x)) & select(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], false))), Struct_2(Struct_1(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, -29061i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, 0i, -11618i) >> (vec4<u32>(70040u, 1u, 0u, u_input.b) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.a.x) & vec4<u32>(4294967295u, 1u, u_input.b, 62142u), ~vec4<u32>(u_input.b, 3983u, u_input.b, u_input.b)), select(firstLeadingBit(vec2<u32>(81817u, 38545u)), ~u_input.a, any(vec3<bool>(true, true, true))))), 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 2>();
    let var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i) >> (_wgslsmith_mod_vec2_u32(u_input.a, ~vec2<u32>(5627u, u_input.a.x)) % vec2<u32>(32u)), ~((vec2<i32>(-1i, -9595i) >> (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u))) ^ -vec2<i32>(-2147483647i, 0i)));
    var var_1 = _wgslsmith_div_vec3_i32(-vec3<i32>(var_0, -8024i, _wgslsmith_sub_i32(~var_0, var_0)), -firstTrailingBit(select(vec3<i32>(var_0, var_0, var_0) << (global0[_wgslsmith_index_u32(u_input.a.x, 2u)] % vec3<u32>(32u)), countOneBits(vec3<i32>(var_0, var_0, var_0)), true)));
    global0 = array<vec3<u32>, 2>();
    var_1 = -(~(vec3<i32>(-1i) * -(vec3<i32>(var_1.x, var_0, var_0) & vec3<i32>(1i, -47161i, var_0))));
    var var_2 = func_2(abs(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(~var_2.a, 12135u), ~func_2(var_1.x).a) & u_input.a);
}

