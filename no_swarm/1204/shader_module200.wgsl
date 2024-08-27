struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: array<bool, 21> = array<bool, 21>(true, true, false, false, true, false, false, true, false, true, true, true, false, true, true, false, false, true, false, false, true);

var<private> global2: Struct_2 = Struct_2(false, Struct_1(vec2<u32>(0u, 74392u), 1u));

var<private> global3: array<i32, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    global3 = array<i32, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(952f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(365f + -382f))), -418f, -132f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-390f, 1958f, 1332f))), _wgslsmith_div_vec3_f32(vec3<f32>(174f, -161f, -2381f), vec3<f32>(1000f, 357f, 964f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-168f, -1012f, _wgslsmith_f_op_f32(-292f - 630f))))));
    global2 = Struct_2(all(arg_0.yx), global2.b);
    let var_1 = Struct_1(~global2.b.a, global2.b.b);
    var var_2 = !(global1[_wgslsmith_index_u32(firstTrailingBit(~1u << (arg_1.b % 32u)), 21u)] || !(!(!global1[_wgslsmith_index_u32(0u, 21u)])));
    return global1[_wgslsmith_index_u32(var_1.a.x, 21u)];
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = !vec3<bool>(false, any(!vec4<bool>(global1[_wgslsmith_index_u32(33770u, 21u)], true, global2.a, global1[_wgslsmith_index_u32(global2.b.a.x, 21u)])) || (-735f != _wgslsmith_f_op_f32(ceil(-1490f))), func_3(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(18781u, 21u)], true)), Struct_1(global2.b.a, 12452u)));
    global3 = array<i32, 21>();
    let var_1 = _wgslsmith_clamp_i32(-(-_wgslsmith_sub_i32(-55027i, global3[_wgslsmith_index_u32(0u, 21u)]) >> (19427u % 32u)), -(~_wgslsmith_div_i32(u_input.a, reverseBits(16149i))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global3[_wgslsmith_index_u32(global2.b.b, 21u)], 2147483647i, arg_0), select(vec4<i32>(arg_0, u_input.a, -22977i, global3[_wgslsmith_index_u32(1u, 21u)]), vec4<i32>(34614i, 2147483647i, global3[_wgslsmith_index_u32(0u, 21u)], 57597i), vec4<bool>(true, global1[_wgslsmith_index_u32(4519u, 21u)], var_0.x, global1[_wgslsmith_index_u32(global2.b.a.x, 21u)]))), reverseBits(global3[_wgslsmith_index_u32(1u, 21u)] >> (global2.b.b % 32u)), -arg_0), ~vec3<i32>(abs(global3[_wgslsmith_index_u32(33016u, 21u)]), 1i, ~66890i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-658f, -1298f, 1982f) + vec3<f32>(-1000f, 481f, -442f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(601f, -843f, -314f), vec3<f32>(-982f, -603f, -1793f), false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 913f, 589f), vec3<f32>(-974f, -612f, -859f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(752f, 571f, -325f))), var_0)))), !((30301i ^ var_1) >= _wgslsmith_clamp_i32(var_1, var_1, arg_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 790f, -1276f)))))));
    global2 = Struct_2(true, global2.b);
    return global2.b;
}

fn func_1() -> i32 {
    let var_0 = vec4<bool>(global2.a, global1[_wgslsmith_index_u32(4294967295u, 21u)], any(!select(vec2<bool>(global1[_wgslsmith_index_u32(global2.b.b, 21u)], false), select(vec2<bool>(false, global1[_wgslsmith_index_u32(global2.b.a.x, 21u)]), vec2<bool>(false, global2.a), false), global2.a)), !select(global2.a || any(vec2<bool>(global1[_wgslsmith_index_u32(12506u, 21u)], true)), !global1[_wgslsmith_index_u32(4294967295u, 21u)] == false, true && global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.b.a.x, global2.b.b), 21u)]));
    global0 = array<Struct_3, 16>();
    global1 = array<bool, 21>();
    let var_1 = func_2(~u_input.a);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.a.x, 64278u >> (~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, var_1.a.x), 0u) % 32u)), 21u)];
    return _wgslsmith_div_i32(u_input.a, global3[_wgslsmith_index_u32(~(~1u), 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = vec4<i32>(-2147483647i, u_input.a, ~(-(~func_1())), u_input.a);
    let var_2 = Struct_2(all(vec2<bool>(true, true)), func_2(global3[_wgslsmith_index_u32(~64609u | _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, global2.b.a.x)), max(global2.b.a, global2.b.a)), 21u)]));
    global3 = array<i32, 21>();
    global3 = array<i32, 21>();
    var var_3 = 305f;
    global3 = array<i32, 21>();
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) + _wgslsmith_f_op_f32(f32(-1f) * -505f)), 683f))));
    global2 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(93136u, var_2.b.b, global2.b.a.x), 21u)]) ^ -1i), -2147483647i, ~var_1);
}

