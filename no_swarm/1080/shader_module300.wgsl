struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<u32>(13689u, 4294967295u), Struct_1(false, -1161f), vec2<u32>(17944u, 4294967295u), vec4<i32>(7389i, 0i, -21625i, i32(-2147483648)));

var<private> global1: vec2<i32> = vec2<i32>(16808i, 38464i);

var<private> global2: i32 = 5043i;

var<private> global3: Struct_4;

var<private> global4: array<u32, 16>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = global0.b.a;
    let var_1 = Struct_2(!select(vec3<bool>(!global3.b.a, true, true), vec3<bool>(all(vec3<bool>(global3.b.a, false, true)), global0.b.a, global1.x != global1.x), true), Struct_1(all(select(vec4<bool>(global0.b.a, true, global3.b.a, global3.b.a), !vec4<bool>(global0.b.a, global3.b.a, global3.b.a, global0.b.a), select(vec4<bool>(true, false, global0.b.a, false), vec4<bool>(false, global3.b.a, global3.b.a, global3.b.a), global3.b.a))), -1072f), all(!vec4<bool>(global3.b.a || global0.b.a, !global3.b.a, false, false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.b - var_1.b.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.b) + -312f), all(!vec2<bool>(global0.b.a, global3.b.a)))), _wgslsmith_f_op_f32(f32(-1f) * -540f), -481f) + vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.b.b)), global3.b.b, -297f));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_add_i32(56378i, -38324i), global3.d.x);
    var var_4 = Struct_3(select(vec4<bool>(select(!global0.b.a, any(vec4<bool>(false, false, false, global0.b.a)), global0.b.a), false, global0.b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global3.a.x, 16u)], u_input.e, global3.c.x), vec3<u32>(u_input.e, global0.c.x, 8865u)) != global4[_wgslsmith_index_u32(min(4294967295u, 4294967295u), 16u)]), select(vec4<bool>(true, true, true, false), !(!vec4<bool>(global0.b.a, global3.b.a, true, var_1.b.a)), 15739i == firstTrailingBit(global3.d.x)), true), Struct_1(all(var_1.a), -634f), vec3<i32>(0i, global0.d.x, select(i32(-1i) * -17595i, -global1.x, var_1.c & var_1.a.x) & abs(global3.d.x)), _wgslsmith_add_vec4_u32(select(~vec4<u32>(0u, u_input.b.x, 17780u, u_input.e) & vec4<u32>(23830u, u_input.a.x, u_input.b.x, global4[_wgslsmith_index_u32(global3.c.x, 16u)]), select(vec4<u32>(32795u, 0u, 0u, 17881u) << (vec4<u32>(8653u, global3.a.x, global4[_wgslsmith_index_u32(23031u, 16u)], global0.c.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(35626u, 1u, global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(12650u, 16u)])), global0.b.a), true), min(vec4<u32>(~global3.a.x, 38835u, 10046u, u_input.e), ~select(vec4<u32>(global0.a.x, global4[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u, global3.c.x), vec4<u32>(6106u, 0u, 59169u, global0.a.x), true))));
    return select(any(vec4<bool>(any(vec2<bool>(var_1.c, global3.b.a)), global0.b.a | true, all(var_1.a), true)), true, (global3.b.a && true) && any(!select(vec4<bool>(global0.b.a, false, var_4.a.x, var_4.a.x), var_4.a, true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: bool) -> bool {
    var var_0 = Struct_2(vec3<bool>(all(!(!vec4<bool>(false, true, arg_3, arg_3))), arg_1 <= 13108u, func_3()), Struct_1(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))), _wgslsmith_f_op_f32(exp2(global3.b.b)), global0.b.a))), global0.b.a);
    let var_1 = _wgslsmith_dot_vec2_i32(~min(-vec2<i32>(-1i, 2147483647i), vec2<i32>(30380i, global3.d.x) >> (~vec2<u32>(u_input.b.x, global4[_wgslsmith_index_u32(u_input.b.x, 16u)]) % vec2<u32>(32u))), -((min(u_input.c.xx, global3.d.yz) | (vec2<i32>(u_input.c.x, 1i) << (arg_0.xz % vec2<u32>(32u)))) & -(vec2<i32>(13541i, global3.d.x) & u_input.c.zz)));
    var var_2 = Struct_4(vec2<u32>(firstTrailingBit(reverseBits(arg_1 ^ global3.a.x)), _wgslsmith_sub_u32(1381u, 1u)), Struct_1(arg_3, _wgslsmith_f_op_f32(sign(var_0.b.b))), global3.c, global3.d);
    let var_3 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 1u), arg_1, global4[_wgslsmith_index_u32(firstTrailingBit(~arg_0.x), 16u)]), countOneBits(global4[_wgslsmith_index_u32(4294967295u, 16u)]));
    let var_4 = -20239i | var_2.d.x;
    return func_3();
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = vec4<f32>(arg_0.b.b, _wgslsmith_f_op_f32(-1255f + arg_0.b.b), global3.b.b, _wgslsmith_f_op_f32(global3.b.b - 881f));
    let var_1 = Struct_1(func_2(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, u_input.b.x, global3.c.x, 0u), vec4<u32>(global4[_wgslsmith_index_u32(global0.c.x, 16u)], global4[_wgslsmith_index_u32(arg_0.a.x, 16u)], 4294967295u, 38407u)), vec4<u32>(59318u, 5852u, global4[_wgslsmith_index_u32(u_input.e, 16u)], arg_0.c.x) | vec4<u32>(1u, 55759u, 4294967295u, 1u)), select(~vec4<u32>(global0.a.x, arg_0.c.x, u_input.b.x, 0u), vec4<u32>(11749u, u_input.e, global0.c.x, 4294967295u), arg_0.b.a)), ~1u, _wgslsmith_f_op_f32(-148f + -707f), false), global3.b.b);
    let var_2 = _wgslsmith_f_op_f32(global0.b.b - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b + 1274f))), _wgslsmith_f_op_f32(trunc(865f))))));
    var var_3 = Struct_4(~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(32472u, 1u, u_input.e), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), ~vec3<u32>(0u, 4294967295u, 49230u)), _wgslsmith_sub_u32(min(global3.a.x, global0.a.x), firstLeadingBit(23880u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-816f)) + _wgslsmith_f_op_f32(var_1.b - -1402f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1032f + var_1.b) - arg_0.b.b), _wgslsmith_f_op_f32(round(var_1.b))), ~global3.a, select(arg_0.d, ~_wgslsmith_mult_vec4_i32(vec4<i32>(global3.d.x, -483i, 45327i, global0.d.x), vec4<i32>(u_input.c.x, global0.d.x, arg_0.d.x, arg_0.d.x)) << (vec4<u32>(60643u, min(global0.c.x, arg_0.c.x), global0.a.x << (25871u % 32u), 1u) % vec4<u32>(32u)), vec4<bool>(all(!vec4<bool>(var_1.a, false, true, false)), _wgslsmith_f_op_f32(var_0.x * 821f) > _wgslsmith_f_op_f32(-686f * var_1.b), func_3(), true)));
    global2 = global0.d.x;
    return Struct_3(vec4<bool>(any(select(vec3<bool>(global0.b.a, true, var_3.b.a), vec3<bool>(false, global0.b.a, arg_0.b.a), select(vec3<bool>(false, true, global3.b.a), vec3<bool>(false, false, true), vec3<bool>(true, arg_0.b.a, global3.b.a)))), global0.b.a, false, false || all(vec4<bool>(false, arg_0.b.a, false, var_3.b.a))), global3.b, vec3<i32>(~u_input.d, ~_wgslsmith_div_i32(global1.x, -24363i), 1i), ~reverseBits(max(vec4<u32>(global0.c.x, 0u, global0.c.x, global0.a.x) | vec4<u32>(global4[_wgslsmith_index_u32(arg_0.c.x, 16u)], u_input.a.x, arg_0.a.x, 1u), select(vec4<u32>(1u, 4294967295u, 28139u, 4294967295u), vec4<u32>(31438u, 0u, 98697u, global0.c.x), true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(!(!any(vec4<bool>(arg_2, true, global0.b.a, true))), -537f);
    var var_1 = arg_1.d;
    var_0 = func_1(Struct_4(vec2<u32>(_wgslsmith_div_u32(firstLeadingBit(1u), 51082u >> (global3.a.x % 32u)), ~_wgslsmith_add_u32(74166u, 83406u)), arg_1.b, reverseBits(arg_1.d.wx), ((arg_0 << (arg_1.d % vec4<u32>(32u))) >> (~arg_1.d % vec4<u32>(32u))) | global0.d)).b;
    var var_2 = ~(global0.a.x & firstLeadingBit(_wgslsmith_sub_u32(~arg_1.d.x, global3.a.x & 1u)));
    let var_3 = arg_1;
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global0.b.a, -531f == global0.b.b);
    global0 = Struct_4(vec2<u32>(~7782u, ~(~_wgslsmith_div_u32(40595u, 17290u))), func_4(global0.d, func_1(Struct_4(firstLeadingBit(u_input.b), Struct_1(var_0.x, -261f), ~vec2<u32>(global3.a.x, 0u), -global3.d)), true), abs(global0.a), _wgslsmith_sub_vec4_i32(global0.d, global3.d));
    global3 = Struct_4(global3.c, global0.b, global3.a, abs(firstTrailingBit(global0.d)));
    var var_1 = reverseBits(_wgslsmith_mult_i32((~global1.x >> (~1u % 32u)) ^ firstLeadingBit(global1.x | 1i), min(u_input.d, 22772i)));
    let var_2 = func_1(Struct_4(u_input.a, Struct_1(global0.b.a | var_0.x, _wgslsmith_f_op_f32(floor(global0.b.b))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.c.x, global3.a.x), global0.a, vec2<u32>(u_input.b.x, u_input.a.x)), global0.c), -global0.d)).b;
    global0 = Struct_4(~vec2<u32>(58704u, abs(~u_input.a.x)), global0.b, _wgslsmith_clamp_vec2_u32(global3.a, firstLeadingBit(firstTrailingBit(u_input.b)), ~vec2<u32>(u_input.a.x, 129406u)) >> (vec2<u32>(76210u, max(abs(u_input.b.x), 1u)) % vec2<u32>(32u)), global3.d);
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1247f, _wgslsmith_f_op_f32(global0.b.b - -1170f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.b.b, 1091f, -1603f))))) + vec3<f32>(-324f, _wgslsmith_f_op_f32(abs(1040f)), -989f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.b.b, -233f, 2054f), vec3<f32>(var_2.b, 496f, var_2.b))))))), max(~u_input.a, abs(global0.c)));
}

