struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32) -> vec4<bool> {
    let var_0 = abs(select(vec4<i32>(-1i) * -(~vec4<i32>(arg_0, arg_1, arg_1, arg_1)), _wgslsmith_div_vec4_i32(~vec4<i32>(1i, -38778i, arg_1, arg_0), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1, arg_0, 19159i, 0i), -vec4<i32>(52931i, 4067i, 25112i, 50194i))), !(!any(vec4<bool>(false, true, false, true)))));
    var var_1 = Struct_1(true, abs(min(vec4<i32>(2147483647i, arg_1, var_0.x, -2147483647i), vec4<i32>(35732i, -2147483647i, var_0.x, arg_1)) | var_0) & (vec4<i32>(-1i) * -(vec4<i32>(arg_0, 2530i, -1i, var_0.x) << (vec4<u32>(6554u, u_input.a.x, 24471u, arg_2) % vec4<u32>(32u)))), true);
    var var_2 = 2147483647i;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, -1000f, -1059f) - vec4<f32>(242f, 806f, -259f, 500f))))))), Struct_1(var_1.c, _wgslsmith_mult_vec4_i32(var_0 >> ((vec4<u32>(40135u, 1u, u_input.a.x, arg_2) >> (vec4<u32>(arg_2, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.b), var_1.c), u_input.a.x, Struct_1(false, _wgslsmith_div_vec4_i32(abs(firstLeadingBit(vec4<i32>(0i, var_0.x, -1i, arg_0))), _wgslsmith_add_vec4_i32(vec4<i32>(-3269i, -70749i, arg_0, 0i), vec4<i32>(arg_0, arg_1, -11203i, -59808i))), any(vec2<bool>(true, true))), Struct_2(vec4<bool>(true, all(select(vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(true, var_1.c, true), vec3<bool>(false, var_1.c, var_1.a))), var_1.c, any(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1546f + 1141f)))));
    let var_4 = var_3.e;
    return vec4<bool>(select(all(vec3<bool>(select(var_4.a.x, var_4.a.x, false), false, true == var_3.b.c)), var_4.b <= _wgslsmith_f_op_f32(f32(-1f) * -429f), select(false, any(var_3.e.a), var_3.b.c)), any(vec2<bool>(false, false)), true, false);
}

fn func_2(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = Struct_2(select(arg_0.e.a, func_3(-1i, arg_0.b.b.x, arg_0.c), !arg_0.e.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1448f * arg_0.e.b), _wgslsmith_f_op_f32(arg_0.e.b + -932f))))))));
    let var_1 = firstLeadingBit(reverseBits(abs(~u_input.a) & _wgslsmith_sub_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 33466u, 1u)))));
    return vec3<i32>(arg_0.d.b.x, arg_0.d.b.x, i32(-1i) * -arg_0.b.b.x);
}

fn func_1() -> i32 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_add_vec3_i32(-countOneBits(func_2(Struct_3(vec4<f32>(-1940f, -2207f, 291f, -1336f), Struct_1(true, vec4<i32>(17723i, -43693i, -1i, 2147483647i), true), 0u, Struct_1(false, vec4<i32>(1i, 12623i, -1i, 1i), false), Struct_2(vec4<bool>(false, false, true, false), -780f)))), vec3<i32>(-1380i, -12500i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 4112i, -2147483647i, 16841i), vec4<i32>(-8485i, 12311i, 0i, 51980i)) ^ max(-1i, -2147483647i))) & vec3<i32>(_wgslsmith_mult_i32(-_wgslsmith_add_i32(0i, -26328i), 35856i), 36218i, func_2(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(843f, -220f, 1091f, 515f)), Struct_1(true, vec4<i32>(2147483647i, 1i, -1i, 1i), false), u_input.a.x, Struct_1(false, vec4<i32>(-1i, 2147483647i, 28786i, 15093i), false), Struct_2(vec4<bool>(true, true, false, false), 1000f))).x);
    var_0 = reverseBits(~_wgslsmith_mod_u32(~u_input.a.x, 1u)) >> (72509u % 32u);
    var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x) ^ u_input.a.xx, ~vec2<u32>(26406u, u_input.a.x)), vec2<u32>(abs(u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) >> (~firstLeadingBit(u_input.a.zy) % vec2<u32>(32u)));
    var var_2 = 10095u;
    return -(~(~reverseBits(var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(_wgslsmith_add_i32(func_1() >> (firstTrailingBit(u_input.a.x) % 32u), _wgslsmith_mod_i32(1i, -18772i >> (u_input.a.x % 32u))), _wgslsmith_sub_i32(16675i, -18173i));
    var var_1 = Struct_2(vec4<bool>(-2147483647i >= func_2(Struct_3(vec4<f32>(-255f, 315f, 1778f, -580f), Struct_1(false, vec4<i32>(2147483647i, 0i, -2147483647i, -11752i), true), u_input.a.x, Struct_1(true, vec4<i32>(var_0.x, -500i, var_0.x, var_0.x), true), Struct_2(vec4<bool>(false, false, false, true), -1661f))).x, false, true, !(u_input.a.x < ~u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1252f + 1112f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(386f * -678f) * _wgslsmith_f_op_f32(120f + -122f))) - 1055f));
    let var_2 = u_input.a.xy;
    var_1 = Struct_2(!select(vec4<bool>(func_3(var_0.x, var_0.x, u_input.a.x).x, false, any(vec2<bool>(var_1.a.x, var_1.a.x)), !var_1.a.x), vec4<bool>(all(var_1.a), any(var_1.a.xw), true, var_1.a.x), var_0.x < _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(40341i, -15598i, 1i, var_0.x))), var_1.b);
    let var_3 = vec4<bool>(!all(vec2<bool>(!var_1.a.x, true)), !any(vec3<bool>(true, var_2.x > 47778u, !var_1.a.x)), !var_1.a.x, false);
    let var_4 = var_3;
    var_0 = _wgslsmith_div_vec2_i32(~select(vec2<i32>(abs(0i), 1i), -countOneBits(vec2<i32>(-24752i, var_0.x)), !(!var_4.x)), firstTrailingBit(~vec2<i32>(max(var_0.x, var_0.x), ~1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~max(u_input.a.x, max(4026u, 0u)), 4294967295u, (~u_input.a.x | ~var_2.x) ^ ~u_input.a.x, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(-617f - -523f), var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(-var_1.b)), ~(-countOneBits(reverseBits(vec4<i32>(-1i, var_0.x, var_0.x, 0i)))), var_0.x);
}

