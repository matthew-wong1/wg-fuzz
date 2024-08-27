struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 21205i;

var<private> global1: i32;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-1478f, -1000f, 174f), vec3<f32>(-1205f, -658f, -192f), vec3<f32>(-870f, 1250f, 415f), vec3<f32>(521f, 1000f, 387f), vec3<f32>(699f, -1284f, 1049f), vec3<f32>(1000f, 2015f, 373f), vec3<f32>(992f, -2152f, 1565f), vec3<f32>(581f, 1315f, 632f), vec3<f32>(-590f, -930f, 2086f), vec3<f32>(-508f, -133f, -2214f), vec3<f32>(1363f, -1560f, -1096f), vec3<f32>(817f, -308f, 293f), vec3<f32>(522f, -943f, 236f), vec3<f32>(-218f, -1418f, 1446f), vec3<f32>(-909f, 1276f, -429f), vec3<f32>(-1113f, -299f, -812f), vec3<f32>(603f, 723f, -278f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    var var_0 = arg_0;
    var var_1 = vec4<u32>(select(u_input.a, 1u, global2.x), ~_wgslsmith_mult_u32(reverseBits(u_input.a), u_input.a), ~firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), ~vec4<u32>(19184u, 0u, 28725u, u_input.a))), u_input.a);
    var_1 = ~((_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 48417u, 4294967295u)) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 32768u, 4294967295u, var_1.x), vec4<u32>(u_input.a, var_1.x, var_1.x, 39980u)), ~71904u, u_input.a, 22018u)) | ~(select(vec4<u32>(1u, 15240u, 1u, var_1.x), vec4<u32>(1u, u_input.a, var_1.x, 11367u), vec4<bool>(true, global2.x, global2.x, global2.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 110387u, 1u, 1u), vec4<u32>(9259u, var_1.x, u_input.a, 1u), vec4<u32>(33462u, 4767u, u_input.a, 0u)) % vec4<u32>(32u))));
    global3 = array<vec3<f32>, 17>();
    var var_2 = !vec2<bool>(global2.x, true);
    return false;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    global0 = ~(-27431i);
    var var_0 = select(select(select(select(vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(true, false, false, false), !vec4<bool>(global2.x, global2.x, global2.x, true)), select(select(vec4<bool>(false, global2.x, arg_0.x, global2.x), vec4<bool>(global2.x, false, arg_0.x, true), vec4<bool>(true, true, true, global2.x)), vec4<bool>(global2.x, global2.x, arg_0.x, true), any(vec3<bool>(true, false, true))), max(u_input.a, u_input.a) == ~3536u), select(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), vec4<bool>(global2.x | false, true, select(true, false, global2.x), !global2.x), !arg_0.x), !select(!vec4<bool>(global2.x, true, false, arg_0.x), vec4<bool>(global2.x, true, global2.x, false), all(vec4<bool>(true, global2.x, true, global2.x)))), select(select(vec4<bool>(any(vec3<bool>(arg_0.x, false, arg_0.x)), false, arg_0.x, !arg_0.x), vec4<bool>(u_input.a < u_input.a, !arg_0.x, func_3(Struct_1(vec4<f32>(-632f, 1093f, -1000f, -759f), 589f, vec2<f32>(-329f, 1000f)), Struct_1(vec4<f32>(-203f, -251f, 949f, 919f), -737f, vec2<f32>(-952f, -2220f)), vec2<i32>(72356i, -14345i)), any(vec3<bool>(false, true, global2.x))), !vec4<bool>(global2.x, true, global2.x, global2.x)), select(select(select(vec4<bool>(global2.x, arg_0.x, false, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), true), !vec4<bool>(false, arg_0.x, false, false), all(vec4<bool>(true, false, false, arg_0.x))), vec4<bool>(func_3(Struct_1(vec4<f32>(-504f, 516f, 540f, -258f), -180f, vec2<f32>(-1873f, 1355f)), Struct_1(vec4<f32>(615f, -487f, 823f, -797f), 218f, vec2<f32>(-263f, 245f)), vec2<i32>(-2147483647i, -1i)), true, true, true), arg_0.x), global2.x), any(vec4<bool>(arg_0.x, !all(vec2<bool>(arg_0.x, arg_0.x)), global2.x, true)));
    let var_1 = 0u;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-131f, -677f)), _wgslsmith_f_op_f32(f32(-1f) * -293f)) + _wgslsmith_f_op_f32(trunc(-381f))), -886f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2208f, -1128f) - _wgslsmith_div_f32(202f, 1178f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1004f - -349f))), _wgslsmith_f_op_f32(select(-711f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_f_op_f32(abs(-120f)), any(var_0.zy))), !var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -2182f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2095f, -2082f) * vec2<f32>(-185f, 986f)), vec2<f32>(1685f, 1811f))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2243f, -645f, _wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_f_op_f32(step(var_2.c.x, -282f))) + var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f)) + 479f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(895f - var_2.c.x), _wgslsmith_f_op_f32(-var_2.c.x))), var_2.a.wy));
    return func_3(Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.b, var_2.a.x)), _wgslsmith_f_op_f32(-var_2.c.x)), -1204f, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.x)) + var_3.c.x)), 1434f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_2.b)))), var_3, ~max(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, -2147483647i), vec3<i32>(-1i, 0i, 1i)), min(-66909i, 0i)), vec2<i32>(1i, 1i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, global2.x, true), global2.x), vec3<bool>(func_2(vec3<bool>(true, global2.x, true)), any(vec2<bool>(true, false)), false || global2.x), !select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(false, false, true), vec3<bool>(global2.x, true, true))), select(select(vec3<bool>(false, all(vec4<bool>(false, global2.x, global2.x, global2.x)), false), vec3<bool>(!global2.x, global2.x, any(vec2<bool>(false, global2.x))), func_3(Struct_1(vec4<f32>(-1352f, 1000f, -935f, -554f), -2091f, vec2<f32>(-490f, -699f)), Struct_1(vec4<f32>(1000f, 258f, -531f, -2175f), -719f, vec2<f32>(-110f, -1000f)), vec2<i32>(-2147483647i, arg_1))), !select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(false, false, global2.x), vec3<bool>(true, global2.x, global2.x)), global2.x && true), !vec3<bool>(global2.x, false, true));
    global1 = -892i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1339f, _wgslsmith_f_op_f32(floor(174f))))) > _wgslsmith_f_op_f32(-366f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -155f)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(330f)), -365f, -490f, _wgslsmith_f_op_f32(step(1000f, -822f))))))));
    return select(!vec4<bool>(true, false, var_1.x, false), select(vec4<bool>(true, ~arg_1 > firstLeadingBit(0i), !global2.x, _wgslsmith_f_op_f32(ceil(780f)) == 1813f), select(select(!vec4<bool>(global2.x, true, var_1.x, global2.x), !vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(var_1.x, var_1.x, true, global2.x)), select(!vec4<bool>(global2.x, var_1.x, var_1.x, global2.x), !vec4<bool>(var_1.x, true, var_1.x, false), true | var_1.x), any(select(vec3<bool>(false, true, true), vec3<bool>(true, global2.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false)))), vec4<bool>(!var_1.x & select(global2.x, true, false), !any(vec3<bool>(global2.x, true, global2.x)), true, true)), !(~max(arg_1, 2147483647i) == var_0));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = !(!vec2<bool>(func_2(vec3<bool>(false, false, true)), global2.x));
    global3 = array<vec3<f32>, 17>();
    var var_0 = ~vec2<i32>(-_wgslsmith_mod_i32(1i, ~741i), 1i);
    let var_1 = global2.x;
    var var_2 = arg_0;
    return Struct_1(vec4<f32>(-375f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.x))), !func_1(vec2<u32>(45996u, u_input.a), var_0.x).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1034f - 325f) * var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)))), arg_3.a.x, vec2<f32>(arg_3.b, 1043f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), -102f, -425f, -1239f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1584f, -738f, -151f, 391f)))), _wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1575f, 494f), vec2<f32>(1000f, -112f), global2.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1915f, 1163f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1880f, -1073f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2106f, -673f))))), !(!select(select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(false, global2.x, true, true), vec4<bool>(global2.x, false, true, true)), !vec4<bool>(true, global2.x, true, global2.x), func_1(vec2<u32>(u_input.a, 4294967295u), -22653i))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-491f, -761f, -599f, -462f) + vec4<f32>(1433f, -387f, -263f, 448f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(253f, 359f, -1259f, 2110f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1659f)) * _wgslsmith_f_op_f32(floor(444f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), -227f)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, 2086f, 429f, 1233f)) * vec4<f32>(1755f, -312f, 1000f, 630f))), 1522f, vec2<f32>(106f, 1563f)));
    let var_1 = abs(u_input.a ^ 4294967295u);
    global2 = vec2<bool>(!global2.x, func_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-619f - var_0.c.x), var_0.b, 710f), var_0.a.x, var_0.c), var_0, ~(-vec2<i32>(-13957i, -2147483647i))));
    global0 = _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_div_i32(2147483647i, 1i)), -_wgslsmith_add_i32(1i, 0i << (1u % 32u))) >> (1u % 32u);
    global3 = array<vec3<f32>, 17>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, var_0.c.x, -2000f, -244f) * vec4<f32>(506f, var_0.b, -438f, -1158f)))), var_0.a, vec4<bool>(func_2(func_1(vec2<u32>(var_1, 10319u), -1i).xyx), any(select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, false))), func_1(min(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, u_input.a)), _wgslsmith_sub_i32(-29457i, -1i)).x, true))), 1006f, var_0.a.wx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_2.b)))), ~0u, 0u, 828f);
}

