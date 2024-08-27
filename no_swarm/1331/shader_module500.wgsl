struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec2<f32>(472f, -1016f), 1310f, -21984i, vec3<f32>(-749f, -658f, 431f)), 71947u, vec2<bool>(false, false), Struct_1(vec2<f32>(1000f, -630f), 1582f, -1i, vec3<f32>(-110f, -260f, -1167f)), false), Struct_2(Struct_1(vec2<f32>(1133f, -1266f), 219f, -52576i, vec3<f32>(-479f, -398f, 1972f)), 10081u, vec2<bool>(true, true), Struct_1(vec2<f32>(-485f, -1337f), -266f, i32(-2147483648), vec3<f32>(1000f, 1082f, -1000f)), false));

var<private> global2: i32;

var<private> global3: Struct_3;

var<private> global4: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(329f, 278f, -1546f, -609f), vec4<f32>(-1000f, 337f, 1619f, 1000f), vec4<f32>(-475f, 370f, -246f, -2034f), vec4<f32>(1548f, 368f, 615f, -2685f), vec4<f32>(-1382f, -1046f, 403f, -358f), vec4<f32>(399f, -1175f, 1417f, 788f), vec4<f32>(1326f, 1599f, 1000f, 1194f), vec4<f32>(-198f, -1000f, -553f, 1500f), vec4<f32>(-2623f, 957f, -147f, -1142f), vec4<f32>(1837f, -612f, 1748f, 589f), vec4<f32>(823f, -189f, -1437f, 570f), vec4<f32>(-679f, 1961f, -1132f, 1817f), vec4<f32>(828f, -423f, 910f, 699f), vec4<f32>(162f, 844f, -1519f, 822f), vec4<f32>(-425f, 976f, 553f, 894f), vec4<f32>(115f, -975f, -225f, -1000f), vec4<f32>(212f, -485f, -653f, 1000f), vec4<f32>(1000f, 2203f, -384f, 287f), vec4<f32>(-301f, -308f, -101f, 844f), vec4<f32>(-1055f, 280f, 501f, 1385f), vec4<f32>(-1457f, 2622f, -199f, 100f), vec4<f32>(132f, -508f, -1000f, 1000f), vec4<f32>(-566f, -974f, 492f, -746f), vec4<f32>(2560f, 1243f, 1906f, 1490f), vec4<f32>(-303f, -366f, -1877f, -380f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = select(select(vec4<bool>(all(!vec2<bool>(global3.c, false)), true, true, global3.c), select(!(!vec4<bool>(global3.c, global3.c, global3.c, true)), select(select(vec4<bool>(global3.c, true, false, global3.c), vec4<bool>(false, false, global3.c, false), true), select(vec4<bool>(false, false, false, global3.c), vec4<bool>(true, global3.c, global3.c, global3.c), vec4<bool>(true, global3.c, true, global3.c)), vec4<bool>(true, global3.c, false, global3.c)), true || global3.c), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(global3.c, true, true, global3.c), vec4<bool>(true, global3.c, false, global3.c)), vec4<bool>(false, false, true, false), !vec4<bool>(true, global3.c, global3.c, global3.c))), select(select(vec4<bool>(global3.c && global3.c, global3.c || false, global3.c, global3.c), select(vec4<bool>(false, global3.c, false, global3.c), vec4<bool>(true, true, false, global3.c), select(vec4<bool>(false, global3.c, global3.c, global3.c), vec4<bool>(true, global3.c, global3.c, true), global3.c)), !vec4<bool>(true, global3.c, false, global3.c)), !vec4<bool>(!global3.c, true, global3.b < 1i, 1535f <= global3.a.a.x), !(!all(vec3<bool>(true, global3.c, global3.c)))), false);
    global2 = -58227i;
    global2 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -global3.a.c), countOneBits(-vec2<i32>(-2147483647i, global3.b))), _wgslsmith_add_vec2_i32(max(select(vec2<i32>(1i, global3.a.c), vec2<i32>(-1i, global3.a.c), false), vec2<i32>(1i, -7576i) >> (u_input.a.xw % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.b, global3.b), vec2<i32>(global3.b, 1i), ~vec2<i32>(global3.a.c, global3.a.c))));
    var var_1 = select(var_0, var_0, !select(var_0, !select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(var_0.x, true, true, global3.c), true), !var_0));
    var var_2 = _wgslsmith_f_op_f32(global3.a.d.x + -376f);
    return global3.a.a.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = -897f;
    var var_1 = ~(-2147483647i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, -101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    global3 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a.d.xz), _wgslsmith_f_op_f32(-var_2.x), reverseBits(_wgslsmith_div_i32(_wgslsmith_mod_i32(-56841i, global3.b), global3.a.c)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-249f * 915f)), _wgslsmith_f_op_f32(f32(-1f) * -1246f), 1000f)), _wgslsmith_mult_i32(-1i, -11055i), any(vec3<bool>(true, global3.c, all(vec3<bool>(global3.c, global3.c, false)))) & select(true | (u_input.a.x > u_input.a.x), true, true));
    return global3.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> vec2<i32> {
    global1 = array<Struct_2, 2>();
    global2 = ~arg_2.c.b & min(arg_3.b, _wgslsmith_add_i32(countOneBits(36631i), arg_2.c.b));
    var var_0 = any(vec4<bool>(arg_3.c, !arg_1.c, all(select(select(vec3<bool>(false, arg_2.c.c, arg_2.c.c), vec3<bool>(false, arg_1.c, arg_3.c), true), !vec3<bool>(arg_3.c, arg_3.c, false), select(vec3<bool>(true, arg_2.c.c, true), vec3<bool>(true, arg_3.c, global3.c), true))), arg_3.c));
    let var_1 = Struct_3(Struct_1(arg_0.zz, -170f, 1i, global3.a.d), -7532i, arg_1.c);
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b) - _wgslsmith_f_op_f32(-825f * _wgslsmith_f_op_f32(-765f + 270f))))) == _wgslsmith_f_op_f32(arg_2.c.a.a.x + -1000f);
    return vec2<i32>(-19519i, -2147483647i >> (_wgslsmith_dot_vec3_u32(u_input.a.zyy, vec3<u32>(arg_2.a.x, abs(25969u), 1u)) % 32u));
}

