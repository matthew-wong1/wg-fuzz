struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true));

var<private> global1: u32;

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(275f, Struct_1(false, 4294967295u, vec3<bool>(true, true, false), true, 0u), vec3<u32>(59066u, 46201u, 0u)), Struct_3(-177f, Struct_1(true, 84543u, vec3<bool>(true, false, false), false, 23658u), vec3<u32>(0u, 66690u, 5571u)), Struct_3(-882f, Struct_1(true, 1u, vec3<bool>(false, false, false), false, 1u), vec3<u32>(4453u, 25760u, 0u)), Struct_3(-254f, Struct_1(true, 7424u, vec3<bool>(false, true, false), true, 4294967295u), vec3<u32>(1u, 1u, 0u)), Struct_3(-989f, Struct_1(true, 18241u, vec3<bool>(false, false, true), false, 21025u), vec3<u32>(1u, 2775u, 1u)), Struct_3(-890f, Struct_1(true, 1u, vec3<bool>(true, false, true), false, 0u), vec3<u32>(53570u, 11036u, 63898u)), Struct_3(-310f, Struct_1(true, 5208u, vec3<bool>(true, true, true), false, 82119u), vec3<u32>(0u, 23885u, 20530u)), Struct_3(-1000f, Struct_1(true, 4294967295u, vec3<bool>(true, false, false), false, 0u), vec3<u32>(25677u, 4294967295u, 8821u)), Struct_3(-734f, Struct_1(false, 61473u, vec3<bool>(false, false, true), true, 21923u), vec3<u32>(44064u, 47705u, 38303u)), Struct_3(-713f, Struct_1(false, 22607u, vec3<bool>(false, true, false), true, 57529u), vec3<u32>(1u, 19184u, 73158u)), Struct_3(107f, Struct_1(false, 19907u, vec3<bool>(false, false, true), true, 0u), vec3<u32>(4294967295u, 4294967295u, 19199u)), Struct_3(-319f, Struct_1(false, 51120u, vec3<bool>(false, true, true), true, 2574u), vec3<u32>(26683u, 0u, 27509u)), Struct_3(-372f, Struct_1(true, 0u, vec3<bool>(true, true, false), true, 1u), vec3<u32>(81152u, 52247u, 0u)), Struct_3(134f, Struct_1(false, 33367u, vec3<bool>(true, false, true), false, 1u), vec3<u32>(65782u, 46007u, 14609u)), Struct_3(-619f, Struct_1(false, 41434u, vec3<bool>(true, true, true), false, 34051u), vec3<u32>(28643u, 1u, 0u)), Struct_3(1745f, Struct_1(true, 0u, vec3<bool>(false, false, true), false, 1u), vec3<u32>(35964u, 48526u, 17073u)));

var<private> global3: vec4<i32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = global3.x >> (~93769u % 32u);
    let var_1 = all(vec2<bool>(!(arg_1.c.x && true), true));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-217f, _wgslsmith_f_op_f32(-630f + -611f)), vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -441f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1296f, -816f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(122f, 1000f)))))));
    global1 = ~min(52111u, var_2.x);
    return firstTrailingBit(min(4294967295u, ~_wgslsmith_dot_vec3_u32(arg_0.zwy, ~vec3<u32>(7612u, u_input.e, arg_0.x))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.e, 8u)];
    global3 = vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(arg_3, ~arg_3)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x | 117515i, arg_3.x >> (34756u % 32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-5021i, -1i, arg_1.x), arg_3.wwy), arg_1.x & -2147483647i))), -1i, select(global3.x, ~(-firstTrailingBit(-61689i)), select(var_0.a, false, select(true, var_0.a, true) || var_0.a)), (~arg_1.x ^ -2147483647i) ^ ~(-2147483647i));
    var var_1 = _wgslsmith_sub_vec3_u32(countOneBits(u_input.b.wyw), u_input.b.zzw);
    let var_2 = select(vec3<bool>(!(!var_0.a), !all(vec3<bool>(false, false, var_0.a)), any(vec2<bool>(var_0.a, var_0.a))), !vec3<bool>(!all(vec3<bool>(var_0.a, var_0.a, var_0.a)), var_0.a, true), !any(vec4<bool>(true, true, true, true)));
    global3 = countOneBits(countOneBits(_wgslsmith_sub_vec4_i32(arg_3, select(_wgslsmith_clamp_vec4_i32(arg_3, arg_3, vec4<i32>(-1i, u_input.a.x, u_input.a.x, arg_1.x)), vec4<i32>(arg_1.x, arg_1.x, arg_3.x, u_input.a.x), var_0.a))));
    return select(var_2, var_2, vec3<bool>(_wgslsmith_f_op_f32(sign(arg_0)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 + 355f), _wgslsmith_f_op_f32(ceil(-723f)))), any(vec2<bool>(!var_2.x, -1i <= global3.x)), all(!select(vec4<bool>(var_0.a, var_0.a, var_2.x, false), vec4<bool>(true, false, var_2.x, false), true))));
}

