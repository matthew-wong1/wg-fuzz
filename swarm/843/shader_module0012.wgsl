struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -469f))), arg_0);
    let var_1 = abs(arg_3.a.x);
    let var_2 = arg_3.a.yxx;
    let var_3 = select(select(select(vec3<bool>(u_input.d.x != u_input.a.x, select(false, false, true), false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 55858u >= u_input.a.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), vec3<bool>(any(vec4<bool>(false, false, false, true)), var_2.x > -2147483647i, arg_3.c.x == var_0.b)), !vec3<bool>(true, select(false, false, false), true)), vec3<bool>(4294967295u != firstTrailingBit(~u_input.a.x), true, 34776i == select(1i << (1u % 32u), ~(-11888i), true)), select(vec3<bool>(true, _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(select(-1075f, var_0.b, true)), !(u_input.d.x >= u_input.a.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))));
    global1 = Struct_1(abs(~(vec4<i32>(-958i, var_0.a.x, var_2.x, arg_3.a.x) >> (min(vec4<u32>(4294967295u, 56689u, 41535u, 19186u), vec4<u32>(u_input.d.x, 1u, 58574u, 0u)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(arg_3.b + 384f), vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.c.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c.x, var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.c.x)) - global1.b)), 1710f, 148f));
    return -323f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 27>();
    var var_0 = vec3<i32>(arg_1.a.x, ~(~(_wgslsmith_add_i32(u_input.e, u_input.b) << (~10681u % 32u))), -(~u_input.b));
    let var_1 = global1.a.x;
    let var_2 = vec3<bool>(any(vec3<bool>(select(true, true, true), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c.x))))) >= _wgslsmith_f_op_f32(abs(1039f)), arg_0.a.x >= -arg_1.a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c.xz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(146f, 432f) * arg_0.c.yw) + arg_0.c.xw)))));
    return 50427u;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(func_4(Struct_1(arg_2.a, _wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1459f), _wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(-global1.b)), Struct_1(vec4<i32>(-1i, 5124i, 11096i, u_input.b), -298f, arg_2.c), 20217i, Struct_1(vec4<i32>(2147483647i, -1i, -2147483647i, 1i), _wgslsmith_f_op_f32(-global1.c.x), vec4<f32>(-1000f, arg_2.b, global1.c.x, arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(-947f + -983f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.c.x)), _wgslsmith_div_f32(1000f, -388f))), _wgslsmith_f_op_f32(959f - _wgslsmith_f_op_f32(global1.b + arg_2.c.x)), arg_1)), Struct_1(_wgslsmith_add_vec4_i32(global1.a, global1.a), 188f, arg_2.c)), 27u)];
    global1 = Struct_1(min(~arg_2.a, vec4<i32>(-1i) * -var_0.a), 104f, vec4<f32>(671f, _wgslsmith_f_op_f32(f32(-1f) * -1926f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(-arg_2.b)));
    let var_1 = arg_2;
    global1 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-564f + arg_2.b) * _wgslsmith_f_op_f32(ceil(arg_1))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -724f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(-arg_1))));
    return Struct_1(arg_2.a, global1.b, var_1.c);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    var var_0 = u_input.a;
    global0 = array<Struct_1, 27>();
    var var_1 = 818f;
    global0 = array<Struct_1, 27>();
    let var_2 = func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, ~var_0.x, arg_1.x, abs(_wgslsmith_mult_u32(var_0.x, arg_1.x))), _wgslsmith_sub_vec4_u32(~(vec4<u32>(1u, var_0.x, 4294967295u, 0u) & vec4<u32>(u_input.c.x, 162476u, 24712u, u_input.d.x)), _wgslsmith_add_vec4_u32(vec4<u32>(8949u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(var_0.x, u_input.d.x, var_0.x, arg_1.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.d.x, arg_1.x, 64847u), vec4<u32>(0u, 0u, arg_1.x, u_input.a.x))), _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 41421u, var_0.x, 66577u), vec4<u32>(u_input.c.x, 1u, arg_1.x, arg_1.x)), _wgslsmith_div_vec4_u32(select(vec4<u32>(var_0.x, 74670u, arg_1.x, 4294967295u), vec4<u32>(arg_1.x, u_input.d.x, 57974u, var_0.x), vec4<bool>(false, true, true, false)), ~vec4<u32>(130u, var_0.x, arg_1.x, 0u)))), -739f, Struct_1(global1.a, 2253f, global1.c));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~max(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d, u_input.a.xy), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(24943u, 4294967295u) >> (u_input.c % vec2<u32>(32u)), vec2<u32>(49440u, u_input.a.x) >> (u_input.d % vec2<u32>(32u)))), func_1(_wgslsmith_f_op_f32(-global1.b), ~u_input.a)), 27u)];
    global1 = global0[_wgslsmith_index_u32(~(~min(40052u, 4294967295u)), 27u)];
    var var_0 = u_input.d.x;
    var var_1 = all(vec4<bool>(true, any(vec4<bool>(false, all(vec4<bool>(false, false, true, true)), false, true)), false, all(vec3<bool>(true, select(false, true, false), true))));
    let var_2 = select(vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), !(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), true))), vec2<bool>(true, true));
    let var_3 = Struct_1(global1.a & _wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.e, u_input.e, u_input.e, global1.a.x)), global1.a), 1492f, global1.c);
    var var_4 = _wgslsmith_add_vec3_i32(var_3.a.xzz, ~func_2(vec4<u32>(72299u, 4294967295u, u_input.d.x, 38523u), _wgslsmith_f_op_f32(133f * 840f), Struct_1(vec4<i32>(1i, 0i, -40767i, var_3.a.x), global1.b, var_3.c)).a.yxy) | var_3.a.wyw;
    var var_5 = u_input.d.x;
    var var_6 = -437f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3.c.wx), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(global1.a.wwy, -var_3.a.xyy), vec3<i32>(-1i) * -(var_3.a.xwy & vec3<i32>(global1.a.x, var_3.a.x, u_input.b)), max(-global1.a.xwy, _wgslsmith_mult_vec3_i32(~var_3.a.wyx, global1.a.xzx))));
}

