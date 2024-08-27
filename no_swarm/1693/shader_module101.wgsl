struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = -30376i;
    global0 = array<vec3<bool>, 16>();
    let var_1 = _wgslsmith_clamp_u32(u_input.c.x, select(~u_input.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), ~(~vec4<u32>(u_input.c.x, 4294967295u, 21776u, u_input.c.x))), arg_0.b.x), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x));
    let var_2 = Struct_1(_wgslsmith_mult_i32(15182i, arg_0.a), arg_0.b);
    global0 = array<vec3<bool>, 16>();
    return ~_wgslsmith_div_i32(-1i, i32(-1i) * -1i);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec4_u32(u_input.c, ~(~(~vec4<u32>(0u, u_input.c.x, 1u, u_input.c.x))));
    let var_1 = u_input.b.yy;
    let var_2 = vec4<f32>(167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1636f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(789f * 873f), 832f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-525f - -372f), 890f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f))));
    var var_3 = Struct_3(-select(vec4<i32>(u_input.a >> (4294967295u % 32u), u_input.b.x, -2147483647i, 2147483647i), countOneBits(vec4<i32>(arg_1.b.a, -4966i, arg_1.b.a, -70165i)), !arg_1.a.x), ~4294967295u);
    var_3 = Struct_3(firstTrailingBit(~var_3.a), ~(1u << (u_input.c.x % 32u)));
    return u_input.c.zyz;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = Struct_4(0u, Struct_1(~(~(~(-2147483647i))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), arg_0 > -arg_0)), Struct_3(vec4<i32>(arg_0, -20203i, arg_0, -arg_0 | func_2(Struct_1(arg_0, vec4<bool>(true, true, true, false)))), _wgslsmith_add_u32(countOneBits(u_input.c.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(u_input.c.x, 1u)))));
    global0 = array<vec3<bool>, 16>();
    let var_1 = Struct_2(select(vec3<bool>(var_0.b.b.x, all(vec3<bool>(true, var_0.b.b.x, var_0.b.b.x)), all(select(var_0.b.b.yw, vec2<bool>(var_0.b.b.x, var_0.b.b.x), true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(45660u, var_0.a & var_0.c.b, 27091u & var_0.a), func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 16u)], var_0.b, vec3<i32>(u_input.a, -1i, arg_0)), Struct_2(var_0.b.b.zyx, var_0.b, var_0.c.a.yww), var_0.b)), 16u)], vec3<bool>(!any(vec3<bool>(true, var_0.b.b.x, var_0.b.b.x)), false, false)), var_0.b, -(abs(-vec3<i32>(43610i, arg_0, arg_0)) | select(var_0.c.a.zzy & vec3<i32>(16675i, u_input.a, arg_0), vec3<i32>(arg_0, 26147i, arg_0), !vec3<bool>(var_0.b.b.x, true, false))));
    var var_2 = vec4<i32>(max(-func_2(var_1.b), var_0.c.a.x), 2147483647i, -25213i, (~func_2(var_1.b) >> (9102u % 32u)) << (~max(_wgslsmith_sub_u32(var_0.c.b, 20390u), var_0.a ^ 7291u) % 32u));
    var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(abs(47831i), ~u_input.b.x, _wgslsmith_dot_vec4_i32(var_0.c.a, vec4<i32>(var_2.x, var_0.b.a, u_input.b.x, var_2.x)), 0i), firstTrailingBit(~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.a, var_2.x, 0i, 0i), var_0.c.a, var_0.c.a), var_0.c.a, vec4<bool>(true, var_0.b.b.x, true, var_0.b.b.x))));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.c.x, Struct_1(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), u_input.b)), !vec4<bool>(all(vec4<bool>(false, false, false, false)), select(false, true, true), true, true)), Struct_3(_wgslsmith_mod_vec4_i32(-max(vec4<i32>(u_input.a, -52927i, -1i, -30651i), vec4<i32>(0i, -2147483647i, u_input.b.x, u_input.b.x)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -14346i, 12093i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a)))), 1u));
    var_0 = Struct_4(1u, Struct_1(_wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(51189i, var_0.b.a)) >> (~63685u % 32u), vec4<bool>(true, var_0.b.b.x, var_0.b.b.x, true)), Struct_3(~(-(vec4<i32>(-2147483647i, 4539i, u_input.a, u_input.b.x) << (u_input.c % vec4<u32>(32u)))), _wgslsmith_mult_u32(var_0.c.b, countOneBits(1u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f) + -809f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2284f, _wgslsmith_f_op_f32(func_1(~var_0.c.a.x))))));
    let var_2 = ~(-1i);
    let var_3 = select(select(~select(u_input.c.yw, u_input.c.zz, true), ~select(vec2<u32>(52979u, var_0.c.b), select(u_input.c.yz, vec2<u32>(u_input.c.x, var_0.c.b), true), u_input.c.x >= var_0.a), var_0.b.b.yx), select(vec2<u32>(~1405u, firstLeadingBit(min(u_input.c.x, var_0.a))), u_input.c.yz, vec2<bool>(!any(vec2<bool>(var_0.b.b.x, true)), true)), !vec2<bool>(all(vec4<bool>(var_0.b.b.x, false, var_0.b.b.x, var_0.b.b.x)) & false, false));
    global0 = array<vec3<bool>, 16>();
    var_0 = Struct_4(min(_wgslsmith_dot_vec3_u32(~u_input.c.xww, u_input.c.yzx), ~(~66062u)), Struct_1(-((1i >> (var_3.x % 32u)) | max(u_input.a, var_0.c.a.x)), !var_0.b.b), Struct_3(min(var_0.c.a, var_0.c.a), u_input.c.x));
    var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-150f)), _wgslsmith_f_op_f32(max(-2215f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-799f, 579f)), _wgslsmith_f_op_f32(floor(437f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, -842f, -902f, 337f) + vec4<f32>(574f, -489f, -515f, 459f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, 2470f, -722f, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1297f, 1286f, 1916f, -723f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, 1450f, 204f, 2668f)), vec4<f32>(1000f, -331f, -1000f, _wgslsmith_f_op_f32(trunc(-1184f))))))), ~(-_wgslsmith_add_i32(var_0.b.a, _wgslsmith_div_i32(var_2, -32424i))), var_3, 24984u);
}

