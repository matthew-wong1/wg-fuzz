struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 18>;

var<private> global2: Struct_3 = Struct_3(Struct_1(14130u, vec3<bool>(true, true, true)), vec4<bool>(false, true, true, false), -52324i, Struct_1(88901u, vec3<bool>(true, false, false)), Struct_2(vec3<f32>(260f, 650f, 1131f), vec2<u32>(794u, 1u), 218f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(arg_0.yy, _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(arg_0.x, 1i) & u_input.e.zy), max(u_input.e.zy, reverseBits(firstTrailingBit(vec2<i32>(u_input.b, global2.c)))), ~abs(vec2<i32>(global2.c, u_input.e.x))));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(17200i, _wgslsmith_mod_i32(abs(~arg_0.x), ~(-1i) | (-12131i | arg_0.x)), -global2.c >> (u_input.a % 32u)), global2.c);
    global1 = array<vec4<i32>, 18>();
    var var_2 = ~(~_wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.a, global2.a.a, u_input.c), vec3<u32>(19881u, 34858u, u_input.c)), vec3<u32>(0u, 1u, 54182u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, global2.d.a, 0u), vec3<u32>(~4294967295u, _wgslsmith_add_u32(78728u, 0u), u_input.d.x)));
    global1 = array<vec4<i32>, 18>();
    return !global2.b;
}

fn func_2() -> Struct_3 {
    var var_0 = ~25778u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.e.a.x, _wgslsmith_f_op_f32(-2314f + -823f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1684f * 1000f)))))));
    let var_2 = ~(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 0u, 1u) & vec4<u32>(101986u, 1u, 0u, u_input.d.x), vec4<u32>(69232u, 122199u, 0u, 1u))) ^ (vec4<u32>(2909u, select(u_input.c, global2.a.a, true), 45584u, firstLeadingBit(0u)) << (select(min(vec4<u32>(55665u, 1u, 1u, 36851u), vec4<u32>(u_input.d.x, u_input.a, u_input.a, 1u)), countOneBits(vec4<u32>(global2.e.b.x, 9726u, u_input.d.x, global2.d.a)), global2.a.b.x) % vec4<u32>(32u))));
    var_0 = firstTrailingBit(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(var_2, var_2), min(var_2.x, u_input.c)) << (select(_wgslsmith_dot_vec4_u32(~var_2, var_2), _wgslsmith_mult_u32(~var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1941u, 51168u), vec2<u32>(var_2.x, global2.e.b.x))), false) % 32u));
    var_0 = _wgslsmith_sub_u32(min(~global2.a.a, 1u), ~0u);
    return Struct_3(global2.a, func_3(_wgslsmith_mult_vec3_i32(abs(u_input.e), select(u_input.e, u_input.e, global2.a.b.x)), global2.b.x), 43437i, global2.a, global2.e);
}

fn func_1() -> Struct_3 {
    var var_0 = global2.e;
    global2 = func_2();
    let var_1 = select(vec2<bool>(true, !((global2.e.b.x ^ 760u) < min(u_input.c, var_0.b.x))), global2.a.b.yy, false);
    var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(step(1090f, -714f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.e.a.x))), _wgslsmith_f_op_f32(step(-1000f, 668f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.a.x))))), vec2<u32>(~var_0.b.x >> (countOneBits(var_0.b.x) % 32u), u_input.a), -800f);
    var var_2 = Struct_3(global2.a, global2.b, 0i, Struct_1(abs(u_input.a), global2.a.b), func_2().e);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(firstLeadingBit(~global2.e.b.x) | global2.e.b.x), vec3<bool>(true, any(!select(vec3<bool>(false, global2.a.b.x, global2.b.x), global2.a.b, global2.a.b)), global2.d.b.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(global2.e.c, 1000f));
    global1 = array<vec4<i32>, 18>();
    let var_2 = 1053f;
    let var_3 = reverseBits(firstLeadingBit(firstLeadingBit(~vec3<u32>(global2.a.a, 4294967295u, 30392u)) | vec3<u32>(global2.e.b.x, _wgslsmith_div_u32(4294967295u, var_0.a), ~u_input.c)));
    global1 = array<vec4<i32>, 18>();
    let var_4 = func_1();
    global1 = array<vec4<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_4.c), vec3<i32>(-42559i, var_4.c, var_4.c), vec2<u32>(8665u, _wgslsmith_dot_vec2_u32(u_input.d, abs(global2.e.b)) << (u_input.a % 32u)));
}

