struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true));

var<private> global3: array<bool, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_4(arg_2, Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -737f, 972f), vec3<f32>(-1000f, -1665f, -937f))))), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(arg_0 | vec3<u32>(u_input.a, arg_2.a, arg_0.x), ~arg_0)) ^ ((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 17232u, u_input.a), vec4<u32>(u_input.a, 25052u, arg_2.a, 23706u)) & ~37024u) ^ (u_input.a & _wgslsmith_mult_u32(u_input.a, u_input.a))), 19u)]);
    let var_1 = 1u;
    var var_2 = var_0.b;
    global2 = array<vec4<bool>, 20>();
    global1 = array<Struct_1, 1>();
    return -1i << ((_wgslsmith_mod_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 75905u, 18706u), vec3<u32>(68151u, 42411u, arg_0.x)), 4294967295u), u_input.a) ^ firstTrailingBit(arg_2.a)) % 32u);
}

fn func_3(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u >> (u_input.a % 32u), ~u_input.a, u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, abs(u_input.a)), ~(~4294967295u))), ~vec4<u32>(4294967295u, u_input.a, u_input.a, abs(u_input.a >> (10562u % 32u))));
    let var_1 = -_wgslsmith_sub_i32(-13108i, 0i);
    global3 = array<bool, 3>();
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(55596i, ~firstTrailingBit(max(11486i, arg_0))), u_input.b);
    var_2 = u_input.b >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u), var_0.x >> (((u_input.a ^ 0u) | _wgslsmith_add_u32(u_input.a, u_input.a)) % 32u), u_input.a) % 32u);
    return Struct_1(0u, true);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = func_3(func_2(firstTrailingBit(vec3<u32>(~arg_1.a, arg_1.a & u_input.a, u_input.a)), firstLeadingBit(vec4<i32>(7538i, u_input.b, ~u_input.b, u_input.b)), Struct_1(14778u, -u_input.b < 2147483647i)));
    global3 = array<bool, 3>();
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 1u), ~arg_1.a)), 19u)], Struct_3(arg_0), func_3(_wgslsmith_mod_i32(u_input.b, 0i)));
    global3 = array<bool, 3>();
    let var_2 = Struct_4(Struct_1((arg_1.a ^ 27847u) | ~(~4294967295u), !(min(u_input.b, 11493i) == 41845i)), var_1.b, Struct_1(~reverseBits(var_0.a), arg_1.b));
    return -(max(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 2147483647i, -34872i)), -max(vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(-18888i, u_input.b, -1i))) << (~(~(~vec3<u32>(89336u, u_input.a, var_2.a.a))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, false, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f));
    global0 = array<Struct_1, 19>();
    var var_2 = max(vec3<i32>(~select(45636i, 1i, true), (u_input.b << (18862u % 32u)) >> (~u_input.a % 32u), select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 35612i), vec3<i32>(-40250i, u_input.b, 1792i)), ~u_input.b, !var_0.x)), _wgslsmith_mod_vec3_i32(func_1(vec3<f32>(-1217f, 1614f, var_1), global1[_wgslsmith_index_u32(31779u, 1u)]) & (vec3<i32>(-24658i, u_input.b, 2147483647i) >> (vec3<u32>(u_input.a, u_input.a, 14256u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(354i, u_input.b, -1i, 2147483647i), vec4<i32>(58583i, u_input.b, 68755i, 42215i)), ~(-31001i), -49634i))) & ~(~vec3<i32>(0i, u_input.b, -2147483647i));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, _wgslsmith_f_op_f32(f32(-1f) * -911f), -432f, _wgslsmith_f_op_f32(select(var_1, 269f, true)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1042f, -1869f)), var_1, _wgslsmith_f_op_f32(-var_1), -1749f)));
    global3 = array<bool, 3>();
    var var_4 = select(select(vec3<bool>(any(!vec3<bool>(false, var_0.x, global3[_wgslsmith_index_u32(u_input.a, 3u)])), true, u_input.a < u_input.a), select(select(!vec3<bool>(true, var_0.x, false), !vec3<bool>(false, global3[_wgslsmith_index_u32(110655u, 3u)], global3[_wgslsmith_index_u32(18943u, 3u)]), select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 3u)], true), global3[_wgslsmith_index_u32(u_input.a, 3u)])), vec3<bool>(true, true, true), true), vec3<bool>(var_0.x, !var_0.x, all(vec3<bool>(var_0.x, false, global3[_wgslsmith_index_u32(u_input.a, 3u)])))), !vec3<bool>(~u_input.a > ~44386u, ~u_input.a == abs(1u), all(select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 3u)], var_0.x), vec3<bool>(false, false, false), false))), false);
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.wxz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 766f, var_1, -713f)))), _wgslsmith_f_op_vec2_f32(-var_3.zx), var_2.zy & (-select(var_2.yx, var_2.zx, vec2<bool>(false, false)) << (vec2<u32>(~0u, u_input.a & 4294967295u) % vec2<u32>(32u))));
}

