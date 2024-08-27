struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<bool>(true, false, false), vec3<i32>(4907i, 0i, -22824i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(1i, i32(-2147483648), 2147483647i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(-1i, -1i, 1i)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(-17860i, -26887i, 18292i)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(-1i, 2147483647i, 16972i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(0i, 53563i, 30469i)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(2147483647i, 5570i, 1i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, true), vec3<i32>(50446i, 0i, 46742i)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(2147483647i, -42959i, -1i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(0i, -7718i, -12203i)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(2147483647i, -20306i, -27081i)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-27903i, -36650i, 19204i)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(2147483647i, 36756i, -9014i)));

var<private> global1: array<vec2<f32>, 18>;

var<private> global2: array<i32, 30> = array<i32, 30>(2204i, 14709i, 29371i, -39378i, -6603i, i32(-2147483648), 2147483647i, 35806i, 1i, 18067i, -1i, 51629i, 1i, -23732i, -4515i, i32(-2147483648), 69504i, 1837i, 0i, -18974i, 9932i, i32(-2147483648), 2147483647i, i32(-2147483648), -48248i, -2906i, -31385i, -4244i, -1i, -14590i);

var<private> global3: f32 = 233f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_u32(firstTrailingBit(50198u), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(0u, 15937u), 4294967295u, ~(1u & u_input.a)), ~(~(~vec3<u32>(u_input.a, 82463u, u_input.a)))));
    global1 = array<vec2<f32>, 18>();
    var var_1 = ~u_input.a;
    var_1 = _wgslsmith_clamp_u32(u_input.a, u_input.a, ~firstTrailingBit(14262u));
    global2 = array<i32, 30>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1564f);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec3<bool> {
    let var_0 = arg_1;
    global0 = array<Struct_1, 15>();
    let var_1 = Struct_1(vec3<bool>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), arg_0.b.yz), select(-8910i, global2[_wgslsmith_index_u32(85380u, 30u)], true)) >= ~(-arg_0.b.x), true, false), vec3<i32>(22439i, -2541i, _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.a, 30u)], 1i, arg_2), -19592i))));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(_wgslsmith_add_i32(u_input.b.x, var_1.b.x) ^ (4286i ^ arg_2)), max(~(-2429i | u_input.b.x), countOneBits(-1i) | arg_2), -(~_wgslsmith_mod_i32(-1i, 1i)), abs(global2[_wgslsmith_index_u32(u_input.a | 49435u, 30u)]) << (1u % 32u)), select(vec4<i32>(u_input.b.x, 26841i, (12293i ^ u_input.b.x) >> (~28935u % 32u), select(arg_0.b.x, 1i, !var_1.a.x)), select(vec4<i32>(u_input.b.x, min(31536i, u_input.b.x), _wgslsmith_mod_i32(arg_0.b.x, -1973i), arg_0.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b.x, -15453i, var_1.b.x, arg_0.b.x) << (vec4<u32>(u_input.a, u_input.a, 0u, 60531u) % vec4<u32>(32u)), vec4<i32>(1i, 0i, -1i, 6272i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2, -1i, arg_0.b.x, -8410i), vec4<i32>(-6225i, arg_2, 14771i, var_1.b.x))), !(!var_1.a.x)), u_input.a >= u_input.a));
    var var_3 = Struct_1(select(vec3<bool>(false, false, true), select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), !var_1.a, arg_0.a), select(select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(true, true, var_1.a.x), !vec3<bool>(var_1.a.x, true, true)), !(!vec3<bool>(arg_0.a.x, true, false)), !arg_0.a)), ~_wgslsmith_mult_vec3_i32(~var_1.b, ~arg_0.b & -var_1.b));
    return vec3<bool>(!(u_input.a == ~1u), true && (~u_input.b.x <= u_input.b.x), true);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1064f, 1000f)))))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(arg_2.a.x || arg_1.a.x, !arg_1.a.x, false), abs(arg_2.b | arg_2.b)))) * _wgslsmith_f_op_f32(func_2(Struct_1(arg_2.a, arg_1.b))));
    var var_1 = Struct_1(func_3(arg_1, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1428f)), select(1i, u_input.b.x, true)), arg_1.b);
    global1 = array<vec2<f32>, 18>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1422f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -136f)))), _wgslsmith_f_op_f32(abs(var_0)));
    return arg_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = ~(vec2<i32>(-1i) * -arg_1.b.xy);
    let var_1 = _wgslsmith_div_u32(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(29557u, 0u), abs(vec2<u32>(57799u, u_input.a)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a))), u_input.a));
    global0 = array<Struct_1, 15>();
    global2 = array<i32, 30>();
    global1 = array<vec2<f32>, 18>();
    return abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(14270u, 86549u, var_1, 0u)), vec4<u32>(var_1, 20900u, u_input.a, ~34734u)), 88617u & abs(_wgslsmith_sub_u32(u_input.a, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    let var_0 = ~(firstLeadingBit(1i) >> (min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 16601u, 1u), vec4<u32>(u_input.a, 0u, u_input.a, 0u)) & ~u_input.a, func_4(-vec4<i32>(global2[_wgslsmith_index_u32(0u, 30u)], 14264i, -1i, global2[_wgslsmith_index_u32(u_input.a, 30u)]), func_1(-1i, Struct_1(vec3<bool>(false, false, true), vec3<i32>(global2[_wgslsmith_index_u32(1u, 30u)], -21978i, u_input.b.x)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], -2147483647i, u_input.b.x))))) % 32u));
    let var_1 = 9283i;
    global2 = array<i32, 30>();
    let var_2 = ~vec2<u32>(~27461u, ~countOneBits(0u));
    var var_3 = func_1(global2[_wgslsmith_index_u32(58636u, 30u)], Struct_1(vec3<bool>(select(false, true, true), !all(vec2<bool>(false, false)), any(vec2<bool>(true, true))), min(-(vec3<i32>(u_input.b.x, var_0, global2[_wgslsmith_index_u32(u_input.a, 30u)]) >> (vec3<u32>(u_input.a, var_2.x, u_input.a) % vec3<u32>(32u))), ~u_input.b)), global0[_wgslsmith_index_u32(u_input.a, 15u)]);
    var var_4 = 104754u;
    let x = u_input.a;
    s_output = StorageBuffer(-(~select(var_3.b.zz, var_3.b.zz, true) ^ func_1(_wgslsmith_dot_vec3_i32(var_3.b, vec3<i32>(var_0, -2147483647i, -42293i)), func_1(var_3.b.x, global0[_wgslsmith_index_u32(0u, 15u)], Struct_1(vec3<bool>(false, var_3.a.x, true), vec3<i32>(var_0, u_input.b.x, 64129i))), func_1(u_input.b.x, global0[_wgslsmith_index_u32(138470u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)])).b.yy), firstLeadingBit(max(var_3.b.yz, vec2<i32>(var_3.b.x, -1958i >> (1u % 32u)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1269f, -698f, 268f) + _wgslsmith_div_vec3_f32(vec3<f32>(1215f, 1000f, -1245f), vec3<f32>(100f, -1429f, 1000f))), vec3<f32>(_wgslsmith_div_f32(334f, 359f), _wgslsmith_f_op_f32(140f + 475f), 1000f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1509f, 2257f, -1654f)), vec3<f32>(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_f_op_f32(f32(-1f) * -1090f), _wgslsmith_f_op_f32(f32(-1f) * -1016f))), vec3<bool>(var_3.a.x, all(vec2<bool>(false, var_3.a.x)), var_3.a.x))), ~countOneBits(~(vec4<u32>(18307u, 66220u, 43871u, 1u) | vec4<u32>(0u, 43453u, 4294967295u, u_input.a))), u_input.a);
}

