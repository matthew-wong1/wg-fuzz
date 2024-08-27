struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> vec3<u32> {
    var var_0 = vec4<bool>(!select(true, true, !arg_2.b) & (arg_2.a.b.c < _wgslsmith_f_op_f32(-arg_2.a.b.e.x)), !arg_2.b, arg_0 == ~_wgslsmith_add_u32(~u_input.c.x, ~arg_1.a.b.x), !arg_2.b);
    var_0 = select(!(!vec4<bool>(true, false, all(var_0.yyy), all(var_0.xy))), !(!vec4<bool>(!var_0.x, true, all(vec4<bool>(var_0.x, true, arg_2.b, true)), false)), true);
    return arg_1.b.b.yzz;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: f32) -> bool {
    global0 = array<Struct_5, 22>();
    var var_0 = u_input.d.zx;
    var var_1 = ~(4294967295u >> (~(arg_2.x >> (~18813u % 32u)) % 32u));
    var var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 266f, arg_3, arg_3)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-789f, _wgslsmith_f_op_f32(arg_3 * -702f), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(exp2(arg_3))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3, -1107f, arg_3, -1000f), vec4<f32>(645f, arg_3, arg_3, arg_3))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3, arg_3, -244f, -192f), vec4<f32>(-1514f, arg_3, 154f, arg_3), vec4<bool>(false, false, true, false)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 1473f, -933f, 308f)), vec4<f32>(arg_3, arg_3, arg_3, -285f), vec4<bool>(false, true, true, false))))), true)), !vec4<bool>(false, false, !any(vec4<bool>(true, false, false, true)), false)));
    return (min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_2.x), _wgslsmith_add_vec3_u32(arg_1, u_input.e)), 1u) != ~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 51239u, 4294967295u), u_input.a) >> (select(51414u, 1u, true) % 32u))) && true;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    global0 = array<Struct_5, 22>();
    global0 = array<Struct_5, 22>();
    let var_0 = Struct_4(Struct_3(Struct_1(~0i, _wgslsmith_mult_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, u_input.a))), Struct_2(Struct_1(reverseBits(3856i), u_input.a & vec4<u32>(arg_0, 0u, 52209u, arg_0)), Struct_1(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.d.x), vec4<u32>(0u, u_input.e.x, arg_0, u_input.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(797f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) - 428f), _wgslsmith_div_vec3_f32(vec3<f32>(-1137f, -1721f, -2845f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -437f, -1026f)))), 0i), arg_1.x, arg_1.wx, ~u_input.a.x, _wgslsmith_div_u32(~max(~48798u, _wgslsmith_add_u32(u_input.e.x, u_input.c.x)), u_input.a.x));
    let var_1 = func_4(u_input.b, ~func_3(u_input.e.x, Struct_2(Struct_1(u_input.b, vec4<u32>(var_0.a.b.b.b.x, arg_0, u_input.c.x, 11404u)), var_0.a.a, -303f, var_0.a.b.c, var_0.a.b.e), var_0, _wgslsmith_f_op_f32(-var_0.a.b.d)), ~vec2<u32>(~arg_0, 1u >> (arg_0 % 32u)), -1485f) || arg_2;
    global0 = array<Struct_5, 22>();
    return var_0.a.b.e.x;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_3 {
    var var_0 = 561f;
    var_0 = _wgslsmith_f_op_f32(func_2(~min(arg_1, arg_1) | abs(~4294967295u), !(!select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0)), vec4<bool>(arg_0, false, arg_0, arg_0), arg_0)), false));
    var var_1 = max(u_input.d.yx, reverseBits(select(-vec2<i32>(35417i, 1i), vec2<i32>(u_input.d.x, u_input.b) >> (u_input.c % vec2<u32>(32u)), !vec2<bool>(arg_0, arg_0))) >> (abs(~(~u_input.c)) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1949f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -491f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1167f, 1153f), -131f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1275f * 1221f), -511f, all(vec4<bool>(true, true, false, arg_0)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, _wgslsmith_f_op_f32(470f - -1244f), _wgslsmith_div_f32(-1000f, -966f))))));
    var var_3 = -(abs(-vec3<i32>(u_input.d.x, 45826i, 29517i)) ^ select(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(var_1.x, -21719i, u_input.d.x)) << (select(u_input.a.wxy, vec3<u32>(arg_1, 4294967295u, 1u), vec3<bool>(false, arg_0, true)) % vec3<u32>(32u)), u_input.d, vec3<bool>(all(vec2<bool>(false, arg_0)), select(arg_0, false, arg_0), false)));
    return Struct_3(Struct_1(u_input.b, ~u_input.a), Struct_2(Struct_1(u_input.d.x, u_input.a), Struct_1(firstTrailingBit(u_input.d.x), u_input.a), 1996f, var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(993f, -1000f, -1239f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -726f)))) - vec3<f32>(1815f, _wgslsmith_f_op_f32(var_2.x * var_2.x), -804f))), _wgslsmith_mult_i32(~(-1i), abs(var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f * 437f))));
    var_0 = -570f;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.e.x, 1390u)), u_input.e | vec3<u32>(u_input.a.x, u_input.a.x, u_input.c.x)), vec3<u32>(1u, ~u_input.c.x, u_input.e.x & 1u)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.e.x, u_input.a.x), u_input.a.x & u_input.a.x), abs(~u_input.e.x), ~10482u)), 22u)];
    let var_2 = func_1(true, u_input.e.x);
    var var_3 = _wgslsmith_add_vec2_u32(var_2.b.a.b.ww, _wgslsmith_add_vec2_u32(firstLeadingBit(u_input.a.yy), ~u_input.e.yy));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_3.x, var_3.x, var_2.a.b.x), ~vec4<u32>(var_2.b.a.b.x, 1u, var_2.a.b.x, 4294967295u), var_2.a.b), var_2.a.b) | var_2.a.b);
}

