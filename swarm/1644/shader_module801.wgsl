struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<f32>(-1830f, 1002f), vec2<bool>(false, true), false), Struct_1(vec2<f32>(-527f, -869f), vec2<bool>(false, false), false), Struct_1(vec2<f32>(-1795f, -301f), vec2<bool>(true, true), true), Struct_1(vec2<f32>(1245f, -1140f), vec2<bool>(true, false), true), Struct_1(vec2<f32>(901f, -1531f), vec2<bool>(false, true), false), Struct_1(vec2<f32>(-1347f, 904f), vec2<bool>(true, true), false), Struct_1(vec2<f32>(1280f, -1000f), vec2<bool>(true, false), true), Struct_1(vec2<f32>(-1541f, -492f), vec2<bool>(false, true), true), Struct_1(vec2<f32>(270f, 642f), vec2<bool>(false, true), true), Struct_1(vec2<f32>(-540f, -1063f), vec2<bool>(false, true), true), Struct_1(vec2<f32>(800f, 469f), vec2<bool>(true, true), true), Struct_1(vec2<f32>(-1479f, -451f), vec2<bool>(true, false), true), Struct_1(vec2<f32>(-172f, 407f), vec2<bool>(false, false), false), Struct_1(vec2<f32>(-1230f, 220f), vec2<bool>(true, false), true));

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, false), Struct_1(vec2<f32>(-1740f, 1091f), vec2<bool>(false, false), false));

var<private> global2: Struct_2;

var<private> global3: f32;

var<private> global4: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = Struct_1(global2.b.a, vec2<bool>(false, u_input.c <= reverseBits(6695u)), false);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, reverseBits(1113i) << (~_wgslsmith_add_u32(u_input.e, u_input.e) % 32u), max(u_input.d, -u_input.b), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, 1787i, u_input.a), -vec4<i32>(u_input.d, 0i, u_input.b, u_input.a))), -countOneBits(~(vec4<i32>(-1i, 1i, u_input.a, -6682i) >> (vec4<u32>(u_input.c, 48806u, 30266u, u_input.c) % vec4<u32>(32u)))));
    var var_2 = true || (-11316i <= firstTrailingBit(u_input.a));
    var var_3 = arg_0;
    let var_4 = vec4<f32>(149f, _wgslsmith_f_op_f32(step(var_0.a.x, 1919f)), _wgslsmith_f_op_f32(ceil(var_3.b.a.x)), _wgslsmith_f_op_f32(ceil(global1.b.a.x)));
    return ~(~vec3<i32>(~0i, ~u_input.b, 2833i) >> (select(vec3<u32>(u_input.e >> (u_input.e % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.c, u_input.c), vec4<u32>(5377u, u_input.c, 25088u, u_input.e)), ~0u), select(~vec3<u32>(u_input.c, u_input.e, u_input.e), vec3<u32>(u_input.c, 62905u, 0u), select(var_0.b.x, true, global2.a.x)), select(select(vec3<bool>(var_0.c, arg_0.a.x, true), vec3<bool>(var_3.b.b.x, arg_0.a.x, global1.b.b.x), global2.a.x), !vec3<bool>(arg_0.b.c, var_3.a.x, true), vec3<bool>(global1.a.x, false, global2.a.x))) % vec3<u32>(32u)));
}

