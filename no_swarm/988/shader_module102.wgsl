struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(false, -1i, vec4<u32>(0u, 29332u, 17947u, 12465u), vec4<i32>(1i, i32(-2147483648), -1i, -36472i))), Struct_2(Struct_1(true, 2147483647i, vec4<u32>(0u, 794u, 1u, 5952u), vec4<i32>(5610i, 1i, 2147483647i, 17876i))), Struct_2(Struct_1(false, -3219i, vec4<u32>(21424u, 4294967295u, 1u, 41251u), vec4<i32>(2147483647i, 2147483647i, 36621i, 2147483647i))), Struct_2(Struct_1(false, -6065i, vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<i32>(-24181i, -1i, -39478i, 1i))), Struct_2(Struct_1(false, 2147483647i, vec4<u32>(28026u, 4294967295u, 11575u, 28845u), vec4<i32>(-21569i, 1i, -29169i, 0i))), Struct_2(Struct_1(false, 2147483647i, vec4<u32>(1u, 248u, 52799u, 6539u), vec4<i32>(15008i, 2147483647i, -8470i, -1i))), Struct_2(Struct_1(false, -11707i, vec4<u32>(4294967295u, 69364u, 60342u, 20375u), vec4<i32>(i32(-2147483648), 5931i, -6821i, -13063i))), Struct_2(Struct_1(false, -24407i, vec4<u32>(4294967295u, 11823u, 4294967295u, 0u), vec4<i32>(-1i, -1i, -13387i, -1i))), Struct_2(Struct_1(true, -7861i, vec4<u32>(4294967295u, 1423u, 1u, 4294967295u), vec4<i32>(36560i, 2147483647i, 0i, 44697i))), Struct_2(Struct_1(true, 0i, vec4<u32>(1u, 4294967295u, 1u, 1481u), vec4<i32>(56244i, i32(-2147483648), 40858i, 2147483647i))), Struct_2(Struct_1(true, -12671i, vec4<u32>(27552u, 36594u, 43627u, 0u), vec4<i32>(-16612i, 32104i, 0i, -57101i))), Struct_2(Struct_1(true, 10049i, vec4<u32>(1u, 1u, 4294967295u, 28896u), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -19755i))), Struct_2(Struct_1(true, 2147483647i, vec4<u32>(17702u, 48481u, 66964u, 38370u), vec4<i32>(44414i, 1i, 1i, -1i))), Struct_2(Struct_1(true, 56497i, vec4<u32>(1u, 29487u, 14940u, 31534u), vec4<i32>(-1i, -3416i, 7543i, -1i))), Struct_2(Struct_1(false, 2147483647i, vec4<u32>(1u, 0u, 28164u, 1u), vec4<i32>(-1i, 78073i, -9642i, -43984i))), Struct_2(Struct_1(true, i32(-2147483648), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<i32>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648)))), Struct_2(Struct_1(true, i32(-2147483648), vec4<u32>(4294967295u, 31451u, 0u, 0u), vec4<i32>(-8936i, 6946i, 26884i, -48333i))), Struct_2(Struct_1(false, 37974i, vec4<u32>(32105u, 13514u, 4294967295u, 0u), vec4<i32>(21853i, -65859i, 1i, 0i))), Struct_2(Struct_1(false, 1i, vec4<u32>(13006u, 0u, 4294967295u, 1u), vec4<i32>(6851i, 0i, -34572i, -57804i))), Struct_2(Struct_1(true, -1i, vec4<u32>(0u, 109270u, 4294967295u, 44350u), vec4<i32>(20335i, -513i, 2147483647i, 2147483647i))), Struct_2(Struct_1(false, -1i, vec4<u32>(76681u, 30384u, 0u, 4294967295u), vec4<i32>(i32(-2147483648), 28048i, 23012i, 1i))), Struct_2(Struct_1(false, 46060i, vec4<u32>(11926u, 37408u, 4294967295u, 46480u), vec4<i32>(81188i, -24954i, 2147483647i, 2147483647i))), Struct_2(Struct_1(false, -1i, vec4<u32>(4294967295u, 4294967295u, 0u, 88874u), vec4<i32>(-39084i, -62i, -33177i, 10386i))), Struct_2(Struct_1(true, -22874i, vec4<u32>(46110u, 0u, 70308u, 40787u), vec4<i32>(46923i, 0i, 0i, 23182i))), Struct_2(Struct_1(false, 0i, vec4<u32>(4294967295u, 12745u, 36017u, 4294967295u), vec4<i32>(6457i, 0i, -10824i, 0i))));

