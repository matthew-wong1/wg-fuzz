struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(1i, 0i, 2147483647i, -1i), vec4<i32>(1i, 8465i, 39291i, -4276i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, -25171i, -32126i, -70689i), vec4<i32>(-35040i, 4834i, 4045i, 1i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 0i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(-1i, 1i, -1i, 0i), vec4<i32>(-14146i, -39753i, -9581i, 0i), vec4<i32>(28017i, 1i, 7356i, -2158i), vec4<i32>(i32(-2147483648), 0i, -92021i, 41915i), vec4<i32>(1i, -5722i, 1i, -11916i), vec4<i32>(0i, i32(-2147483648), 26181i, 1i), vec4<i32>(5135i, -38472i, -24192i, -41101i), vec4<i32>(61626i, 0i, -1i, -39455i), vec4<i32>(19085i, 46296i, 0i, 57683i), vec4<i32>(1i, i32(-2147483648), -14191i, -1i), vec4<i32>(-7448i, i32(-2147483648), -20201i, -35799i), vec4<i32>(i32(-2147483648), 7661i, 52825i, 57369i), vec4<i32>(-1i, 9207i, -1i, 40736i), vec4<i32>(6256i, -1i, 2147483647i, 0i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec2<f32> {
    var var_0 = Struct_1(vec2<bool>(!(!all(vec3<bool>(false, false, true))), false), true, true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-373f - 220f), arg_1, -400f, arg_1);
    let var_2 = min(vec2<i32>(-1i >> (~select(1u, 0u, true) % 32u), firstLeadingBit(13324i)), min(vec2<i32>(~arg_0.x, _wgslsmith_dot_vec2_i32(arg_0.yy, vec2<i32>(arg_0.x, u_input.a)) << (~64410u % 32u)), arg_0.ww));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))))), var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f * 1367f)), -482f)))), all(var_0.a)));
    let var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 461f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) + _wgslsmith_f_op_vec2_f32(-var_1.zz)), Struct_1(select(var_0.a, !var_0.a, var_0.a), var_0.b & true, !(-1000f < arg_1)), Struct_1(select(vec2<bool>(var_0.a.x, var_0.c), !vec2<bool>(false, var_0.b), var_1.x > arg_1), !(!var_0.c), !var_0.c != false)), var_1.x, Struct_1(vec2<bool>(var_0.a.x, var_0.b), false & var_0.c, (select(var_0.b, true, true) & false) | true), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.yw, vec2<f32>(arg_1, 619f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1408f, arg_1), vec2<f32>(var_1.x, -573f))), var_1.xw), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(var_0.c, var_0.c), true), var_0.c, var_0.b), Struct_1(vec2<bool>(all(vec2<bool>(false, true)), var_0.a.x), _wgslsmith_f_op_f32(-var_1.x) != arg_1, min(arg_0.x, arg_0.x) <= ~u_input.b)));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_4.d.a, vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(sign(1784f))), select(select(vec2<bool>(false, true), var_0.a, vec2<bool>(false, var_4.d.c.a.x)), var_4.c.a, false))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<bool>) -> vec2<f32> {
    let var_0 = arg_0.c;
    var var_1 = 1u;
    var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, ~(~1u)), ~(~1u));
    var_1 = 4294967295u & (1u ^ _wgslsmith_clamp_u32(59991u, max(1u, max(24213u, 1u)), reverseBits(36786u)));
    var var_2 = global0[_wgslsmith_index_u32(0u, 21u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(613f - 1062f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_1.b - arg_1.b)) + arg_0.a)));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(-2147483647i, -1i, arg_2, 0i), 1028f)), Struct_1(arg_0.xw, arg_0.x, false), Struct_1(arg_0.yw, false, arg_0.x)), Struct_4(vec3<i32>(u_input.a, -33222i, arg_2) & vec3<i32>(-2147483647i, arg_2, u_input.b), _wgslsmith_f_op_f32(-498f - arg_1)), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true), true))), Struct_1(!(!vec2<bool>(arg_0.x, arg_0.x)), false, !all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), Struct_1(!select(arg_0.zx, arg_0.ww, false), arg_0.x, !(arg_0.x & false))), arg_1, Struct_1(vec2<bool>(!all(arg_0.wxx), arg_0.x & all(arg_0.xx)), select(any(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), false, all(vec2<bool>(true, arg_0.x)) & all(vec4<bool>(true, arg_0.x, true, false))), arg_0.x), Struct_2(vec2<f32>(arg_1, arg_1), Struct_1(!select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), arg_0.xw), any(!vec3<bool>(true, true, arg_0.x)), (arg_0.x | arg_0.x) || all(arg_0.yx)), Struct_1(select(arg_0.ww, arg_0.wy, true), false, !(!arg_0.x))));
    global0 = array<vec4<i32>, 21>();
    var_0 = Struct_3(Struct_2(var_0.d.a, Struct_1(vec2<bool>(false, arg_0.x), true, var_0.c.a.x), var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(708f - _wgslsmith_f_op_f32(arg_1 * var_0.b)))), var_0.c, var_0.a);
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(467f, arg_1) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(var_0.a.a.x, var_0.b))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 21u)], -377f))))), var_0.d.b, var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-520f)) + _wgslsmith_f_op_f32(998f + -144f)))), Struct_1(vec2<bool>(var_0.a.c.c, !any(arg_0.wxx)), select(1u, firstTrailingBit(4294967295u), select(arg_0.x, var_0.a.c.b, true)) > ~1u, var_0.a.b.c), var_0.d);
    global0 = array<vec4<i32>, 21>();
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-577f, 824f, -172f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, 198f, var_0.a.a.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-751f - arg_1), 442f, _wgslsmith_f_op_f32(ceil(arg_1))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(169f, var_0.a.a.x, 1386f) - vec3<f32>(282f, arg_1, 2241f)))))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-119f, -1041f, 898f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, -1087f, -962f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1292f, 336f, 649f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_div_vec3_f32(vec3<f32>(883f, 593f, -1131f), vec3<f32>(-300f, 1000f, -862f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1581f, 570f, 1000f), vec3<f32>(var_0.x, -1277f, var_0.x)) + _wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(false, true, true, false), -1257f, -33129i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-453f, 771f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-245f, -231f, var_0.x), vec3<f32>(172f, 248f, var_0.x))))))));
    global0 = array<vec4<i32>, 21>();
    let var_1 = Struct_4(-max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), -vec3<i32>(-20114i, -13103i, u_input.b)), ~(~vec3<i32>(u_input.b, u_input.a, u_input.b))), _wgslsmith_f_op_f32(var_0.x + var_0.x));
    let var_2 = Struct_3(Struct_2(vec2<f32>(var_0.x, var_0.x), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), Struct_1(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), true, true)), -1309f, Struct_1(vec2<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), true), true, false), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_1.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 21u)], var_1.b)).x, _wgslsmith_f_op_f32(-var_1.b), false))), Struct_1(vec2<bool>(true, true), any(vec4<bool>(false, true, false, false)) | true, false), Struct_1(vec2<bool>(true, true), true, (var_1.a.x ^ u_input.b) <= u_input.b)));
    return select(select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_2.c.a.x, false, true), var_2.c.b), vec4<bool>(true, var_2.d.c.b, true, var_2.b >= 2080f), true), vec4<bool>(all(vec4<bool>(true, false, true, var_2.c.a.x)), true, all(select(vec4<bool>(var_2.a.b.c, false, var_2.c.a.x, var_2.d.c.c), vec4<bool>(true, false, false, var_2.c.a.x), true)), var_2.c.c), var_2.d.b.c | true), select(vec4<bool>(false, !var_2.c.b, !var_2.d.c.b, true), vec4<bool>(var_2.d.b.b | true, var_2.a.c.a.x, select(var_2.d.b.a.x, var_2.a.b.b | false, var_2.c.c), any(vec3<bool>(var_2.d.c.b, var_2.c.a.x, var_2.d.c.c))), any(select(!vec4<bool>(var_2.c.b, var_2.a.b.b, var_2.d.b.b, var_2.c.b), !vec4<bool>(true, true, var_2.a.c.b, var_2.d.b.c), !vec4<bool>(var_2.d.c.a.x, var_2.c.b, var_2.c.a.x, var_2.c.a.x)))), var_2.a.b.b);
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<vec4<i32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(770f, _wgslsmith_f_op_f32(abs(-231f)))) - _wgslsmith_f_op_f32(-1983f - -281f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-790f)))));
    let var_1 = Struct_4(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b) | global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, arg_1.x), 21u)], vec4<i32>(select(-1i, -20816i, true), u_input.a, ~(-1992i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.b)))), ~1i, u_input.a), _wgslsmith_f_op_f32(-var_0));
    global0 = array<vec4<i32>, 21>();
    let var_2 = Struct_4(abs(abs(select(vec3<i32>(2147483647i, 2596i, -39499i), _wgslsmith_sub_vec3_i32(vec3<i32>(25268i, var_1.a.x, u_input.a), var_1.a), var_1.a.x != -8214i))), _wgslsmith_f_op_f32(-var_0));
    return Struct_1(func_1().xz, all(!arg_2.wyx), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~countOneBits(_wgslsmith_div_u32(~4294967295u, 20451u)), _wgslsmith_mod_u32(1u << (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(18292u, 55548u, 0u), vec3<u32>(24806u, 4294967295u, 4294967295u))) % 32u), ~(~(~53898u))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(287f, -383f) * vec2<f32>(1f, 1f))), func_5(~0u, vec2<u32>(1u, 1u), func_1(), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 44149u, 8751u, 1u), select(vec4<u32>(1u, 16412u, 19497u, 1u), vec4<u32>(62353u, 4294967295u, 0u, 38071u), vec4<bool>(false, true, false, true)), vec4<u32>(1u, 1u, 1u, 0u))), Struct_1(!func_5(1u, vec2<u32>(50099u, 1u), vec4<bool>(false, false, true, false), vec4<u32>(1960u, 48203u, 0u, 30130u)).a, select(true, true, true), true)), _wgslsmith_f_op_f32(-117f - _wgslsmith_f_op_f32(step(-462f, _wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec2<f32>(2794f, 1049f), Struct_1(vec2<bool>(true, false), false, false), Struct_1(vec2<bool>(false, false), false, true)), Struct_4(vec3<i32>(-31218i, -42382i, u_input.b), -884f), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)))).x))), Struct_1(func_1().xz, any(func_1().xyx), false | all(vec2<bool>(true, true))), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(697f, -720f)))), func_5(~min(1u, 71436u), ~max(vec2<u32>(8540u, 21791u), vec2<u32>(0u, 6929u)), vec4<bool>(true, true, true, true), firstTrailingBit(select(vec4<u32>(16711u, 8977u, 4294967295u, 1u), vec4<u32>(27418u, 51752u, 7871u, 43366u), vec4<bool>(false, true, true, true)))), Struct_1(select(vec2<bool>(false, false), func_1().zy, func_1().wy), func_1().x | true, true)));
    let var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_1.a.a.x));
    let var_3 = max(~firstTrailingBit(vec2<u32>(59041u, 0u)), vec2<u32>(max(1u | _wgslsmith_dot_vec3_u32(vec3<u32>(50446u, 1u, 4294967295u), vec3<u32>(37818u, 4294967295u, 4294967295u)), 4294967295u), _wgslsmith_add_u32(1u, 34601u)));
    var var_4 = ~(-firstTrailingBit(_wgslsmith_sub_i32(u_input.a, -u_input.a)));
    var var_5 = Struct_3(var_1.d, var_1.d.a.x, func_5(firstLeadingBit(~var_3.x), firstLeadingBit(select(~vec2<u32>(var_3.x, var_3.x), var_3, !var_1.c.b)), func_1(), ~firstTrailingBit(vec4<u32>(var_3.x, 0u, var_3.x, 0u))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(select(~vec2<u32>(var_3.x, 4294967295u), ~vec2<u32>(var_3.x, var_3.x), var_5.a.c.a.x || false)), 128f, u_input.a, _wgslsmith_f_op_vec2_f32(func_3(-global0[_wgslsmith_index_u32(69987u, 21u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2))))).x);
}

