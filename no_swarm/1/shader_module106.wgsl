struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: u32;

var<private> global2: array<f32, 26>;

var<private> global3: u32;

var<private> global4: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(609f, Struct_2(Struct_1(true, i32(-2147483648), vec4<bool>(false, false, true, true), vec3<bool>(true, true, false)), Struct_1(true, i32(-2147483648), vec4<bool>(false, false, true, false), vec3<bool>(true, true, false)))), Struct_3(896f, Struct_2(Struct_1(true, 8727i, vec4<bool>(false, false, false, false), vec3<bool>(false, true, true)), Struct_1(false, 16452i, vec4<bool>(false, true, true, true), vec3<bool>(true, true, false)))), Struct_3(-1699f, Struct_2(Struct_1(true, -41655i, vec4<bool>(true, true, false, false), vec3<bool>(false, true, true)), Struct_1(true, 2147483647i, vec4<bool>(false, true, true, false), vec3<bool>(true, true, false)))), Struct_3(-473f, Struct_2(Struct_1(true, i32(-2147483648), vec4<bool>(true, false, true, true), vec3<bool>(true, false, false)), Struct_1(true, 70268i, vec4<bool>(true, false, false, true), vec3<bool>(false, false, false)))), Struct_3(-2869f, Struct_2(Struct_1(true, -40601i, vec4<bool>(true, false, false, true), vec3<bool>(false, false, true)), Struct_1(false, 6277i, vec4<bool>(false, false, true, false), vec3<bool>(false, false, true)))), Struct_3(-477f, Struct_2(Struct_1(false, 1i, vec4<bool>(false, false, false, true), vec3<bool>(true, false, false)), Struct_1(false, 1i, vec4<bool>(true, true, false, true), vec3<bool>(false, true, false)))), Struct_3(130f, Struct_2(Struct_1(false, 3233i, vec4<bool>(false, false, false, false), vec3<bool>(true, false, true)), Struct_1(true, 0i, vec4<bool>(false, true, false, false), vec3<bool>(true, true, false)))), Struct_3(-285f, Struct_2(Struct_1(true, 25244i, vec4<bool>(false, false, true, false), vec3<bool>(true, false, true)), Struct_1(false, 1i, vec4<bool>(false, false, false, false), vec3<bool>(true, true, false)))), Struct_3(1350f, Struct_2(Struct_1(true, -1i, vec4<bool>(false, false, false, true), vec3<bool>(false, false, true)), Struct_1(false, -1i, vec4<bool>(false, false, true, false), vec3<bool>(true, false, true)))), Struct_3(371f, Struct_2(Struct_1(false, i32(-2147483648), vec4<bool>(true, true, true, true), vec3<bool>(true, true, true)), Struct_1(false, -13197i, vec4<bool>(true, false, true, true), vec3<bool>(true, false, true)))), Struct_3(-1319f, Struct_2(Struct_1(false, -1i, vec4<bool>(true, false, true, true), vec3<bool>(false, false, true)), Struct_1(false, 1i, vec4<bool>(true, true, false, true), vec3<bool>(true, true, true)))), Struct_3(-1263f, Struct_2(Struct_1(false, 2147483647i, vec4<bool>(false, true, false, false), vec3<bool>(false, true, true)), Struct_1(true, i32(-2147483648), vec4<bool>(false, false, true, false), vec3<bool>(true, true, true)))), Struct_3(-124f, Struct_2(Struct_1(false, 4736i, vec4<bool>(false, false, true, false), vec3<bool>(true, false, true)), Struct_1(false, -1i, vec4<bool>(false, true, true, false), vec3<bool>(true, false, false)))), Struct_3(-203f, Struct_2(Struct_1(true, 2147483647i, vec4<bool>(false, true, false, false), vec3<bool>(false, false, false)), Struct_1(false, -1i, vec4<bool>(true, true, true, false), vec3<bool>(false, false, true)))), Struct_3(608f, Struct_2(Struct_1(true, 9499i, vec4<bool>(true, true, true, false), vec3<bool>(true, false, false)), Struct_1(false, 0i, vec4<bool>(false, false, false, false), vec3<bool>(false, true, true)))), Struct_3(959f, Struct_2(Struct_1(false, -24635i, vec4<bool>(true, true, false, true), vec3<bool>(false, false, true)), Struct_1(true, -3225i, vec4<bool>(false, true, true, true), vec3<bool>(true, false, true)))), Struct_3(-1575f, Struct_2(Struct_1(false, 0i, vec4<bool>(false, false, true, false), vec3<bool>(true, false, false)), Struct_1(true, 1i, vec4<bool>(true, false, true, true), vec3<bool>(false, true, true)))), Struct_3(-990f, Struct_2(Struct_1(true, -1i, vec4<bool>(false, false, true, true), vec3<bool>(false, false, true)), Struct_1(true, 2042i, vec4<bool>(true, false, false, false), vec3<bool>(true, false, false)))), Struct_3(-2010f, Struct_2(Struct_1(true, -59992i, vec4<bool>(false, false, false, false), vec3<bool>(false, true, true)), Struct_1(false, 9894i, vec4<bool>(false, false, false, true), vec3<bool>(true, true, false)))), Struct_3(-1391f, Struct_2(Struct_1(false, -20318i, vec4<bool>(true, false, false, true), vec3<bool>(true, false, false)), Struct_1(true, i32(-2147483648), vec4<bool>(true, false, true, true), vec3<bool>(true, true, false)))), Struct_3(1000f, Struct_2(Struct_1(false, 0i, vec4<bool>(true, false, false, true), vec3<bool>(true, false, true)), Struct_1(false, 30737i, vec4<bool>(true, false, true, true), vec3<bool>(false, true, true)))), Struct_3(1000f, Struct_2(Struct_1(true, 0i, vec4<bool>(true, false, false, true), vec3<bool>(true, false, true)), Struct_1(false, 11047i, vec4<bool>(false, false, true, true), vec3<bool>(false, true, true)))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> i32 {
    return -723i;
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    global0 = vec3<f32>(-517f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 26u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912f + -342f) - -932f))), -836f);
    let var_0 = arg_0.c.b.b;
    var var_1 = var_0.b;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(u_input.a, 18172u, u_input.a)) ^ firstLeadingBit(u_input.b), u_input.a), abs(4294967295u)), 22u)];
    var var_3 = var_2.b.b.d;
    return countOneBits(arg_0.a.xx) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, 4294967295u)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 31851u), vec2<u32>(12593u, 25951u)))), vec2<u32>(_wgslsmith_add_u32(~u_input.a, max(42280u, 13633u)), ~(~1u)), firstLeadingBit(~abs(vec2<u32>(u_input.a, 29013u)))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-22582i, -15913i), vec2<i32>(_wgslsmith_dot_vec2_i32(func_3(Struct_4(vec3<i32>(2147483647i, 0i, 2147483647i), 2147483647i, Struct_3(-1000f, Struct_2(Struct_1(false, -2147483647i, arg_0, arg_0.yzw), Struct_1(true, 2147483647i, vec4<bool>(false, false, true, arg_0.x), vec3<bool>(true, arg_0.x, true)))))) | ~vec2<i32>(18687i, 2147483647i), _wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-6099i, 0i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), _wgslsmith_mod_i32(-_wgslsmith_add_i32(59325i, -2147483647i), -2147483647i)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(func_1() > -674i, ~25024u <= func_2(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec3<f32>(925f, 440f, 100f))), !select(vec2<bool>(true, true), vec2<bool>(true, select(false, true, true)), vec2<bool>(any(vec3<bool>(true, false, false)), true)), !select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    global2 = array<f32, 26>();
    var var_1 = u_input.a;
    let var_2 = Struct_1(var_0.x, -_wgslsmith_div_i32(func_3(Struct_4(vec3<i32>(2147483647i, 1i, 11870i), -21280i, Struct_3(-242f, Struct_2(Struct_1(true, -1i, vec4<bool>(var_0.x, var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, false)), Struct_1(var_0.x, 11553i, vec4<bool>(false, false, var_0.x, true), vec3<bool>(false, true, false)))))).x, 0i) >> (select(min(61252u ^ u_input.b, _wgslsmith_clamp_u32(u_input.b, u_input.a, 2831u)), reverseBits(u_input.b), true) % 32u), !vec4<bool>(_wgslsmith_add_i32(-7678i, -12425i) >= func_1(), true && (u_input.b < u_input.a), all(select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x))), var_0.x), select(!vec3<bool>(true, false, var_0.x), !vec3<bool>(var_0.x == true, select(true, var_0.x, true), false), !vec3<bool>(var_0.x, true, var_0.x)));
    var var_3 = (i32(-1i) * -31246i) & abs(var_2.b);
    let var_4 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(~u_input.a, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, 39337u), min(u_input.b, 0u)), u_input.a)));
    var var_5 = Struct_2(var_2, var_2);
    global2 = array<f32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(global0.yx))))));
}

