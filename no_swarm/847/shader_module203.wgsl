struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(4294967295u, 1u, 17878u), vec3<u32>(85058u, 0u, 11872u), vec3<u32>(40090u, 102420u, 1u), vec3<u32>(92952u, 0u, 503u), vec3<u32>(0u, 1u, 25123u), vec3<u32>(1u, 38073u, 42742u), vec3<u32>(6705u, 53148u, 2829u), vec3<u32>(0u, 19611u, 22673u), vec3<u32>(84356u, 73635u, 47456u), vec3<u32>(20415u, 4294967295u, 59372u), vec3<u32>(1u, 3790u, 36452u), vec3<u32>(1u, 40199u, 1u), vec3<u32>(12127u, 87458u, 24797u), vec3<u32>(0u, 67563u, 69204u), vec3<u32>(4294967295u, 30790u, 19048u), vec3<u32>(0u, 1u, 7062u), vec3<u32>(33457u, 37061u, 1u), vec3<u32>(1u, 1u, 75956u), vec3<u32>(64406u, 31840u, 4592u), vec3<u32>(22551u, 21808u, 14140u), vec3<u32>(11847u, 43001u, 31458u), vec3<u32>(4294967295u, 40157u, 19636u), vec3<u32>(4294967295u, 1u, 7573u), vec3<u32>(59965u, 0u, 75612u));

var<private> global1: u32;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(2147483647i, i32(-2147483648));

var<private> global4: array<i32, 18> = array<i32, 18>(1i, -1i, 1i, -19034i, i32(-2147483648), -29350i, 0i, 2147483647i, -9574i, 20601i, 1i, -52870i, -41181i, -10827i, -24296i, 47439i, i32(-2147483648), 2147483647i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = 75425u;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1554f)) - 374f) - _wgslsmith_f_op_f32(f32(-1f) * -211f))));
    global3 = Struct_1(-37259i, min(~32827i, min(-1503i, _wgslsmith_sub_i32(global3.a, abs(u_input.a)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1)), -493f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, -390f))))), _wgslsmith_add_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(global3.a, -1i, -1i)) | ~vec3<i32>(-2147483647i, global4[_wgslsmith_index_u32(79647u, 18u)], global3.b)), u_input.c.yyz));
    let var_3 = _wgslsmith_mult_u32(max(_wgslsmith_add_u32(abs(var_0), max(var_0, _wgslsmith_div_u32(32025u, 34274u))), ~u_input.d ^ (80135u | ~u_input.d)), ~(~0u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1590f + _wgslsmith_f_op_f32(-var_1)));
}

fn func_2() -> Struct_4 {
    global0 = array<vec3<u32>, 24>();
    let var_0 = false;
    let var_1 = u_input.c.zx;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_2 = vec3<u32>(~_wgslsmith_div_u32(u_input.d, abs(u_input.d)), u_input.d, ~(~_wgslsmith_div_u32(~77519u, 44721u)));
    return Struct_4(Struct_3(var_0, Struct_1(~(~u_input.c.x), u_input.a)), vec4<u32>(u_input.d, u_input.d, var_2.x, ~countOneBits(~var_2.x)), vec3<bool>(true, select(false, (var_0 | var_0) & true, false), all(select(vec4<bool>(true, false, false, var_0), vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, false, false, var_0))) && any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-227f, -1055f, 1220f, 2292f))), vec4<f32>(-353f, _wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(778f + -685f), _wgslsmith_f_op_f32(abs(-1296f)))) - vec4<f32>(-612f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-900f)) * -1304f))));
}

fn func_1() -> Struct_4 {
    return func_2();
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5, arg_3: f32) -> StorageBuffer {
    let var_0 = -u_input.c.yw;
    let var_1 = -853f;
    let var_2 = Struct_5(func_2().d, vec4<bool>(arg_2.b.x, func_1().a.a, true, false));
    var var_3 = arg_0;
    var var_4 = arg_0;
    return StorageBuffer(var_4.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(-200f + -260f), u_input.d != arg_0.b.x)) * 1190f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(41425u, 19122u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f), 1253f) + -2385f));
    var var_2 = true;
    global0 = array<vec3<u32>, 24>();
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = func_4(func_1(), func_2().a.b, Struct_5(vec4<f32>(139f, var_1, -702f, _wgslsmith_f_op_f32(func_1().d.x * _wgslsmith_f_op_f32(-var_1))), vec4<bool>(select(true, func_1().c.x, true), true, !func_1().a.a, !func_2().a.a)), 173f);
}

