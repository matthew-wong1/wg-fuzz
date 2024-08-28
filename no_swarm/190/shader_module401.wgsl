struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 10151i;

var<private> global1: array<i32, 10> = array<i32, 10>(-3957i, -635i, 7502i, -41037i, -36848i, i32(-2147483648), 53817i, -3370i, 14740i, 24598i);

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global3: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(2147483647i, 2147483647i, 0i, 18947i), vec4<i32>(47327i, -1i, -12994i, -7880i), vec4<i32>(5258i, 4962i, 2147483647i, 0i), vec4<i32>(0i, -21156i, 74295i, 1i), vec4<i32>(17524i, 37772i, -21063i, -10897i), vec4<i32>(13051i, 1i, -1i, -1178i));

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(global4.a.a.x * arg_1.a.x))), _wgslsmith_f_op_vec2_f32(-global4.a.b.xx), true)));
    let var_1 = all(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, true), false)));
    var var_2 = global1[_wgslsmith_index_u32(u_input.c.x >> (arg_0 % 32u), 10u)];
    var var_3 = countOneBits(arg_0);
    var_0 = vec2<f32>(global4.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.x, 166f, var_1)))), _wgslsmith_f_op_f32(-1458f + _wgslsmith_f_op_f32(f32(-1f) * -2627f)))));
    return -18184i != _wgslsmith_add_i32(firstLeadingBit(~(~(-22474i))), abs(~reverseBits(u_input.d.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    var var_0 = global4.a;
    var var_1 = !select(!vec4<bool>(false, true, arg_1, arg_1), select(!select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, false, arg_1, arg_1)), !(!vec4<bool>(arg_1, arg_1, true, arg_1)), vec4<bool>(false, arg_1, true, true)), vec4<bool>(true, (20326u <= global4.b) & (1u <= global4.b), !func_3(u_input.e, Struct_1(global4.c, var_0.b)), any(vec2<bool>(true, false))));
    let var_2 = vec3<u32>(25179u, _wgslsmith_mult_u32(abs(global4.b >> ((global4.b | global4.b) % 32u)), 4294967295u << (abs(global4.b) % 32u)), countOneBits(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.b, 52040u, global4.b), u_input.a), reverseBits(62588u))));
    let var_3 = reverseBits(abs(~global4.b));
    global2 = array<vec3<bool>, 32>();
    return u_input.e;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<u32>) -> bool {
    var var_0 = Struct_2(global4.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_mod_u32(select(arg_2.x, 43959u, arg_1), func_2(vec2<i32>(u_input.d.x, u_input.d.x), true)), arg_2.x, (arg_2.x | 4294967295u) ^ (global4.b << (u_input.a.x % 32u))), firstTrailingBit(vec4<u32>(u_input.c.x, u_input.b, arg_2.x, arg_0.x)) ^ select(vec4<u32>(u_input.e, 12497u, global4.b, 45255u), ~vec4<u32>(global4.b, 64336u, 1u, u_input.c.x), select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.c.x)) + global4.c.x)), vec2<f32>(_wgslsmith_f_op_f32(221f * 803f), global4.c.x))));
    global4 = Struct_2(var_0.a, select(~1u, min(u_input.c.x, ~min(u_input.b, u_input.e)), arg_1), _wgslsmith_f_op_vec2_f32(select(var_0.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b.x, global4.c.x) * vec2<f32>(-505f, global4.c.x)), vec2<f32>(global4.c.x, var_0.c.x))), select(select(vec2<bool>(true, true), vec2<bool>(arg_1, false), vec2<bool>(false, arg_1)), select(vec2<bool>(arg_1, true), vec2<bool>(false, true), vec2<bool>(arg_1, arg_1)), global4.b == var_0.b))), arg_1)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1158f))));
    var var_2 = 1i;
    var_0 = Struct_2(var_0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(18509u, u_input.c.x), arg_2.x), vec2<u32>(firstTrailingBit(~4294967295u), global4.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1421f, 190f))))))));
    return arg_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> i32 {
    global1 = array<i32, 10>();
    let var_0 = true;
    global3 = array<vec4<i32>, 6>();
    var var_1 = countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(4959u, _wgslsmith_clamp_u32(global4.b, 0u, 21008u)), vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 40126u, u_input.c.x), _wgslsmith_mod_u32(4294967295u, u_input.c.x)))) & _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(~_wgslsmith_clamp_u32(u_input.b, global4.b, 1u), global4.b));
    var var_2 = global4.a;
    return _wgslsmith_add_i32(~global1[_wgslsmith_index_u32(11500u, 10u)], ~u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 32>();
    global3 = array<vec4<i32>, 6>();
    var var_0 = vec4<i32>(3122i, u_input.d.x, 1i, func_4(vec4<bool>(select(true, true, true), false, select(select(true, true, false), true, func_1(vec3<u32>(global4.b, 4153u, 23417u), true, vec2<u32>(u_input.b, 4294967295u))), !(u_input.d.x <= 2147483647i)), global1[_wgslsmith_index_u32(36099u, 10u)]));
    global0 = -_wgslsmith_add_i32(~_wgslsmith_mult_i32(19458i, global1[_wgslsmith_index_u32(~u_input.c.x, 10u)]), abs(_wgslsmith_sub_i32(-64078i ^ global1[_wgslsmith_index_u32(u_input.c.x, 10u)], var_0.x << (u_input.b % 32u))));
    let var_1 = firstTrailingBit(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-_wgslsmith_sub_i32(6940i, global1[_wgslsmith_index_u32(global4.b, 10u)])), 2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstLeadingBit(0u), var_1), 10u)], 58227i));
}

