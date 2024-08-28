struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<f32>(368f, -135f, -834f, 114f), 1i, vec3<u32>(1u, 35136u, 41012u), 26549u, 2147483647i), Struct_1(vec4<f32>(185f, 188f, -894f, 1501f), 0i, vec3<u32>(31874u, 18062u, 1u), 58768u, 0i), Struct_2(vec4<i32>(-48595i, -10286i, 2147483647i, 0i), Struct_1(vec4<f32>(1020f, 1016f, -421f, -1095f), -26999i, vec3<u32>(43096u, 27077u, 19112u), 0u, 30116i), 0i, vec4<f32>(456f, -332f, 155f, 1000f)), 1i, false);

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<f32>(186f, -1300f, 2034f, 207f), 0i, vec3<u32>(0u, 21621u, 68790u), 59723u, -5013i), Struct_1(vec4<f32>(-2274f, -1562f, 218f, -1000f), 1i, vec3<u32>(3657u, 28926u, 22274u), 0u, i32(-2147483648)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_sub_vec2_u32(min(reverseBits(~vec2<u32>(7396u, 22301u)), ~vec2<u32>(global0.b.d, 4140u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(~global0.b.c.x, _wgslsmith_add_u32(global0.c.b.d, 22658u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.b.d, global0.c.b.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.d, global0.b.c.x), global0.b.c.xy))) % vec2<u32>(32u)), vec2<u32>(1u, _wgslsmith_mod_u32(global0.b.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.b.c.x, global0.b.d), vec2<u32>(global0.c.b.d, global0.a.c.x)))));
    var_0 = ~vec2<u32>(global0.a.d, 0u);
    let var_1 = global0.a.c;
    let var_2 = var_1.x;
    let var_3 = global0.a.a.yy;
    return global0.a.d;
}

