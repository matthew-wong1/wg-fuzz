struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i);

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec3<f32>(1163f, -1390f, -1930f)), Struct_3(vec3<f32>(1212f, 362f, -1000f)), Struct_3(vec3<f32>(-953f, -1368f, -993f)), Struct_3(vec3<f32>(-317f, 324f, -819f)), Struct_3(vec3<f32>(674f, -968f, 427f)), Struct_3(vec3<f32>(3060f, 1728f, 968f)), Struct_3(vec3<f32>(1051f, -1102f, -1061f)), Struct_3(vec3<f32>(899f, -247f, 1000f)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = 4294967295u;
    var var_1 = -(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), select(~vec2<i32>(global0.a, global0.a), vec2<i32>(1i, -28320i), vec2<bool>(true, true))) | _wgslsmith_dot_vec3_i32(vec3<i32>(max(global0.a, global0.a), global0.a >> (u_input.a % 32u), _wgslsmith_clamp_i32(global0.a, global0.a, global0.a)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.a, 1i, global0.a), vec3<i32>(global0.a, 0i, global0.a)) & max(vec3<i32>(global0.a, global0.a, 2147483647i), vec3<i32>(global0.a, global0.a, global0.a))));
    global0 = Struct_2(global0.a);
    var_1 = global0.a;
    var_1 = (i32(-1i) * -9716i) << (u_input.a % 32u);
    return firstTrailingBit(~vec3<u32>(min(106464u, u_input.b), 55333u, 0u ^ u_input.a) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(23594u, 4294967295u, u_input.a), vec3<u32>(1u, u_input.b, u_input.b) ^ vec3<u32>(55434u, 4294967295u, 55506u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(15516u, u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(3900u, 25963u, u_input.b), vec3<u32>(u_input.a, u_input.a, 4294967295u)))) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    var var_0 = !(!(_wgslsmith_f_op_f32(299f * arg_1.b) <= _wgslsmith_div_f32(195f, arg_1.b))) & arg_1.c.x;
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.b, abs(79938u)), ~(~(vec3<u32>(93788u, u_input.a, 0u) | vec3<u32>(u_input.a, u_input.b, 71667u))) >> (func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_1.b, arg_1.b, -1000f) + vec4<f32>(-390f, arg_0.x, arg_1.b, arg_1.b)) * _wgslsmith_div_vec4_f32(vec4<f32>(-706f, arg_1.b, arg_0.x, arg_1.b), vec4<f32>(-1635f, 911f, 653f, -1000f)))) % vec3<u32>(32u)));
    let var_2 = select(vec2<bool>(all(vec3<bool>(true, true, arg_1.c.x && arg_1.c.x)), !arg_1.c.x), vec2<bool>(arg_1.c.x, arg_1.c.x), select(!select(arg_1.c, vec2<bool>(arg_1.c.x, false), any(vec4<bool>(arg_1.c.x, false, arg_1.c.x, false))), !vec2<bool>(any(vec3<bool>(arg_1.c.x, true, arg_1.c.x)), true), false));
    let var_3 = _wgslsmith_div_u32(u_input.a, 1u >> (_wgslsmith_mult_u32(19270u, ~1u >> (var_1.x % 32u)) % 32u));
    global2 = array<Struct_3, 8>();
    return 53822u >= var_1.x;
}

fn func_1() -> f32 {
    global1 = array<vec2<u32>, 27>();
    let var_0 = select(!(!func_2(vec3<f32>(1067f, 935f, 1088f), Struct_1(11517i, 1542f, vec2<bool>(true, true))) & false), !(!any(vec2<bool>(true, true))), all(vec2<bool>(true, (u_input.a | u_input.b) == u_input.b)));
    var var_1 = vec2<u32>(u_input.b, 0u);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1326f + -834f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(422f + 1044f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2001f - 588f) * _wgslsmith_div_f32(-1000f, 478f)) - -907f))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2479f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-268f, -1045f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2518f)) * -1547f))) + 1207f);
    return _wgslsmith_f_op_f32(-1031f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(788f - 193f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1596f - 754f), -1030f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(526f, 355f)) + _wgslsmith_f_op_f32(-1000f * 1170f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 8>();
    let var_0 = Struct_1(max(~reverseBits(i32(-1i) * -33654i), max(i32(-1i) * -2147483647i, max(global0.a, countOneBits(global0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1())))), vec2<bool>(true, true));
    var var_1 = ~vec4<u32>(~91292u, ~u_input.b, _wgslsmith_div_u32(min(4294967295u, min(0u, u_input.a)), firstTrailingBit(_wgslsmith_mult_u32(u_input.b, 1698u))), ~(~_wgslsmith_mult_u32(u_input.a, u_input.a)));
    global2 = array<Struct_3, 8>();
    var var_2 = !var_0.c;
    var var_3 = ~u_input.a;
    var var_4 = Struct_2(-1i);
    let var_5 = vec4<bool>(!(!all(select(vec3<bool>(false, var_0.c.x, var_2.x), vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(var_2.x, var_0.c.x, var_2.x)))), true, any(!vec4<bool>(true, var_2.x, var_2.x, any(vec2<bool>(var_2.x, var_2.x)))), all(var_0.c));
    var var_6 = vec3<f32>(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(2722f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-816f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 420f)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.x - _wgslsmith_f_op_f32(abs(var_0.b)))), min(abs(-vec3<i32>(var_4.a, var_0.a, global0.a) >> (~var_1.zyx % vec3<u32>(32u))), ~(-vec3<i32>(var_4.a, var_0.a, var_4.a)) >> (~(~vec3<u32>(4294967295u, var_1.x, u_input.b)) % vec3<u32>(32u))), -(~0i), ~_wgslsmith_dot_vec2_u32(~var_1.xy, vec2<u32>(var_1.x, 58248u)));
}

