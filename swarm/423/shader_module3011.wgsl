struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(-3173i, Struct_1(vec2<i32>(1i, 1541i), 35159i), Struct_1(vec2<i32>(73267i, 4179i), 2147483647i), vec2<f32>(-912f, -212f)), Struct_2(0i, Struct_1(vec2<i32>(i32(-2147483648), 63139i), -44299i), Struct_1(vec2<i32>(51576i, 1i), 2147483647i), vec2<f32>(-235f, -1020f)), Struct_2(18893i, Struct_1(vec2<i32>(0i, -2287i), 38209i), Struct_1(vec2<i32>(-18288i, -2083i), -23253i), vec2<f32>(1146f, -1858f)), Struct_2(-20195i, Struct_1(vec2<i32>(-19307i, -30642i), -26653i), Struct_1(vec2<i32>(-25611i, -44515i), 2147483647i), vec2<f32>(1292f, -186f)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(0i, 0i), 23374i), Struct_1(vec2<i32>(85999i, 45158i), 20150i), vec2<f32>(-661f, 664f)), Struct_2(-5097i, Struct_1(vec2<i32>(-19471i, 0i), -1i), Struct_1(vec2<i32>(-1i, -1i), 30604i), vec2<f32>(1039f, 1150f)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(i32(-2147483648), -11616i), 2242i), Struct_1(vec2<i32>(-20923i, 32088i), -1i), vec2<f32>(-330f, -1376f)), Struct_2(6266i, Struct_1(vec2<i32>(1i, 35805i), -20651i), Struct_1(vec2<i32>(-34167i, -5512i), 2107i), vec2<f32>(771f, -185f)), Struct_2(-1i, Struct_1(vec2<i32>(-1396i, -1i), 12806i), Struct_1(vec2<i32>(38317i, 0i), -1i), vec2<f32>(-1000f, 1940f)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(52544i, 43164i), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 37545i), 0i), vec2<f32>(-643f, 513f)), Struct_2(17129i, Struct_1(vec2<i32>(20799i, -36949i), -1i), Struct_1(vec2<i32>(i32(-2147483648), -21981i), 46057i), vec2<f32>(548f, -2567f)), Struct_2(35325i, Struct_1(vec2<i32>(54662i, -16968i), 0i), Struct_1(vec2<i32>(41549i, 19646i), -7015i), vec2<f32>(158f, 623f)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(-18844i, -2639i), -24788i), Struct_1(vec2<i32>(i32(-2147483648), 0i), i32(-2147483648)), vec2<f32>(-1044f, 200f)), Struct_2(2147483647i, Struct_1(vec2<i32>(44183i, 1i), 1i), Struct_1(vec2<i32>(64033i, 3058i), 19181i), vec2<f32>(-2446f, -1138f)), Struct_2(40641i, Struct_1(vec2<i32>(2147483647i, 28257i), -54275i), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 0i), vec2<f32>(342f, -1441f)), Struct_2(0i, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 41391i), Struct_1(vec2<i32>(i32(-2147483648), -37332i), -25168i), vec2<f32>(-432f, -2231f)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(32186i, 0i), 1i), Struct_1(vec2<i32>(28977i, 10460i), i32(-2147483648)), vec2<f32>(253f, -481f)), Struct_2(-34537i, Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec2<i32>(0i, 2147483647i), -1i), vec2<f32>(1103f, -1000f)), Struct_2(0i, Struct_1(vec2<i32>(1i, 2147483647i), -39735i), Struct_1(vec2<i32>(-33301i, 2147483647i), 0i), vec2<f32>(-461f, -294f)), Struct_2(-1i, Struct_1(vec2<i32>(-1i, 2147483647i), 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), -10834i), 32881i), vec2<f32>(-724f, -493f)), Struct_2(13312i, Struct_1(vec2<i32>(2147483647i, 21510i), -32918i), Struct_1(vec2<i32>(654i, 38624i), 6679i), vec2<f32>(199f, -407f)), Struct_2(-20713i, Struct_1(vec2<i32>(36039i, 0i), -36411i), Struct_1(vec2<i32>(-1i, 2002i), 1i), vec2<f32>(-180f, 384f)));

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_1(~(vec2<i32>(global1.b, -global1.a.x) >> (u_input.a.xx % vec2<u32>(32u))), -15236i);
    let var_1 = var_0.b;
    var var_2 = vec2<bool>(false, !(!all(vec4<bool>(true, false, true, false))));
    let var_3 = Struct_3(1000f, abs(~(-1i)) | abs(global1.a.x), global1.a.x);
    global0 = array<Struct_2, 22>();
    return -_wgslsmith_div_vec2_i32(var_0.a, -(~(~vec2<i32>(16052i, global1.b))));
}

fn func_2() -> vec2<i32> {
    global0 = array<Struct_2, 22>();
    var var_0 = any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), true), vec2<bool>(true, true)), vec2<bool>(true, true), false));
    global0 = array<Struct_2, 22>();
    let var_1 = 1872f;
    var var_2 = vec2<i32>(~(~1i), -1i);
    return _wgslsmith_sub_vec2_i32(global1.a, select(func_3(), vec2<i32>(var_2.x, _wgslsmith_mult_i32(53049i, _wgslsmith_clamp_i32(var_2.x, 0i, u_input.b))), vec2<bool>(!any(vec4<bool>(true, true, true, true)), select(true, 1u > u_input.a.x, true))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_3 {
    global0 = array<Struct_2, 22>();
    var var_0 = reverseBits(global1.a);
    global1 = Struct_1(func_2(), -741i);
    let var_1 = _wgslsmith_clamp_vec4_u32(arg_1, arg_1, ~select(vec4<u32>(u_input.a.x, u_input.a.x, arg_1.x, 14911u & arg_1.x), vec4<u32>(arg_1.x, u_input.a.x ^ 1u, 13548u, ~arg_1.x), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true)));
    var_0 = u_input.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(_wgslsmith_add_u32(4294967295u, 10547u >> (u_input.a.x % 32u)) < max(countOneBits(u_input.a.x), max(1u, 55087u)));
    var var_1 = func_1(Struct_3(-1532f, 0i, 1i), vec4<u32>(~u_input.a.x, 4294967295u, u_input.a.x, 4294967295u));
    var var_2 = Struct_1(vec2<i32>(var_1.c, -4432i), global1.b);
    var var_3 = ~(~(u_input.a.x | 0u) << (1u % 32u)) ^ 21754u;
    let var_4 = func_2();
    let var_5 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, func_2().x), _wgslsmith_mod_i32(_wgslsmith_add_i32(i32(-1i) * -1i, 1i), 33691i), _wgslsmith_mod_i32(~var_1.b, u_input.d)), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.a.x, -6804i) ^ (u_input.c ^ var_2.a), vec2<i32>(~(-21095i), var_4.x & 23434i)), -_wgslsmith_clamp_i32(~u_input.c.x, var_1.c & -36520i, -1i)), Struct_1(vec2<i32>(1i, _wgslsmith_add_i32(var_4.x, -2147483647i) ^ _wgslsmith_add_i32(var_1.b, -1i)), ~select(global1.b, -1i, false) ^ countOneBits(-12695i & var_2.b)), vec2<f32>(1f, 1714f));
    let x = u_input.a;
    s_output = StorageBuffer(~min(firstLeadingBit(102701u), ~1u));
}