fn func_2() -> Struct_3 {
    global0 = Struct_3(global0.b, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.c.b.c.x, ~(4294967295u ^ _wgslsmith_sub_u32(global0.b.c.x, 1u))), 2u)], Struct_2(reverseBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.e, -32021i, u_input.a, global0.b.e), vec4<i32>(global0.c.b.e, -2147483647i, 0i, global0.a.e))), Struct_1(global0.c.d, 23418i >> (global0.c.b.d % 32u), abs(vec3<u32>(global0.b.c.x, 51840u, global0.b.d)) << (global0.c.b.c % vec3<u32>(32u)), _wgslsmith_mod_u32(~global0.b.d, ~1826u), i32(-1i) * -u_input.a), ~u_input.a << (countOneBits(global0.b.d) % 32u), vec4<f32>(global0.a.a.x, -414f, -106f, _wgslsmith_div_f32(global0.a.a.x, _wgslsmith_f_op_f32(floor(global0.a.a.x))))), _wgslsmith_dot_vec3_i32(~global0.c.a.wwy >> (global0.a.c % vec3<u32>(32u)), vec3<i32>(~_wgslsmith_dot_vec3_i32(global0.c.a.wzx, vec3<i32>(global0.c.c, 11903i, -5037i)), u_input.a, ~global0.b.e)), ~(~4294967295u) <= global0.a.c.x);
    let var_0 = global0.a;
    global0 = Struct_3(Struct_1(global0.a.a, ~(-30217i), var_0.c, func_3(), -var_0.e), Struct_1(_wgslsmith_f_op_vec4_f32(floor(global0.c.d)), -36937i, ~var_0.c, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.c.b.d, global0.c.b.d), ~1u) << (~68954u % 32u), ~select(_wgslsmith_div_i32(global0.b.b, global0.c.c), -2147483647i, false)), global0.c, _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(global0.c.a.xzw, global0.c.a.zyx)), false);
    var var_1 = select(select(!vec2<bool>(!global0.e, true), select(!vec2<bool>(true, global0.e), !select(vec2<bool>(global0.e, false), vec2<bool>(false, false), vec2<bool>(false, global0.e)), false), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), true))), !(!(!(!vec2<bool>(true, global0.e)))), global0.e || true);
    var_1 = select(select(select(!(!vec2<bool>(global0.e, global0.e)), vec2<bool>(any(vec3<bool>(true, true, false)), true), select(vec2<bool>(var_1.x, false), !vec2<bool>(global0.e, global0.e), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), vec2<bool>(global0.e, global0.e), false), !(!vec2<bool>(false, any(vec3<bool>(false, false, true)))), !select(vec2<bool>(var_1.x, -289f < global0.b.a.x), select(select(vec2<bool>(true, true), vec2<bool>(var_1.x, global0.e), var_1.x), vec2<bool>(global0.e, var_1.x), all(vec3<bool>(global0.e, false, true))), !select(vec2<bool>(global0.e, false), vec2<bool>(true, var_1.x), vec2<bool>(global0.e, false))));
    return Struct_3(global1[_wgslsmith_index_u32(6651u, 2u)], Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.b.a.x, global0.c.d.x, -182f, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -803f))), u_input.a, vec3<u32>(global0.c.b.c.x, global0.a.c.x, ~0u), _wgslsmith_mult_u32(global0.b.d, ~(~var_0.d)), _wgslsmith_add_i32((var_0.e ^ var_0.e) ^ _wgslsmith_div_i32(global0.a.b, -1555i), -u_input.a)), global0.c, abs(0i), any(vec2<bool>(select(false, global0.e, false), true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> i32 {
    global0 = func_2();
    var var_0 = global0.c.c;
    var var_1 = vec4<u32>(9734u, _wgslsmith_mod_u32((global0.b.d | 76166u) >> (~countOneBits(36490u) % 32u), global0.b.c.x << (0u % 32u)), ~1u, 85241u);
    let var_2 = func_2();
    var var_3 = select(select(select(vec3<bool>(true, !arg_0.x, true), !(!vec3<bool>(global0.e, arg_0.x, false)), true), vec3<bool>(!any(arg_0.xy), !(!var_2.e), var_2.e), vec3<bool>(true, arg_0.x, true)), arg_0, !(!(!arg_0)));
    return reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_2.c.a.xxy, vec3<i32>(12798i, var_2.b.e, arg_2)), _wgslsmith_sub_i32(global0.a.e, -1i)), arg_2, global0.b.e), vec3<i32>(-u_input.a << (abs(global0.c.b.c.x) % 32u), firstTrailingBit(~1i), ~(-16833i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.c.b, Struct_1(vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(779f - global0.a.a.x), global0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -302f)), _wgslsmith_div_i32(func_1(vec3<bool>(true, false, false), Struct_1(vec4<f32>(-265f, -205f, global0.a.a.x, global0.b.a.x), -20480i, vec3<u32>(global0.a.d, 1u, 0u), global0.b.d, global0.b.e), 0i), -1i) >> (1u % 32u), vec3<u32>(global0.c.b.c.x, global0.c.b.c.x ^ global0.b.c.x, ~4294967295u), abs(_wgslsmith_clamp_u32(7031u, ~global0.c.b.d, _wgslsmith_mult_u32(global0.b.c.x, 38619u))), u_input.a & -global0.a.e), global0.c, -(-func_2().a.b & global0.a.b), false);
    let var_1 = firstLeadingBit(58434u) > max(~(~_wgslsmith_mult_u32(var_0.b.c.x, 4294967295u)), var_0.c.b.d);
    var var_2 = _wgslsmith_sub_u32(4294967295u, 0u);
    var var_3 = var_0.c.a;
    var var_4 = Struct_3(func_2().b, Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_0.c.b.a)), firstTrailingBit(1i), ~countOneBits(global0.a.c), 18397u, -35146i), var_0.c, select(-global0.a.b, 1i, any(select(select(vec4<bool>(global0.e, true, true, false), vec4<bool>(true, var_0.e, var_0.e, var_1), vec4<bool>(global0.e, var_1, true, false)), select(vec4<bool>(true, false, var_1, global0.e), vec4<bool>(var_0.e, false, var_0.e, true), vec4<bool>(var_0.e, false, false, true)), global0.e && false))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(select(~global0.a.c.xy, abs(var_0.b.c.zx), false), 2498u, global0.c.b.b);
}

