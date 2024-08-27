struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global2: f32 = -953f;

var<private> global3: u32;

var<private> global4: bool = true;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> u32 {
    let var_0 = ~1i;
    global2 = 1765f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(381f, _wgslsmith_f_op_f32(ceil(-821f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(354f, -2583f, false))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1076f, _wgslsmith_f_op_f32(-617f + 879f), -401f))))));
    var var_2 = _wgslsmith_div_u32(~(~u_input.a.x), abs(4294967295u));
    return global0.x >> (~_wgslsmith_sub_u32(~global0.x, (u_input.b << (u_input.a.x % 32u)) >> (max(global1.x, global1.x) % 32u)) % 32u);
}

fn func_3(arg_0: Struct_2) -> i32 {
    global3 = 1u;
    global1 = vec2<u32>(0u, max(u_input.b, 1u));
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1457f, arg_0.a.a), vec2<f32>(-343f, -2539f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.a, _wgslsmith_f_op_f32(sign(arg_0.a.a))))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(242f - -847f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-530f)))))));
    global3 = u_input.b;
    var var_1 = Struct_2(arg_0.a);
    return select(max(arg_0.a.e, 5831i), select(abs(-2147483647i ^ var_1.a.e), firstTrailingBit(-1i) >> (global1.x % 32u), all(vec4<bool>(arg_0.a.d, var_1.a.d, var_1.a.b, false))) >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 5777u, 0u), u_input.a.zwx)), global0.x) % 32u), false);
}

fn func_1() -> bool {
    global4 = !(func_2() <= _wgslsmith_add_u32(5523u, 1u));
    var var_0 = Struct_4(vec3<i32>(func_3(Struct_2(Struct_1(-1487f, false, false, true, 30564i))), 1i, -7964i), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)), true, false, false, _wgslsmith_sub_i32(firstTrailingBit(18963i), -21757i))), true, Struct_3(1u, select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(25338u, 66177u, 21323u, global1.x)), min(vec4<u32>(global0.x, 21722u, global1.x, global0.x), vec4<u32>(global0.x, 0u, global1.x, 4294967295u))), u_input.a, false), false, vec2<i32>(countOneBits(abs(25412i)), -2147483647i & firstTrailingBit(-1i))));
    global0 = u_input.a.wyx;
    var var_1 = _wgslsmith_add_i32(var_0.b.a.e, ~_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(1927i, var_0.b.a.e, -6826i, 1i), vec4<i32>(var_0.a.x, 2147483647i, var_0.a.x, var_0.b.a.e)), 34177i));
    global2 = -114f;
    return any(vec4<bool>(select(var_0.b.a.e > countOneBits(var_0.d.d.x), var_0.b.a.c, (global1.x != u_input.b) | (4294967295u == var_0.d.b.x)), var_0.c, true, var_0.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(2168f, all(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)), true, !(!all(vec3<bool>(true, true, true))), ~countOneBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(79855i, 1i, -36546i), vec3<i32>(-8824i, 2147483647i, -26782i))));
    var var_1 = Struct_3(select(_wgslsmith_div_u32(_wgslsmith_sub_u32(25249u, ~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global0.x, global1.x, 0u), vec4<u32>(1u, global1.x, global0.x, 65341u))), _wgslsmith_sub_u32(55407u, select(55308u, ~global1.x, var_0.c & false)), var_0.b), ~(~u_input.a), global1.x < ((0u >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.b, 25217u, u_input.a.x)) % 32u)) << (u_input.a.x % 32u)), ~vec2<i32>(var_0.e, -14345i));
    global2 = var_0.a;
    global3 = 4294967295u;
    var var_2 = Struct_1(var_0.a, true, !(!(true | func_1())), select(false, var_0.e >= 1i, var_0.a > var_0.a), 20231i);
    var var_3 = var_0;
    let var_4 = -1000f;
    global1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(var_1.b.zxy, vec3<u32>(0u, 0u, global0.x))), global1.x), vec2<u32>(1u, reverseBits(u_input.a.x)), ~(~var_1.b.xy)) ^ abs(max(~vec2<u32>(0u, 25477u), var_1.b.yy) >> (~(global0.xx | var_1.b.ww) % vec2<u32>(32u)));
    var_1 = Struct_3(var_1.b.x, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(select(89594u, 44922u, var_1.c), 1u, 4613u, max(u_input.b, var_1.b.x)), firstLeadingBit(select(u_input.a, u_input.a, vec4<bool>(var_1.c, false, true, var_0.b)))), vec4<u32>(~_wgslsmith_div_u32(1u, 29114u), ~global0.x, ~abs(global0.x), select(~global0.x, 1u, var_2.c))), func_1() && all(vec4<bool>(false, true, all(vec3<bool>(var_2.b, false, false)), true)), ~var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-118f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_2.a), var_0.a)))), ~1i);
}

