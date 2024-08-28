struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_4(false, select(!select(select(vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(35820u, 4u)], false), select(vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(4294967295u, 4u)], vec4<bool>(false, false, true, true)), true), select(!global0[_wgslsmith_index_u32(1u, 4u)], select(select(global0[_wgslsmith_index_u32(1u, 4u)], vec4<bool>(true, false, true, false), true), global0[_wgslsmith_index_u32(~12464u, 4u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 4u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(21998i, u_input.b, u_input.b), vec3<i32>(6230i, u_input.a, -10798i)) != _wgslsmith_add_i32(u_input.a, -50072i)), vec4<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), true)), 1651f);
    let var_1 = vec2<i32>(-u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.a, 38622i, 2147483647i)) ^ _wgslsmith_mult_i32(-1i, u_input.b)) << (abs(~vec2<u32>(~1u, countOneBits(51033u))) % vec2<u32>(32u));
    let var_2 = countOneBits(min(_wgslsmith_mult_vec3_i32(-(vec3<i32>(13961i, -2147483647i, 17093i) ^ vec3<i32>(var_1.x, -35773i, 2147483647i)), vec3<i32>(~var_1.x, ~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 17702i), vec2<i32>(u_input.a, -6545i)))), ~(-vec3<i32>(var_1.x, var_1.x, u_input.a))));
    var var_3 = 1u;
    return !var_0.a | var_0.b.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global0 = array<vec4<bool>, 4>();
    global0 = array<vec4<bool>, 4>();
    let var_0 = reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.b, -18339i)), -(vec2<i32>(22693i, u_input.a) >> (vec2<u32>(arg_0.x, 975u) % vec2<u32>(32u)))), max(reverseBits(_wgslsmith_add_i32(u_input.a, u_input.b)), u_input.a), 0i));
    global0 = array<vec4<bool>, 4>();
    var var_1 = abs(~_wgslsmith_sub_u32(84677u, _wgslsmith_add_u32(arg_0.x, ~arg_0.x)));
    return Struct_4(func_3(), global0[_wgslsmith_index_u32(~(~7345u), 4u)], _wgslsmith_f_op_f32(max(-831f, _wgslsmith_f_op_f32(f32(-1f) * -2152f))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global1 = array<Struct_1, 21>();
    var var_0 = func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(reverseBits(1u), _wgslsmith_add_u32(0u, 4294967295u)), 1u, reverseBits(~19938u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), select(~vec3<u32>(6539u, 2420u, 472u), vec3<u32>(41344u, 64390u, 0u), vec3<bool>(true, true, true)))));
    var_0 = func_2(vec3<u32>(1u, 1u, 1u));
    var var_1 = func_2(vec3<u32>(4294967295u, ~_wgslsmith_mod_u32(4294967295u, 90624u), abs(abs(10014u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u)))));
    global1 = array<Struct_1, 21>();
    return Struct_2(0u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_1.c), vec3<f32>(-1863f, 215f, 718f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_0.c, var_1.c), vec3<f32>(arg_0, var_1.c, var_0.c)))))), all(select(select(!var_1.b, select(var_1.b, vec4<bool>(false, true, var_1.a, false), global0[_wgslsmith_index_u32(1u, 4u)]), select(true, var_0.b.x, true)), var_1.b, !var_0.b)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(5595u, 4294967295u, 0u, 4294967295u)), vec4<u32>(0u, 1u, ~71772u, 1u)), ~firstLeadingBit(countOneBits(22144u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    let var_0 = vec2<bool>(true, true);
    let var_1 = vec2<bool>(all(vec2<bool>(arg_0.c, true)), select((~33133i == u_input.a) != arg_0.c, all(vec4<bool>(false, arg_0.c, !var_0.x, !var_0.x)), false));
    global0 = array<vec4<bool>, 4>();
    global0 = array<vec4<bool>, 4>();
    let var_2 = func_2(abs(~(~select(arg_1, arg_1, true))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 4>();
    let var_0 = 12878i;
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, ~u_input.b), vec2<i32>(~(-3692i), -26857i)), var_0);
    var var_2 = !select(!vec2<bool>(select(true, true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, false, false))), vec2<bool>(func_4(func_1(-1569f), select(vec3<u32>(0u, 4294967295u, 9346u), vec3<u32>(77427u, 23215u, 4294967295u), false)), select(all(vec4<bool>(false, false, true, true)), false, true)));
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 82531u, 0u, 1u)), 100714u, _wgslsmith_div_u32(1u, 21420u)), ~vec4<u32>(1u, 1u, 1u, 1u));
    global1 = array<Struct_1, 21>();
    var_2 = func_2(select(var_3.xwz, var_3.zxy, var_2.x)).b.zx;
    var_2 = select(vec2<bool>(false | !all(vec3<bool>(false, var_2.x, var_2.x)), func_2(select(~var_3.xzx, var_3.zyw ^ var_3.yzy, select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), false))).b.x), select(select(select(select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, false), false), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x)), !vec2<bool>(var_2.x, var_2.x)), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true)), !(!vec2<bool>(var_2.x, var_2.x)), !(!(!vec2<bool>(var_2.x, true)))), select(func_2(var_3.www ^ vec3<u32>(21232u, var_3.x, var_3.x)).b.yy, select(vec2<bool>(select(true, false, var_2.x), false | var_2.x), select(vec2<bool>(true, var_2.x), !vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, true)), vec2<bool>(true, true)), var_2.x));
    var_2 = !vec2<bool>(!func_1(_wgslsmith_f_op_f32(f32(-1f) * -1059f)).c, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-723f, -1999f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1000f, 390f))))), 191f));
}