fn func_1() -> f32 {
    global1 = _wgslsmith_mod_u32(~reverseBits(u_input.c), firstLeadingBit(0u & abs(func_2(u_input.b, Struct_1(false, u_input.d.x, vec3<bool>(false, true, true), true, 12962u), -9294i, Struct_2(false)))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-421f - _wgslsmith_f_op_f32(246f + _wgslsmith_div_f32(-672f, 1355f))), Struct_1(select(true, false, true), 1u, select(!func_3(-148f, global3.xzx, -1037f, vec4<i32>(-29451i, global3.x, 47373i, global3.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), !((-29992i >= u_input.a.x) & true), u_input.d.x), ~countOneBits(u_input.b.yxw));
    var var_1 = Struct_4(var_0.a);
    let var_2 = 0u;
    let var_3 = !(!(!vec2<bool>(!var_0.b.d, true)));
    return var_0.a;
}

fn func_4(arg_0: Struct_3) -> vec4<i32> {
    global0 = array<Struct_2, 8>();
    let var_0 = ~u_input.b.zy;
    var var_1 = Struct_2(all(!select(select(vec4<bool>(arg_0.b.a, true, true, arg_0.b.c.x), vec4<bool>(arg_0.b.d, false, arg_0.b.a, arg_0.b.a), arg_0.b.d), vec4<bool>(true, arg_0.b.a, arg_0.b.c.x, arg_0.b.c.x), false)));
    global1 = 4294967295u;
    let var_2 = vec3<u32>(1u, _wgslsmith_mod_u32(firstTrailingBit(1u), 1u), 48876u);
    return ~vec4<i32>(24833i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(59083i, global3.x, -2147483647i, -4228i), vec4<i32>(global3.x, u_input.a.x, u_input.a.x, 1i))), _wgslsmith_mult_i32(~global3.x, 21025i), max(abs(u_input.a.x), u_input.a.x)) >> (~(~u_input.b) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(523f, -649f, true))))), _wgslsmith_f_op_f32(step(444f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(643f))))))));
    let var_1 = ~(~(~76538u)) & max(~_wgslsmith_dot_vec3_u32(min(u_input.b.yzz, vec3<u32>(1u, 65389u, 54297u)), u_input.b.xwy), u_input.b.x);
    global3 = func_4(Struct_3(_wgslsmith_f_op_f32(func_1()), Struct_1(!select(false, false, false), countOneBits(firstLeadingBit(var_1)), !func_3(399f, u_input.a, -127f, vec4<i32>(global3.x, 0i, -2147483647i, 31477i)), reverseBits(u_input.a.x) > _wgslsmith_sub_i32(25051i, -47611i), abs(14591u)), vec3<u32>(u_input.b.x, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1, 1u, var_1), u_input.b))));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1049f))));
    var var_2 = vec3<bool>(true, true, !((global3.x << (4294967295u % 32u)) == -u_input.a.x) & true);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 8u)];
    global3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -_wgslsmith_dot_vec3_i32(global3.zyw, u_input.a), 25548i, -1i), vec4<i32>(40147i, global3.x, 0i, ~global3.x), vec4<i32>(-19435i, _wgslsmith_sub_i32(~1i, -2147483647i), u_input.a.x, min(u_input.a.x, global3.x)));
    let var_4 = select(reverseBits(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) >> (~u_input.b % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(35370i, global3.x, u_input.a.x, 23477i), vec4<i32>(1i, 1i, u_input.a.x, 1i), select(vec4<i32>(u_input.a.x, -64099i, -1i, 1i), vec4<i32>(1i, 47655i, 1i, 2147483647i), vec4<bool>(var_2.x, var_2.x, false, var_2.x))), var_3.a) ^ (_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global3.x, u_input.a.x, global3.x, 0i), vec4<i32>(global3.x, global3.x, global3.x, 8790i), vec4<bool>(var_3.a, true, var_3.a, var_2.x)) << (u_input.b % vec4<u32>(32u)), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.a.x, global3.x, -3960i, u_input.a.x))), -abs(vec4<i32>(1i, 1i, -1i, -2147483647i))) & select(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(global3.x, u_input.a.x, u_input.a.x, 1i)), vec4<i32>(-16064i, u_input.a.x, 9681i, u_input.a.x) << (vec4<u32>(1u, 29944u, u_input.e, 1u) % vec4<u32>(32u))), (vec4<i32>(-2147483647i, 36098i, u_input.a.x, 2147483647i) & vec4<i32>(-1i, global3.x, u_input.a.x, global3.x)) ^ -vec4<i32>(-5917i, global3.x, u_input.a.x, -17920i), false));
    global0 = array<Struct_2, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-2192f * -963f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(281f * -855f), _wgslsmith_f_op_f32(-651f + 1510f)))), _wgslsmith_sub_vec2_u32(~(~firstLeadingBit(u_input.d)), ~u_input.d), ~(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(10829i, var_4.x, -2147483647i, global3.x), var_4), var_4.x, 1i << (1u % 32u))));
}

