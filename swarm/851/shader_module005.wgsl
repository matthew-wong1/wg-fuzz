struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-464f, true, 662f), Struct_1(-1331f, false, 361f), Struct_1(-375f, false, 520f), Struct_1(1000f, false, 1000f), Struct_1(1071f, false, -1446f), Struct_1(896f, false, 488f), Struct_1(-1062f, true, 1000f), Struct_1(226f, false, 755f), Struct_1(-574f, false, -1323f), Struct_1(1000f, true, -274f), Struct_1(157f, true, 180f), Struct_1(-1235f, false, 367f), Struct_1(-836f, false, -1000f), Struct_1(-593f, false, 529f), Struct_1(668f, false, -731f), Struct_1(146f, false, 371f), Struct_1(-650f, true, 1012f), Struct_1(-2114f, true, -421f));

var<private> global1: array<vec4<u32>, 5>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global3: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(2147483647i, -22067i, 2147483647i), vec3<i32>(-16236i, 8287i, 1i), vec3<i32>(16654i, 1i, 0i), vec3<i32>(-21016i, -1i, 1i), vec3<i32>(-30715i, 18796i, 45687i), vec3<i32>(-1i, 34013i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -18472i), vec3<i32>(-22530i, 47708i, 2147483647i), vec3<i32>(29526i, -16083i, -15924i), vec3<i32>(i32(-2147483648), -1805i, 80403i), vec3<i32>(0i, i32(-2147483648), -52982i), vec3<i32>(-1i, 13865i, 0i), vec3<i32>(-21597i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, -1299i, -1i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(-51522i, i32(-2147483648), -11408i), vec3<i32>(3427i, 1i, 32571i), vec3<i32>(i32(-2147483648), -69033i, -1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = vec4<bool>(global2.x | global2.x, !any(global2.zxw), !global2.x, select(global2.x, any(vec4<bool>(1i < u_input.a, any(vec4<bool>(true, global2.x, false, true)), false, !global2.x)), all(select(select(vec4<bool>(true, true, global2.x, true), vec4<bool>(true, true, false, false), global2.x), select(vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, false)), !vec4<bool>(false, global2.x, global2.x, true)))));
    global3 = array<vec3<i32>, 18>();
    var var_1 = !vec4<bool>(var_0.x, true, any(select(select(vec3<bool>(global2.x, false, global2.x), var_0.xzz, vec3<bool>(var_0.x, false, false)), vec3<bool>(true, false, true), select(var_0.www, var_0.zxy, true))), select((var_0.x || false) != true, false, true));
    let var_2 = _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, countOneBits(1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(3438u, 4294967295u, 4294967295u, 13551u), ~vec4<u32>(4294967295u, 36141u, 116407u, 1u))));
    let var_3 = global2.x;
    return !vec2<bool>(!select(true, any(var_0), any(vec3<bool>(true, var_1.x, global2.x))), (~u_input.b != _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(var_2, 18u)], global3[_wgslsmith_index_u32(var_2, 18u)])) & !any(var_1.xzz));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec2<bool>(true, any(vec3<bool>(arg_0.b, any(select(vec4<bool>(arg_0.b, true, global2.x, arg_0.b), vec4<bool>(global2.x, true, arg_0.b, arg_0.b), true)), arg_0.b)));
    global3 = array<vec3<i32>, 18>();
    let var_1 = vec3<u32>(48384u, 4294967295u, 8740u << (_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(45794u, 15383u)), vec2<u32>(1u, 1u)) % 32u));
    var var_2 = abs(~u_input.b);
    var var_3 = Struct_2(global0[_wgslsmith_index_u32((~var_1.x & _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, var_1.x), var_1.x)) >> (~(~(~var_1.x)) % 32u), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -920f)), _wgslsmith_f_op_f32(min(340f, _wgslsmith_f_op_f32(868f - -448f)))))), !var_0);
    return Struct_2(arg_0, var_3.b, select(!(!vec2<bool>(global2.x, global2.x)), !func_3(_wgslsmith_f_op_f32(1000f - 1239f)), any(!global2.xxx)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    global3 = array<vec3<i32>, 18>();
    let var_0 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, min(abs(1u), 4294967295u)), 0u >> (0u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(16816u, ~4294967295u, abs(66093u)), firstTrailingBit(~62984u), ~0u), vec3<u32>(abs(~1u), 0u, ~56378u)), ~(select(abs(24939u), 0u, true) ^ ~1u));
    let var_1 = var_0;
    var var_2 = vec2<f32>(-465f, func_2(func_2(func_2(Struct_1(-528f, global2.x, -571f)).a).a).a.c);
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_2(global0[_wgslsmith_index_u32(var_1.x, 18u)]).b)))), var_2.x);
    return arg_1.a;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~arg_2.x), ~(arg_2.x << (arg_2.x % 32u))), 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * _wgslsmith_f_op_f32(arg_1.x + -526f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -748f))), vec2<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, 2147483647i, -6624i), -vec4<i32>(u_input.a, -6615i, u_input.a, u_input.a)) == select(_wgslsmith_sub_i32(37510i, u_input.b), -2147483647i, arg_0 <= 127f)));
    let var_1 = var_0.c;
    let var_2 = arg_1.x;
    global0 = array<Struct_1, 18>();
    var var_3 = func_4(global3[_wgslsmith_index_u32(~arg_2.x, 18u)], func_2(var_0.a));
    return func_2(func_4(_wgslsmith_mult_vec3_i32(select(_wgslsmith_sub_vec3_i32(global3[_wgslsmith_index_u32(4278u, 18u)], vec3<i32>(u_input.b, u_input.b, 1i)), global3[_wgslsmith_index_u32(82327u, 18u)], !global2.wxx), ~(-global3[_wgslsmith_index_u32(30061u, 18u)])), func_2(Struct_1(272f, false, _wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = ~vec4<u32>(min(1u, _wgslsmith_clamp_u32(28292u, arg_1, arg_1)) | max(~arg_1, ~0u), 1u, ~1u, 85964u);
    global2 = vec4<bool>(func_1(-210f, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b, 301f, -211f), vec3<f32>(-1029f, -101f, arg_0.b))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-624f, arg_0.a.a, arg_0.a.a))))), firstLeadingBit(_wgslsmith_clamp_vec2_u32(var_0.zw, var_0.zy, ~var_0.wz))).a.b, (func_3(-835f).x || ((52024u ^ arg_1) <= ~1u)) & (true && global2.x), abs(0i) != _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 24100i), vec2<i32>(2147483647i, 14931i))), 22371i), global2.x & false);
    let var_1 = countOneBits(arg_1);
    var var_2 = select(!select(vec3<bool>(global2.x, global2.x, !global2.x), global2.yxw, vec3<bool>(true, false, arg_0.c.x)), select(global2.zyx, global2.xzw, select(select(select(global2.wzx, vec3<bool>(arg_0.a.b, true, false), vec3<bool>(true, global2.x, arg_0.a.b)), select(global2.wyw, vec3<bool>(true, false, arg_0.c.x), vec3<bool>(global2.x, arg_0.a.b, true)), vec3<bool>(global2.x, true, arg_0.a.b)), select(global2.xwx, select(global2.wxx, vec3<bool>(true, global2.x, false), arg_0.c.x), true), select(!vec3<bool>(global2.x, false, global2.x), global2.yzw, arg_0.a.b))), global2.x);
    global1 = array<vec4<u32>, 5>();
    return func_4(vec3<i32>(_wgslsmith_mod_i32(u_input.a, 2147483647i), min(u_input.a, abs(11441i) >> (reverseBits(var_0.x) % 32u)), 15561i), func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(17665u, var_1, var_1, var_1), var_0), firstTrailingBit(43301u)), 21089u), 18u)]));
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3;
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_1, arg_1, arg_1, arg_1)), ~(~global1[_wgslsmith_index_u32(arg_1, 5u)])) | select(abs(abs(vec4<u32>(arg_1, 28287u, 4294967295u, arg_1))), ~(~vec4<u32>(28842u, 35058u, 63544u, arg_1)), vec4<bool>(true, true, func_4(global3[_wgslsmith_index_u32(14414u, 18u)], var_0).b, func_4(vec3<i32>(-33473i, -76959i, u_input.b), Struct_2(Struct_1(arg_3.a.a, var_0.c.x, var_0.a.a), 678f, arg_3.c)).b)));
    var var_2 = true && var_0.c.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1202f))))), _wgslsmith_div_f32(func_1(_wgslsmith_f_op_f32(-arg_0), vec3<f32>(-158f, 1338f, arg_3.a.c), ~var_1.zy).a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(771f)) + -692f)), arg_0));
    var var_4 = ~(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, 2147483647i, 1i), vec4<i32>(0i, -2147483647i, u_input.b, -7402i)), -vec4<i32>(0i, 8512i, u_input.b, u_input.b), ~vec4<i32>(1i, -79828i, -1i, 2147483647i)));
    return _wgslsmith_f_op_f32(-var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(1u, 18u)];
    global1 = array<vec4<u32>, 5>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_6(-548f, max(_wgslsmith_sub_u32(4294967295u, 3269u), reverseBits(62928u)), func_5(func_1(var_0.a, vec3<f32>(var_0.a, var_0.a, var_0.a), vec2<u32>(0u, 31273u)), 1u), Struct_2(global0[_wgslsmith_index_u32(reverseBits(0u), 18u)], var_0.a, !global2.ww))), true, -865f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-1694f - -1239f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -447f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f - var_0.c) + _wgslsmith_f_op_f32(step(var_0.c, var_0.c))))), global2.yz);
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))))), all(vec4<bool>(true, true, !var_0.b, true)), -387f));
    let var_3 = vec4<f32>(611f, _wgslsmith_f_op_f32(abs(var_0.c)), var_0.c, 1547f);
    var_0 = Struct_1(var_2.a.c, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-348f + var_0.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c) * _wgslsmith_f_op_f32(step(var_0.c, 1440f)))) - _wgslsmith_f_op_f32(-var_3.x)));
    var var_4 = var_3.x;
    let var_5 = ~countOneBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_vec2_f32(-var_3.yw), _wgslsmith_add_vec4_u32(abs(vec4<u32>(70134u, var_5, var_5, 4263u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_5, var_5 >> (var_5 % 32u)), 5u)]) ^ global1[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(var_5 >> (var_5 % 32u)), ~(~1u)), 5u)], firstTrailingBit(_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_5, 28939u), vec2<u32>(var_5, var_5)), _wgslsmith_clamp_vec2_u32(vec2<u32>(77366u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(var_5, 0u)))) >> ((4294967295u | var_5) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 - vec4<f32>(var_1.a.a, _wgslsmith_f_op_f32(-var_1.a.a), -341f, _wgslsmith_f_op_f32(f32(-1f) * -468f)))));
}

