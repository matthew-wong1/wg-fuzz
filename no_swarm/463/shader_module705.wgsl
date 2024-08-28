struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(25036i, -36062i), vec2<i32>(-1i, 1i), vec2<i32>(-36091i, -12854i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, -54378i), vec2<i32>(-33488i, i32(-2147483648)), vec2<i32>(44294i, i32(-2147483648)), vec2<i32>(-34337i, -1i), vec2<i32>(0i, -12262i), vec2<i32>(-1i, -34234i), vec2<i32>(-1i, -13585i), vec2<i32>(14690i, -7575i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, 6388i), vec2<i32>(-25529i, 13692i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 3389i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(8485i, -1i), vec2<i32>(-36085i, -6832i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, -2776i), vec2<i32>(-5533i, -22410i), vec2<i32>(i32(-2147483648), -60574i), vec2<i32>(-20416i, -7844i), vec2<i32>(5766i, 16427i));

var<private> global1: Struct_4;

var<private> global2: array<Struct_4, 9>;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1u, vec2<bool>(true, true), vec2<u32>(12982u, 98184u)), Struct_1(35428u, vec2<bool>(false, true), vec2<u32>(1u, 18834u)), Struct_1(1u, vec2<bool>(false, true), vec2<u32>(4294967295u, 1u)));

var<private> global4: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(-289f, 639f), vec2<f32>(246f, -886f), vec2<f32>(1000f, 1255f), vec2<f32>(638f, 585f), vec2<f32>(2775f, -432f), vec2<f32>(288f, -172f), vec2<f32>(995f, -595f), vec2<f32>(-695f, 1061f), vec2<f32>(940f, 1392f), vec2<f32>(-279f, 412f), vec2<f32>(472f, 1992f), vec2<f32>(576f, 1000f), vec2<f32>(-147f, 1564f), vec2<f32>(938f, 1517f), vec2<f32>(523f, 219f), vec2<f32>(1776f, 1000f), vec2<f32>(639f, 1000f), vec2<f32>(559f, 1182f), vec2<f32>(822f, -612f), vec2<f32>(-320f, 1234f), vec2<f32>(477f, -1000f), vec2<f32>(-136f, -688f), vec2<f32>(1122f, 1218f), vec2<f32>(-1795f, -1000f), vec2<f32>(1019f, 845f), vec2<f32>(142f, -1000f), vec2<f32>(1000f, -1000f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.c.x, 9u)];
    global2 = array<Struct_4, 9>();
    let var_1 = 1u;
    let var_2 = vec2<bool>(true, global1.a.x);
    let var_3 = global3[_wgslsmith_index_u32(~(~(~max(var_0.c.x, 1u))), 3u)];
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-479f, _wgslsmith_f_op_f32(f32(-1f) * -378f))))), -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(144f))))))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    var var_0 = 1i;
    let var_1 = global1.b;
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(global1.c.x, 9u)], global1.b, global1.b.a.x))))), _wgslsmith_f_op_f32(select(-770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f - -944f)), false)))));
}

fn func_1() -> i32 {
    let var_0 = vec4<f32>(1093f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(0u, u_input.a.zz)) + _wgslsmith_f_op_f32(f32(-1f) * -811f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(336f * -2037f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -299f) * -976f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(271f + 992f) * -1037f), true))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f - _wgslsmith_f_op_f32(func_2(99135u, u_input.a.wz))))), _wgslsmith_f_op_f32(-var_0.x)));
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    let var_2 = abs(~vec3<u32>(min(global1.c.x, 1u), min(u_input.b, 1u), u_input.b)) ^ firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, global1.c.x) << (abs(vec3<u32>(25819u, u_input.b, 9811u)) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, 59053u, 48012u))));
    return ~((reverseBits(u_input.a.x >> (0u % 32u)) ^ u_input.a.x) ^ _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(global1.b.b, -1i)), min(reverseBits(global1.b.b), global1.b.b)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> Struct_4 {
    global2 = array<Struct_4, 9>();
    let var_0 = Struct_3(select(true, false, select(false, global1.b.a.x, all(select(vec2<bool>(global1.b.a.x, true), global1.b.a.yz, true)))), global1.b, Struct_1(1u, vec2<bool>(global1.b.a.x, global1.a.x), abs(vec2<u32>(firstLeadingBit(11124u), global1.c.x))), global1.b.b, !(global1.a.x || false));
    let var_1 = ~vec3<i32>(arg_0, func_1(), abs(-16527i));
    global3 = array<Struct_1, 3>();
    global4 = array<vec2<f32>, 27>();
    return global2[_wgslsmith_index_u32(min(~abs(abs(min(90057u, global1.c.x))), _wgslsmith_dot_vec2_u32(global1.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_mod_u32(var_0.c.a, global1.c.x)), select(vec2<u32>(4294967295u, 20977u), _wgslsmith_div_vec2_u32(var_0.c.c, vec2<u32>(var_0.c.a, 21738u)), global1.b.a.xy), ~(vec2<u32>(u_input.b, 4294967295u) | vec2<u32>(var_0.c.c.x, global1.c.x))))), 9u)];
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    var var_0 = arg_0.c.x;
    return global2[_wgslsmith_index_u32(arg_0.c.x, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 3>();
    let var_0 = global4[_wgslsmith_index_u32(1u, 27u)];
    let var_1 = true & global1.a.x;
    var var_2 = func_5(func_4(func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(u_input.b, 27u)]))), _wgslsmith_mod_i32(max(-global1.b.b, ~u_input.a.x), ~u_input.a.x), -global1.b.b));
    let var_3 = ~_wgslsmith_dot_vec2_u32(var_2.c, select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, global1.c.x)), ~vec2<u32>(global1.c.x, 4438u), false)) != _wgslsmith_sub_u32(15905u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(global1.c.x, 13396u)), global1.c), ~_wgslsmith_mult_vec2_u32(var_2.c, global1.c)));
    var var_4 = global3[_wgslsmith_index_u32(3600u, 3u)];
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    global4 = array<vec2<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, 14302u, vec2<u32>(_wgslsmith_add_u32(var_4.a >> (~41325u % 32u), (var_2.c.x >> (var_2.c.x % 32u)) ^ ~u_input.b), var_2.c.x));
}

