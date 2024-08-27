struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global0 = array<vec2<bool>, 1>();
    var var_0 = ~1i;
    global0 = array<vec2<bool>, 1>();
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 4294967295u, u_input.a))), vec4<u32>(u_input.a, 36558u, 0u, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -1433f), select(select(vec4<bool>(true, true, any(global0[_wgslsmith_index_u32(12823u, 1u)]), false), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true), !vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(334f, 1269f, 570f)))) - vec3<f32>(_wgslsmith_f_op_f32(160f + 990f), _wgslsmith_f_op_f32(-263f + 1947f), -1000f))), 20373u);
    var var_2 = var_1;
    return _wgslsmith_dot_vec2_i32(min(vec2<i32>(1i << (u_input.a % 32u), min(i32(-1i) * -12285i, _wgslsmith_dot_vec3_i32(vec3<i32>(28877i, 0i, -39342i), vec3<i32>(-2147483647i, 1i, -1i)))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-49909i, -1945i), vec2<i32>(0i, 16647i)), 1i) ^ vec2<i32>(-2147483647i, 38831i >> (u_input.a % 32u))), ~(~vec2<i32>(1i, 1i)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: f32) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_i32(max(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, func_3(), _wgslsmith_mult_i32(1i, 2147483647i), _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, 11755i), -45017i))), vec4<i32>(abs(-1i), -_wgslsmith_sub_i32(-2147483647i, i32(-1i) * -1i), _wgslsmith_mod_i32(max(reverseBits(-2147483647i), func_3()), ~_wgslsmith_mult_i32(0i, 10210i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))));
    global0 = array<vec2<bool>, 1>();
    global0 = array<vec2<bool>, 1>();
    global0 = array<vec2<bool>, 1>();
    let var_1 = vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, 0u, 18431u), ~_wgslsmith_mod_u32(~countOneBits(u_input.a), _wgslsmith_mod_u32(u_input.a, ~u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, reverseBits(abs(21389u))), ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(711u, u_input.a))), abs(u_input.a));
    return Struct_3(!global0[_wgslsmith_index_u32(var_1.x, 1u)], !select(vec4<bool>(true, var_1.x != 39999u, arg_2, all(vec4<bool>(arg_2, false, false, false))), vec4<bool>(any(vec4<bool>(true, true, false, arg_2)), false, false, true), vec4<bool>(false, arg_2, true, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(f32(-1f) * -355f)))));
}

fn func_1(arg_0: f32) -> Struct_3 {
    return func_2(arg_0, arg_0, true, _wgslsmith_div_f32(1444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    global0 = array<vec2<bool>, 1>();
    var var_0 = Struct_2(Struct_1(u_input.a, 1360f, vec4<bool>(false, !(arg_1 | arg_1), false, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, 727f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-612f, 164f, arg_0.c))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, -574f, -1031f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, arg_0.c)))), arg_0.b.zzx)), u_input.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(185f, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-175f, 1134f)) + _wgslsmith_f_op_f32(-274f + arg_0.c))).c, var_0.a.b, -1372f)));
    var_0 = Struct_2(Struct_1(select(41263u, 0u, !arg_0.a.x) ^ (u_input.a ^ ~86839u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-799f, var_1.x) + _wgslsmith_f_op_f32(abs(var_0.a.b))))), arg_0.b, var_1.yzz, ~(1u << ((u_input.a << (u_input.a % 32u)) % 32u))));
    var_0 = Struct_2(var_0.a);
    return var_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    let var_0 = select(arg_0.c.zzy, arg_0.c.wzx, select(vec3<bool>(!(false && arg_0.c.x), true, arg_0.c.x), vec3<bool>(any(select(arg_0.c.wwy, vec3<bool>(true, false, arg_0.c.x), false)), -arg_1 == (i32(-1i) * -12034i), false), false));
    let var_1 = false;
    global0 = array<vec2<bool>, 1>();
    let var_2 = true;
    var var_3 = min(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(71558u, arg_0.e), vec2<u32>(10083u, arg_0.e)), _wgslsmith_dot_vec4_u32(vec4<u32>(13228u, arg_0.a, 70769u, u_input.a), vec4<u32>(u_input.a, arg_0.a, 1u, 4294967295u)), 1u, u_input.a) & firstTrailingBit(~vec4<u32>(0u, 4294967295u, 10374u, u_input.a)), countOneBits(~vec4<u32>(u_input.a, arg_0.e, arg_0.a, 1u))));
    return max(reverseBits(abs(vec3<u32>(u_input.a, 4294967295u, 29750u))) << (~vec3<u32>(u_input.a << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e, u_input.a, arg_0.e), vec3<u32>(45420u, 1u, arg_0.a)), u_input.a) % vec3<u32>(32u)), ~max(min(vec3<u32>(6589u, 4294967295u, u_input.a) >> (vec3<u32>(0u, u_input.a, 54625u) % vec3<u32>(32u)), ~vec3<u32>(arg_0.a, 1u, 4294967295u)), abs(~vec3<u32>(59968u, u_input.a, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~9893u, u_input.a, u_input.a | _wgslsmith_mult_u32(u_input.a, 4294967295u)), min(~_wgslsmith_add_vec3_u32(vec3<u32>(97663u, 4294967295u, u_input.a), vec3<u32>(42536u, u_input.a, 9381u)), ~countOneBits(vec3<u32>(u_input.a, 1u, u_input.a)))) | func_5(func_4(func_1(400f), true), _wgslsmith_mult_i32(-12306i << (0u % 32u), 1i));
    var var_1 = select(select(!func_2(1f, -488f, true, 1f).b, !vec4<bool>(false, 2319u >= var_0.x, all(vec4<bool>(false, true, true, false)), all(global0[_wgslsmith_index_u32(4294967295u, 1u)])), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-223f - 1663f) + _wgslsmith_f_op_f32(f32(-1f) * -339f))).b), select(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1093f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(904f * 719f) + 1000f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1498f)))).b, vec4<bool>(true, any(global0[_wgslsmith_index_u32(u_input.a, 1u)]) & true, true, func_2(1000f, -2376f, true, -362f).b.x | (u_input.a >= 57213u)), vec4<bool>(_wgslsmith_f_op_f32(sign(-171f)) != _wgslsmith_f_op_f32(313f + 695f), !any(vec2<bool>(true, false)), func_4(func_2(470f, -961f, true, -502f), func_1(-618f).a.x).c.x, true)), true);
    global0 = array<vec2<bool>, 1>();
    let var_2 = Struct_2(func_4(Struct_3(!func_2(1487f, -754f, var_1.x, 347f).a, !vec4<bool>(false, var_1.x, false, var_1.x), _wgslsmith_f_op_f32(496f * 475f)), true));
    var var_3 = Struct_3(!(!var_1.xz), !vec4<bool>(true, !(true && var_1.x), !var_1.x, false), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1478f - 1365f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(952f)))))))));
    var var_4 = var_3.c;
    global0 = array<vec2<bool>, 1>();
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~(~(~_wgslsmith_sub_u32(u_input.a, 4294967295u))), vec4<u32>(max(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, 35165u, var_5.a.a), vec4<u32>(35256u, var_0.x, u_input.a, 0u), vec4<u32>(var_2.a.a, 0u, u_input.a, u_input.a)), firstTrailingBit(vec4<u32>(52937u, var_2.a.a, 72067u, u_input.a))), 1u), u_input.a >> (var_5.a.a % 32u), u_input.a, 17120u), ~firstTrailingBit(~_wgslsmith_div_u32(101374u, var_0.x)), var_0.x);
}

