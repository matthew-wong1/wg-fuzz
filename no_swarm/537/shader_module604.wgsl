struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-822f + -852f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, arg_0.a.b))), _wgslsmith_f_op_f32(sign(1f))) + vec4<f32>(1460f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.a.x), arg_0.b.b)), _wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(-arg_0.a.a.x)), _wgslsmith_div_f32(arg_0.b.b, _wgslsmith_f_op_f32(exp2(arg_0.a.b))))), arg_0.b.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.c))));
    var var_1 = ~(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-50446i, 0i), u_input.a), vec2<i32>(14144i, u_input.a.x)), -_wgslsmith_mult_i32(-46233i, -1i), arg_1) << (min(_wgslsmith_mult_vec4_u32(vec4<u32>(17064u, u_input.b.x, 0u, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), u_input.b.x, u_input.b.x, ~0u)) % vec4<u32>(32u)));
    var_1 = _wgslsmith_add_vec4_i32(~firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-38406i, 34475i, 2147483647i, var_1.x), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, arg_1)) & select(vec4<i32>(var_1.x, 19033i, 0i, -16390i), vec4<i32>(14773i, -24081i, 2147483647i, var_1.x), vec4<bool>(false, true, false, true))), ~vec4<i32>(arg_1 << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 75881u), vec2<u32>(31797u, u_input.b.x)) % 32u), ~(var_1.x & 0i), u_input.a.x, _wgslsmith_mult_i32(arg_1, 1i)));
    var_1 = _wgslsmith_mod_vec4_i32((-select(vec4<i32>(u_input.a.x, 1i, 0i, var_1.x), vec4<i32>(1i, u_input.a.x, 60329i, -13641i), vec4<bool>(false, true, true, false)) << ((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u) | abs(vec4<u32>(36209u, 0u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u))) << (vec4<u32>(u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), u_input.b.x, u_input.b.x) % vec4<u32>(32u)), -firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, -2147483647i, arg_1), vec4<i32>(0i, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(var_1.x, arg_1, var_1.x, -1i)) << (vec4<u32>(u_input.b.x, 55970u, u_input.b.x, 13955u) % vec4<u32>(32u))));
    var_1 = (vec4<i32>(0i, -_wgslsmith_sub_i32(var_1.x, arg_1), -countOneBits(var_1.x), -1i) >> (abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 51263u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 1u, u_input.b.x, 1u)))) % vec4<u32>(32u))) | firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, ~67567i, ~49723i, var_1.x & arg_1), vec4<i32>(arg_1, -2147483647i, -arg_1, select(var_1.x, u_input.a.x, true))));
    return any(select(vec3<bool>(select(true, true, true) && true, true, -128f <= _wgslsmith_div_f32(var_0.b, arg_0.b.c)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<i32>(u_input.a.x, u_input.a.x, abs(u_input.a.x >> (1u % 32u)), abs(_wgslsmith_div_i32(~0i, 5248i)));
    var var_1 = all(!vec3<bool>(arg_1.c > arg_1.b, true, !func_3(Struct_4(Struct_1(arg_1.a, arg_1.a.x, 717f), arg_1), u_input.a.x)));
    return ~_wgslsmith_clamp_u32(~0u << (~(arg_0 ^ 1u) % 32u), 1u, 9051u);
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = vec3<bool>(false, !any(vec4<bool>(4294967295u < arg_0.x, all(vec2<bool>(false, true)), true, any(vec4<bool>(false, true, true, true)))), all(vec3<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec4<bool>(true, false, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f - -250f)), _wgslsmith_f_op_f32(573f - 1000f))))) + -1000f);
    let var_2 = min(abs(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(8862i, 2147483647i, u_input.a.x), vec3<i32>(31351i, -12768i, u_input.a.x), vec3<i32>(69893i, 1i, u_input.a.x)))), _wgslsmith_clamp_vec3_i32(abs(-(~vec3<i32>(-1i, u_input.a.x, u_input.a.x))), vec3<i32>(u_input.a.x, u_input.a.x >> (func_2(arg_0.x, Struct_1(vec4<f32>(468f, 840f, -192f, 769f), -1167f, 370f)) % 32u), u_input.a.x), -vec3<i32>(u_input.a.x, u_input.a.x, 0i) >> (~vec3<u32>(50236u, arg_0.x, 59629u) % vec3<u32>(32u))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-456f + -946f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f + -763f)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(trunc(1f)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-10333i);
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(func_1(abs(u_input.b.yy)), u_input.b.x), ~(~(~1u)));
    var var_2 = Struct_3(~abs(~select(vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 31275i, u_input.a.x, u_input.a.x), vec4<bool>(true, true, false, true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, -1689f, -404f, -316f) - vec4<f32>(-260f, -375f, -559f, 2183f)))), -451f, 802f));
    let var_3 = i32(-1i) * -u_input.a.x;
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b.c, 1044f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.b.a.x, _wgslsmith_div_f32(var_2.b.c, var_2.b.b))))), (countOneBits(var_3) & ~(~u_input.a.x)) ^ -35160i, _wgslsmith_sub_i32(-(~(2147483647i << (u_input.b.x % 32u))), var_3));
}

