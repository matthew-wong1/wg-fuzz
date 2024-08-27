struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    global0 = array<vec4<f32>, 18>();
    global0 = array<vec4<f32>, 18>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-649f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-734f, _wgslsmith_f_op_f32(sign(645f)))))) - -770f);
    global0 = array<vec4<f32>, 18>();
    var var_1 = countOneBits(-1i);
    return arg_0.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> i32 {
    global0 = array<vec4<f32>, 18>();
    var var_0 = _wgslsmith_sub_u32(~firstLeadingBit(abs(1u)), firstLeadingBit(~(~arg_3.b.x << (_wgslsmith_dot_vec4_u32(arg_1.a, arg_1.a) % 32u))));
    let var_1 = Struct_3(Struct_2(~_wgslsmith_add_vec4_u32(abs(arg_1.a), arg_1.a)), arg_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1624f) * _wgslsmith_div_f32(arg_2, arg_2)))));
    let var_2 = arg_3;
    let var_3 = reverseBits(arg_1.a.x) | 46196u;
    return 1i;
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<f32>, 18>();
    var var_0 = func_4(-vec4<i32>(u_input.c, ~(-65668i), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), 41150i), _wgslsmith_sub_i32(~u_input.c, -2147483647i)), Struct_2(vec4<u32>(4294967295u, ~u_input.e.x >> (~4294967295u % 32u), min(u_input.e.x, func_3(Struct_2(vec4<u32>(u_input.a, 4294967295u, 19768u, u_input.a)), false)), ~30251u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2495f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(899f - 1000f), _wgslsmith_f_op_f32(688f - 1284f))), _wgslsmith_f_op_f32(f32(-1f) * -757f), false)), Struct_1(vec2<i32>(~(-u_input.c), 13496i), vec2<u32>(~u_input.a, ~max(u_input.a, u_input.e.x)), u_input.b.xzy, false | !all(vec4<bool>(false, true, false, false))));
    let var_1 = Struct_2(~(~select(vec4<u32>(u_input.d.x, 4294967295u, u_input.a, 63963u), abs(vec4<u32>(1u, 49736u, 1u, 4294967295u)), all(vec3<bool>(false, false, true)))));
    let var_2 = Struct_2(var_1.a);
    let var_3 = 0u;
    return var_2;
}

fn func_1() -> vec4<u32> {
    global0 = array<vec4<f32>, 18>();
    let var_0 = !(!(~u_input.e.x <= _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 37252u, u_input.a, 80000u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.e.x, 15019u, 4294967295u, 34810u)))));
    var var_1 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.d.x), vec4<u32>(4294967295u, 4294967295u, u_input.e.x, 34589u)) ^ ~vec4<u32>(4294967295u, u_input.e.x, 1u, u_input.d.x)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, u_input.d.x, u_input.d.x, 1u)), vec4<u32>(u_input.a, 11040u, 0u, u_input.e.x) ^ vec4<u32>(u_input.a, u_input.e.x, u_input.d.x, 44349u))));
    var_1 = func_2();
    global0 = array<vec4<f32>, 18>();
    return ~vec4<u32>(4294967295u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 66158u, u_input.d.x, u_input.e.x), ~var_1.a), var_1.a.x), abs(abs(~47348u)), func_3(func_2(), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, min(u_input.a, u_input.a), _wgslsmith_sub_u32(u_input.a, abs(_wgslsmith_add_u32(45144u, 0u))), ~u_input.a), _wgslsmith_add_vec4_u32(~func_1(), ~func_1()));
    var var_1 = Struct_2(_wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, u_input.d.x, 106509u, u_input.a) & ~vec4<u32>(1749u, 13540u, 4294967295u, u_input.d.x), abs(vec4<u32>(u_input.a, u_input.d.x, u_input.a, u_input.d.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<u32>(~28063u, ~(~u_input.d.x), _wgslsmith_mult_u32(4294967295u, func_2().a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 38625u, 1u, u_input.d.x), vec4<u32>(10884u, 4766u, u_input.a, 1u)))));
    var_0 = _wgslsmith_mod_u32(u_input.d.x, var_1.a.x);
    let var_2 = func_2().a.xw;
    var var_3 = Struct_1(vec2<i32>(-33171i, 2147483647i), var_2, _wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(-14775i, 23338i, u_input.b.x)), _wgslsmith_div_vec3_i32(u_input.b.xyy, u_input.b.xwx)), true);
    var_3 = Struct_1(_wgslsmith_add_vec2_i32(-(~(u_input.b.wy | var_3.c.zy)), vec2<i32>(~u_input.c, _wgslsmith_mult_i32(func_4(vec4<i32>(-2147483647i, var_3.a.x, var_3.a.x, 2147483647i), Struct_2(var_1.a), 127f, Struct_1(var_3.a, var_2, vec3<i32>(-2147483647i, u_input.c, u_input.c), var_3.d)), 1i))), func_1().xy, var_3.c, true);
    var var_4 = all(!(!vec3<bool>(var_3.d, true, all(vec3<bool>(var_3.d, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(0u, ~10721u, _wgslsmith_div_u32(func_2().a.x, func_1().x), 53056u)), 300f, firstTrailingBit(~vec3<u32>(var_1.a.x, var_2.x, 4294967295u)));
}

