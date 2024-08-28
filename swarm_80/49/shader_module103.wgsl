struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(1690f, -313f, -571f), vec3<f32>(-381f, -492f, -482f), vec3<f32>(662f, -1751f, -456f), vec3<f32>(794f, 467f, 1229f), vec3<f32>(-1570f, -522f, 285f), vec3<f32>(1000f, -361f, -296f), vec3<f32>(-1000f, -677f, 624f));

var<private> global2: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global3: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    global1 = array<vec3<f32>, 7>();
    global0 = ~(~vec3<u32>(~(~u_input.b.x), ~arg_0.e.x >> ((global2.x ^ arg_1.c) % 32u), global2.x));
    global3 = 1i;
    let var_0 = _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(865f * arg_0.a.x) + arg_2), -936f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_2)), -220f)) * _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1017f))), global2.x <= (29099u >> (1u % 32u)))));
    var var_1 = arg_1.e.x;
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(select(_wgslsmith_dot_vec4_u32(arg_2.e, arg_2.b), 69815u ^ global2.x, arg_2.d.e.x), ~u_input.b.x, 53245u), vec3<u32>(global2.x, _wgslsmith_mod_u32(global2.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, global0.x), u_input.b.yz)), ~47063u));
    global0 = abs(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(arg_2.d.b.x, ~4294967295u, max(22579u, arg_1))), countOneBits(_wgslsmith_add_vec3_u32(arg_2.b.yzx, min(vec3<u32>(arg_2.b.x, u_input.b.x, 9176u), u_input.b)))));
    var var_0 = ~arg_3;
    let var_1 = func_1(arg_2, func_1(func_1(func_1(func_1(arg_2, Struct_1(arg_2.e, vec4<u32>(global2.x, 53826u, global2.x, arg_1), 4294967295u, vec2<u32>(global0.x, u_input.b.x), vec3<bool>(arg_2.d.e.x, arg_2.d.e.x, arg_2.d.e.x)), -1000f), func_1(Struct_3(arg_2.a, arg_2.b, arg_2.a.x, Struct_1(arg_2.d.b, vec4<u32>(u_input.b.x, u_input.b.x, 3477u, global0.x), arg_1, arg_2.e.zy, arg_2.d.e), arg_2.d.b), Struct_1(arg_2.d.a, arg_2.e, global0.x, vec2<u32>(arg_1, 61496u), arg_2.d.e), arg_2.a.x).d, arg_2.c), func_1(arg_2, func_1(arg_2, Struct_1(vec4<u32>(global2.x, 6957u, 1u, arg_1), arg_2.d.a, 4294967295u, arg_2.b.zy, arg_2.d.e), arg_2.c).d, _wgslsmith_f_op_f32(-arg_2.c)).d, _wgslsmith_f_op_f32(min(-937f, _wgslsmith_f_op_f32(f32(-1f) * -1059f)))), func_1(func_1(func_1(arg_2, arg_2.d, 1007f), func_1(arg_2, arg_2.d, 1717f).d, _wgslsmith_div_f32(arg_2.c, 1000f)), func_1(arg_2, func_1(Struct_3(vec4<f32>(-1000f, arg_2.c, -1000f, 747f), arg_2.b, arg_2.a.x, Struct_1(arg_2.d.b, arg_2.b, arg_1, vec2<u32>(global0.x, 0u), arg_2.d.e), arg_2.b), Struct_1(arg_2.d.a, arg_2.d.a, arg_1, u_input.b.xx, vec3<bool>(arg_2.d.e.x, false, arg_2.d.e.x)), arg_2.c).d, -301f).d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-396f + 1265f), _wgslsmith_f_op_f32(-arg_2.c))).d, 956f).d, -1122f).d.e;
    var_0 = -_wgslsmith_mult_i32(-(~arg_3), -_wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(arg_3, 57937i)));
    return Struct_1(arg_2.b, ~func_1(func_1(arg_2, arg_2.d, _wgslsmith_div_f32(530f, arg_2.c)), func_1(arg_2, Struct_1(vec4<u32>(u_input.b.x, arg_1, u_input.b.x, 30886u), vec4<u32>(global2.x, 4294967295u, global2.x, global2.x), 0u, vec2<u32>(u_input.b.x, 1u), vec3<bool>(arg_2.d.e.x, var_1.x, arg_2.d.e.x)), _wgslsmith_div_f32(arg_2.a.x, -431f)).d, _wgslsmith_f_op_f32(-915f * _wgslsmith_f_op_f32(f32(-1f) * -772f))).b, _wgslsmith_dot_vec4_u32(min(arg_2.e, vec4<u32>(1u, 1u, ~0u, 970u)), abs(select(vec4<u32>(0u, 0u, arg_2.e.x, u_input.b.x), arg_2.b, any(vec4<bool>(arg_2.d.e.x, true, var_1.x, true))))), firstLeadingBit(~(~vec2<u32>(10137u, 1u))), vec3<bool>(true && !arg_2.d.e.x, var_1.x, (0u == global2.x) | true));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> vec3<u32> {
    global0 = vec3<u32>(abs(global0.x), _wgslsmith_dot_vec3_u32(~(~u_input.b & (vec3<u32>(u_input.b.x, 35738u, global0.x) | vec3<u32>(30788u, 1u, 23251u))), vec3<u32>(_wgslsmith_div_u32(96112u, 69135u) << (1u % 32u), func_1(arg_0, func_3(Struct_2(2147483647i), 20644u, arg_0, 1i), _wgslsmith_f_op_f32(972f + 166f)).d.c, ~(~0u))), 47822u);
    let var_0 = func_1(Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a.x, arg_1.x, 1248f, 334f))) + vec4<f32>(704f, arg_0.c, 1830f, 906f)), _wgslsmith_f_op_vec4_f32(sign(arg_0.a)), false)), arg_0.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3049f - 1356f) - func_1(Struct_3(vec4<f32>(arg_0.c, arg_1.x, 1051f, -1250f), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u), 1000f, arg_0.d, arg_0.e), func_3(Struct_2(-36932i), global2.x, Struct_3(vec4<f32>(arg_1.x, 1416f, arg_0.a.x, arg_0.a.x), arg_0.e, 681f, arg_0.d, arg_0.d.a), u_input.a.x), _wgslsmith_f_op_f32(arg_1.x + -1729f)).a.x), Struct_1(~(~arg_0.d.a), ~_wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(global0.x, arg_0.b.x, 26614u, 4294967295u)), global0.x, ~_wgslsmith_mult_vec2_u32(arg_0.d.a.xy, vec2<u32>(12144u, arg_0.d.a.x)), vec3<bool>(true, !arg_0.d.e.x, !arg_0.d.e.x)), max(vec4<u32>(arg_0.b.x, arg_0.e.x << (4294967295u % 32u), arg_0.d.c, 38219u), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global0.x, 54132u, global0.x)), u_input.b.x, global2.x & global0.x))), func_1(arg_0, func_3(Struct_2(-u_input.a.x), firstTrailingBit(74912u >> (0u % 32u)), arg_0, firstLeadingBit(i32(-1i) * -3190i)), _wgslsmith_f_op_f32(-arg_0.c)).d, 245f).d;
    var var_1 = true;
    var var_2 = true;
    var var_3 = 54693u;
    return abs(~(~(~(~vec3<u32>(global0.x, 23621u, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstTrailingBit(~select(global0.xx, vec2<u32>(u_input.b.x, 1u), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
    global1 = array<vec3<f32>, 7>();
    let var_0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(func_2(func_1(Struct_3(vec4<f32>(1493f, -749f, 786f, -1000f), vec4<u32>(u_input.b.x, global0.x, global2.x, 25832u), 1890f, Struct_1(vec4<u32>(0u, 12921u, 1u, global2.x), vec4<u32>(12213u, global0.x, 4294967295u, global0.x), global0.x, global0.yy, vec3<bool>(false, false, false)), vec4<u32>(35291u, 0u, u_input.b.x, u_input.b.x)), Struct_1(vec4<u32>(9212u, 23940u, 0u, 0u), vec4<u32>(4294967295u, global0.x, global2.x, global2.x), 1u, u_input.b.zx, vec3<bool>(true, true, true)), _wgslsmith_div_f32(-673f, -156f)), vec2<f32>(1f, 1f))));
}

