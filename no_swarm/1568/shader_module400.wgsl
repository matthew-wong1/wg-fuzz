struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -208f;

var<private> global1: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-356f, 1000f), vec2<f32>(608f, 1436f), vec2<f32>(-619f, 1000f), vec2<f32>(-1195f, -727f), vec2<f32>(778f, -486f), vec2<f32>(-184f, 1000f), vec2<f32>(719f, 1081f), vec2<f32>(-558f, 462f), vec2<f32>(-430f, 272f), vec2<f32>(490f, -951f), vec2<f32>(-764f, -1883f), vec2<f32>(-1114f, -1000f), vec2<f32>(-743f, -781f), vec2<f32>(1306f, 394f), vec2<f32>(-202f, 1017f), vec2<f32>(-225f, 1112f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.d)), arg_2.c.d));
    global0 = var_1.x;
    return arg_2.b;
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.a.x, 50003u, 31790u), vec3<u32>(u_input.c, u_input.c, 38885u), true), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.c, 0u, u_input.b.x)), u_input.b.yzz ^ vec3<u32>(1u, 18381u, u_input.b.x))), ~abs(vec3<u32>(u_input.a.x, u_input.c, u_input.a.x))), vec2<u32>(_wgslsmith_div_u32(4294967295u, 33093u), u_input.a.x), -365f);
    let var_1 = ~(~(~(~1u)));
    let var_2 = Struct_4(vec4<i32>(firstTrailingBit(u_input.d.x), reverseBits((-51960i >> (var_1 % 32u)) | u_input.d.x), -14771i, _wgslsmith_dot_vec2_i32(max(abs(vec2<i32>(-2147483647i, u_input.d.x)), ~vec2<i32>(12502i, 41026i)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(19416i, u_input.d.x), vec2<i32>(0i, u_input.d.x)), vec2<i32>(u_input.d.x, u_input.d.x)))), 18550i);
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(func_2(var_0.d, false, Struct_2(false, Struct_1(arg_0, vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x), vec2<u32>(4294967295u, 15699u), -1266f), Struct_1(163f, vec3<u32>(558u, 97854u, var_1), vec2<u32>(0u, 4006u), -272f))).d, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1028f))))));
    let var_3 = ~(~abs(_wgslsmith_sub_u32(460u, _wgslsmith_div_u32(33906u, u_input.b.x))));
    return !(true | !select(false, true, true)) || (~_wgslsmith_add_u32(u_input.b.x, 43155u) <= select(_wgslsmith_div_u32(_wgslsmith_div_u32(var_1, var_1), 10651u), 38791u, all(vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = Struct_2(false, func_2(_wgslsmith_div_f32(arg_0, arg_0), !(u_input.d.x == 1i), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_mod_vec3_u32(vec3<u32>(27053u, 50729u, 0u), vec3<u32>(45900u, 56102u, u_input.a.x)), vec2<u32>(1u, u_input.c), _wgslsmith_f_op_f32(-arg_0)), Struct_1(_wgslsmith_f_op_f32(select(arg_0, -965f, true)), _wgslsmith_mult_vec3_u32(u_input.a, u_input.b.yyy), u_input.b.wx, _wgslsmith_div_f32(-731f, arg_0)))), func_2(-266f, arg_1 > ~4294967295u, Struct_2(select(false, arg_0 > 1605f, func_3(1106f)), func_2(_wgslsmith_f_op_f32(428f * arg_0), select(false, false, true), Struct_2(false, Struct_1(arg_0, u_input.b.zzw, u_input.b.yx, arg_0), Struct_1(1739f, u_input.b.xyz, vec2<u32>(u_input.a.x, u_input.c), arg_0))), Struct_1(_wgslsmith_f_op_f32(202f - arg_0), select(vec3<u32>(43705u, 4294967295u, 4294967295u), u_input.b.xxy, vec3<bool>(true, false, false)), select(vec2<u32>(63181u, arg_1), u_input.a.yx, vec2<bool>(false, true)), _wgslsmith_f_op_f32(max(-1712f, arg_0))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(424f, _wgslsmith_f_op_f32(arg_0 - var_0.c.d), var_0.c.d, var_0.b.a) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, -261f, 1830f))), vec4<f32>(-2407f, var_0.b.d, arg_0, arg_0), !var_0.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(174f, 1131f, -421f, -1000f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))));
    global1 = array<vec2<f32>, 16>();
    global0 = 1081f;
    return _wgslsmith_f_op_f32(trunc(-190f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(718f, 1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1705f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1109f, u_input.c)) - -370f)), -669f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1512f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, _wgslsmith_f_op_f32(func_1(-1999f, u_input.a.x)), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1467f)), _wgslsmith_f_op_f32(f32(-1f) * -418f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1503f, -1293f, -1219f, -1273f))), vec4<f32>(_wgslsmith_f_op_f32(-1157f - 819f), 3172f, -896f, -1124f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * var_0.x))))), vec4<i32>(-u_input.e.x, ~(~(-2147483647i)), 0i, max(1i | u_input.d.x, _wgslsmith_add_i32(u_input.e.x, u_input.d.x))) | ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(8223i, u_input.e.x, u_input.d.x, u_input.d.x), vec4<i32>(-2147483647i, 2147483647i, u_input.e.x, -11649i)), u_input.e.x, u_input.d.x | u_input.d.x, _wgslsmith_clamp_i32(-2147483647i, u_input.e.x, 2147483647i)), 376f, ~u_input.b.x);
}

