struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -700f;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1073f, -1273f), vec4<f32>(929f, 516f, -1016f, 726f));

var<private> global2: array<vec4<bool>, 31>;

var<private> global3: array<i32, 19> = array<i32, 19>(-1i, -1i, 5405i, 7452i, -46808i, 16930i, 1i, -14243i, -15493i, i32(-2147483648), -31421i, 0i, -2741i, 2147483647i, 2147483647i, 1i, 0i, 2147483647i, 0i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global1.b.yww);
    return global1.a.x;
}

fn func_2() -> vec3<i32> {
    global2 = array<vec4<bool>, 31>();
    global2 = array<vec4<bool>, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-855f, _wgslsmith_f_op_f32(func_3()), global1.a.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.zw)))), global1.b);
    let var_2 = _wgslsmith_add_vec3_u32((~max(vec3<u32>(18082u, u_input.a, 0u), vec3<u32>(28678u, 10832u, 9988u)) & vec3<u32>(u_input.a | 4294967295u, u_input.a, u_input.a)) << (~vec3<u32>(firstTrailingBit(82962u), 13218u, 9581u) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 39525u), vec2<u32>(0u, 1u)), u_input.a)));
    return -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -(u_input.b.x ^ 1i), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(37081u, u_input.a), 14545u), 19u)]), firstLeadingBit(_wgslsmith_sub_vec3_i32(u_input.b | u_input.b, u_input.b)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_i32(min(u_input.b, ~func_2()), u_input.b);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(445f)), 633f, arg_3, _wgslsmith_f_op_f32(-399f - arg_0.a.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a), arg_0.b);
    var var_2 = Struct_1(vec2<f32>(108f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * arg_1) * _wgslsmith_f_op_f32(-arg_1)), global1.a.x)), var_1.b);
    let var_3 = 1u;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2317f, 207f)));
    return func_1(func_1(func_1(func_1(Struct_1(var_2.a, vec4<f32>(-1020f, arg_0.b.x, arg_0.a.x, var_1.a.x)), vec3<u32>(u_input.a, var_3, u_input.a), false | arg_2.x, var_2.a.x), vec3<u32>(firstTrailingBit(var_3), u_input.a, _wgslsmith_sub_u32(var_3, var_3)), false, _wgslsmith_f_op_f32(-arg_1)), vec3<u32>(~(~1u), var_3, abs(var_3)), !all(!arg_2), -1077f), _wgslsmith_sub_vec3_u32(~select(reverseBits(vec3<u32>(u_input.a, var_3, u_input.a)), vec3<u32>(var_3, 0u, 63313u), all(vec2<bool>(false, arg_2.x))), ~_wgslsmith_div_vec3_u32(select(vec3<u32>(6364u, var_3, 60414u), vec3<u32>(1u, var_3, u_input.a), arg_2.x), vec3<u32>(u_input.a, 61567u, 25686u))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f) - _wgslsmith_f_op_f32(func_3())));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * arg_0.a.x);
    let var_0 = vec2<bool>(any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), any(global2[_wgslsmith_index_u32(~0u, 31u)]))), all(select(vec3<bool>(true, true, any(global2[_wgslsmith_index_u32(26122u, 31u)])), vec3<bool>(arg_0.b.x == -210f, true, false), vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true))));
    return arg_0;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = !select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(select(false, true, true), true, any(global2[_wgslsmith_index_u32(75024u, 31u)]))), vec3<bool>(true, true, true), false);
    let var_1 = func_1(Struct_1(arg_3.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(-472f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - func_4(arg_3, -502f, vec2<bool>(true, var_0.x)).a.x), arg_3.b.x, 1405f)), firstLeadingBit(abs(~(~vec3<u32>(0u, u_input.a, 23062u)))), true, 2018f);
    global0 = _wgslsmith_f_op_f32(min(func_5(func_1(var_1, abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 8890u, u_input.a), vec3<u32>(u_input.a, 38897u, u_input.a))), !var_0.x & all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), global1.b.x), ~(~vec4<u32>(28349u, 111445u, 44673u, u_input.a) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, 11255u) % vec4<u32>(32u)))).b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), -130f), !var_0.x))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.b.x, -330f)))));
    var var_3 = var_0.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(func_1(Struct_1(vec2<f32>(-1364f, global1.b.x), arg_1.b), _wgslsmith_div_vec3_u32(vec3<u32>(42543u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), all(vec3<bool>(var_0.x, true, var_0.x)), -1391f).b))) * _wgslsmith_f_op_vec4_f32(ceil(arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 31>();
    var var_0 = u_input.a;
    var var_1 = Struct_1(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_vec4_f32(func_6(~u_input.b.yy, func_5(func_4(func_1(Struct_1(vec2<f32>(-201f, global1.a.x), global1.b), vec3<u32>(u_input.a, 75933u, u_input.a), false, global1.b.x), global1.a.x, select(vec2<bool>(false, false), vec2<bool>(true, false), false)), reverseBits(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a)) ^ ~vec4<u32>(u_input.a, u_input.a, 42508u, 4294967295u)), _wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_clamp_i32(~u_input.b.x, global3[_wgslsmith_index_u32(~19460u, 19u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-37929i, global3[_wgslsmith_index_u32(u_input.a, 19u)], global3[_wgslsmith_index_u32(u_input.a, 19u)]), u_input.b)), global3[_wgslsmith_index_u32(reverseBits(min(1u, u_input.a)), 19u)]), Struct_1(vec2<f32>(729f, _wgslsmith_f_op_f32(sign(230f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, global1.a.x, global1.a.x, global1.a.x), vec4<f32>(global1.a.x, -1116f, 1232f, global1.b.x), global2[_wgslsmith_index_u32(u_input.a, 31u)])))))));
    let var_2 = vec2<u32>(u_input.a, ~u_input.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_1.b.xy);
    let var_4 = vec2<bool>(true, select(true, true, all(vec2<bool>(true, true))));
    var var_5 = global1.b.xz;
    let var_6 = select(!vec3<bool>(true, any(select(vec2<bool>(var_4.x, true), var_4, false)), !all(var_4)), vec3<bool>(true, !var_4.x, (-2147483647i | (u_input.b.x & -6340i)) >= -(global3[_wgslsmith_index_u32(var_2.x, 19u)] & 1i)), vec3<bool>(all(var_4), var_4.x, var_4.x));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.a)) + _wgslsmith_f_op_vec2_f32(-var_3)))) + var_3), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, global1.a.x, var_1.a.x, var_3.x) - var_1.b)) + vec4<f32>(-737f, -1257f, 1973f, -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(291f, var_3.x, var_5.x, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(Struct_1(vec2<f32>(-278f, var_3.x), vec4<f32>(var_3.x, -482f, -228f, var_3.x)), ~vec3<u32>(var_2.x, u_input.a, u_input.a), any(vec4<bool>(var_6.x, true, false, var_4.x)), -179f).b.x)));
}