var<private> global1: array<vec3<u32>, 18>;

var<private> global2: array<i32, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(arg_3 * _wgslsmith_f_op_vec4_f32(arg_3 * vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, 531f, false)), 115f, -466f, 420f)));
    var var_1 = Struct_3(var_0.zz);
    let var_2 = arg_2.a;
    var var_3 = !arg_2.a.a;
    global2 = array<i32, 1>();
    return -792f;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    global0 = array<Struct_2, 25>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-466f * -840f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1533f * -590f) - -1308f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(943f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<f32>(-1265f, 1883f), -497f, global0[_wgslsmith_index_u32(arg_2.c.x, 25u)], vec4<f32>(-1000f, 572f, 1000f, -171f))))))), -236f, 1349f);
    var var_1 = true;
    let var_2 = _wgslsmith_clamp_vec4_u32(arg_2.c, ~arg_2.c & _wgslsmith_sub_vec4_u32(arg_2.c, vec4<u32>(21497u, arg_2.c.x, 27551u, u_input.b.x) | _wgslsmith_div_vec4_u32(arg_2.c, arg_2.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(~(~81333u), reverseBits(arg_0 << (arg_0 % 32u)), 1u, _wgslsmith_dot_vec4_u32(arg_2.c, vec4<u32>(u_input.b.x, arg_0, 0u, u_input.a))), arg_2.c));
    let var_3 = select(!(!arg_2.a), select(all(!select(vec2<bool>(arg_3, false), vec2<bool>(false, arg_3), vec2<bool>(false, true))), true, _wgslsmith_f_op_f32(var_0.x * var_0.x) >= -121f), arg_3);
    return ~(~abs(~select(arg_2.c.zyx, vec3<u32>(arg_0, 30575u, 1u), vec3<bool>(false, false, arg_2.a))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_4(-vec2<i32>(reverseBits(60657i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 1u)], 2147483647i)) | ~(-(~arg_1.d.zy)), vec4<bool>(any(select(!vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), !vec4<bool>(true, arg_1.a, true, arg_1.a), arg_1.a)), any(vec3<bool>(arg_1.a || false, true || arg_1.a, arg_1.a)), false, true), ~(~firstLeadingBit(global2[_wgslsmith_index_u32(u_input.a, 1u)])) & -u_input.c);
    var_0 = Struct_4(arg_1.d.zy, select(!select(var_0.b, vec4<bool>(true, var_0.b.x, false, arg_1.a), !var_0.b), var_0.b, var_0.b), -16047i);
    let var_1 = !(!(!vec2<bool>(true, all(vec4<bool>(true, arg_1.a, false, false)))));
    let var_2 = Struct_1(true, 16891i, _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(arg_0.x, arg_0.x, 0u, 10468u)), ~(vec4<u32>(0u, u_input.b.x, 7483u, 1u) | ~arg_1.c), ~arg_1.c), arg_1.d);
    var var_3 = Struct_1(1000f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(727f)) * 1020f) + -221f), arg_1.b, vec4<u32>(select(~arg_1.c.x, arg_0.x ^ (u_input.b.x >> (22976u % 32u)), any(vec3<bool>(var_0.b.x, arg_1.a, false))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b, ~vec2<u32>(13847u, 4294967295u), vec2<u32>(arg_0.x, var_2.c.x)), arg_0.xy), 0u, 4294967295u), countOneBits(vec4<i32>(-1i) * -select(vec4<i32>(-1i, -1i, u_input.c, -11296i), var_2.d, true)));
    return arg_1.d.x;
}

