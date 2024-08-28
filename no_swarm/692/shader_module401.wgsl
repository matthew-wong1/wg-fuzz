struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12522u;

var<private> global1: array<bool, 9> = array<bool, 9>(false, true, true, false, true, true, true, true, true);

var<private> global2: i32 = 1i;

var<private> global3: Struct_2 = Struct_2(vec2<f32>(608f, 1978f), Struct_1(-435f, -602f, vec4<i32>(-28252i, 1i, 20295i, -66650i), vec2<u32>(0u, 9441u), vec2<u32>(0u, 57655u)), -629f, Struct_1(-1635f, 1094f, vec4<i32>(11168i, 32558i, 32775i, 0i), vec2<u32>(21764u, 1u), vec2<u32>(1u, 96225u)), Struct_1(1139f, -1840f, vec4<i32>(i32(-2147483648), 31777i, 26529i, -7032i), vec2<u32>(0u, 0u), vec2<u32>(17788u, 0u)));

var<private> global4: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: i32) -> u32 {
    var var_0 = global3.b.e.x;
    var var_1 = 577u << (_wgslsmith_mult_u32(44407u, global3.d.e.x) % 32u);
    global1 = array<bool, 9>();
    let var_2 = vec4<bool>(_wgslsmith_sub_i32(arg_0.x, ~(i32(-1i) * -3605i)) > 48455i, ~u_input.a > -40266i, true, false);
    var var_3 = all(select(select(vec3<bool>(false, all(var_2.xy), true), !select(var_2.zyx, vec3<bool>(arg_2.b.x, true, true), vec3<bool>(false, var_2.x, false)), arg_2.b), select(select(var_2.yzw, var_2.wyx, vec3<bool>(global1[_wgslsmith_index_u32(67555u, 9u)], arg_2.b.x, global1[_wgslsmith_index_u32(global3.d.d.x, 9u)])), var_2.zzx, all(!var_2)), !vec3<bool>(arg_2.b.x, true, true)));
    return _wgslsmith_clamp_u32(abs(global3.d.d.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(25923u ^ global3.d.e.x, global3.b.e.x, 0u, abs(global3.b.d.x)), vec4<u32>(0u, ~129883u, _wgslsmith_div_u32(48242u, global3.b.e.x), firstLeadingBit(global3.e.d.x))), 1u), ~11036u);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    global3 = Struct_2(global3.a, global3.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f * global3.b.b) * _wgslsmith_f_op_f32(min(108f, global3.a.x))), arg_0.x)), global3.e, Struct_1(352f, arg_0.x, global3.e.c, vec2<u32>(~(arg_1 | global3.d.e.x), ~4294967295u), vec2<u32>(func_3(-vec4<i32>(11107i, u_input.a, -8520i, -3911i), global3.d.c, Struct_3(911f, vec3<bool>(true, false, false)), global3.e.c.x << (arg_1 % 32u)), global3.d.d.x)));
    var var_0 = ~43473u;
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), _wgslsmith_f_op_f32(f32(-1f) * -372f)))), global3.e, 580f, Struct_1(global3.b.a, 1000f, _wgslsmith_mod_vec4_i32(global3.e.c, global3.e.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_2.x, arg_2.x, 4294967295u), vec4<u32>(29630u, global3.d.e.x, 16990u, global3.b.e.x)) % vec4<u32>(32u)), vec2<u32>(arg_1, arg_1), vec2<u32>(_wgslsmith_add_u32(arg_1, 4294967295u), abs(global3.d.d.x))), global3.d), global1[_wgslsmith_index_u32(abs(~global3.d.d.x) >> (global3.d.e.x % 32u), 9u)], 1u, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, global3.b.b)) + _wgslsmith_f_op_vec2_f32(-arg_0.yy)), global3.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global3.e.b)))), global3.e, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * 1462f))), arg_0.x, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 0i, -2147483647i, u_input.a) >> (vec4<u32>(1u, arg_1, 84477u, arg_2.x) % vec4<u32>(32u)), global3.e.c | global3.e.c), ~(global3.e.d >> (vec2<u32>(arg_2.x, global3.d.e.x) % vec2<u32>(32u))), vec2<u32>(arg_2.x, arg_1))), true);
    global2 = countOneBits(abs(max(reverseBits(i32(-1i) * -2147483647i), -2147483647i << (global3.b.d.x % 32u))));
    var var_2 = vec4<u32>(global3.e.d.x, ~0u, select(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.b.e.x, arg_1, var_1.d.d.d.x), vec3<u32>(global3.e.e.x, arg_1, var_1.a.d.d.x))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, var_1.d.d.d.x, 4294967295u, 43154u) >> (vec4<u32>(10927u, 59831u, var_1.a.e.e.x, global3.e.d.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 26709u, arg_1, arg_2.x), vec4<u32>(78677u, 0u, 1u, 94424u)), vec4<u32>(4294967295u, arg_2.x, arg_1, 1u))), var_1.b), countOneBits(~_wgslsmith_add_u32(firstTrailingBit(46867u), 24384u)));
    return Struct_1(393f, global3.c, firstTrailingBit(vec4<i32>(max(var_1.d.b.c.x, -35135i), _wgslsmith_div_i32(u_input.a, -34979i), ~var_1.a.e.c.x, ~49728i) >> ((~vec4<u32>(4294967295u, 28949u, global3.e.d.x, arg_2.x) << (~vec4<u32>(35382u, 58268u, 4294967295u, arg_2.x) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_2, ~(~(~(~vec2<u32>(25201u, 34231u)))));
}

fn func_1() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1349f, _wgslsmith_f_op_f32(step(global3.b.b, -1153f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.a) * global3.d.b)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.d.a, global3.d.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, -1000f)), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(global3.e.e.x, 9u)]), vec2<bool>(global1[_wgslsmith_index_u32(global3.d.d.x, 9u)], global1[_wgslsmith_index_u32(global3.d.e.x, 9u)]), vec2<bool>(global1[_wgslsmith_index_u32(global3.d.d.x, 9u)], false)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global3.a)), _wgslsmith_f_op_vec2_f32(sign(global3.a))))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a.x, 481f, -1000f), vec3<f32>(global3.a.x, -720f, 1182f), vec3<bool>(global1[_wgslsmith_index_u32(global3.b.e.x, 9u)], global1[_wgslsmith_index_u32(global3.d.d.x, 9u)], false))) + vec3<f32>(741f, _wgslsmith_f_op_f32(-global3.d.b), _wgslsmith_div_f32(global3.b.a, global3.c))), ~(~firstTrailingBit(132781u)), vec2<u32>(15486u, ~_wgslsmith_sub_u32(0u, global3.e.d.x))), _wgslsmith_f_op_f32(max(global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-456f)), global3.b.a) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -322f)))))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(228f, 1000f)), 191f)), 788f, vec4<i32>(~firstTrailingBit(u_input.a), -(~(-29901i)), abs(u_input.a), 9157i), select(vec2<u32>(firstLeadingBit(global3.e.e.x), ~32382u), ~abs(global3.b.d), 566f != global3.c), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(17661u, global3.e.e.x), vec2<u32>(1u, global3.e.e.x))) & global3.b.d), Struct_1(global3.c, global3.a.x, global3.d.c, global3.d.e, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global3.d.e.x, global3.d.d.x), global3.d.e), ~(~global3.b.d))));
    global1 = array<bool, 9>();
    var var_1 = _wgslsmith_mod_u32(~(~func_3(vec4<i32>(u_input.a, u_input.a, -43464i, var_0.b.c.x), global3.e.c, Struct_3(global3.c, vec3<bool>(global1[_wgslsmith_index_u32(global3.d.d.x, 9u)], global1[_wgslsmith_index_u32(global3.d.d.x, 9u)], true)), u_input.a)), global3.b.e.x);
    let var_2 = _wgslsmith_clamp_vec2_u32(global3.e.d, vec2<u32>(_wgslsmith_sub_u32(var_0.d.e.x, global3.b.e.x), _wgslsmith_mod_u32(var_0.b.d.x, max(~global3.d.e.x, _wgslsmith_sub_u32(40865u, 5985u)))), ~var_0.e.d);
    var var_3 = vec4<bool>(all(vec4<bool>(!(global3.c > global3.b.a), (global3.e.c.x ^ -23738i) >= _wgslsmith_clamp_i32(-17437i, 2147483647i, var_0.e.c.x), any(!vec2<bool>(global1[_wgslsmith_index_u32(20925u, 9u)], global1[_wgslsmith_index_u32(2224u, 9u)])), !any(vec2<bool>(global1[_wgslsmith_index_u32(global3.d.d.x, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)])))), !global1[_wgslsmith_index_u32(reverseBits(select(1u, var_0.e.e.x, global1[_wgslsmith_index_u32(14041u, 9u)] | false)), 9u)], !any(vec3<bool>(true, -739f < global3.b.b, all(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 9u)], true, global1[_wgslsmith_index_u32(var_2.x, 9u)])))), true);
    return ~var_0.e.e.x > select(~1u, 1u, global1[_wgslsmith_index_u32(var_0.d.d.x, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(699f - global3.c);
    var var_1 = u_input.a;
    global0 = ~(~global3.b.d.x);
    let var_2 = func_1();
    global0 = 14433u;
    let var_3 = u_input.a;
    global4 = global1[_wgslsmith_index_u32(4294967295u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(min(abs(vec3<u32>(global3.b.e.x, global3.d.d.x, 51476u)) | (vec3<u32>(1u, global3.e.e.x, global3.b.d.x) | vec3<u32>(45703u, 10551u, global3.d.d.x)), select(~vec3<u32>(63586u, global3.b.d.x, 53092u), ~vec3<u32>(0u, 1u, global3.d.d.x), vec3<bool>(true, false, false))), ~abs(vec3<u32>(global3.e.d.x, global3.d.e.x, global3.e.e.x)) | vec3<u32>(firstTrailingBit(7587u), 21552u << (global3.b.d.x % 32u), ~91529u)), min(countOneBits(~reverseBits(global3.d.c)), func_2(vec3<f32>(-205f, _wgslsmith_f_op_f32(min(-723f, global3.a.x)), _wgslsmith_f_op_f32(global3.c * global3.c)), 1u, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(6876u, 46584u), vec2<u32>(47423u, 53801u)), _wgslsmith_mod_vec2_u32(global3.e.e, global3.e.d), vec2<u32>(global3.d.d.x, 43911u))).c), _wgslsmith_mod_vec3_i32(~global3.b.c.wxz << (select(firstTrailingBit(vec3<u32>(global3.e.e.x, 6384u, global3.e.d.x)), vec3<u32>(4806u, 117539u, global3.d.e.x) >> (vec3<u32>(global3.e.e.x, 75667u, global3.d.e.x) % vec3<u32>(32u)), !global1[_wgslsmith_index_u32(40733u, 9u)]) % vec3<u32>(32u)), vec3<i32>(select(-1i, _wgslsmith_mult_i32(var_3, var_3), true), 13114i, global3.b.c.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(global3.a, _wgslsmith_f_op_vec2_f32(global3.a * _wgslsmith_f_op_vec2_f32(global3.a + vec2<f32>(1379f, global3.a.x))))), global3.a, false)), global3.d.d.x);
}

