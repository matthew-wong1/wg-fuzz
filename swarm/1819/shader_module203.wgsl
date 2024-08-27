struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> f32 {
    var var_0 = arg_1.d.x << (~firstTrailingBit(u_input.b) % 32u);
    var_0 = _wgslsmith_sub_i32(arg_1.a, -21551i >> (~abs(4294967295u | u_input.a) % 32u));
    let var_1 = u_input.b;
    var_0 = 23596i;
    var_0 = 0i;
    return -1237f;
}

fn func_3() -> f32 {
    let var_0 = any(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(false, false, false)), select(false, true, !any(vec4<bool>(true, true, false, true)))));
    let var_1 = Struct_5(Struct_2(vec2<bool>(any(!vec3<bool>(var_0, var_0, var_0)), true), 1f), vec2<i32>(-1i) * -(~vec2<i32>(1i, 1i)), u_input.a, Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, 460f, 1000f, -197f)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(-807f, -532f)), _wgslsmith_f_op_f32(-286f + 407f), _wgslsmith_f_op_f32(-624f * 877f), _wgslsmith_f_op_f32(trunc(478f)))), ~_wgslsmith_div_u32(u_input.a, 90215u) << (u_input.b % 32u), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(var_0, true, var_0, false), true), vec4<bool>(var_0, var_0, var_0, false), !var_0), var_0), select(select(!select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(false, var_0, true, false), vec4<bool>(true, true, false, var_0)), vec4<bool>(var_0, var_0, !var_0, u_input.b <= 80226u), vec4<bool>(any(vec3<bool>(var_0, false, var_0)), false, all(vec3<bool>(false, var_0, true)), u_input.a >= u_input.a)), !select(select(vec4<bool>(false, var_0, false, false), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(false, var_0, var_0, false)), select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, false, true, true), var_0), vec4<bool>(false, false, var_0, var_0)), false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1769f, -461f));
    let var_3 = countOneBits(~(~var_1.c));
    var var_4 = var_1.d;
    return -1440f;
}

fn func_2(arg_0: vec2<bool>) -> vec4<f32> {
    let var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -902f), -1489f)), _wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(932f - -948f)), -839f)), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-547f, 216f, 466f, 129f), vec4<f32>(1000f, -943f, -167f, -205f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(3210f, 1048f, -555f, -1215f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-734f, 1340f, -486f, 2566f), vec4<f32>(-307f, -639f, -144f, 862f))))))), 35380u ^ u_input.b, !(!select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, true, arg_0.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), arg_0.x), arg_0.x)), !all(vec2<bool>(true, true)));
    let var_1 = vec2<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-17984i, ~1i), vec2<i32>(1i, 9640i)), 0i, false), 38622i);
    let var_2 = Struct_2(var_0.d.wx, _wgslsmith_f_op_f32(-var_0.a.a.x));
    var var_3 = -1i ^ var_1.x;
    var_3 = _wgslsmith_dot_vec4_i32(-select(vec4<i32>(~0i, ~1570i, var_1.x, firstLeadingBit(var_1.x)), select(min(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<i32>(2147483647i, -9993i, var_1.x, 79082i)), vec4<i32>(1i, 3229i, -2147483647i, var_1.x), true), all(var_0.d)), vec4<i32>(abs(var_1.x), var_1.x, abs(var_1.x), var_1.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1670f)) * _wgslsmith_f_op_f32(1000f - 1155f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), 2077f, _wgslsmith_f_op_f32(-148f + _wgslsmith_div_f32(var_2.b, var_2.b))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, -885f, 341f, var_2.b) - var_0.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(var_0.b.a)))) - var_0.a.a)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = min(abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_1.x), (vec2<u32>(31356u, 0u) >> (arg_1 % vec2<u32>(32u))) | vec2<u32>(u_input.b, 1u))), ~arg_1);
    let var_1 = arg_0.x;
    let var_2 = -2147483647i;
    let var_3 = Struct_2(select(select(arg_2.zx, select(vec2<bool>(true, arg_2.x), select(arg_2.yw, arg_2.wx, vec2<bool>(false, false)), arg_2.wz), true), select(!arg_2.wx, !(!vec2<bool>(arg_2.x, true)), vec2<bool>(all(vec2<bool>(arg_2.x, false)), true)), (arg_2.x | !arg_2.x) & select(true | arg_2.x, false && arg_2.x, all(arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) - 791f), _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec3_i32(select(vec3<i32>(54946i, var_2, var_2), vec3<i32>(-15108i, -2147483647i, var_2), arg_2.wzx), vec3<i32>(-27740i, -462i, -2147483647i)), Struct_4(_wgslsmith_mod_i32(var_2, 5446i), arg_0.xy, _wgslsmith_f_op_vec3_f32(step(arg_0.wyy, arg_0.xxw)), reverseBits(vec4<i32>(0i, -1i, -28626i, var_2)))))));
    let var_4 = vec2<u32>(max(~(abs(5830u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 39390u, arg_1.x), vec3<u32>(60976u, var_0.x, 0u)) % 32u)), reverseBits(abs(1999u))), 50272u);
    return 49170i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(543f, 1288f, 396f, 790f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1662f, -232f, 794f, -690f))), vec4<f32>(1671f, -1393f, -926f, -1198f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-282f)), -382f), 1115f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1760f) + _wgslsmith_f_op_f32(f32(-1f) * -626f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-317f))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(142f, _wgslsmith_f_op_f32(round(-798f)))), 379f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(1i, Struct_4(0i, vec2<f32>(889f, -803f), vec3<f32>(-651f, -112f, -700f), vec4<i32>(-1i, -7642i, 1i, 17178i)))))), _wgslsmith_f_op_f32(max(718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f * 111f)))), _wgslsmith_f_op_f32(591f * 951f)));
    var var_1 = _wgslsmith_div_i32(-1i, -45917i);
    var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(-var_0))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(true, true))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0))))), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(42905u, u_input.a), firstLeadingBit(37666u)), ~vec2<u32>(13473u, u_input.a) | vec2<u32>(1u, 0u))), vec4<bool>(true, select(true, true, select(true, true, true)), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true)), select(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), all(vec3<bool>(false, true, false)), false)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0)), Struct_1(var_0), ~(u_input.b << (u_input.b % 32u)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), true);
    var_1 = -5747i >> (min(~(~(~0u)), 1u) % 32u);
    var_2 = Struct_3(Struct_1(vec4<f32>(var_2.b.a.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(func_2(select(!var_2.d.xy, vec2<bool>(var_2.d.x, var_2.e), var_2.d.yz)))), var_2.c, var_2.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1u), max(~(-(vec4<i32>(2147483647i, 3267i, 2147483647i, 1i) >> (vec4<u32>(1u, 1u, var_2.c, u_input.b) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(vec4<i32>(59988i, ~(-1i), _wgslsmith_sub_i32(27276i, 29222i), ~(-7634i)), abs(vec4<i32>(1i, -35254i, 326i, -19716i) >> (vec4<u32>(var_2.c, var_2.c, 49558u, 1u) % vec4<u32>(32u))))), 26957u, _wgslsmith_mod_u32(~(u_input.b ^ 4294967295u) << (~(46630u << (var_2.c % 32u)) % 32u), var_2.c));
}

