struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<bool, 29>;

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = ~firstLeadingBit(~(~u_input.c));
    var var_1 = Struct_2(vec3<u32>(4294967295u, abs(_wgslsmith_add_u32(~4294967295u, var_0)), ~1u), 4294967295u & _wgslsmith_sub_u32(~u_input.c, abs(1u)), Struct_1(~arg_3), arg_2);
    let var_2 = true;
    let var_3 = Struct_2(~(~min(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, 33525u, 4294967295u), vec3<u32>(4294967295u, 46252u, 4294967295u)), ~vec3<u32>(var_1.a.x, var_1.a.x, 42662u))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, ~var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.c, 6152u), vec3<u32>(37651u, 42116u, 21316u))), select(vec3<u32>(4294967295u, 82472u, var_1.a.x), firstLeadingBit(vec3<u32>(4294967295u, u_input.c, 62584u)), vec3<bool>(true, true, true))), abs(u_input.c) ^ var_1.b), Struct_1(vec3<i32>(abs(~54465i), ~u_input.a, _wgslsmith_dot_vec3_i32(arg_3, select(vec3<i32>(805i, 9885i, arg_2.a.x), global3.a, vec3<bool>(global1[_wgslsmith_index_u32(var_0, 29u)], global1[_wgslsmith_index_u32(72396u, 29u)], false))))), Struct_1(vec3<i32>(~_wgslsmith_add_i32(59204i, -17341i), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.x, 1i, arg_3.x), vec3<i32>(u_input.b.x, arg_2.a.x, -35754i)) ^ 17580i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), _wgslsmith_sub_i32(-69282i, -51946i)))));
    global0 = array<Struct_3, 9>();
    return u_input.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = Struct_2(min(~(~vec3<u32>(u_input.c, 1u, u_input.d)) >> (max(vec3<u32>(10123u, u_input.c, 31755u) ^ vec3<u32>(19263u, 49875u, 6764u), vec3<u32>(arg_1, 1u, u_input.c)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1 | 33751u, 69265u, arg_1 << (arg_1 % 32u)), min(~vec3<u32>(0u, arg_1, 4294967295u), ~vec3<u32>(u_input.c, arg_1, u_input.c)), min(~vec3<u32>(arg_1, 39023u, arg_1), ~vec3<u32>(4294967295u, 56232u, arg_1)))), arg_1, Struct_1(global3.a), Struct_1(~(-(vec3<i32>(0i, global3.a.x, u_input.b.x) & vec3<i32>(-13179i, global3.a.x, u_input.b.x)))));
    var var_1 = var_0.c;
    var var_2 = firstLeadingBit(abs(~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_0.d.a.x, global3.a.x), vec4<i32>(21093i, 2855i, var_0.c.a.x, -25256i)), abs(vec4<i32>(17703i, var_1.a.x, 57793i, 1i)))));
    var_1 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(var_2.x, -1036i), -2212i, 1i));
    var var_3 = ~var_0.a.xx >> (select(_wgslsmith_div_vec2_u32(var_0.a.zy, reverseBits(vec2<u32>(123218u, arg_1))), vec2<u32>(var_0.a.x, ~select(arg_1, 0u, false)), arg_2 && global1[_wgslsmith_index_u32(u_input.c, 29u)]) % vec2<u32>(32u));
    return abs(~countOneBits(~firstTrailingBit(u_input.d)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(23543u, func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-744f, 1000f), vec2<f32>(-969f, 1429f)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -402f), ~u_input.b.zwz, Struct_1(u_input.b.wyy), vec3<i32>(global3.a.x, 1571i, 11013i)), true == global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 29u)])), ~vec2<u32>(~u_input.d, ~1u));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-3086f, -869f, 912f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1640f, _wgslsmith_f_op_f32(trunc(1488f)), _wgslsmith_f_op_f32(f32(-1f) * -1356f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-702f)), 1195f, _wgslsmith_f_op_f32(-635f - 568f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-426f, -780f, -612f))))), select(select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], global1[_wgslsmith_index_u32(34885u, 29u)], false), true), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 29u)], false), select(vec3<bool>(true, global1[_wgslsmith_index_u32(30617u, 29u)], global1[_wgslsmith_index_u32(u_input.c, 29u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 29u)], global1[_wgslsmith_index_u32(45535u, 29u)]))), vec3<bool>(true, true, true), !select(vec3<bool>(global1[_wgslsmith_index_u32(97593u, 29u)], global1[_wgslsmith_index_u32(u_input.c, 29u)], true), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 29u)], global1[_wgslsmith_index_u32(59996u, 29u)], false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(var_0.x, 29u)], false))), vec3<bool>(global1[_wgslsmith_index_u32(42385u, 29u)], true, false), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~abs(0u)), 29u)])));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6711u, _wgslsmith_mult_u32(57578u, func_3(_wgslsmith_f_op_f32(f32(-1f) * -2200f), _wgslsmith_add_vec3_i32(u_input.b.xwx, global3.a), Struct_1(u_input.b.yyz), firstLeadingBit(u_input.b.zxz)))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(18737u, u_input.d, 1u) & vec3<u32>(109719u, u_input.c, var_0.x), ~vec3<u32>(62151u, var_0.x, 40758u)), reverseBits(vec3<u32>(min(1u, var_0.x), ~28085u, _wgslsmith_mult_u32(0u, 43674u))), ~vec3<u32>(~4294967295u, u_input.d, 40369u)));
    global1 = array<bool, 29>();
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -689f))));
    return Struct_1(global3.a);
}

fn func_1() -> bool {
    global3 = Struct_1(global3.a);
    var var_0 = Struct_3(func_2(), Struct_2(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, 1u), 0u), 1u, ~(3081u >> (u_input.c % 32u))), u_input.d, Struct_1(u_input.b.wwx), func_2()), Struct_2(~vec3<u32>(3603u, u_input.c, ~72686u), ~abs(1u), func_2(), func_2()), ~abs(max(~vec3<u32>(u_input.c, 4294967295u, 1u), ~vec3<u32>(u_input.d, u_input.d, 22977u))), select(vec3<bool>(true, select(true, global1[_wgslsmith_index_u32(u_input.c, 29u)] & false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 14206u), vec2<u32>(4294967295u, u_input.c)), 29u)]), !select(global1[_wgslsmith_index_u32(u_input.d, 29u)], global1[_wgslsmith_index_u32(83723u, 29u)], false)), !select(select(vec3<bool>(false, false, true), vec3<bool>(global1[_wgslsmith_index_u32(15122u, 29u)], false, global1[_wgslsmith_index_u32(0u, 29u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(20777u, 29u)])), select(vec3<bool>(false, false, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 29u)], false, true), false), true), any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], global1[_wgslsmith_index_u32(u_input.d, 29u)]))));
    global3 = var_0.b.c;
    global3 = Struct_1(var_0.a.a);
    let var_1 = var_0.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !func_1();
    global0 = array<Struct_3, 9>();
    global2 = global1[_wgslsmith_index_u32(u_input.c, 29u)];
    global2 = true;
    var var_0 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(580f, -511f), vec2<f32>(406f, 1442f), vec2<bool>(false, false))))))))), abs(~select(~u_input.d, u_input.d, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-368f, -180f), _wgslsmith_f_op_f32(min(450f, -1474f)), _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, 1147f, 1258f) * vec3<f32>(579f, 201f, -936f))), !(global1[_wgslsmith_index_u32(u_input.d, 29u)] | false)))), ~(-48822i) << (_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.c, 0u)) % 32u), ~36911u);
}

