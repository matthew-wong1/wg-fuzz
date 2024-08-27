struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
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

var<private> global0: i32;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(0u, 0u, 16801u)), Struct_1(vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(0u, 24496u, 62374u)), Struct_1(vec3<u32>(8439u, 0u, 82149u)), Struct_1(vec3<u32>(23894u, 1236u, 0u)), Struct_1(vec3<u32>(5727u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(70256u, 27369u, 47392u)), Struct_1(vec3<u32>(50518u, 28438u, 15740u)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec3<u32>(103938u, 1u, 20374u)), Struct_1(vec3<u32>(9680u, 0u, 42290u)), Struct_1(vec3<u32>(181u, 1u, 20276u)), Struct_1(vec3<u32>(53927u, 44356u, 39029u)), Struct_1(vec3<u32>(4294967295u, 37283u, 0u)), Struct_1(vec3<u32>(2259u, 21557u, 0u)), Struct_1(vec3<u32>(1u, 16384u, 4294967295u)), Struct_1(vec3<u32>(4470u, 1u, 14407u)), Struct_1(vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(1u, 1u, 6661u)), Struct_1(vec3<u32>(22290u, 4294967295u, 0u)), Struct_1(vec3<u32>(46497u, 9881u, 22869u)), Struct_1(vec3<u32>(9171u, 1u, 5026u)), Struct_1(vec3<u32>(1u, 53069u, 48292u)), Struct_1(vec3<u32>(1u, 0u, 41047u)), Struct_1(vec3<u32>(78525u, 83547u, 6431u)), Struct_1(vec3<u32>(4294967295u, 1u, 72103u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 67945u)), Struct_1(vec3<u32>(36112u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(1u, 0u, 2615u)));

var<private> global2: array<i32, 31> = array<i32, 31>(-1i, -6683i, -3i, 1i, 1i, 21248i, 18578i, -33117i, 0i, 13085i, -52328i, 0i, 23329i, 49493i, -29526i, 471i, 7023i, -1i, 21866i, -22701i, i32(-2147483648), -19003i, -6081i, 1i, 24066i, 12637i, 2147483647i, 2147483647i, 7815i, -703i, -1i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<i32>) -> vec4<u32> {
    global2 = array<i32, 31>();
    var var_0 = _wgslsmith_add_i32(-5610i, max(1i >> (_wgslsmith_add_u32(~arg_0.x, 4294967295u >> (arg_0.x % 32u)) % 32u), -min(global2[_wgslsmith_index_u32(0u, 31u)], arg_2.x)));
    let var_1 = arg_2;
    global2 = array<i32, 31>();
    let var_2 = -firstTrailingBit(var_1.x);
    return vec4<u32>(21657u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, arg_1, 1u), arg_0.x << (arg_1 % 32u)), arg_1, ~_wgslsmith_div_u32(min(arg_0.x, 114202u), 31121u)) & vec4<u32>(_wgslsmith_div_u32(arg_0.x, arg_1 >> (~61164u % 32u)), _wgslsmith_div_u32(u_input.a, 4294967295u), 48853u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26412u, arg_1), vec2<u32>(4294967295u, 0u)), abs(4294967295u)) << (_wgslsmith_clamp_u32(select(68497u, arg_0.x, false), ~14354u, u_input.a) % 32u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    global0 = -1i;
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b, -617f), _wgslsmith_f_op_f32(trunc(1000f)))), arg_1.b));
    var var_1 = Struct_3(Struct_2(arg_0, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1.a, ~arg_1.a), 31u)], global2[_wgslsmith_index_u32(43046u, 31u)])), Struct_1(arg_0.a));
    var var_2 = all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), false), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(true, any(vec4<bool>(false, false, true, true)))), vec2<bool>(!(-31066i >= var_1.a.b), ~u_input.a > ~1663u)));
    let var_3 = vec3<bool>(all(!vec2<bool>(true, arg_1.a.x >= 75836u)), false, true);
    return min(abs(arg_1.a.x), 4294967295u);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_5(Struct_4(func_1(vec2<u32>(u_input.a, func_3(arg_1, Struct_4(vec4<u32>(11061u, arg_1.a.x, u_input.a, 21958u), -865f))), arg_1.a.x, vec3<i32>(arg_2.b, firstTrailingBit(global2[_wgslsmith_index_u32(arg_2.a.a.x, 31u)]), abs(64743i))), 1f), ~_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(abs(-8194i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(arg_1.a.x, 31u)], arg_3))), Struct_4(~_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.a.x, 0u, 45822u, 1u), ~vec4<u32>(16335u, arg_1.a.x, arg_1.a.x, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -2684f)), -1i >> (arg_2.a.a.x % 32u));
    let var_1 = 4294967295u;
    let var_2 = any(vec4<bool>(arg_0, any(!select(vec2<bool>(true, false), vec2<bool>(false, arg_0), vec2<bool>(false, arg_0))), arg_0, !any(select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), arg_0))));
    let var_3 = -2188f;
    let var_4 = 15949u;
    return Struct_3(arg_2, global1[_wgslsmith_index_u32(var_0.c.a.x, 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global1 = array<Struct_1, 31>();
    let var_1 = ~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(global2[_wgslsmith_index_u32(34351u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], 1i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(10006i, global2[_wgslsmith_index_u32(25446u, 31u)], -39039i), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(18517u, 31u)], global2[_wgslsmith_index_u32(u_input.a, 31u)])), ~(-vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], -1i, 35170i))), -max(_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(var_0, 31u)], global2[_wgslsmith_index_u32(4598u, 31u)]), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 31u)], 2147483647i, global2[_wgslsmith_index_u32(u_input.a, 31u)])), vec3<i32>(global2[_wgslsmith_index_u32(20063u, 31u)], global2[_wgslsmith_index_u32(u_input.a, 31u)], 7257i)));
    global0 = var_1.x;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0, 46023u), _wgslsmith_clamp_u32(var_0, ~var_0 >> (27951u % 32u), 6019u));
    var_2 = _wgslsmith_sub_u32(var_0, u_input.a);
    var_2 = u_input.a;
    global0 = 1i;
    let var_3 = func_2(all(vec3<bool>(any(vec4<bool>(true, false, false, false)) | (0u > u_input.a), any(vec4<bool>(false, false, false, true)), true)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0, var_0, 0u), vec4<u32>(u_input.a, var_0, 5245u, 1u)), func_1(vec2<u32>(35858u, var_0), var_0, vec3<i32>(1i, global2[_wgslsmith_index_u32(var_0, 31u)], -1i))), vec4<u32>(var_0, ~1u, firstLeadingBit(u_input.a), 4294967295u)), u_input.a), 31u)], Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, 0u >> (0u % 32u))), -var_1.x), firstTrailingBit(var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(181f + -740f), _wgslsmith_f_op_f32(abs(-269f))), -114f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1016f, -431f) * vec2<f32>(603f, -1000f))) - vec2<f32>(_wgslsmith_div_f32(-1226f, -398f), _wgslsmith_f_op_f32(f32(-1f) * -639f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-865f, 599f)) - _wgslsmith_f_op_f32(max(-396f, _wgslsmith_f_op_f32(-220f + 1000f))))), _wgslsmith_div_u32(_wgslsmith_mod_u32(~11904u, 15303u | _wgslsmith_mod_u32(u_input.a, 0u)), ~0u), firstTrailingBit(var_3.b.a.x), 101916u);
}

