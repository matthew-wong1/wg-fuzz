struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.c.x, 1581f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f))))), _wgslsmith_f_op_f32(min(-1773f, _wgslsmith_f_op_f32(-768f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-373f)))))))));
    let var_1 = Struct_1(firstLeadingBit(abs(firstTrailingBit(_wgslsmith_clamp_vec4_i32(global0.a, vec4<i32>(-6135i, u_input.c.x, -37211i, u_input.b), global0.a)))), vec3<i32>(countOneBits(1i >> (firstTrailingBit(u_input.a) % 32u)), ~44772i, u_input.b), global0.c, ~(-22159i), global0.e);
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, 21506i, -688i), vec4<i32>(0i, global0.d, var_1.b.x, var_1.a.x)), ~vec4<i32>(1i, 10022i, global0.b.x, -12692i)), _wgslsmith_mult_vec4_i32(var_1.a, abs(vec4<i32>(-1i, var_1.d, 2147483647i, u_input.b)))), vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-25252i, u_input.c.x, var_1.a.x, var_1.b.x), var_1.a), min(var_1.a, var_1.a)), firstLeadingBit(1i), var_1.a.x), global0.a), firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(-46810i, ~global0.a.x), -1i, _wgslsmith_div_i32(max(u_input.b, var_1.a.x), var_1.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.c.x, 1528f), 164f, _wgslsmith_f_op_f32(f32(-1f) * -130f))), u_input.b, !vec2<bool>(select(var_1.e.x, true, true), all(!vec4<bool>(var_1.e.x, true, global0.e.x, false))));
    global1 = array<vec2<i32>, 22>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c.x, var_1.c.x), _wgslsmith_f_op_f32(-global0.c.x)) - 1423f), true)));
    return _wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(~1u, 22u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i << (u_input.a % 32u), var_2.d), var_1.a.yy, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.a.x ^ global0.d, -var_1.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, global0.b.x), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.x, 69345i), vec2<i32>(global0.b.x, u_input.b))), vec2<i32>(-2147483647i, _wgslsmith_add_i32(1i, u_input.b)))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_1(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-5773i, -42785i, u_input.c.x, -1i), vec4<i32>(u_input.c.x, -9991i, arg_0.x, -2147483647i) >> (vec4<u32>(0u, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u))), vec4<i32>(~(-983i), u_input.c.x, _wgslsmith_add_i32(u_input.c.x, global0.a.x), arg_0.x), -global0.a), -_wgslsmith_mult_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(20090i, u_input.c.x, -11998i)), arg_0 << (vec3<u32>(u_input.a, 53431u, 0u) % vec3<u32>(32u)), vec3<i32>(-33573i, u_input.b, u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-493f, 1715f, -454f), vec3<f32>(-1106f, global0.c.x, global0.c.x)))), -9695i, global0.e);
    var var_1 = Struct_1(global0.a >> (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(43855u, 4294967295u, u_input.a, u_input.a)), firstLeadingBit(~vec4<u32>(u_input.a, 1u, 35979u, u_input.a))) % vec4<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(select(-u_input.c, min(global0.b, u_input.c), vec3<bool>(false, var_0.e.x, false)), arg_0), var_0.a.wxw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + global0.c)), abs(var_0.a.x), vec2<bool>(!(!select(false, true, var_0.e.x)), global0.e.x));
    var var_2 = ~(~min(u_input.c.zx, func_3() >> (select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(32010u, 17933u), false) % vec2<u32>(32u))));
    var_0 = Struct_1(~(-_wgslsmith_add_vec4_i32(global0.a, vec4<i32>(u_input.b, arg_0.x, -7999i, global0.d))), -(~(-(vec3<i32>(u_input.b, arg_0.x, -30977i) ^ vec3<i32>(2147483647i, 2147483647i, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.c))) * vec3<f32>(_wgslsmith_f_op_f32(max(-1800f, 120f)), _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), global0.c.x)))), var_0.b.x ^ -20431i, !select(var_0.e, global0.e, select(select(var_1.e, vec2<bool>(var_1.e.x, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), !vec2<bool>(var_0.e.x, false))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-551f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - -1803f), -2276f, var_0.e.x)))) * -293f);
    return vec4<bool>(select(all(select(!vec3<bool>(var_1.e.x, global0.e.x, global0.e.x), vec3<bool>(true, true, true), select(vec3<bool>(var_0.e.x, false, true), vec3<bool>(var_0.e.x, true, var_0.e.x), var_1.e.x))), _wgslsmith_mult_u32(u_input.a ^ u_input.a, 7595u & u_input.a) > u_input.a, true), false, any(!vec4<bool>(false, false, var_0.e.x, true)), !var_0.e.x);
}

fn func_1() -> vec2<u32> {
    global1 = array<vec2<i32>, 22>();
    let var_0 = false;
    let var_1 = global0.c;
    var var_2 = vec2<bool>(all(func_2(firstTrailingBit(global0.b))), false);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(754f, var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0.c.x, global0.c.x, global0.c.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_1.x - var_1.x)), 448f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1358f, global0.c.x))))), !vec4<bool>(true, true, !all(vec4<bool>(true, global0.e.x, var_0, true)), var_0 && any(vec4<bool>(false, global0.e.x, var_0, true)))));
    return ~vec2<u32>(72666u, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(25070u, 1u, 0u, u_input.a), vec4<u32>(u_input.a, 142776u, u_input.a, 37526u)), ~countOneBits(u_input.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-28820i, -51886i, func_1(), -(~min(_wgslsmith_div_i32(-2147483647i, 1i), 40221i)));
}