fn func_1() -> vec2<f32> {
    var var_0 = global2[_wgslsmith_index_u32(20457u, 1u)];
    var_0 = _wgslsmith_clamp_i32(~_wgslsmith_div_i32(43465i, -33251i), (select(1i, 0i, all(vec3<bool>(true, false, false))) >> (~countOneBits(u_input.a) % 32u)) & -1i, ~(-u_input.c));
    var var_1 = Struct_4(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(5938i, _wgslsmith_sub_i32(9822i, u_input.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 50600i), vec2<i32>(3244i, global2[_wgslsmith_index_u32(u_input.b.x, 1u)])) & ~vec2<i32>(u_input.c, u_input.c)), vec2<i32>(countOneBits(0i & u_input.c), func_4(func_2(23018u, u_input.c, Struct_1(true, 1i, vec4<u32>(u_input.a, u_input.b.x, u_input.a, 28226u), vec4<i32>(0i, u_input.c, -40766i, global2[_wgslsmith_index_u32(0u, 1u)])), true), Struct_1(false, u_input.c, vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.b.x), vec4<i32>(u_input.c, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 20621i, global2[_wgslsmith_index_u32(u_input.a, 1u)]))))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, true)), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), select(true, all(vec4<bool>(false, false, false, true)), any(vec4<bool>(false, true, true, true))), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))))), _wgslsmith_mult_i32(~0i, (-2147483647i | u_input.c) & _wgslsmith_mult_i32(firstLeadingBit(u_input.c), ~(-42530i))));
    var_0 = select(-var_1.a.x, ~(-_wgslsmith_add_i32(-18232i, ~(-2147483647i))), false);
    var_1 = Struct_4(abs(_wgslsmith_add_vec2_i32(min(var_1.a, var_1.a), max(-vec2<i32>(u_input.c, var_1.c), ~var_1.a))), vec4<bool>(any(!(!var_1.b)), any(var_1.b.yx), true, !var_1.b.x & (~u_input.b.x > 0u)), 1808i ^ -global2[_wgslsmith_index_u32(~8828u, 1u)]);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1890f + 1810f) - -1815f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-205f, 1193f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, 191f)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = vec2<u32>(select(arg_0.x, _wgslsmith_dot_vec4_u32(~(~arg_0), ~firstTrailingBit(arg_0)), all(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), 0u);
    let var_1 = 229f;
    global0 = array<Struct_2, 25>();
    let var_2 = Struct_4(select(select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -1i) & vec2<i32>(global2[_wgslsmith_index_u32(arg_0.x, 1u)], 26273i), -vec2<i32>(-24770i, global2[_wgslsmith_index_u32(0u, 1u)])), -(~vec2<i32>(-3839i, global2[_wgslsmith_index_u32(var_0.x, 1u)])), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), vec2<i32>(_wgslsmith_add_i32(32883i, u_input.c), u_input.c) & _wgslsmith_div_vec2_i32(select(vec2<i32>(8749i, 1i), vec2<i32>(24319i, -38125i), true), vec2<i32>(u_input.c, u_input.c) & vec2<i32>(global2[_wgslsmith_index_u32(1296u, 1u)], 1i)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), arg_1.a.x != 804f), vec2<bool>(true, true))), select(vec4<bool>(true, true, true, false || all(vec4<bool>(false, false, false, false))), vec4<bool>(false, true, true != any(vec4<bool>(true, true, false, true)), true), true), u_input.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, arg_1.a.x), vec2<f32>(-107f, arg_1.a.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, var_1), vec2<f32>(-898f, 2077f))))));
    return StorageBuffer(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -465f)))), -691f, global0[_wgslsmith_index_u32(~u_input.a, 25u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x - var_1), var_3.x, 434f, _wgslsmith_div_f32(arg_1.a.x, var_3.x))))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec4<u32>(abs(u_input.a), min(~94206u >> (_wgslsmith_add_u32(u_input.b.x, 1u) % 32u), u_input.b.x >> (_wgslsmith_mod_u32(u_input.b.x, 4294967295u) % 32u)), u_input.a, ~reverseBits(~u_input.a)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(923f, -1200f) + vec2<f32>(164f, 245f)) + _wgslsmith_f_op_vec2_f32(func_1())) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(268f, 1015f) * vec2<f32>(-1103f, -458f))))));
}