fn func_5(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = reverseBits(~((-vec4<i32>(-23738i, 0i, 0i, 2147483647i) & select(vec4<i32>(1316i, 21581i, 2147483647i, global3.b), vec4<i32>(arg_0.x, global3.b, -2147483647i, global3.b), global3.c)) << ((vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.a.x) << (countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global4 = array<vec4<f32>, 25>();
    let var_1 = var_0.yyy;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.a.b, global3.a.a.x))), func_2(-554f).d.yz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global3.a.d.yy)))), _wgslsmith_div_f32(1037f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-138f + global3.a.d.x), _wgslsmith_f_op_f32(min(global3.a.d.x, 1000f))))), -(firstLeadingBit(-1i) | var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global3.a.d, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.a.d.x, global3.a.d.x, -1197f))))) + global3.a.d)), var_1.x, false);
}

fn func_1() -> Struct_3 {
    global3 = func_5(_wgslsmith_add_vec2_i32(-countOneBits(abs(vec2<i32>(global3.a.c, global3.a.c))), func_4(global3.a.d, Struct_3(func_2(663f), -43272i, any(vec3<bool>(global3.c, true, false))), Struct_4(vec4<u32>(u_input.b, u_input.c.x, u_input.a.x, 4294967295u), _wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(12673u, 25u)] + global4[_wgslsmith_index_u32(u_input.c.x, 25u)]), Struct_3(global3.a, global3.a.c, false)), Struct_3(func_2(-171f), global3.b, select(global3.c, global3.c, global3.c)))));
    global3 = func_5(vec2<i32>(0i, _wgslsmith_mod_i32(~0i, global3.b)));
    let var_0 = _wgslsmith_mult_i32(global3.b, 8702i);
    let var_1 = u_input.a.xx;
    var var_2 = !select(!vec2<bool>(any(vec2<bool>(true, global3.c)), true), vec2<bool>(any(!vec2<bool>(false, global3.c)), func_5(reverseBits(vec2<i32>(0i, global3.b))).c), !select(vec2<bool>(true, true), !vec2<bool>(global3.c, global3.c), !vec2<bool>(true, global3.c)));
    return Struct_3(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(global3.a.a.x).b - global3.a.b)))), var_0, all(!vec3<bool>(1i >= global3.b, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = 643f != _wgslsmith_f_op_f32(global3.a.b * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global3.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1747f)), false)));
    global3 = func_1();
    var var_1 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, ((u_input.a << (vec4<u32>(u_input.b, 24412u, 4294967295u, 0u) % vec4<u32>(32u))) | u_input.c) << (_wgslsmith_mod_vec4_u32(u_input.c, ~vec4<u32>(u_input.a.x, 42615u, 27935u, 66215u)) % vec4<u32>(32u))), 25u)];
    let var_2 = -386f;
    var var_3 = firstTrailingBit(~u_input.a.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(func_1().a.d.zz * vec2<f32>(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(exp2(global3.a.b))), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -436f), func_1().a.b), any(vec2<bool>(false, var_0))))));
    var var_5 = true;
    let var_6 = !(!(!(!vec2<bool>(global3.c, global3.c))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.c, u_input.a.x, 8064i);
}

