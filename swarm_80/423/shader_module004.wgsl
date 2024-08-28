struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(543f, 1745f, 1000f), vec3<f32>(1463f, -1535f, -1599f), vec3<f32>(446f, 301f, 1150f), vec3<f32>(131f, -319f, -153f), vec3<f32>(1461f, -209f, 866f), vec3<f32>(1113f, 411f, -374f), vec3<f32>(1968f, -1460f, 467f), vec3<f32>(1000f, 521f, -286f), vec3<f32>(1851f, -631f, 211f), vec3<f32>(690f, -340f, -1058f), vec3<f32>(1967f, 864f, 2390f), vec3<f32>(-208f, -197f, 1000f), vec3<f32>(1182f, 1000f, 913f), vec3<f32>(-648f, 760f, 995f), vec3<f32>(-229f, -1981f, -618f), vec3<f32>(-1271f, 1000f, 145f), vec3<f32>(1687f, 2952f, 400f), vec3<f32>(-227f, 824f, -1573f), vec3<f32>(-1177f, 1000f, 2101f), vec3<f32>(-1283f, -446f, -222f), vec3<f32>(659f, -1000f, -417f), vec3<f32>(446f, 888f, 597f), vec3<f32>(-1000f, 1000f, -685f), vec3<f32>(158f, -666f, 512f), vec3<f32>(641f, 1571f, 472f), vec3<f32>(1230f, -124f, -735f), vec3<f32>(-1000f, -2097f, 1380f), vec3<f32>(1197f, 350f, 1007f), vec3<f32>(1127f, 1423f, -1299f));

var<private> global2: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<bool> {
    global2 = global0.b.b.c;
    global0 = Struct_4(~vec3<i32>(global0.a.x, -u_input.d, 2147483647i), Struct_2(global0.b.b.e.x, global0.b.b), _wgslsmith_add_u32(u_input.c.x, ~global0.b.b.b), false);
    var var_0 = u_input.b.x;
    let var_1 = Struct_4(select(select(-global0.a, reverseBits(global0.a ^ vec3<i32>(global0.a.x, u_input.d, 1i)), vec3<bool>(global0.d == true, true, global0.d)), select(firstLeadingBit(countOneBits(global0.a)), global0.a, false), vec3<bool>(431f != _wgslsmith_div_f32(global0.b.b.a.x, global0.b.b.e.x), global0.d, max(2147483647i, u_input.d) <= reverseBits(global0.b.b.c))), global0.b, 75322u, !(!global0.d));
    let var_2 = vec3<i32>(0i, select(u_input.d, max(u_input.d, _wgslsmith_clamp_i32(u_input.d, -5931i, 4856i)), global0.d), -u_input.d);
    return !(!(!select(select(vec3<bool>(global0.d, var_1.d, var_1.d), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(global0.d, var_1.d, false), false), select(vec3<bool>(true, var_1.d, global0.d), vec3<bool>(true, true, true), var_1.d))));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    global2 = countOneBits(firstLeadingBit(_wgslsmith_clamp_i32(abs(global0.b.b.c), u_input.d, -2147483647i))) & u_input.d;
    let var_0 = Struct_4(_wgslsmith_clamp_vec3_i32(~((vec3<i32>(global0.b.b.c, u_input.d, -12688i) ^ vec3<i32>(1i, global0.b.b.c, u_input.d)) >> (_wgslsmith_mult_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u))), global0.a, vec3<i32>(abs(global0.a.x), u_input.d, _wgslsmith_div_i32(-5610i, u_input.d) | _wgslsmith_dot_vec3_i32(vec3<i32>(1832i, u_input.d, -2147483647i), vec3<i32>(global0.a.x, u_input.d, u_input.d)))), global0.b, 4294967295u, any(select(vec3<bool>(select(global0.d, arg_1, global0.d), global0.d, all(vec3<bool>(global0.d, true, true))), !vec3<bool>(global0.d, false, false), func_3())));
    global1 = array<vec3<f32>, 29>();
    global1 = array<vec3<f32>, 29>();
    var var_1 = var_0;
    return ~_wgslsmith_clamp_i32(-31086i, ~abs(global0.b.b.c), ~42774i);
}

fn func_1() -> f32 {
    var var_0 = global0.b;
    var var_1 = Struct_2(var_0.b.a.x, var_0.b);
    global1 = array<vec3<f32>, 29>();
    var var_2 = func_2(u_input.b, global0.d);
    let var_3 = ~(~(~vec2<u32>(~5438u, _wgslsmith_mult_u32(u_input.c.x, global0.b.b.d))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = vec4<bool>(global0.d, true, true, (global0.a.x < _wgslsmith_div_i32(-2147483647i, 1i)) | any(func_3().yx));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(~0u), (u_input.e & u_input.e) << (reverseBits(16162u) % 32u), ~(u_input.e & 25509u), 16657u) | _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(43436u, global0.c, u_input.b.x, global0.b.b.d)), ~(~vec4<u32>(3723u, u_input.a.x, 11727u, 0u))), ~vec4<u32>(~1u, 9961u, 77637u, _wgslsmith_div_u32(u_input.c.x, 4294967295u)) | ~(select(vec4<u32>(global0.c, 4294967295u, 0u, 4015u), vec4<u32>(4294967295u, u_input.c.x, global0.b.b.b, 53508u), true) & ~vec4<u32>(4294967295u, 1u, u_input.c.x, u_input.b.x)));
    var var_3 = var_2;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.b.e.x - global0.b.a), _wgslsmith_f_op_f32(-global0.b.b.a.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b.b.a.x), 1228f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b.a)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-677f, -1606f))), _wgslsmith_div_f32(global0.b.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-889f * _wgslsmith_f_op_f32(-global0.b.a))))));
    let var_5 = ~u_input.c >> (~select(max(u_input.a, min(var_2.wx, u_input.a)), vec2<u32>(1u, _wgslsmith_clamp_u32(0u, u_input.c.x, 1456u)), var_1.yy) % vec2<u32>(32u));
    let var_6 = select(select(select(vec2<bool>(false, func_3().x), !(!var_1.wx), true), var_1.yw, var_1.wz), vec2<bool>(!all(func_3().zx), all(var_1.wx)), var_1.ww);
    var var_7 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1056f + _wgslsmith_f_op_f32(f32(-1f) * -285f)), vec4<u32>(global0.b.b.b, ~(~_wgslsmith_sub_u32(global0.b.b.d, 0u)), 34221u, var_5.x >> (countOneBits(~5046u) % 32u)), min(vec4<u32>(_wgslsmith_clamp_u32(u_input.e, u_input.a.x, var_3.x), u_input.e, 49759u, u_input.b.x), ~(~var_2)) | firstTrailingBit(var_2), min(var_5, select(abs(~var_5), _wgslsmith_mod_vec2_u32(var_5, var_5), any(var_1.xxx))));
}

