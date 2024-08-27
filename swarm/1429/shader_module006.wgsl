struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(true, vec4<u32>(1u, 1u, 9284u, 6681u), vec3<u32>(0u, 4294967295u, 0u), 3020u), Struct_4(true, vec4<u32>(5752u, 1u, 22863u, 1u), vec3<u32>(1u, 0u, 4294967295u), 0u), Struct_4(true, vec4<u32>(44330u, 4294967295u, 34875u, 13571u), vec3<u32>(1u, 1u, 34762u), 1u), Struct_4(false, vec4<u32>(8970u, 0u, 46207u, 4294967295u), vec3<u32>(37414u, 62776u, 1u), 4294967295u), Struct_4(true, vec4<u32>(6957u, 0u, 1u, 47564u), vec3<u32>(4294967295u, 0u, 30990u), 0u), Struct_4(false, vec4<u32>(1u, 4492u, 17162u, 22270u), vec3<u32>(5485u, 4294967295u, 35595u), 14017u), Struct_4(true, vec4<u32>(0u, 10883u, 1u, 89946u), vec3<u32>(4294967295u, 4294967295u, 0u), 16358u), Struct_4(true, vec4<u32>(55301u, 4294967295u, 42232u, 0u), vec3<u32>(4294967295u, 34389u, 0u), 8942u), Struct_4(true, vec4<u32>(4294967295u, 1u, 4294967295u, 1293u), vec3<u32>(4294967295u, 21869u, 34399u), 4294967295u), Struct_4(true, vec4<u32>(1u, 0u, 57543u, 1u), vec3<u32>(4294967295u, 1u, 1u), 119924u), Struct_4(true, vec4<u32>(1u, 34594u, 0u, 1u), vec3<u32>(54741u, 1u, 1u), 36828u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    let var_0 = Struct_2(~reverseBits(reverseBits(2147483647i | u_input.c.x)));
    global0 = array<Struct_4, 11>();
    let var_1 = u_input.d;
    return -547f;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(func_3()), _wgslsmith_add_vec3_u32(vec3<u32>(min(firstLeadingBit(u_input.b), u_input.d), u_input.a.x, min(19387u, ~u_input.b)), reverseBits(~u_input.a.xyw << (u_input.a.xzw % vec3<u32>(32u)))), all(vec4<bool>(false, true, all(vec2<bool>(false, true)), false)) && all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global0 = array<Struct_4, 11>();
    var var_1 = reverseBits(var_0.b.yy);
    var_1 = var_0.b.xz;
    var var_2 = vec3<bool>(var_0.c, true, var_0.c);
    return !(!select(vec4<bool>(true, true | var_2.x, u_input.c.x < -2147483647i, true), vec4<bool>(any(vec3<bool>(false, var_2.x, false)), all(vec3<bool>(false, false, true)), !var_2.x, true), select(true, var_2.x, var_2.x & false)));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> f32 {
    global0 = array<Struct_4, 11>();
    var var_0 = u_input.c.x;
    global0 = array<Struct_4, 11>();
    let var_1 = Struct_1(-countOneBits(~u_input.c.x));
    let var_2 = -1070f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2883f, var_2) - _wgslsmith_f_op_f32(-var_2))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(871f, 807f, 1672f, arg_3))) + vec4<f32>(arg_3, arg_3, arg_3, -323f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, arg_3, arg_3, 739f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(947f - arg_1), _wgslsmith_f_op_f32(arg_1 * 463f), _wgslsmith_f_op_f32(trunc(-982f)), _wgslsmith_f_op_f32(f32(-1f) * -1281f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, 665f, 216f, 700f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_2.x, -1118f)), true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-566f, arg_3, arg_2.x, arg_2.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1062f, -798f, arg_1, 658f)))), vec4<f32>(753f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3, -401f), -1524f)), arg_1, _wgslsmith_f_op_f32(func_3())), vec4<bool>(true, _wgslsmith_f_op_f32(round(var_0.x)) > arg_2.x, (arg_0 & arg_0) & false, !arg_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1541f, arg_1, -447f, 1000f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(498f, arg_1, var_0.x, 702f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 1067f, arg_1, -1551f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 1000f, 868f, 740f))))));
    let var_1 = 9259u;
    let var_2 = firstTrailingBit(-select(vec4<i32>(1i, _wgslsmith_div_i32(-2147483647i, -1i), 1i, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c)), vec4<i32>(53584i, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<i32>(u_input.c.x, u_input.c.x, 1i, -2147483647i), vec4<bool>(arg_0 | true, all(vec2<bool>(arg_0, false)), arg_0, false)));
    var var_3 = vec4<f32>(504f, 1f, _wgslsmith_f_op_f32(trunc(var_0.x)), 1769f);
    return Struct_1(~_wgslsmith_dot_vec3_i32(var_2.xwx, var_2.zyw) << (~abs(_wgslsmith_div_u32(u_input.d, 4294967295u)) % 32u));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = true;
    var_0 = false;
    var var_1 = func_5(57642i > -(_wgslsmith_sub_i32(17066i, u_input.c.x) & min(u_input.c.x, 49924i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), max(27591i, u_input.c.x) < firstTrailingBit(u_input.c.x), arg_1.x & !arg_1.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(floor(1028f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) - arg_0.x))), -1000f);
    var var_2 = arg_0.x;
    let var_3 = vec3<u32>(abs(abs(~u_input.d)) & 1u, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(33832u, u_input.d), 18841u, ~4294967295u)), _wgslsmith_add_u32(1u ^ ~u_input.d, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, 3176u)))), u_input.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.c.x | ~_wgslsmith_dot_vec2_i32(~u_input.c, u_input.c));
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f * -445f)))))), vec3<u32>(u_input.a.x << (u_input.d % 32u), u_input.a.x, u_input.b), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-307f, -1377f) + vec2<f32>(1140f, -1962f)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.d)), _wgslsmith_f_op_f32(func_1(vec2<f32>(var_1.a, var_1.a), vec3<bool>(var_1.c, true, false))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f - var_1.a) - -1794f))))));
    var var_3 = func_5(false, var_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(296f + _wgslsmith_f_op_f32(1845f + -422f)), var_1.d) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2), var_2))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 + var_2), _wgslsmith_f_op_f32(trunc(182f)))))))));
    var var_4 = u_input.c >> ((var_1.b.zx >> (vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 1u, var_1.b.x), firstLeadingBit(max(90993u, u_input.a.x))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-28893i, var_1.b.x, ~0u, vec2<i32>(1i, abs(~(u_input.c.x ^ var_4.x))), vec3<f32>(_wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(floor(var_1.d))), _wgslsmith_mod_u32(24889u, 62866u) == var_1.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(step(1225f, -1668f)))), _wgslsmith_f_op_f32(step(var_1.d, _wgslsmith_div_f32(-1721f, var_1.d))))), -610f));
}

