struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 103018u);

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 15085u);

var<private> global2: array<Struct_2, 16>;

var<private> global3: array<vec4<i32>, 28>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<bool> {
    var var_0 = firstTrailingBit(vec3<u32>(abs(global0.x), arg_1, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(68031u, 1u, 0u), vec3<u32>(global0.x, 1u, global1.x)))));
    let var_1 = -25699i;
    let var_2 = vec2<u32>(global1.x, firstTrailingBit(global1.x));
    return !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), -826f == arg_0), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), all(vec4<bool>(false, true, false, true)))), select(vec2<bool>(true, true), vec2<bool>(true, select(false, true, true)), false), _wgslsmith_f_op_f32(f32(-1f) * -241f) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - -633f), arg_0)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(!func_3(arg_3.b, arg_1.c), vec2<bool>(false, any(vec3<bool>(any(vec2<bool>(false, false)), true, true))), false);
    var_0 = vec2<bool>(all(select(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), var_0.x), !vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), true)), !(!vec3<bool>(var_0.x, true, true)))), any(vec4<bool>(!(u_input.a != arg_1.a), func_3(_wgslsmith_f_op_f32(arg_0.x - -899f), 0u).x, false, var_0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b, -236f, false))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), -1000f, var_0.x))), arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_3.d.zx);
    global0 = min(~max(vec2<u32>(1u, arg_1.c), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.c, global1.x), vec2<u32>(arg_2.c, global0.x)))), vec2<u32>(~((global1.x & 29969u) << (_wgslsmith_mod_u32(global0.x, 41474u) % 32u)), global1.x));
    return Struct_1(-2147483647i, _wgslsmith_f_op_f32(-1339f * 1374f), ~(~1u), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_2.x) - _wgslsmith_f_op_f32(1978f - var_2.x)))), arg_1.d.x, arg_2.b, -826f));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    global0 = ~arg_2.e.yx;
    var var_0 = Struct_1(2147483647i | arg_0.c.a, 1329f, ~52258u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x * arg_2.b))), 515f, _wgslsmith_f_op_f32(trunc(-286f)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(2417f)), -441f);
    var_0 = arg_2.c;
    var var_2 = arg_0;
    return 1654f;
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_2, 16>();
    return Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(24950i, -175f, global1.x, vec4<f32>(-1010f, 177f, 106f, 279f)), 1f, Struct_1(u_input.a, 108f, global1.x, vec4<f32>(-437f, -1000f, 720f, 549f)), global1.x, vec3<u32>(4294967295u, global1.x, 39324u) >> (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(302f, 958f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-660f, -213f) * vec2<f32>(-321f, 304f)))), Struct_2(func_2(vec3<f32>(403f, 3350f, -1628f), Struct_1(1i, 1001f, 17806u, vec4<f32>(-991f, -1553f, 413f, 1316f)), Struct_1(u_input.a, 322f, 41272u, vec4<f32>(1000f, 1390f, -520f, -690f)), Struct_1(-19249i, -1000f, global0.x, vec4<f32>(-987f, -1209f, 788f, -1000f))), _wgslsmith_f_op_f32(sign(634f)), Struct_1(-870i, 1431f, 61307u, vec4<f32>(549f, 204f, 394f, -211f)), 42062u, select(vec3<u32>(65129u, 16269u, global1.x), vec3<u32>(global0.x, global0.x, 4294967295u), false)))) + _wgslsmith_div_f32(1229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1438f - 1777f)))), 23024u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1522f)), 1938f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(102f + 489f)), _wgslsmith_f_op_f32(sign(163f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(~min(global1.x, _wgslsmith_add_u32(select(26043u, 0u, true), 25555u)), 19014u);
    global0 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(global1.x, global0.x, global0.x) | ~vec3<u32>(global0.x, 19148u, global1.x)), abs(vec3<u32>(global0.x, 1u, global0.x))), global1.x);
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, -u_input.a > _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(-26541i, 47255i)), _wgslsmith_f_op_f32(trunc(-462f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f * 490f))));
    global0 = ~vec2<u32>(~_wgslsmith_clamp_u32(4294967295u, global1.x, global1.x), global0.x) & reverseBits(~abs(vec2<u32>(global0.x, 1u)));
    global1 = min(~select(firstTrailingBit(~vec2<u32>(0u, 0u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, global0.x), vec2<u32>(global1.x, global1.x)), true), vec2<u32>(_wgslsmith_add_u32(~2715u, _wgslsmith_clamp_u32(global1.x, global0.x, global1.x)) >> (100031u % 32u), firstTrailingBit(1u)));
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_1().a), var_1.a, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-3620i, -1201i, var_1.a) ^ vec3<i32>(var_1.a, 1i, 75698i), _wgslsmith_add_vec3_i32(vec3<i32>(71068i, u_input.a, u_input.a), vec3<i32>(-1i, var_1.a, -1i))), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, var_1.a, -19606i), -vec3<i32>(-5871i, var_1.a, u_input.a))) << (_wgslsmith_add_vec3_u32(abs(vec3<u32>(global1.x, 1u, global1.x)) << (vec3<u32>(40259u, 7110u, global1.x) % vec3<u32>(32u)), ~vec3<u32>(var_1.c, 67164u, 4294967295u) & vec3<u32>(4294967295u, global0.x, var_1.c)) % vec3<u32>(32u)), vec3<u32>(~25688u, (global1.x & abs(global0.x)) >> (~global1.x % 32u), global0.x));
}

