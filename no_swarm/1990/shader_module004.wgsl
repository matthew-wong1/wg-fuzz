struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec4<f32>(-1332f, -1143f, -111f, 617f)), vec2<bool>(true, false), vec3<i32>(-38001i, -1i, 2147483647i), 33307u), Struct_2(Struct_1(vec4<f32>(-374f, 346f, 830f, -230f)), vec2<bool>(true, false), vec3<i32>(-1i, 2147483647i, 0i), 66489u), Struct_2(Struct_1(vec4<f32>(-638f, -263f, -1703f, 1552f)), vec2<bool>(false, false), vec3<i32>(0i, 39250i, i32(-2147483648)), 31377u), Struct_2(Struct_1(vec4<f32>(466f, -386f, 1607f, -409f)), vec2<bool>(false, false), vec3<i32>(2771i, 53277i, 0i), 0u), Struct_2(Struct_1(vec4<f32>(-641f, -1550f, -1665f, -330f)), vec2<bool>(true, false), vec3<i32>(-26981i, 0i, 25678i), 20551u), Struct_2(Struct_1(vec4<f32>(699f, 1448f, 561f, -1269f)), vec2<bool>(true, true), vec3<i32>(1913i, 2147483647i, 1i), 33350u), Struct_2(Struct_1(vec4<f32>(-762f, 134f, 1132f, 117f)), vec2<bool>(true, true), vec3<i32>(-1i, 21086i, -92300i), 22340u), Struct_2(Struct_1(vec4<f32>(-939f, -305f, 196f, 273f)), vec2<bool>(true, false), vec3<i32>(2147483647i, -8190i, 0i), 0u), Struct_2(Struct_1(vec4<f32>(1159f, -1255f, -550f, -1435f)), vec2<bool>(false, false), vec3<i32>(-29547i, 13310i, i32(-2147483648)), 80728u), Struct_2(Struct_1(vec4<f32>(-1047f, 1000f, -562f, -1003f)), vec2<bool>(true, true), vec3<i32>(1i, 1i, 0i), 6844u), Struct_2(Struct_1(vec4<f32>(250f, 1264f, -1014f, -1018f)), vec2<bool>(true, false), vec3<i32>(1i, -14772i, -1i), 111174u), Struct_2(Struct_1(vec4<f32>(510f, -114f, -411f, 149f)), vec2<bool>(false, true), vec3<i32>(-38071i, -3517i, -9570i), 73142u), Struct_2(Struct_1(vec4<f32>(184f, -813f, 630f, -294f)), vec2<bool>(true, true), vec3<i32>(19983i, -1i, i32(-2147483648)), 1u), Struct_2(Struct_1(vec4<f32>(-1000f, 2534f, 1490f, 688f)), vec2<bool>(false, false), vec3<i32>(-36870i, 1i, 31370i), 17543u), Struct_2(Struct_1(vec4<f32>(-531f, -1949f, -1000f, 758f)), vec2<bool>(false, true), vec3<i32>(-15853i, 4556i, 1i), 12497u), Struct_2(Struct_1(vec4<f32>(-1118f, -1047f, 103f, -103f)), vec2<bool>(true, true), vec3<i32>(2147483647i, 25049i, -1391i), 31427u), Struct_2(Struct_1(vec4<f32>(-135f, 1111f, 306f, 733f)), vec2<bool>(false, false), vec3<i32>(57019i, 2147483647i, 29577i), 49861u), Struct_2(Struct_1(vec4<f32>(228f, 499f, 112f, 137f)), vec2<bool>(false, false), vec3<i32>(-14460i, 23468i, 2147483647i), 0u), Struct_2(Struct_1(vec4<f32>(629f, -496f, 306f, -1000f)), vec2<bool>(false, true), vec3<i32>(-48325i, -43834i, i32(-2147483648)), 0u), Struct_2(Struct_1(vec4<f32>(1906f, 422f, -2136f, 1095f)), vec2<bool>(true, false), vec3<i32>(25674i, 21687i, 37473i), 0u), Struct_2(Struct_1(vec4<f32>(1092f, -490f, -675f, 674f)), vec2<bool>(false, false), vec3<i32>(0i, 1i, -22828i), 62392u), Struct_2(Struct_1(vec4<f32>(-739f, 758f, 459f, -1418f)), vec2<bool>(false, false), vec3<i32>(i32(-2147483648), i32(-2147483648), 33095i), 1u), Struct_2(Struct_1(vec4<f32>(-541f, 294f, -123f, -863f)), vec2<bool>(true, true), vec3<i32>(1i, 2147483647i, -1i), 1u), Struct_2(Struct_1(vec4<f32>(200f, 111f, -1528f, 581f)), vec2<bool>(false, true), vec3<i32>(-1i, -76581i, -82i), 50217u), Struct_2(Struct_1(vec4<f32>(349f, 1768f, -961f, 355f)), vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 1i, 29773i), 743u), Struct_2(Struct_1(vec4<f32>(1158f, -313f, 788f, 1070f)), vec2<bool>(true, false), vec3<i32>(10553i, 0i, 2147483647i), 0u), Struct_2(Struct_1(vec4<f32>(-1533f, -237f, 2346f, -161f)), vec2<bool>(false, true), vec3<i32>(-11956i, 2147483647i, 31406i), 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = 1u;
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_1 = Struct_4(firstTrailingBit(~(~var_0)), max(~u_input.c, var_0));
    global0 = array<Struct_2, 27>();
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(-440f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1475f - -390f) - _wgslsmith_f_op_f32(floor(-1000f))), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true))))), 1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-359f))), 2621f)))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    global0 = array<Struct_2, 27>();
    var var_0 = select(firstLeadingBit(firstTrailingBit((u_input.b.zx ^ vec2<u32>(1u, 2222u)) << (firstTrailingBit(vec2<u32>(u_input.c, 72672u)) % vec2<u32>(32u)))), firstTrailingBit(~(~u_input.b.yx)), false);
    let var_1 = ~_wgslsmith_mult_u32(var_0.x, u_input.b.x) | ~1u;
    global0 = array<Struct_2, 27>();
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3((vec4<i32>(-1i) * -vec4<i32>(u_input.a, arg_0, arg_0, u_input.a)) | (~vec4<i32>(1i, arg_0, arg_0, arg_0) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, var_0.x, u_input.c, 1u), vec4<u32>(17896u, var_1, u_input.c, u_input.c), vec4<u32>(4294967295u, var_1, var_1, 1u)) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(892f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-208f)), -846f)), 474f)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), true)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(trunc(var_2.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.yx - var_2.xz), _wgslsmith_f_op_vec2_f32(-var_2.zz), vec2<bool>(true, true))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-371f)), 465f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1060f, var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -304f)))), true));
}

