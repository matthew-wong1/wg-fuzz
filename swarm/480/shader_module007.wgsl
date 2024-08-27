struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(468f, -335f, 490f), vec3<f32>(-397f, -934f, 1366f), vec3<f32>(-161f, -627f, 241f), vec3<f32>(543f, 1569f, 1503f), vec3<f32>(1000f, 1165f, 385f), vec3<f32>(-1215f, 1000f, 1000f), vec3<f32>(-1162f, 1000f, -1000f), vec3<f32>(-988f, -430f, -1730f), vec3<f32>(1076f, 709f, 2162f));

var<private> global2: array<Struct_2, 4>;

var<private> global3: vec3<u32>;

var<private> global4: array<i32, 14> = array<i32, 14>(i32(-2147483648), 1i, 29834i, 1i, 8686i, -31836i, 35588i, i32(-2147483648), 48872i, -18643i, -55084i, -1i, 7480i, -56334i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(select(any(!select(vec4<bool>(false, false, arg_2.a, true), vec4<bool>(arg_3.a.a, true, arg_3.a.a, true), arg_3.a.a)), all(vec4<bool>(false, arg_2.a, true, true)) && all(select(vec2<bool>(true, arg_3.a.a), vec2<bool>(true, false), vec2<bool>(arg_2.a, true))), arg_3.a.a), vec4<i32>(-arg_3.a.b.x << (u_input.a.x % 32u), 94297i, -arg_2.c & arg_3.a.d.x, arg_3.a.b.x), 1i, -max(arg_2.d, vec2<i32>(global4[_wgslsmith_index_u32(max(global3.x, u_input.a.x), 14u)], 1i)));
    global3 = select(~(~vec3<u32>(~u_input.a.x, u_input.a.x, 4294967295u)), u_input.a.xzz, false);
    let var_1 = u_input.a.ywy;
    let var_2 = arg_3.a;
    let var_3 = any(!select(select(!vec2<bool>(false, var_0.a), !vec2<bool>(var_2.a, true), arg_2.a && arg_2.a), !select(vec2<bool>(false, arg_2.a), vec2<bool>(var_0.a, var_2.a), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, arg_3.a.a))));
    return arg_3.a.b.x;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = ~u_input.a;
    var var_1 = -select(arg_0.d.a.b, _wgslsmith_div_vec4_i32(vec4<i32>(5902i, arg_0.b, -1i, func_3(vec3<f32>(744f, -467f, 1086f), -1232f, arg_0.d.a, Struct_2(arg_0.d.a))), select(arg_0.d.a.b, -vec4<i32>(16336i, global4[_wgslsmith_index_u32(2588u, 14u)], arg_0.d.a.d.x, global4[_wgslsmith_index_u32(arg_0.c.x, 14u)]), !arg_0.d.a.a)), !select(select(vec4<bool>(arg_0.d.a.a, arg_0.d.a.a, arg_0.d.a.a, arg_0.d.a.a), vec4<bool>(arg_0.d.a.a, arg_0.d.a.a, false, arg_0.d.a.a), vec4<bool>(arg_0.d.a.a, arg_0.d.a.a, arg_0.d.a.a, arg_0.d.a.a)), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0.d.a.a, false, arg_0.d.a.a, arg_0.d.a.a), vec4<bool>(arg_0.d.a.a, true, false, false)), vec4<bool>(arg_0.d.a.a, true, false, true)));
    let var_2 = global2[_wgslsmith_index_u32(~4294967295u, 4u)];
    global3 = u_input.a.yzy;
    let var_3 = vec4<bool>(var_2.a.a, all(vec2<bool>(any(select(vec4<bool>(true, true, false, var_2.a.a), vec4<bool>(var_2.a.a, arg_0.d.a.a, true, var_2.a.a), true)), !(arg_0.d.a.a && false))), var_2.a.a, var_2.a.a);
    return arg_0.d.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_3 {
    global3 = _wgslsmith_mult_vec3_u32(vec3<u32>(26881u, _wgslsmith_add_u32(~reverseBits(7239u), _wgslsmith_dot_vec2_u32(u_input.a.yz & u_input.a.wz, firstLeadingBit(vec2<u32>(u_input.a.x, 36257u)))), u_input.a.x), vec3<u32>(min(~u_input.a.x, u_input.a.x | 1u), ~22028u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, 3221u), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a))) ^ min(~(u_input.a.xxw & vec3<u32>(22076u, 27236u, 0u)), abs(firstTrailingBit(u_input.a.xzz))));
    let var_0 = Struct_1(arg_0.a, abs(vec4<i32>(func_2(Struct_3(global4[_wgslsmith_index_u32(61223u, 14u)], -64276i, global3.zy, global2[_wgslsmith_index_u32(u_input.a.x, 4u)])).b.x, 0i, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), ~global3.x), 14u)], firstLeadingBit(arg_0.c))), _wgslsmith_clamp_i32(-23972i, arg_0.c, i32(-1i) * -_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(51064u, 14u)], -1i, arg_0.b.x)), ~arg_0.d);
    var var_1 = 2147483647i;
    var var_2 = vec4<u32>(min(countOneBits(~1u), 0u), ~(global3.x ^ (abs(u_input.a.x) >> (~global3.x % 32u))), 18291u, _wgslsmith_mult_u32(0u, reverseBits(~reverseBits(20470u))));
    var var_3 = Struct_3(_wgslsmith_clamp_i32(~(_wgslsmith_div_i32(arg_0.c, global4[_wgslsmith_index_u32(0u, 14u)]) << ((u_input.a.x & 10110u) % 32u)), var_0.d.x, -23391i >> ((var_2.x & ~4294967295u) % 32u)), 1i, global3.yz, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.a.wx), global3.x)), 4u)]);
    return Struct_3(-37987i, _wgslsmith_mult_i32(countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(var_3.b, 2147483647i, 51689i, -8677i)), reverseBits(var_0.b.x))), var_3.b), var_2.zz, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~min(1u, 0u), ~(~var_3.c.x)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, var_3.c.x) >> (u_input.a.wy % vec2<u32>(32u)), ~global3.xy, select(vec2<bool>(true, arg_2), vec2<bool>(false, arg_0.a), vec2<bool>(true, true))), ~_wgslsmith_clamp_vec2_u32(var_3.c, global3.xx, vec2<u32>(1u, global3.x))), 34617u), 4u)]);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec3_u32(countOneBits(u_input.a.yxw), select(arg_0.zxy, ~arg_0.xyz, !vec3<bool>(arg_2.a, arg_2.a, arg_2.a)) ^ reverseBits(reverseBits(arg_0.yww << (u_input.a.ywy % vec3<u32>(32u)))));
    global2 = array<Struct_2, 4>();
    return func_4(func_2(Struct_3(i32(-1i) * -global4[_wgslsmith_index_u32(var_0.x, 14u)], -22808i, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 17443u), global3.yy), global2[_wgslsmith_index_u32(~27878u, 4u)])), -1354f, !(false | all(vec2<bool>(arg_2.a, true))) && arg_2.a);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    let var_0 = min(~(-34645i | select(global4[_wgslsmith_index_u32(arg_0.c.x, 14u)] | arg_0.a, global4[_wgslsmith_index_u32(0u, 14u)], false)), select(2147483647i, global4[_wgslsmith_index_u32(u_input.a.x, 14u)], arg_0.c.x < arg_0.c.x));
    global2 = array<Struct_2, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1214f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-402f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(vec4<u32>(global3.x, 4294967295u, global3.x, 6969u), 1273f, Struct_1(false, vec4<i32>(1i, -23734i, global4[_wgslsmith_index_u32(global3.x, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)]), 5510i, vec2<i32>(-44494i, 135i))), func_2(Struct_3(global4[_wgslsmith_index_u32(32777u, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)], vec2<u32>(4294967295u, global3.x), global2[_wgslsmith_index_u32(66070u, 4u)])).a, vec2<bool>(true, false)))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 861f), -666f))) * -891f);
    var var_2 = ~(~1u);
    var_0 = 1330f;
    let var_3 = func_4(func_2(func_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(327f, 2858f))), func_4(func_2(Struct_3(global4[_wgslsmith_index_u32(global3.x, 14u)], -1i, u_input.a.yy, Struct_2(Struct_1(true, vec4<i32>(4733i, global4[_wgslsmith_index_u32(global3.x, 14u)], -3880i, 45266i), 63652i, vec2<i32>(-1i, global4[_wgslsmith_index_u32(global3.x, 14u)]))))), _wgslsmith_f_op_f32(f32(-1f) * -1250f), 0i == global4[_wgslsmith_index_u32(0u, 14u)]).d.a)), _wgslsmith_f_op_f32(func_5(Struct_3(func_1(vec4<u32>(0u, 7113u, 0u, global3.x) ^ u_input.a, _wgslsmith_div_f32(-783f, 520f), func_2(Struct_3(global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global4[_wgslsmith_index_u32(u_input.a.x, 14u)], vec2<u32>(global3.x, global3.x), global2[_wgslsmith_index_u32(0u, 4u)]))).a, global4[_wgslsmith_index_u32(21814u, 14u)], u_input.a.yz, global2[_wgslsmith_index_u32(0u, 4u)]), func_2(Struct_3(countOneBits(-8744i), func_1(u_input.a, -663f, Struct_1(true, vec4<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 14u)], global4[_wgslsmith_index_u32(1u, 14u)], 2147483647i, 0i), 1i, vec2<i32>(global4[_wgslsmith_index_u32(global3.x, 14u)], global4[_wgslsmith_index_u32(0u, 14u)]))).d.a.d.x, select(u_input.a.zx, vec2<u32>(u_input.a.x, u_input.a.x), false), global2[_wgslsmith_index_u32(reverseBits(global3.x), 4u)])).a, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(ceil(-962f)) >= -928f).d.a.a;
    var var_4 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(max(vec3<u32>(u_input.a.x, 81504u, 0u) | u_input.a.xxy, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 2057u, global3.x), vec3<u32>(u_input.a.x, 1u, u_input.a.x)))), u_input.a.yzz), 4u)];
    let var_5 = _wgslsmith_f_op_f32(1805f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1068f - 255f) + 1f))));
    let var_6 = 45028i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(_wgslsmith_mod_u32(global3.x, func_4(var_4.a, 792f, var_3).c.x), global3.x));
}

