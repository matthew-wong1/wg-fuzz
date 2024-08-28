struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(false, 1146f)), Struct_2(Struct_1(true, -1485f)), Struct_2(Struct_1(false, 1225f)), Struct_2(Struct_1(false, 946f)), Struct_2(Struct_1(false, 572f)), Struct_2(Struct_1(false, -2038f)), Struct_2(Struct_1(false, 304f)), Struct_2(Struct_1(true, -136f)), Struct_2(Struct_1(true, -1108f)), Struct_2(Struct_1(false, 912f)), Struct_2(Struct_1(true, 140f)), Struct_2(Struct_1(true, -624f)), Struct_2(Struct_1(false, -1101f)), Struct_2(Struct_1(false, -1023f)), Struct_2(Struct_1(false, 1098f)), Struct_2(Struct_1(false, 171f)), Struct_2(Struct_1(true, 998f)), Struct_2(Struct_1(true, -353f)), Struct_2(Struct_1(true, 1483f)), Struct_2(Struct_1(true, 602f)), Struct_2(Struct_1(true, -436f)), Struct_2(Struct_1(false, 574f)));

var<private> global1: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global2: array<vec4<bool>, 19>;

var<private> global3: array<vec3<u32>, 12>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = select(select(global2[_wgslsmith_index_u32(0u, 19u)], !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 62748u), vec2<u32>(0u, 4294967295u)) & 0u, 19u)], false), select(select(select(global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], select(true, false, true)), select(global2[_wgslsmith_index_u32(1u, 19u)], vec4<bool>(true, arg_0.a.a, arg_2.a, false), arg_2.a), !any(vec2<bool>(arg_0.a.a, arg_2.a))), vec4<bool>(!all(global2[_wgslsmith_index_u32(1u, 19u)]), true, !(arg_2.a & true), !(81841u != u_input.c)), arg_0.a.a), arg_0.a.a);
    var var_1 = vec2<u32>(u_input.c ^ u_input.b, 73345u);
    var var_2 = Struct_3(~countOneBits(~arg_1), global0[_wgslsmith_index_u32(4294967295u, 22u)], Struct_1(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, arg_0.a.b), _wgslsmith_f_op_f32(exp2(arg_2.b)), true))))), arg_2);
    let var_3 = Struct_3(~var_2.a, Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(-arg_2.b))), var_2.c, Struct_1(var_0.x, 914f));
    let var_4 = vec4<i32>(arg_0.b, _wgslsmith_mult_i32(-22461i, max(u_input.a, -14491i)), -2147483647i, -1i);
    return !var_0.xyy;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = func_3(Struct_4(Struct_1(all(select(global2[_wgslsmith_index_u32(arg_1, 19u)], vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0.x)), -378f), i32(-1i) * -68900i), -(vec3<i32>(select(-15558i, 8906i, false), _wgslsmith_mult_i32(u_input.a, -2147483647i), u_input.a) << (vec3<u32>(~1u, 55789u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, u_input.c), vec3<u32>(arg_1, arg_1, arg_1))) % vec3<u32>(32u))), Struct_1(any(!vec3<bool>(arg_0.x, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(137f, arg_3))) - _wgslsmith_f_op_f32(arg_3 * _wgslsmith_div_f32(arg_3, arg_3)))));
    var var_1 = u_input.a;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(abs(min(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(21526i, 0i))), ~firstTrailingBit(vec2<i32>(2147483647i, 1i)) ^ ~(-vec2<i32>(11820i, -22686i))), ~firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(-1i, 45882i), 0i)));
    var_1 = _wgslsmith_dot_vec4_i32(~(~(~(vec4<i32>(-2147483647i, 0i, 2147483647i, u_input.a) << (vec4<u32>(21988u, arg_2.x, u_input.c, 1u) % vec4<u32>(32u))))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, 2147483647i, -67248i, var_3.x), vec4<i32>(u_input.a, -22338i, 2147483647i, var_3.x)), _wgslsmith_mult_i32(var_3.x, u_input.a), abs(u_input.a)), ~abs(vec4<i32>(-27238i, u_input.a, var_3.x, u_input.a))), vec4<i32>(-var_3.x, -2147483647i, var_3.x, ~(var_3.x << (arg_2.x % 32u)))));
    return Struct_1(select(var_0.x, true, var_0.x), -1241f);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_4 {
    var var_0 = -1000f;
    var var_1 = Struct_4(arg_0, 2147483647i);
    let var_2 = 43079u;
    var var_3 = true;
    let var_4 = Struct_2(var_1.a);
    return Struct_4(Struct_1(!var_4.a.a, 589f), -2147483647i);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_4 {
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    let var_0 = arg_0.a;
    let var_1 = Struct_3(vec3<i32>(select(select(_wgslsmith_div_i32(arg_0.b, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, -1i, -6179i), vec4<i32>(0i, arg_0.b, u_input.a, 1i)), arg_1.a.a), countOneBits(u_input.a), !var_0.a && func_2(global2[_wgslsmith_index_u32(u_input.c, 19u)], u_input.c, global3[_wgslsmith_index_u32(u_input.c, 12u)], 309f).a), 1i, -15115i), Struct_2(arg_1.a), Struct_1(true, arg_2.x), func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.c), vec2<u32>(0u, 22768u) ^ vec2<u32>(u_input.c, u_input.b)) | (u_input.c << (reverseBits(17995u) % 32u)), 19u)], u_input.c, min(_wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(min(72094u, 4294967295u), 12u)], vec3<u32>(u_input.c, u_input.b, u_input.b) >> (global3[_wgslsmith_index_u32(1u, 12u)] % vec3<u32>(32u))), global3[_wgslsmith_index_u32(reverseBits(32634u) & _wgslsmith_sub_u32(4294967295u, u_input.b), 12u)]), var_0.b));
    global3 = array<vec3<u32>, 12>();
    return func_4(arg_0.a, arg_0.a.a);
}