fn func_2() -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.b.a.x)), -1332f), global1.a.x));
    let var_0 = select(vec4<bool>((_wgslsmith_f_op_f32(ceil(-1051f)) < global1.b.a.x) && global2.a.x, true, !(!all(global1.b.b)), any(select(!vec3<bool>(true, global1.a.x, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), !(!vec4<bool>(global1.b.c | true, -491f > global1.b.a.x, !global2.a.x, true)), !global1.a.x);
    global4 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(0i, 1i, u_input.d)), func_3(Struct_2(vec2<bool>(false, false), Struct_1(vec2<f32>(883f, -486f), select(var_0.ww, vec2<bool>(false, var_0.x), true), true))));
    global1 = Struct_2(!select(vec2<bool>(global2.a.x == var_0.x, true), global1.b.b, vec2<bool>(true, true)), global1.b);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.a.x), _wgslsmith_f_op_f32(-global1.b.a.x))), global2.b.a.x, !global2.b.c));
    return Struct_2(vec2<bool>(global2.b.b.x | true, select(var_0.x, true || all(vec4<bool>(global1.a.x, true, false, global2.b.b.x)), true)), global0[_wgslsmith_index_u32(~(~(~41103u)), 14u)]);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global2 = func_2();
    global4 = ~1i;
    let var_0 = Struct_3(func_2().b, func_2(), func_2().b, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, 4294967295u, 31966u, 1u)), ~vec4<u32>(1u, 62584u, u_input.c, u_input.e)), abs(abs(vec4<u32>(u_input.e, 31075u, 93819u, 30137u)))), countOneBits(select(min(vec4<u32>(23309u, 18281u, 92351u, 33535u), vec4<u32>(u_input.c, 70910u, u_input.e, u_input.e)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), !vec4<bool>(global1.b.b.x, true, global2.a.x, true)))));
    let var_1 = _wgslsmith_dot_vec2_i32(select(-vec2<i32>(~18967i, u_input.d), max(-max(vec2<i32>(-20002i, u_input.d), vec2<i32>(11347i, u_input.b)), vec2<i32>(39622i, -1i) & ~vec2<i32>(u_input.d, u_input.a)), !all(select(vec4<bool>(false, global1.a.x, false, global2.a.x), vec4<bool>(global2.b.b.x, arg_0, global2.a.x, true), global2.a.x))), firstTrailingBit((reverseBits(vec2<i32>(-1i, u_input.b)) << (var_0.d.yz % vec2<u32>(32u))) & reverseBits(select(vec2<i32>(-1i, u_input.d), vec2<i32>(-24848i, -2147483647i), true))));
    global0 = array<Struct_1, 14>();
    return arg_1.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = arg_0.yz;
    var var_1 = true;
    var var_2 = u_input.c;
    let var_3 = firstLeadingBit(vec4<i32>(var_0.x | min(u_input.b, arg_0.x), var_0.x | (arg_0.x >> (0u % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.d, var_0.x) & vec3<i32>(var_0.x, u_input.a, arg_0.x), ~vec3<i32>(u_input.d, arg_0.x, 0i)), ~(-2147483647i))) << (max(arg_1.d, ~arg_1.d) % vec4<u32>(32u));
    return Struct_3(func_4(false, arg_1.b), Struct_2(!func_2().a, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.b.b.a))), vec2<bool>(any(global1.b.b), arg_1.a.b.x), false)), func_4(true, arg_1.b), arg_1.d);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = func_5(select(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 47363i, u_input.d), vec3<i32>(arg_1, u_input.b, 35165i), vec3<i32>(u_input.a, arg_1, u_input.a))), (vec3<i32>(-1i) * -vec3<i32>(u_input.b, 1i, arg_1)) & vec3<i32>(28842i, _wgslsmith_sub_i32(2147483647i, u_input.d), -arg_1), true), Struct_3(func_4(select(any(vec3<bool>(true, false, arg_2.b.x)), arg_0, true), func_2()), func_2(), func_2().b, vec4<u32>(countOneBits(1u) | u_input.c, 23261u, u_input.e << (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u), 0u)));
    let var_1 = u_input.d;
    let var_2 = ~abs(firstLeadingBit(min(vec4<i32>(arg_1, -22470i, var_1, u_input.d), -vec4<i32>(-1i, u_input.b, var_1, 1i))));
    global4 = -var_1;
    global2 = Struct_2(vec2<bool>(!global1.a.x, !(!global2.a.x) && var_0.b.b.b.x), global2.b);
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1101f, -1000f)) + global1.b.a))));
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    let var_0 = true;
    let var_1 = Struct_2(!func_2().a, global2.b);
    let var_2 = ~countOneBits(_wgslsmith_clamp_vec2_i32(countOneBits(~vec2<i32>(arg_3, arg_3)), vec2<i32>(1i, u_input.b) | select(vec2<i32>(20023i, u_input.a), vec2<i32>(u_input.d, arg_3), false), firstLeadingBit(min(vec2<i32>(16326i, u_input.d), vec2<i32>(7859i, 1i)))));
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(global1.b.a, vec2<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(-func_2().b.a.x))), func_5(max(~vec3<i32>(62182i, arg_3, var_2.x), min(-vec3<i32>(43303i, 0i, 0i), reverseBits(vec3<i32>(u_input.b, arg_3, -1i)))), func_5(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_3, arg_3, var_2.x) << (arg_2.d.zyy % vec3<u32>(32u)), ~vec3<i32>(13018i, arg_3, 1i)), func_5(~vec3<i32>(2147483647i, u_input.a, arg_3), Struct_3(Struct_1(var_1.b.a, arg_2.c.b, global1.b.b.x), arg_2.b, Struct_1(arg_0.c.a, vec2<bool>(var_0, false), false), vec4<u32>(u_input.c, 58474u, arg_2.d.x, 0u))))).a.b, !all(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(var_1.a.x, true, var_1.b.b.x), false | arg_0.a.c)));
    let var_4 = -350f;
    return Struct_2(!(!select(vec2<bool>(false, true), !global2.b.b, false)), global0[_wgslsmith_index_u32(~4294967295u, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(false, -67702i, global0[_wgslsmith_index_u32(u_input.e, 14u)])) - vec2<f32>(-744f, -2588f)), global1.a, global1.a.x), Struct_2(global1.a, func_5(vec3<i32>(-43164i, u_input.d, u_input.d), Struct_3(global1.b, Struct_2(global2.b.b, global1.b), Struct_1(vec2<f32>(650f, global2.b.a.x), vec2<bool>(global1.b.b.x, global2.b.c), false), vec4<u32>(0u, 53041u, 60837u, u_input.c))).c), func_2().b, countOneBits(vec4<u32>(u_input.e, 4542u, 1u, 0u) | max(vec4<u32>(6579u, 52371u, u_input.c, 13490u), vec4<u32>(47854u, u_input.c, u_input.e, 255u)))), !global2.b.c, Struct_3(global2.b, Struct_2(vec2<bool>(global2.b.c && false, !global2.b.b.x), func_2().b), func_5(abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 2147483647i, u_input.d), vec3<i32>(u_input.b, -71041i, u_input.b))), Struct_3(Struct_1(vec2<f32>(-358f, 188f), vec2<bool>(false, true), true), Struct_2(global2.a, global2.b), Struct_1(global1.b.a, vec2<bool>(global1.b.b.x, global1.a.x), global2.b.b.x), vec4<u32>(1u, u_input.c, 1405u, u_input.c) >> (vec4<u32>(u_input.e, 47260u, u_input.e, 1u) % vec4<u32>(32u)))).a, vec4<u32>(4294967295u, 48028u, ~(~u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, u_input.e), ~vec4<u32>(u_input.c, 22056u, 33961u, 71710u)))), u_input.a ^ (u_input.d & min(i32(-1i) * -9519i, _wgslsmith_div_i32(u_input.b, 0i))));
    let var_1 = Struct_2(global2.b.b, func_2().b);
    global2 = func_2();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.a.x, -1640f, var_0.b.a.x))))));
    let var_3 = Struct_2(func_4(all(global2.b.b), var_1).b, func_2().b);
    var var_4 = func_5(~(~(~vec3<i32>(-2829i, u_input.a, -1i) ^ (vec3<i32>(1i, u_input.b, u_input.d) & vec3<i32>(19734i, -29753i, 0i)))), Struct_3(func_2().b, var_1, func_2().b, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, max(u_input.c, 6641u), ~u_input.c), ~(vec4<u32>(u_input.e, 14654u, u_input.c, u_input.c) >> (vec4<u32>(0u, 1u, 7647u, 56129u) % vec4<u32>(32u)))))).b;
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1121f)), var_1.b.a.x, var_4.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(global2.b.b.x, u_input.a, var_0.b)).x)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.b.a.x, var_2.x, var_2.x, var_0.b.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, var_0.b.a.x, 331f, -217f)), true)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1089f, -1329f, var_0.b.a.x, var_3.b.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(432f, _wgslsmith_f_op_f32(round(-835f)))), vec2<f32>(var_4.b.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f - -1792f))))));
}

