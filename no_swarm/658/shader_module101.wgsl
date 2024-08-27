struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(4294967295u, 73321u, 69717u), true);

var<private> global1: array<u32, 14>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1074f, 352f) - vec2<f32>(1121f, 1000f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(257f, -441f)), vec2<f32>(-125f, 868f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(135f, -2232f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1601f, 816f)), vec2<f32>(919f, 137f), !global0.b)))))));
    var var_1 = true;
    let var_2 = u_input.d.x;
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, 431f, -1016f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2289f, 692f, var_0.x))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, var_0.x))))));
    let var_4 = ~max(vec3<i32>(-u_input.a >> (firstLeadingBit(0u) % 32u), 2147483647i, -56548i), min(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 0i), vec3<i32>(0i, -1i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, 1i, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -33021i, 1i), reverseBits(vec3<i32>(u_input.a, u_input.a, 12694i)))));
    return false;
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    global1 = array<u32, 14>();
    var var_0 = vec3<bool>(func_3(), true, !(true | (80194u < _wgslsmith_mult_u32(global0.a.x, 4294967295u))));
    global1 = array<u32, 14>();
    let var_1 = !(!vec3<bool>(true, global0.b, !global0.b));
    var var_2 = u_input.a;
    return -1157f;
}

fn func_1() -> vec3<u32> {
    global1 = array<u32, 14>();
    var var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, 32263i, u_input.a))) >> (u_input.c % vec3<u32>(32u)), max(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.a), vec3<i32>(-1295i, -1i, 0i), vec3<i32>(u_input.a, u_input.a, -24998i)), vec3<i32>(-u_input.a, u_input.a, -65161i)))));
    var var_1 = select(!(!vec3<bool>(global0.b, !global0.b, any(vec4<bool>(global0.b, true, global0.b, global0.b)))), !vec3<bool>(false, -12795i <= u_input.a, true), select(!(!(!vec3<bool>(false, true, global0.b))), vec3<bool>(true, false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), global0.b))), true));
    let var_2 = Struct_2(~vec3<u32>(u_input.b.x, ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(25794u, 14u)], 4294967295u), reverseBits(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.d.x, 14u)], 1u))), all(vec2<bool>(any(var_1.yx), true)));
    var var_3 = _wgslsmith_div_i32(0i, reverseBits(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, -8622i, u_input.a)), min(vec3<i32>(2147483647i, u_input.a, -1i), vec3<i32>(0i, 1i, u_input.a))), 8872i)));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-527f * -313f), 1028f, true))));
    var_0 = 786f;
    global0 = Struct_2(select(u_input.c, ~func_1(), vec3<bool>(global0.b, global0.b, global0.b)), all(!vec2<bool>(all(vec2<bool>(false, true)), true)));
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, -1i), vec4<i32>(9939i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a)), vec4<i32>(-2147483647i, 2147483647i, 0i, 15039i) & vec4<i32>(2147483647i, 6078i, u_input.a, u_input.a))), vec4<i32>(_wgslsmith_div_i32(0i, _wgslsmith_mod_i32(45673i, u_input.a)), ~u_input.a, 1i ^ u_input.a, u_input.a)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-209f, 1113f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1493f) * -181f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2031f), -1336f)))), !vec3<bool>(global0.b, false, global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(firstTrailingBit(firstTrailingBit(vec3<i32>(-1i, u_input.a, u_input.a))))) + -450f));
    let var_2 = _wgslsmith_f_op_f32(var_1.d + -203f);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -404f);
    let var_4 = Struct_4(abs(u_input.d.x), func_3(), Struct_1(~firstLeadingBit(abs(vec4<i32>(-2147483647i, var_1.a.x, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(var_2 - var_2)))), select(select(vec3<bool>(true, var_1.c.x, false), vec3<bool>(global0.b, global0.b, var_1.c.x), global0.b), var_1.c, var_1.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f)), var_1.b.x))), Struct_1(~select(var_1.a, var_1.a, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, var_1.d) + vec2<f32>(var_1.b.x, var_2))) - vec2<f32>(-842f, _wgslsmith_f_op_f32(round(-1141f)))), !vec3<bool>(var_1.c.x, !var_1.c.x, !var_1.c.x), -187f), 1u);
    var_0 = 797f;
    global1 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, reverseBits(reverseBits(countOneBits(71886u))), 4294967295u, firstTrailingBit(~(4294967295u << (global0.a.x % 32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c.b.x, var_2, 395f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(247f, var_4.c.b.x, 1899f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2, var_2, -933f))), var_4.d.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1560f, 253f, var_4.c.d) + vec3<f32>(var_1.d, var_1.b.x, 101f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(220f, var_1.b.x, var_4.c.d), vec3<f32>(866f, var_1.d, var_2), vec3<bool>(true, var_4.c.c.x, var_4.d.c.x))), vec3<f32>(1000f, var_1.b.x, -783f))), vec3<f32>(_wgslsmith_f_op_f32(var_4.c.b.x * 137f), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(step(-541f, var_2))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2))) - vec2<f32>(_wgslsmith_f_op_f32(max(-1709f, var_4.d.b.x)), _wgslsmith_f_op_f32(-1517f - 1781f))))), _wgslsmith_mult_i32(var_1.a.x, -9693i));
}

