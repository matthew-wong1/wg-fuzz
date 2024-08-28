struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(22770u, 22029u, 1u, 0u), -329f, vec2<f32>(1155f, -427f)), Struct_1(vec4<u32>(69652u, 46005u, 1u, 54755u), 1000f, vec2<f32>(-284f, 463f)), Struct_1(vec4<u32>(26858u, 0u, 4294967295u, 50254u), -605f, vec2<f32>(1772f, 1433f)), Struct_1(vec4<u32>(52486u, 4294967295u, 13850u, 4294967295u), 942f, vec2<f32>(-1235f, -449f)), Struct_1(vec4<u32>(16727u, 13472u, 4294967295u, 24114u), -709f, vec2<f32>(-955f, 604f)), Struct_1(vec4<u32>(0u, 27412u, 46339u, 32794u), 1069f, vec2<f32>(268f, 732f)), Struct_1(vec4<u32>(1u, 9396u, 1u, 1u), 145f, vec2<f32>(281f, -1000f)), Struct_1(vec4<u32>(1u, 4294967295u, 53277u, 57068u), -795f, vec2<f32>(1774f, 1689f)), Struct_1(vec4<u32>(4255u, 41967u, 62349u, 7374u), -552f, vec2<f32>(-528f, 517f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = ~u_input.d.x ^ _wgslsmith_clamp_i32(~_wgslsmith_add_i32(u_input.c >> (0u % 32u), u_input.d.x), u_input.d.x, u_input.d.x);
    global0 = Struct_1(_wgslsmith_mod_vec4_u32(abs(~(~global0.a)), ~firstLeadingBit(vec4<u32>(global0.a.x, 33317u, global0.a.x, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b)) * _wgslsmith_f_op_f32(select(global0.b, 728f, true))), _wgslsmith_f_op_vec2_f32(global0.c - global0.c));
    var var_1 = Struct_2(0u, ~1u, vec4<bool>(true, all(vec3<bool>(true, var_0 <= var_0, true)), all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(select(global0.c.x, 900f, false))) != _wgslsmith_f_op_f32(global0.c.x - -867f)));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 9u)];
    var var_3 = 1u;
    return 5560u;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(reverseBits(2711u), 4294967295u, _wgslsmith_mod_u32(1u | (global0.a.x ^ u_input.b.x), func_3()), ~(~1u)), global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1109f, global0.b))))));
    let var_1 = any(select(!select(arg_0.c, vec4<bool>(false, false, arg_0.c.x, arg_0.c.x), true), arg_0.c, !arg_0.c.x & true)) && true;
    var var_2 = Struct_3(~_wgslsmith_mult_u32(~abs(arg_0.a), ~var_0.a.x << (4294967295u % 32u)), select(arg_0.c.wxw, vec3<bool>(all(arg_0.c.xzy), !var_1, any(vec3<bool>(false, var_1, false))), var_1 == (max(u_input.b.x, 0u) >= firstTrailingBit(global0.a.x))), ~abs(vec4<u32>(0u, var_0.a.x, u_input.a.x, var_0.a.x)) & var_0.a, -1000f, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~64903u, func_3()), 9u)]);
    global2 = array<Struct_1, 9>();
    var_0 = Struct_1(~(~min(vec4<u32>(var_2.e.a.x, 1u, u_input.a.x, var_2.e.a.x), countOneBits(vec4<u32>(32391u, var_0.a.x, 4851u, u_input.b.x)))), _wgslsmith_f_op_f32(var_0.b - var_0.c.x), vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1733f, var_0.b)))) * _wgslsmith_f_op_f32(min(-1444f, _wgslsmith_f_op_f32(-var_2.d))))));
    return Struct_1(min(reverseBits(vec4<u32>(arg_0.b ^ var_2.c.x, abs(u_input.b.x), _wgslsmith_add_u32(var_2.e.a.x, u_input.a.x), _wgslsmith_div_u32(38457u, 4294967295u))), vec4<u32>(_wgslsmith_clamp_u32(arg_0.b, var_0.a.x, ~var_0.a.x), 46434u, firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.a.xw, u_input.b.wy)), ~global0.a.x << (~global0.a.x % 32u))), _wgslsmith_f_op_f32(select(global0.c.x, var_2.e.b, var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    global0 = func_2(Struct_2(reverseBits(abs(u_input.b.x & 69683u)), ~8602u, !(!(!vec4<bool>(false, false, true, arg_0)))));
    global2 = array<Struct_1, 9>();
    global1 = arg_1.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.c.x, global0.b, global0.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -312f, 1000f, -642f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, _wgslsmith_div_f32(-618f, 602f), _wgslsmith_f_op_f32(f32(-1f) * -1010f), -1680f)))));
    global2 = array<Struct_1, 9>();
    return Struct_2(_wgslsmith_dot_vec3_u32((_wgslsmith_mod_vec3_u32(global0.a.xxz, vec3<u32>(4294967295u, global0.a.x, u_input.b.x)) | _wgslsmith_sub_vec3_u32(global0.a.zxy, vec3<u32>(117466u, 1u, 4294967295u))) >> (~u_input.b.zzx % vec3<u32>(32u)), u_input.a), u_input.b.x, vec4<bool>(all(vec3<bool>(true, !arg_0, !arg_0)), all(vec3<bool>(global0.a.x <= 72277u, true, true)), arg_0, !any(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(~u_input.c & u_input.c, max(-u_input.e, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(13192i, u_input.c, 1i), -vec3<i32>(u_input.c, u_input.c, u_input.e))));
    var var_1 = global2[_wgslsmith_index_u32(arg_0.b, 9u)];
    var var_2 = 1i;
    global0 = global2[_wgslsmith_index_u32(~arg_0.a, 9u)];
    global1 = arg_0.c.x;
    return Struct_3(~u_input.a.x, !vec3<bool>(global0.b > -393f, arg_0.c.x, true), min(vec4<u32>(min(u_input.b.x, u_input.a.x), ~55351u, 1u, var_1.a.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 1u), global0.a.yxw), global0.a.x, u_input.b.x, global0.a.x)) | global0.a, var_1.b, global2[_wgslsmith_index_u32(0u, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(true, vec3<bool>(false, any(vec2<bool>(true, true)), !(2147483647i >= u_input.e))), vec4<bool>(false, true, false, true));
    global0 = global2[_wgslsmith_index_u32(u_input.a.x, 9u)];
    global0 = func_2(func_1(false, var_0.b));
    global1 = true;
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.c, u_input.e), firstLeadingBit(select(vec3<i32>(u_input.c, 20070i, 0i), vec3<i32>(-11721i, -1i, u_input.e), true))), max(u_input.e & _wgslsmith_add_i32(57983i, u_input.d.x), 27048i)) <= -70598i;
    let var_2 = func_4(Struct_2(~19852u, 1u, vec4<bool>(false, true, true, true)), func_1(var_0.b.x, var_0.b).c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) - 1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + -700f));
    let var_4 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.e), ~var_0.a, reverseBits(var_2.a), reverseBits(1u), ~22542u);
}