fn func_1() -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_u32(u_input.b.x << (1u % 32u), u_input.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(u_input.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(621f, -1523f), vec2<f32>(-314f, -1230f), vec2<bool>(false, true)))) + _wgslsmith_f_op_vec2_f32(func_2(-2147483647i)))));
    let var_2 = var_1.x;
    global0 = array<Struct_2, 27>();
    var_1 = _wgslsmith_f_op_vec2_f32(func_2(31984i));
    return Struct_3(global0[_wgslsmith_index_u32(var_0, 27u)], _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, var_0), _wgslsmith_add_u32(u_input.b.x, abs(var_0))), u_input.b.yz), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = -min(min(firstTrailingBit(vec4<i32>(-58994i, u_input.a, u_input.a, 2147483647i)), -max(vec4<i32>(0i, -43994i, 2147483647i, 12534i), vec4<i32>(11368i, 64933i, var_0.a.c.x, -19431i))), ~vec4<i32>(34380i, max(-3584i, 6894i), -2147483647i, abs(u_input.a)));
    var var_2 = ~(countOneBits(u_input.b.x ^ var_0.a.d) & var_0.b.x);
    var_1 = vec4<i32>(-1i, u_input.a, _wgslsmith_mod_i32(-24126i, ~_wgslsmith_sub_i32(1i, ~(-9616i))), max(41691i, 1i));
    var var_3 = var_0.a;
    var var_4 = false;
    var var_5 = func_1().a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_5.a.x, -221f), _wgslsmith_f_op_vec2_f32(-var_0.a.a.a.zz))), var_0.a.a.a.xx, select(vec2<bool>(true, var_3.b.x), vec2<bool>(var_3.b.x, var_0.a.b.x), true))) - var_5.a.xy), _wgslsmith_f_op_f32(max(var_0.a.a.a.x, var_5.a.x)), _wgslsmith_f_op_f32(-996f - var_3.a.a.x));
}

