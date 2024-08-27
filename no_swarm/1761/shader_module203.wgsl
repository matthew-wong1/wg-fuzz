struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_1(u_input.d, _wgslsmith_sub_i32(u_input.d, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d, u_input.d) | vec3<i32>(-1i, u_input.a, u_input.d), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.d, u_input.d), vec3<i32>(2147483647i, u_input.a, -31949i))))));
    var var_1 = vec2<i32>(1i, 0i);
    global0 = array<vec3<bool>, 31>();
    var var_2 = -var_0.a <= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -(i32(-1i) * -39889i)), select(vec3<i32>(select(var_0.a, var_0.b, true), var_1.x, var_1.x & u_input.a), vec3<i32>(-1i) * -vec3<i32>(0i, 1i, 37959i), true));
    var var_3 = arg_3.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1000f));
}

fn func_2() -> u32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1369f)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1118f, 869f, -174f, -285f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-301f, -416f), vec2<f32>(324f, 1098f), true)), _wgslsmith_f_op_f32(125f + -103f), Struct_3(Struct_2(515f)))))));
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    let var_1 = _wgslsmith_dot_vec4_u32(u_input.c, u_input.c);
    global0 = array<vec3<bool>, 31>();
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32(213u, _wgslsmith_sub_u32(var_1, 67078u)) & ~1u, reverseBits(u_input.b));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    let var_0 = -709f;
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    var var_1 = Struct_2(var_0);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * var_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-569f * var_0), -1015f))), var_1.a))));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(), vec2<u32>(countOneBits(21246u), ~u_input.c.x))) * 1290f);
    global0 = array<vec3<bool>, 31>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.c.x >> (~func_2() % 32u), 31u)];
    var_2 = !vec3<bool>(!(!select(var_2.x, var_2.x, var_2.x)), var_2.x, _wgslsmith_add_u32(firstLeadingBit(u_input.e), u_input.b) <= u_input.b);
    return _wgslsmith_f_op_f32(ceil(1089f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2242f + 1103f), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(2291f)))), true)))))));
    var var_1 = _wgslsmith_sub_i32(-2147483647i, -14631i);
    global0 = array<vec3<bool>, 31>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(var_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * 1000f) * _wgslsmith_f_op_f32(-123f * 326f)) * -924f), !(!(-534f == var_0.a)))));
    let var_3 = 35535u;
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(vec3<u32>(46073u, _wgslsmith_clamp_u32(59716u, 0u, u_input.c.x), 1u)), u_input.c.zyw, !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(4294967295u, 31u)], vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3, var_3), 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(144f)))), _wgslsmith_f_op_f32(floor(-1000f)));
}

