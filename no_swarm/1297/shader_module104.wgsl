struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(397f, 1251f), vec2<f32>(1675f, 1754f), vec2<f32>(-1504f, -700f), vec2<f32>(1000f, -1000f), vec2<f32>(-1013f, -1347f), vec2<f32>(-1000f, -1258f), vec2<f32>(192f, -1656f), vec2<f32>(-281f, -719f), vec2<f32>(-315f, -795f), vec2<f32>(1171f, 368f), vec2<f32>(-527f, -881f), vec2<f32>(-1441f, -1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<f32>) -> bool {
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    let var_0 = -u_input.b.x;
    var var_1 = vec2<bool>(true, true);
    return any(vec3<bool>(var_1.x, !var_1.x, var_1.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: i32, arg_3: u32) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1258f - _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(-129f, arg_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-559f + arg_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_div_f32(arg_0.x, arg_0.x), -1738f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_div_f32(arg_0.x, arg_0.x)))), Struct_1(vec4<f32>(401f, arg_0.x, -1668f, arg_0.x), all(vec3<bool>(false, false, false)) == false), vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994f - arg_0.x) - 208f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(532f - -1060f)), _wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(floor(-658f))))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1486f, 168f, -1839f, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(354f, arg_0.x, arg_0.x, arg_0.x) + vec4<f32>(356f, arg_0.x, arg_0.x, -1119f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-341f, 1954f, 139f, 1135f))))), -2147483647i <= select(-2896i & u_input.b.x, 0i, func_3(4294967295u, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec3<f32>(1000f, arg_0.x, -1059f)))));
    var var_1 = !var_0.c;
    global0 = array<vec2<f32>, 12>();
    var_1 = vec2<bool>(-278f != _wgslsmith_f_op_f32(var_0.a.x + arg_0.x), all(vec4<bool>(var_1.x, func_3(u_input.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.a.x, 471f, var_0.e.a.x, 180f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1135f, arg_0.x, var_0.b.a.x)))), var_0.c.x, all(!vec2<bool>(var_0.e.b, var_1.x)))));
    global0 = array<vec2<f32>, 12>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-632f, _wgslsmith_f_op_f32(var_0.e.a.x - var_0.b.a.x), -435f, 458f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.d.x, -935f, -115f, arg_0.x)))))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(634f, -431f, -1514f, -470f) + vec4<f32>(383f, 571f, 263f, -640f)))))) + _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-643f, 983f, -2954f) - vec3<f32>(-1000f, 1769f, 1121f)) - vec3<f32>(-1000f, -1135f, -1068f)), vec4<u32>(~6863u, abs(1u), max(u_input.a, 0u), arg_1), -5748i >> (min(u_input.a, 47191u) % 32u), 4294967295u))), all(!select(!vec4<bool>(false, true, arg_2.x, arg_2.x), select(vec4<bool>(true, true, false, arg_2.x), vec4<bool>(false, true, arg_0, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_0)), select(vec4<bool>(true, arg_2.x, arg_0, arg_0), vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<bool>(false, true, false, arg_2.x)))));
    global0 = array<vec2<f32>, 12>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1869f), var_0.a.x);
    var var_2 = i32(-1i) * -2147483647i;
    var var_3 = var_0;
    return !(!select(select(!arg_2.yy, arg_2.xx, arg_2.yz), !(!arg_2.xz), select(vec2<bool>(var_0.b, true), !vec2<bool>(arg_2.x, false), var_3.b)));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    global0 = array<vec2<f32>, 12>();
    let var_0 = _wgslsmith_mod_u32(u_input.a, select(u_input.a, ~firstLeadingBit(firstLeadingBit(36599u)), !(!arg_1)));
    global0 = array<vec2<f32>, 12>();
    var var_1 = global0[_wgslsmith_index_u32(var_0, 12u)];
    var var_2 = ~(~(~vec4<u32>(u_input.a, _wgslsmith_mod_u32(1u, 1u), ~24253u, 61894u)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1293f, 1542f, -2068f, arg_0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-308f, var_1.x, -1267f, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(-1224f)), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -303f)) - 137f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(trunc(-2154f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global0 = array<vec2<f32>, 12>();
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x);
    let var_2 = vec4<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-var_1)))) + -734f), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1826f + -263f)));
    var var_3 = !select(true, true, false);
    return Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 1373f, arg_0.a.x, var_1) * vec4<f32>(-779f, arg_0.a.x, arg_0.a.x, -678f)), vec4<f32>(_wgslsmith_div_f32(arg_1.e.a.x, 312f), arg_1.e.a.x, 2157f, 1f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0.a - arg_0.a), arg_0.a, select(vec4<bool>(arg_1.b.b, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(false, true, true, true), false)))), true), select(func_1(-u_input.b.x == u_input.b.x, u_input.a, !select(vec3<bool>(true, arg_1.c.x, false), vec3<bool>(true, false, arg_0.b), true)), select(!func_1(false, var_0, vec3<bool>(false, false, arg_0.b)), arg_1.c, any(!vec3<bool>(arg_1.b.b, arg_1.e.b, arg_0.b))), all(!vec4<bool>(arg_0.b, false, arg_0.b, false)) | all(select(arg_1.c, arg_1.c, vec2<bool>(arg_1.b.b, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_2.x))))))), func_4(arg_1.b.a, all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1626f, -317f, 2069f, -731f) + vec4<f32>(-382f, 217f, -610f, 1539f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1125f, -1703f, -120f, -2136f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2375f, -1038f, -1217f, -1000f))))), any(select(vec2<bool>(true, true), func_1(true, u_input.a, vec3<bool>(false, true, true)), true))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-997f, -635f, -148f, 439f), vec4<f32>(-895f, -695f, -1146f, -1129f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2385f, -909f, -208f, -491f), vec4<f32>(-608f, 441f, 1079f, 1158f))), true), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.a, 12u)]), Struct_1(_wgslsmith_f_op_vec4_f32(max(func_4(vec4<f32>(418f, 383f, -1000f, 729f), false).a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1513f, -965f, -1465f, -1486f))))), false)));
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(~4294967295u), ~1u) & reverseBits(countOneBits(vec2<u32>(u_input.a, u_input.a))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 811u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 12965u))), _wgslsmith_dot_vec3_u32(vec3<u32>(40365u, 0u, u_input.a), vec3<u32>(u_input.a, 28226u, u_input.a)) | firstTrailingBit(u_input.a)), ~reverseBits(min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, u_input.a)))), countOneBits(firstTrailingBit(abs(~u_input.a))), _wgslsmith_div_f32(306f, _wgslsmith_f_op_f32(265f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.e.a.x))))));
}

