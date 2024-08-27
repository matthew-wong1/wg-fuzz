struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, true, true)));

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(0i, vec4<bool>(true, false, false, true), 2147483647i), Struct_2(i32(-2147483648), vec4<bool>(false, true, true, true), 1i));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - 708f))))));
    let var_1 = _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_0, firstTrailingBit(1u), max(~(11998u & arg_0), 0u), arg_1.x >> (abs(1u) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -316f);
    let var_3 = global2[_wgslsmith_index_u32(~1u, 2u)];
    global0 = vec4<bool>(var_3.b.x, var_3.b.x, -9932i >= u_input.a, true);
    return select(var_3.b, var_3.b, var_3.b);
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = Struct_2(u_input.a, select(vec4<bool>(global0.x, false, true, true), func_3(4294967295u, vec4<u32>(20238u, 1u, 0u, firstTrailingBit(1u))), global0.x), ~reverseBits(u_input.a));
    let var_2 = any(var_1.b);
    global0 = !vec4<bool>(var_1.b.x, true, !(!any(var_1.b)), var_2);
    global1 = array<Struct_1, 18>();
    return 52830i;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_mod_vec2_i32(-_wgslsmith_sub_vec2_i32(min(vec2<i32>(-1572i, 639i), vec2<i32>(u_input.a, arg_1.c)), ~vec2<i32>(-1i, -2147483647i)), vec2<i32>(u_input.a >> (~4294967295u % 32u), _wgslsmith_div_i32(arg_3, _wgslsmith_sub_i32(-1i, arg_3)))) | vec2<i32>(-2147483647i << (0u % 32u), -2440i);
    global2 = array<Struct_2, 2>();
    let var_1 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -341f, -316f, -501f)))), !func_3(~(~4294967295u), min(vec4<u32>(arg_0.x, arg_2, arg_0.x, 9195u), vec4<u32>(66795u, 34271u, arg_2, 1u)) | vec4<u32>(12939u, arg_0.x, arg_0.x, arg_0.x)), i32(-1i) * -arg_1.a);
    let var_2 = any(vec4<bool>(arg_1.b.x, all(var_1.b.yyw), var_1.b.x, true));
    var var_3 = -countOneBits(0i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(360f)) + _wgslsmith_f_op_f32(min(-438f, -401f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(17380u, 1u);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1240f - 733f) - _wgslsmith_f_op_f32(-414f * -579f)), _wgslsmith_f_op_f32(trunc(2018f)))), _wgslsmith_f_op_f32(f32(-1f) * -592f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1513f)), -1865f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~vec3<u32>(10020u, 14246u, 53976u), global2[_wgslsmith_index_u32(~4294967295u, 2u)], _wgslsmith_div_u32(4294967295u, 21113u), u_input.a)))));
    global2 = array<Struct_2, 2>();
    var var_2 = global0.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(658u, 4294967295u, 1u), vec3<u32>(4294967295u, 10225u, 93378u))), ~(~4294967295u), ~14311u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 65142u), 12056u, abs(1u)), ~abs(vec3<u32>(1u, 1u, 0u))), 2u)], ~(~1u), abs(~u_input.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1, 215f), -542f, global0.x != false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) + -270f)))), _wgslsmith_f_op_f32(-var_1));
    let var_4 = Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~(-vec3<i32>(u_input.a, 1i, u_input.a)), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a))), firstTrailingBit(vec3<i32>(-u_input.a, u_input.a, i32(-1i) * -1i))), func_3(12010u, vec4<u32>(~22345u, 0u, 28074u, ~abs(53446u))), _wgslsmith_add_i32(-11857i, min(u_input.a << (88790u % 32u), _wgslsmith_clamp_i32(909i, u_input.a, -2147483647i) ^ u_input.a)));
    var_2 = false;
    var var_5 = Struct_2(0i, vec4<bool>((var_3.x > _wgslsmith_f_op_f32(786f + -443f)) != !(var_3.x <= 760f), true, true, select(var_4.b.x, any(select(global0.zwx, var_4.b.ywx, var_4.b.zyz)), !(!var_4.b.x))), _wgslsmith_clamp_i32(-2147483647i, u_input.a, reverseBits(_wgslsmith_mult_i32(firstLeadingBit(2147483647i), 2147483647i))));
    global2 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1231f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.xy, var_3.xy)), vec4<u32>(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_div_u32(1052u, max(0u, 21792u)), ~select(29501u, 1u, false), 51781u) | ~vec4<u32>(1u, 1u, 1u, 1u), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x * 197f))), _wgslsmith_f_op_f32(round(var_3.x))));
}

