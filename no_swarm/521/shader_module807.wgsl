struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(99880u, 5365u, 4294967295u), vec3<u32>(19656u, 1u, 4638u), vec3<u32>(0u, 1u, 0u), vec3<u32>(33454u, 0u, 1u), vec3<u32>(26285u, 1u, 24253u), vec3<u32>(0u, 37109u, 40716u), vec3<u32>(4294967295u, 0u, 59628u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    let var_0 = Struct_3(-_wgslsmith_mult_vec3_i32(abs(-vec3<i32>(25627i, -1i, -1i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -19028i, 28380i), vec3<i32>(u_input.a, -1i, 2147483647i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(763f + _wgslsmith_f_op_f32(f32(-1f) * -157f)), _wgslsmith_f_op_f32(-459f * -1000f))), Struct_1(vec4<bool>(_wgslsmith_f_op_f32(step(-896f, -2304f)) < -519f, select(any(vec3<bool>(false, false, false)), true, true), true, abs(-21578i) == (u_input.a | 0i))));
    var var_1 = Struct_4(~firstTrailingBit(global0[_wgslsmith_index_u32(1u, 7u)]), Struct_2(Struct_1(vec4<bool>(true, true, false, var_0.c.a.x == var_0.c.a.x)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-33515i, -46619i), u_input.a << (arg_1 % 32u)), select(_wgslsmith_div_vec2_i32(var_0.a.xy, vec2<i32>(arg_0, -7124i)), var_0.a.xz, select(var_0.c.a.wx, var_0.c.a.zz, true))), Struct_1(select(select(vec4<bool>(false, false, var_0.c.a.x, true), vec4<bool>(false, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x), false), vec4<bool>(var_0.c.a.x, true, false, true), select(vec4<bool>(var_0.c.a.x, var_0.c.a.x, false, var_0.c.a.x), var_0.c.a, var_0.c.a.x)))), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 9061u), vec2<u32>(18886u, u_input.b)), ~u_input.b, 1u | u_input.b), ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(56101u, 1u, arg_1), 7u)])), vec4<i32>(~u_input.a, u_input.a, arg_0, -_wgslsmith_mod_i32(i32(-1i) * -13899i, 34107i)));
    var var_2 = var_1.b.b.x;
    var var_3 = Struct_1(!(!(!select(vec4<bool>(true, var_0.c.a.x, var_1.b.c.a.x, false), vec4<bool>(true, true, var_1.b.c.a.x, false), var_0.c.a))));
    var var_4 = Struct_1(var_0.c.a);
    return (i32(-1i) * -78533i) >= countOneBits(var_0.a.x);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(firstLeadingBit(vec3<u32>(min(u_input.b, u_input.b ^ 44893u), ~24383u, reverseBits(u_input.b) | 1058u)), Struct_2(Struct_1(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), -(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 17532i)), Struct_1(vec4<bool>(true, true, true, true))), abs(~(~global0[_wgslsmith_index_u32(u_input.b, 7u)])) ^ reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, 0u), 7u)]), ~(-(vec4<i32>(u_input.a, 43540i, u_input.a, u_input.a) | vec4<i32>(u_input.a, 34358i, u_input.a, -11256i))));
    var var_1 = var_0.b.a;
    var_1 = Struct_1(select(!vec4<bool>(false, false, any(vec2<bool>(var_0.b.c.a.x, true)), var_1.a.x), !var_1.a, func_3(_wgslsmith_sub_i32(~var_0.d.x, u_input.a), u_input.b)));
    var_0 = Struct_4(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.c.xx, var_0.a.zy), var_0.c.x << ((~0u & u_input.b) % 32u), ~abs(reverseBits(84950u))), Struct_2(Struct_1(var_0.b.c.a), select(var_0.d.zy, var_0.d.zy, select(select(var_1.a.zz, vec2<bool>(false, true), true), select(var_0.b.c.a.xx, var_1.a.xz, var_1.a.xw), !var_1.a.xz)), Struct_1(vec4<bool>(var_0.b.a.a.x, false, func_3(-2147483647i, 0u), any(vec2<bool>(false, false))))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 1u, var_0.c.x)), var_0.c), var_0.d);
    var var_2 = var_0.c.x;
    return Struct_4(~vec3<u32>(0u, 1239u, var_0.c.x), Struct_2(Struct_1(vec4<bool>(true, var_0.d.x <= -30675i, var_1.a.x, any(vec4<bool>(var_0.b.a.a.x, var_1.a.x, true, false)))), ~var_0.b.b, Struct_1(select(var_1.a, select(var_0.b.c.a, vec4<bool>(false, true, var_0.b.c.a.x, false), vec4<bool>(false, var_0.b.a.a.x, false, true)), !vec4<bool>(true, true, var_0.b.c.a.x, false)))), var_0.c, ~firstLeadingBit(var_0.d));
}

fn func_1() -> f32 {
    let var_0 = firstLeadingBit(global0[_wgslsmith_index_u32(~reverseBits(~(1u ^ u_input.b)), 7u)]);
    global0 = array<vec3<u32>, 7>();
    let var_1 = 129f;
    let var_2 = func_2();
    let var_3 = !(var_2.b.c.a.x | !(u_input.a == _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 37427i), var_2.b.b)));
    return -699f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(21285u, _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.b ^ 1676u), ~_wgslsmith_sub_u32(4294967295u, 68743u)), reverseBits(_wgslsmith_sub_u32(u_input.b, u_input.b)) >> (u_input.b % 32u)));
    global0 = array<vec3<u32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-605f)), 767f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1327f + -348f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -200f), 807f)));
    var var_2 = func_2().b;
    var var_3 = select(!vec4<bool>(var_2.c.a.x, ~var_2.b.x < _wgslsmith_sub_i32(u_input.a, var_2.b.x), true, false), var_2.a.a, true);
    var var_4 = _wgslsmith_f_op_f32(-132f - _wgslsmith_f_op_f32(-297f * _wgslsmith_f_op_f32(f32(-1f) * -789f)));
    var var_5 = ~(~_wgslsmith_clamp_vec2_u32(var_0, var_0, vec2<u32>(var_0.x, 0u)));
    let var_6 = abs(~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 6021u, var_0.x, var_0.x), vec4<u32>(var_5.x, u_input.b, u_input.b, 0u))));
    var var_7 = Struct_1(vec4<bool>(false, !any(var_2.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(656f))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-934f * -802f))), all(!(!var_3.xz))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~func_2().c, vec3<u32>(var_0.x, _wgslsmith_sub_u32(var_6.x, _wgslsmith_mod_u32(0u, var_6.x)), ~abs(var_5.x))), u_input.a, ~var_6.zwx | abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(109234u, var_0.x, var_5.x), _wgslsmith_mult_vec3_u32(var_6.www, var_6.wxz))), ~abs(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_2.b.x, -2147483647i, u_input.a)), vec3<i32>(-34817i, var_2.b.x, 1i))), select(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, -2147483647i, u_input.a)), ~vec3<i32>(-25459i, var_2.b.x, -30302i), -vec3<i32>(-1i, var_2.b.x, var_2.b.x)) & firstTrailingBit(-vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(var_2.b.x, 29204i & select(-1i, 32906i, var_2.c.a.x), firstLeadingBit(_wgslsmith_sub_i32(u_input.a, var_2.b.x))), vec3<bool>(func_3(abs(u_input.a), ~var_5.x), var_3.x, true)));
}

