struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = arg_0.x;
    global0 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -269f))), arg_1.wx, !arg_2.a)))));
    let var_2 = !((false || all(vec3<bool>(true, arg_3.a.x, true))) && !all(!vec3<bool>(arg_3.a.x, arg_2.a.x, arg_2.a.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.c.x * 255f)))), arg_2.c.x) * arg_1.wz);
    return _wgslsmith_div_vec2_f32(arg_1.zx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yy) + _wgslsmith_div_vec2_f32(vec2<f32>(1085f, arg_1.x), vec2<f32>(arg_1.x, 1000f))), _wgslsmith_f_op_vec2_f32(trunc(arg_3.b.yy)))))));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_mod_i32(13171i, -(u_input.e.x | u_input.e.x));
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_1 = Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1241f, -865f, 903f, -561f), vec4<f32>(560f, -1000f, -273f, 953f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(442f, -1810f, -556f, -1298f), vec4<f32>(-1498f, 382f, 1767f, -2011f), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-472f, -1233f, -669f, 683f) * vec4<f32>(-510f, 171f, 836f, 453f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(535f, -435f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.e, vec4<f32>(-237f, -1000f, 1464f, 1478f), Struct_1(vec2<bool>(false, false), vec4<f32>(254f, 1138f, 509f, -951f), vec2<f32>(-338f, -226f), var_0, u_input.a), global0[_wgslsmith_index_u32(u_input.d.x, 7u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1166f, 317f), vec2<f32>(722f, -1981f))))))), 98203i, _wgslsmith_div_vec2_u32(~select(vec2<u32>(u_input.a.x, 37394u), u_input.d, true), _wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(u_input.a.x, 35329u)) >> (~vec2<u32>(10903u, u_input.d.x) % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, u_input.a.x) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 79405u), vec2<u32>(21696u, u_input.d.x)), ~vec2<u32>(u_input.d.x, 36937u), vec2<u32>(min(u_input.a.x, 1u), u_input.a.x)));
    var var_2 = -299f;
    return !select(!var_1.a, var_1.a, false);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = vec2<bool>(true, false);
    var var_1 = Struct_3(~(~arg_0) << (select(abs(vec2<u32>(u_input.a.x, 1u)) << (arg_0 % vec2<u32>(32u)), firstTrailingBit(arg_0) >> (reverseBits(u_input.a) % vec2<u32>(32u)), !(arg_2.x == 3263f)) % vec2<u32>(32u)), select(var_0, !(!func_2()), var_0), ~33736u);
    global0 = array<Struct_1, 7>();
    let var_2 = vec3<u32>(39062u, u_input.a.x, 0u);
    var var_3 = reverseBits(max(countOneBits(u_input.e), select(max(~u_input.e, reverseBits(u_input.e)), abs(-vec2<i32>(u_input.c, u_input.c)), var_1.b)));
    return !vec4<bool>(select(!all(vec4<bool>(var_0.x, false, var_1.b.x, var_0.x)), false, false), all(!vec2<bool>(var_1.b.x, var_1.b.x)), all(vec2<bool>(!var_0.x, var_1.b.x)), var_3.x <= -24087i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(func_1(vec2<u32>(~0u, u_input.d.x) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), select(u_input.d.x, ~22198u, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1100f, 194f, 568f), vec3<f32>(175f, 973f, 1251f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1175f, 245f, -574f)), false)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(658f, 702f, 1644f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(589f, 506f, -1379f) + vec3<f32>(1455f, -1020f, -2004f))))));
    let var_1 = Struct_3(~(~u_input.a), func_2(), 4294967295u);
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 988f) - -1352f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -771f) + _wgslsmith_f_op_f32(f32(-1f) * -707f)))))));
    var_0 = any(vec3<bool>(true, any(!var_1.b), false));
    let var_4 = !(!(!var_1.b.x));
    var_3 = _wgslsmith_f_op_f32(floor(-2204f));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2066f + _wgslsmith_f_op_f32(select(-268f, -685f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1046f))) + _wgslsmith_div_f32(238f, _wgslsmith_f_op_f32(step(-405f, 1961f)))), any(vec2<bool>(var_2.b.x, false)))), -(-(~vec4<i32>(u_input.e.x, u_input.b, u_input.b, u_input.c)) & -_wgslsmith_add_vec4_i32(vec4<i32>(-62745i, 1i, 0i, u_input.c), vec4<i32>(u_input.b, 2147483647i, u_input.e.x, -2667i))));
    var var_6 = Struct_3(max(vec2<u32>(~(~var_2.a.x), 44241u), var_1.a), select(!func_1(u_input.d, 0u, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_5.a, var_5.a, -1321f), vec3<f32>(-1132f, -1241f, -169f)))).wx, vec2<bool>(var_1.b.x, false), !var_4), 16125u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1306f, 829f, var_5.a, -620f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-619f, -1000f, var_5.a, var_5.a) - vec4<f32>(957f, var_5.a, -1000f, var_5.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a, -1117f, -2084f, var_5.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a, var_5.a, var_5.a, var_5.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1166f, var_5.a, var_5.a, -544f))))), 23521u, -1i, _wgslsmith_div_vec4_u32(vec4<u32>(abs(firstLeadingBit(1u)), firstTrailingBit(var_2.a.x), ~0u, 14667u), vec4<u32>(reverseBits(26079u), var_6.c << (0u % 32u), _wgslsmith_sub_u32(var_1.c, var_2.a.x), _wgslsmith_add_u32(4294967295u, var_1.a.x)) >> (abs(vec4<u32>(0u, u_input.d.x, 4294967295u, var_2.c) | vec4<u32>(0u, var_1.c, 1u, var_1.c)) % vec4<u32>(32u))), _wgslsmith_clamp_u32(~(~_wgslsmith_mod_u32(var_6.c, u_input.a.x)), ~max(var_6.c, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.a.x, u_input.a.x, 29417u), vec4<u32>(1u, 0u, 4294967295u, u_input.d.x))), 4294967295u));
}

