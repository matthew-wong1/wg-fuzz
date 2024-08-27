struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-150f, 1000f, -1090f, -942f), Struct_1(213f, vec2<i32>(31568i, 1i), vec3<u32>(1u, 19472u, 42842u), 20528i), Struct_1(-381f, vec2<i32>(-38961i, 0i), vec3<u32>(22429u, 0u, 4294967295u), -101135i), vec2<u32>(0u, 0u), Struct_1(-1000f, vec2<i32>(1i, 27101i), vec3<u32>(2672u, 24826u, 15486u), 1i));

var<private> global2: array<u32, 22> = array<u32, 22>(1u, 21526u, 4294967295u, 36707u, 16506u, 25603u, 1u, 1u, 18073u, 1u, 4294967295u, 29024u, 33308u, 13658u, 8791u, 54285u, 10580u, 0u, 18834u, 28389u, 4294967295u, 34646u);

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global2 = array<u32, 22>();
    return global3.b.d;
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_u32(27671u, global3.b.c.x);
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(~func_3(), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.b.x, global0.e.b.x, global1.c.d), arg_0) >> (1u % 32u)), global1.b.b);
    var_1 = select(global1.c.b, abs(~global0.e.b), false);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1595f);
    let var_3 = vec2<bool>(!any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), true);
    return vec4<bool>(select(any(vec3<bool>(true, true, true)) != any(vec2<bool>(true, var_3.x)), (-global1.b.b.x >> (global0.c.c.x % 32u)) != -18068i, true), true, var_3.x, !var_3.x);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = !select(func_2(-vec3<i32>(global0.e.b.x, 1i, u_input.d.x)), !vec4<bool>(any(vec2<bool>(true, true)), true, true, all(vec3<bool>(false, false, false))), !select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), any(vec2<bool>(true, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1213f, -1179f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.xw)))), var_0.x))))));
    var var_2 = arg_0;
    var var_3 = var_2.c;
    var var_4 = var_2.b.b.x;
    return _wgslsmith_dot_vec2_u32(arg_0.c.c.xx, global0.c.c.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(1i, abs(abs(global3.b.d)));
    global2 = array<u32, 22>();
    global1 = Struct_2(global3.a, Struct_1(global1.c.a, vec2<i32>(var_0.x, _wgslsmith_mod_i32(-global1.e.d, ~1382i)), global3.e.c, ~var_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-214f, -237f))), global0.c.b, vec3<u32>(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_div_u32(63418u, 4294967295u)), select(73652u, u_input.b.x, true) & func_1(Struct_2(global0.a, Struct_1(global3.b.a, vec2<i32>(0i, 1i), vec3<u32>(0u, 4294967295u, 27932u), var_0.x), Struct_1(-1293f, global1.b.b, global1.e.c, -4709i), u_input.b, Struct_1(-801f, vec2<i32>(global0.b.d, global1.b.d), vec3<u32>(57537u, 4294967295u, 42349u), global3.e.b.x))), ~_wgslsmith_clamp_u32(global3.e.c.x, 4294967295u, 9901u)), global0.b.b.x), firstLeadingBit(global0.d), global3.e);
    var_0 = vec2<i32>(~firstLeadingBit(u_input.c.x) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.c.x, 15046u, 1u), ~global3.e.c) % 32u), 1i);
    var var_1 = Struct_1(1000f, firstTrailingBit(vec2<i32>(firstLeadingBit(~9931i), max(_wgslsmith_add_i32(49741i, 0i), func_3()))), abs(global0.b.c), ~global3.e.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.a, global1.c.d, global1.a);
}

