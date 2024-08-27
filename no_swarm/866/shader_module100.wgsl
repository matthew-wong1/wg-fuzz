struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(10635i, -3367i), vec2<i32>(-1i, -10816i), vec2<i32>(i32(-2147483648), -12278i), vec2<i32>(47235i, 25397i), vec2<i32>(-30932i, -53197i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, -13855i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(59251i, i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-12123i, -17276i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-10653i, 55812i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, -6881i), vec2<i32>(0i, 1i), vec2<i32>(-56748i, -1i), vec2<i32>(23841i, 61372i), vec2<i32>(8254i, 27951i), vec2<i32>(2147483647i, -75360i), vec2<i32>(-9115i, 2147483647i), vec2<i32>(-26529i, 15665i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), -6185i), vec2<i32>(1i, 1777i), vec2<i32>(-20878i, -11189i), vec2<i32>(i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(491f, -659f), vec2<f32>(950f, -648f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1388f, 337f), vec2<f32>(-269f, 1383f)))), vec2<bool>(true, true), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global0.x, u_input.d.x, u_input.b), vec4<u32>(global0.x, global0.x, global0.x, global0.x) << (vec4<u32>(u_input.d.x, global0.x, 40828u, 11863u) % vec4<u32>(32u))) | ~0u, vec4<bool>(true, true, true, true)), 1i, ~(~abs(vec4<u32>(global0.x, global0.x, 0u, u_input.b) ^ vec4<u32>(0u, u_input.b, 4294967295u, global0.x))), Struct_1(vec3<i32>(-_wgslsmith_sub_i32(3860i, arg_0.x), -1i, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-564f - -1697f), _wgslsmith_f_op_f32(min(1000f, 110f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(206f, 485f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), vec2<bool>(true, true), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), global0.x, !vec4<bool>(true, all(vec3<bool>(false, false, false)), u_input.a <= u_input.a, all(vec4<bool>(false, false, true, false)))));
    var var_1 = _wgslsmith_div_u32((~(~u_input.c.x) >> (select(global0.x, 1u, var_0.a.e.x) % 32u)) ^ _wgslsmith_div_u32(_wgslsmith_mult_u32(countOneBits(global0.x), 17996u), 51016u), _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(abs(u_input.b), 51810u))));
    var var_2 = Struct_3(_wgslsmith_clamp_u32(~53533u, reverseBits(u_input.d.x), 0u), _wgslsmith_f_op_f32(var_0.d.b.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.a.b.x, _wgslsmith_f_op_f32(var_0.a.b.x * var_0.a.b.x)))))));
    let var_3 = var_0.a.a;
    var var_4 = ~(~(~(vec2<u32>(20588u, 64749u) >> (max(global0.yy, vec2<u32>(63981u, u_input.d.x)) % vec2<u32>(32u)))));
    return var_0.a.c;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec3<i32>(~(-87932i), abs(-u_input.a), 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1089f, -1134f))), func_3(-vec3<i32>(-50347i, 1i, u_input.a)), ~66158u, vec4<bool>(u_input.c.x <= firstTrailingBit(35687u), ~global0.x > u_input.b, true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))))), -16154i, ~(~(~(~vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, 18306u)))), Struct_1(_wgslsmith_mult_vec3_i32((vec3<i32>(u_input.a, u_input.a, u_input.a) >> (global0.wzy % vec3<u32>(32u))) << (vec3<u32>(global0.x, 17803u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, 2147483647i, 2147483647i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1258f, -1540f)), vec2<bool>(true, true), reverseBits(countOneBits(u_input.b)), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, false)));
    var var_1 = 4294967295u;
    var var_2 = countOneBits(var_0.b);
    var_2 = abs(-38517i);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.b.x, var_0.d.b.x), -388f)), var_0.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.b.x))), var_0.d.b.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_0.a.b.x)), -346f, _wgslsmith_div_f32(var_0.d.b.x, var_0.a.b.x), _wgslsmith_f_op_f32(-1437f + -679f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-670f, var_0.a.b.x, -186f, var_0.d.b.x), vec4<f32>(var_0.a.b.x, var_0.d.b.x, 937f, 784f), true)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.d.b.x)), 1000f, 1411f, 318f))));
    return Struct_2(Struct_1(-(vec3<i32>(50517i, -1i, -1i) << (abs(var_0.c.wwx) % vec3<u32>(32u))), var_0.a.b, vec2<bool>(true, var_0.a.c.x), countOneBits(~var_0.d.d), select(var_0.d.e, vec4<bool>(any(vec4<bool>(false, var_0.d.e.x, var_0.d.c.x, var_0.d.e.x)), var_0.a.c.x, var_0.d.a.x <= -26613i, true), _wgslsmith_clamp_i32(u_input.a, var_0.d.a.x, 2147483647i) != var_0.b)), _wgslsmith_add_i32(abs(max(u_input.a & u_input.a, var_0.b)), u_input.a), var_0.c, Struct_1(var_0.a.a, _wgslsmith_f_op_vec2_f32(trunc(var_3.xz)), !vec2<bool>(var_0.d.c.x, false), firstTrailingBit(13203u), var_0.a.e));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(floor(1832f))));
    var var_1 = arg_0.c.x;
    var_0 = 358f;
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) - var_2.d.b.x) - _wgslsmith_f_op_f32(abs(arg_0.b.x))), arg_0.b.x));
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -42112i;
    let var_1 = func_1(Struct_1(vec3<i32>(_wgslsmith_mult_i32(-var_0, -var_0), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-5286i, 50037i), global1[_wgslsmith_index_u32(26600u, 31u)]), -2147483647i), vec2<f32>(-872f, 1f), vec2<bool>(true, any(vec4<bool>(true, true, true, false))), ~max(~31038u, 4294967295u), vec4<bool>(true, true, true, true)), var_0);
    var var_2 = var_1.c.x;
    let var_3 = Struct_3(~var_1.d, -148f);
    var_2 = var_3.b > var_3.b;
    global0 = ((reverseBits(vec4<u32>(global0.x, 36053u, 72068u, 1u)) ^ vec4<u32>(4294967295u, max(30532u, var_3.a), func_2().a.d, u_input.d.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(31003u, u_input.c.x), var_3.a, global0.x, _wgslsmith_div_u32(var_1.d, 1u)), abs(~vec4<u32>(var_1.d, var_3.a, var_3.a, global0.x))) % vec4<u32>(32u))) | vec4<u32>(4294967295u, global0.x, ~(abs(var_1.d) ^ global0.x), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(var_0 | (i32(-1i) * -2147483647i), func_1(func_1(var_1, -13291i), -1i).a.x), firstTrailingBit(var_1.a.x), ~vec4<u32>(func_1(Struct_1(vec3<i32>(u_input.a, 4170i, 75892i), vec2<f32>(-161f, var_3.b), vec2<bool>(true, var_1.e.x), 4294967295u, vec4<bool>(var_1.e.x, var_1.c.x, false, var_1.e.x)), 2147483647i | var_1.a.x).d, var_1.d >> (2069u % 32u), _wgslsmith_mult_u32(~8552u, u_input.d.x), reverseBits(53537u)));
}