fn func_1() -> i32 {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    var var_0 = u_input.c | ~(~11275u);
    let var_1 = func_5(func_4(func_2(vec4<bool>(true, all(vec2<bool>(false, true)), any(vec2<bool>(true, false)), false), firstLeadingBit(~u_input.b), vec3<u32>(22406u, 62005u, min(u_input.c, 22536u)), _wgslsmith_f_op_f32(sign(-940f))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), any(vec4<bool>(true, false, false, false))))), Struct_2(Struct_1(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-236f * 492f) - 1f))), vec2<f32>(331f, 2185f));
    global1 = array<vec3<bool>, 25>();
    return var_1.b;
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: f32) -> vec2<bool> {
    var var_0 = ~4294967295u != u_input.b;
    global1 = array<vec3<bool>, 25>();
    global3 = array<vec3<u32>, 12>();
    let var_1 = Struct_1(arg_1.x, func_5(Struct_4(func_2(!global2[_wgslsmith_index_u32(arg_0.x, 19u)], ~68349u, ~vec3<u32>(u_input.c, 46212u, u_input.b), _wgslsmith_f_op_f32(max(arg_3, arg_3))), -19670i), Struct_2(Struct_1(!arg_1.x, arg_3)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-158f, arg_3) * vec2<f32>(395f, 1639f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -808f))))).a.b);
    var var_2 = vec4<bool>(var_1.a, !(~_wgslsmith_div_i32(arg_2, u_input.a) <= arg_2), true && !func_3(Struct_4(var_1, arg_2), vec3<i32>(38971i, arg_2, u_input.a), Struct_1(true, arg_3)).x, _wgslsmith_mod_u32(4294967295u ^ (u_input.b | arg_0.x), u_input.b) >= arg_0.x);
    return !(!(!vec2<bool>(arg_1.x, var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-125f + 1121f) + _wgslsmith_f_op_f32(max(-203f, -1000f))))))) - -300f);
    var_0 = -447f;
    let var_1 = all(func_6(max(select(vec4<u32>(u_input.b, 0u, u_input.c, 1u), vec4<u32>(u_input.c, 62317u, 68765u, u_input.b), true), select(vec4<u32>(u_input.b, 115965u, 4294967295u, 18684u), vec4<u32>(21623u, u_input.b, u_input.b, 1u), true)) << ((countOneBits(vec4<u32>(u_input.b, 1u, 0u, u_input.c)) & countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.c))) % vec4<u32>(32u)), !(!select(global1[_wgslsmith_index_u32(u_input.b, 25u)], vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(2287u, 25u)])), func_1(), -1047f));
    global2 = array<vec4<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(u_input.a, -2147483647i) & u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a) >> (0u % 32u), abs(u_input.a))), u_input.a, firstTrailingBit((firstTrailingBit(vec2<i32>(u_input.a, -2147483647i)) | -vec2<i32>(u_input.a, -45835i)) | select(vec2<i32>(1i, u_input.a), vec2<i32>(-19105i, -59890i), true)), ~_wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(45298u, 12u)]), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -269f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-343f, -167f) * _wgslsmith_f_op_f32(select(2305f, 198f, var_1)))), -1811f));
}

