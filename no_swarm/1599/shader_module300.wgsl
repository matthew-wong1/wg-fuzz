struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20>;

var<private> global1: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: f32) -> i32 {
    let var_0 = firstTrailingBit(~1u);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_0))))));
    global0 = array<vec4<f32>, 20>();
    global0 = array<vec4<f32>, 20>();
    var var_2 = Struct_4(vec3<bool>(true, true, true));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<f32>) -> vec4<i32> {
    global1 = _wgslsmith_mult_u32(34093u, ~firstLeadingBit(_wgslsmith_add_u32(16681u, 29890u) | _wgslsmith_div_u32(0u, arg_0.a)));
    var var_0 = !vec4<bool>(-func_3(arg_2.x, -698f) <= _wgslsmith_div_i32(9775i, u_input.a.x), false, true, arg_1.a.x);
    var var_1 = u_input.c;
    var var_2 = Struct_3(4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -974f) * arg_2.x))), !(!(!arg_0.c)));
    var var_3 = -((u_input.a.x ^ _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 50009i ^ u_input.a.x)) ^ -1i);
    return vec4<i32>(u_input.a.x, 1i, 1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a.x, i32(-1i) * -31474i, 6382i, ~u_input.a.x), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = select(select(vec4<bool>(false, any(vec2<bool>(arg_3, true)), all(vec4<bool>(arg_3, true, arg_3, arg_3)), arg_3), select(select(select(vec4<bool>(arg_3, false, arg_3, true), vec4<bool>(false, arg_3, arg_3, arg_3), vec4<bool>(true, true, false, arg_3)), vec4<bool>(arg_3, true, arg_3, true), select(vec4<bool>(false, arg_3, arg_3, arg_3), vec4<bool>(true, arg_3, true, false), true)), vec4<bool>(false, arg_3, !arg_3, arg_3), select(select(vec4<bool>(false, arg_3, true, arg_3), vec4<bool>(true, arg_3, arg_3, false), arg_3), select(vec4<bool>(arg_3, arg_3, false, arg_3), vec4<bool>(true, arg_3, arg_3, true), arg_3), !arg_3)), true), !(!select(vec4<bool>(arg_3, false, arg_3, true), vec4<bool>(arg_3, true, true, arg_3), true)), arg_3);
    let var_1 = Struct_4(select(select(var_0.yxz, var_0.zww, false), var_0.zzy, var_0.zww));
    return all(var_1.a);
}

fn func_1() -> vec3<bool> {
    var var_0 = select(func_4(u_input.a, u_input.a, abs(vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, u_input.a.x) & func_2(Struct_3(4294967295u, 160f, vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, true, false)), vec4<f32>(919f, 1069f, -966f, 1129f))), false), true, false | !all(vec4<bool>(true, true, true, true)));
    let var_1 = firstTrailingBit(reverseBits(_wgslsmith_div_u32(4294967295u >> (0u % 32u), u_input.b))) & firstTrailingBit(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(0u, u_input.b), ~_wgslsmith_sub_u32(u_input.d, 4294967295u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -995f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-867f, -842f) * 1000f))));
    let var_3 = u_input.a.x;
    var var_4 = false;
    return vec3<bool>(all(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), !(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-820f, var_2.x), 712f)) == -1080f), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    let var_0 = Struct_3(8659u, 1318f, select(func_1(), func_1(), true));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-27914i & ~u_input.a.x, ~u_input.a.x));
    global1 = 40917u;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b))) - vec3<f32>(var_0.b, _wgslsmith_f_op_f32(var_0.b + -1054f), _wgslsmith_f_op_f32(select(910f, var_0.b, var_0.c.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2622f + 765f), _wgslsmith_f_op_f32(var_0.b * var_0.b)))), var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1422f, _wgslsmith_f_op_f32(-var_0.b)), 1f))));
    var var_3 = vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, any(!vec2<bool>(true, var_0.c.x)));
    let var_4 = Struct_1(false, min(~var_0.a, 1u >> ((~69947u | var_0.a) % 32u)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, u_input.a.x, 1i), -vec3<i32>(65755i, u_input.a.x, 5577i) & -vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)) | vec3<i32>(44375i, 1i, 2147483647i), _wgslsmith_mult_u32(~(~_wgslsmith_clamp_u32(110510u, 54005u, var_0.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(select(var_0.a, var_0.a, var_3.x), ~0u, u_input.b, 4294967295u), vec4<u32>(u_input.d, max(836u, 0u), countOneBits(var_0.a), 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_0.a, 20u)])));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.e.x) + var_0.b);
    global0 = array<vec4<f32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~1u, reverseBits(u_input.e), u_input.a.x, ~_wgslsmith_div_i32(abs(0i) >> (u_input.e % 32u), ~0i));
}

