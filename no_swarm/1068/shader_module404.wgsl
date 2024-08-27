struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-506f, vec4<f32>(-238f, -953f, 1000f, -931f), 1977i, vec2<i32>(-18114i, 76983i));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1693f, vec4<f32>(-1000f, 215f, -183f, 696f), 1i, vec2<i32>(2147483647i, 2147483647i)), Struct_1(494f, vec4<f32>(319f, -1988f, -1053f, -1000f), -16303i, vec2<i32>(21833i, 3222i)), Struct_1(-843f, vec4<f32>(-1000f, 949f, 972f, -128f), 993i, vec2<i32>(-1i, 0i)), Struct_1(1614f, vec4<f32>(-569f, 2372f, 946f, -262f), 17113i, vec2<i32>(0i, 1i)), Struct_1(725f, vec4<f32>(2335f, 460f, 703f, 475f), 19308i, vec2<i32>(67404i, -8974i)), Struct_1(277f, vec4<f32>(927f, 1000f, 1000f, -249f), 1i, vec2<i32>(1i, i32(-2147483648))), Struct_1(-680f, vec4<f32>(-342f, -2002f, 918f, 456f), i32(-2147483648), vec2<i32>(-1i, -1745i)), Struct_1(219f, vec4<f32>(-614f, 245f, -1029f, -732f), 16555i, vec2<i32>(i32(-2147483648), 0i)), Struct_1(309f, vec4<f32>(-469f, 645f, -976f, -1968f), i32(-2147483648), vec2<i32>(0i, -1i)), Struct_1(-400f, vec4<f32>(503f, -333f, -545f, 1000f), -30801i, vec2<i32>(-20125i, -1i)), Struct_1(-1712f, vec4<f32>(1000f, 497f, 1209f, -744f), 2147483647i, vec2<i32>(2147483647i, 1i)), Struct_1(1724f, vec4<f32>(-1842f, -461f, -503f, 433f), 0i, vec2<i32>(-17993i, 1i)), Struct_1(562f, vec4<f32>(520f, 2700f, -1000f, 992f), -1i, vec2<i32>(-39150i, 53801i)), Struct_1(1000f, vec4<f32>(1000f, -277f, 805f, 1347f), -42105i, vec2<i32>(9411i, 47864i)), Struct_1(-1305f, vec4<f32>(-1449f, 157f, 1405f, 683f), 2147483647i, vec2<i32>(-23247i, i32(-2147483648))), Struct_1(-3219f, vec4<f32>(-2125f, -237f, -1429f, -1185f), -1i, vec2<i32>(1i, 0i)), Struct_1(-1000f, vec4<f32>(1130f, -277f, -2136f, -1102f), i32(-2147483648), vec2<i32>(35641i, -1i)), Struct_1(454f, vec4<f32>(342f, -333f, -365f, 403f), 0i, vec2<i32>(-5724i, 2147483647i)), Struct_1(250f, vec4<f32>(109f, -464f, 617f, 637f), 2147483647i, vec2<i32>(i32(-2147483648), -1i)), Struct_1(-929f, vec4<f32>(-2767f, -759f, 598f, -409f), 1i, vec2<i32>(2147483647i, 2147483647i)), Struct_1(1000f, vec4<f32>(192f, 1317f, -346f, -931f), 2147483647i, vec2<i32>(-57023i, -30333i)));

var<private> global2: array<vec4<u32>, 25>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = array<Struct_1, 21>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.x, global0.b.x, true))), -1150f);
    global1 = array<Struct_1, 21>();
    global2 = array<vec4<u32>, 25>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f - global0.a) - _wgslsmith_div_f32(var_0.x, global0.a)), global0.a)), 1078f)) - 144f);
    return false;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1440f - _wgslsmith_f_op_f32(ceil(-641f))), global0.a), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.b.x), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) - arg_1.d.b.zz)))), vec2<bool>(true, all(vec2<bool>(arg_1.b.x, all(vec3<bool>(false, arg_2.x, arg_2.x)))))));
    global2 = array<vec4<u32>, 25>();
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(arg_1.e), 21u)];
    let var_2 = abs(~u_input.a.x << (arg_1.e % 32u));
    global1 = array<Struct_1, 21>();
    return 40222u;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    let var_0 = Struct_2(~arg_0.a, vec2<bool>(!(arg_0.c.b.x == _wgslsmith_f_op_f32(-466f * 124f)), true), Struct_1(arg_0.c.a, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.a)), -669f, _wgslsmith_f_op_f32(f32(-1f) * -718f), arg_0.d.b.x), global0.b), arg_0.c.c, (firstTrailingBit(vec2<i32>(-2147483647i, 0i)) << (vec2<u32>(arg_0.e, 1u) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_i32(abs(arg_0.a.wz), firstTrailingBit(u_input.a))), arg_0.c, func_4(1u, Struct_2(~arg_0.a, arg_0.b, global1[_wgslsmith_index_u32(arg_0.e, 21u)], Struct_1(global0.b.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(465f, 1972f, global0.b.x, 598f))), firstLeadingBit(u_input.a.x), select(vec2<i32>(arg_0.c.d.x, 107454i), vec2<i32>(arg_0.c.d.x, global0.d.x), false)), 41910u), select(vec3<bool>(19566u >= arg_0.e, func_3(), arg_0.b.x), select(vec3<bool>(false, false, true), !vec3<bool>(false, arg_0.b.x, arg_0.b.x), select(arg_0.b.x, arg_0.b.x, arg_0.b.x)), select(select(vec3<bool>(false, true, arg_0.b.x), vec3<bool>(false, true, arg_0.b.x), arg_0.b.x), !vec3<bool>(arg_0.b.x, false, arg_0.b.x), vec3<bool>(false, false, arg_0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(abs(-1214f)), arg_0.d.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(-global0.a))))));
    return 3564u;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3.b.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1084f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.b.x))), -232f)));
    let var_2 = arg_2;
    var var_3 = !vec2<bool>(func_3(), arg_3.b.x && (arg_3.b.x & arg_3.b.x));
    global1 = array<Struct_1, 21>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(arg_3.c.b.x + arg_3.d.a)), vec4<f32>(1540f, arg_3.d.a, -141f, -170f), arg_1.x, arg_3.c.d);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    var var_0 = Struct_2(arg_3.a, !vec2<bool>(all(vec3<bool>(false, false, true)), any(arg_0) & false), func_5(~arg_3.c.d.x, _wgslsmith_add_vec3_i32(vec3<i32>(-1636i, -u_input.a.x, i32(-1i) * -19163i), ~(arg_3.a.yyw ^ vec3<i32>(arg_2, -63598i, -13942i))), vec4<u32>(~firstLeadingBit(4294967295u), func_2(Struct_2(vec4<i32>(-2147483647i, arg_2, u_input.a.x, -2147483647i), vec2<bool>(false, arg_0.x), global1[_wgslsmith_index_u32(37882u, 21u)], global1[_wgslsmith_index_u32(arg_1.x, 21u)], arg_3.e), arg_1), ~arg_3.e, _wgslsmith_sub_u32(4294967295u, 0u) >> (~arg_3.e % 32u)), Struct_2(abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.c.d.x, 26074i, 45801i, 20508i), vec4<i32>(-2738i, global0.d.x, arg_2, -50355i))), arg_3.b, global1[_wgslsmith_index_u32(~(arg_3.e << (54966u % 32u)), 21u)], Struct_1(_wgslsmith_div_f32(arg_3.c.a, arg_3.d.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(-351f, arg_3.d.b.x, global0.a, arg_3.d.b.x), vec4<f32>(global0.a, global0.b.x, -998f, arg_3.d.a)), -1i, vec2<i32>(9954i, arg_2)), arg_3.e)), func_5(_wgslsmith_dot_vec2_i32(arg_3.a.xy, _wgslsmith_mult_vec2_i32(u_input.a, u_input.a)) << (~abs(37810u) % 32u), arg_3.a.zyz | vec3<i32>(global0.d.x, global0.c, ~arg_2), vec4<u32>(~min(arg_1.x, 1u), ~(arg_1.x & arg_3.e), _wgslsmith_sub_u32(_wgslsmith_div_u32(36063u, arg_1.x), reverseBits(arg_3.e)), _wgslsmith_dot_vec2_u32(max(arg_1.zz, vec2<u32>(arg_3.e, 15180u)), arg_1.xx)), arg_3), ~countOneBits(_wgslsmith_dot_vec3_u32(~arg_1, firstTrailingBit(vec3<u32>(37898u, 0u, arg_1.x)))));
    let var_1 = min(arg_1, vec3<u32>(~arg_3.e, 1u, arg_1.x));
    var var_2 = Struct_2(select(_wgslsmith_div_vec4_i32(arg_3.a, vec4<i32>(reverseBits(global0.c), arg_2, arg_3.c.d.x, -5044i)), -firstTrailingBit(vec4<i32>(arg_2, global0.c, global0.d.x, var_0.d.d.x)), select(vec4<bool>(func_3(), -762f != var_0.d.b.x, var_0.b.x || false, true), !select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), arg_0, vec4<bool>(arg_3.b.x, true, arg_0.x, false)), true | (false & arg_0.x))), vec2<bool>(any(vec4<bool>(true, all(vec2<bool>(true, arg_3.b.x)), all(vec3<bool>(arg_3.b.x, arg_0.x, arg_0.x)), arg_3.d.b.x == -1000f)), !all(arg_0.xxw)), Struct_1(arg_3.c.b.x, global0.b, global0.c, vec2<i32>(firstTrailingBit(1i), arg_3.c.c | _wgslsmith_add_i32(arg_2, arg_3.d.d.x))), arg_3.c, arg_3.e);
    return arg_3.e;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: u32) -> vec2<i32> {
    let var_0 = arg_1;
    let var_1 = 4294967295u;
    global1 = array<Struct_1, 21>();
    global0 = func_5(-1i, ~firstLeadingBit(reverseBits(-vec3<i32>(u_input.a.x, 66428i, 0i))), ~(~global2[_wgslsmith_index_u32(arg_1.x, 25u)]), Struct_2(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-7655i, global0.d.x, global0.d.x, -1i), vec4<i32>(2147483647i, 14351i, u_input.a.x, global0.d.x)), 2147483647i, _wgslsmith_mod_i32(u_input.a.x, 0i)) >> (global2[_wgslsmith_index_u32(17382u, 25u)] % vec4<u32>(32u)), vec2<bool>(true, true), func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, global0.c) << (vec2<u32>(52102u, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(global0.c, 8046i), vec2<i32>(u_input.a.x, 1i))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 39067i), vec3<i32>(-2147483647i, -25928i, 63920i)) << (var_0 % vec3<u32>(32u)), vec4<u32>(arg_1.x | arg_2, _wgslsmith_div_u32(0u, 4294967295u), ~0u, ~var_0.x), Struct_2(vec4<i32>(-17459i, -2147483647i, global0.c, global0.c) << (global2[_wgslsmith_index_u32(var_1, 25u)] % vec4<u32>(32u)), vec2<bool>(true, true), Struct_1(-356f, vec4<f32>(global0.b.x, global0.b.x, arg_0.x, 2480f), global0.d.x, vec2<i32>(0i, global0.c)), func_5(-14731i, vec3<i32>(-2147483647i, 1i, global0.d.x), vec4<u32>(4294967295u, 0u, 0u, var_0.x), Struct_2(vec4<i32>(24515i, 2147483647i, -1i, 2102i), vec2<bool>(false, true), Struct_1(global0.a, vec4<f32>(arg_0.x, 1118f, global0.b.x, arg_0.x), global0.d.x, global0.d), global1[_wgslsmith_index_u32(var_0.x, 21u)], var_1)), 13812u)), func_5(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.d.x, -1i), vec2<i32>(-2147483647i, -1i)), firstLeadingBit(vec3<i32>(-1784i, global0.d.x, -12623i) << (var_0 % vec3<u32>(32u))), vec4<u32>(102632u, func_4(46203u, Struct_2(vec4<i32>(u_input.a.x, global0.d.x, -46189i, global0.d.x), vec2<bool>(false, false), Struct_1(arg_0.x, global0.b, 0i, global0.d), global1[_wgslsmith_index_u32(62893u, 21u)], var_1), vec3<bool>(true, true, true), global0.b.wzx), 19327u, arg_1.x << (0u % 32u)), Struct_2(-vec4<i32>(5048i, -32403i, -51570i, 1i), select(vec2<bool>(false, true), vec2<bool>(true, false), false), global1[_wgslsmith_index_u32(4294967295u, 21u)], func_5(u_input.a.x, vec3<i32>(u_input.a.x, global0.d.x, u_input.a.x), global2[_wgslsmith_index_u32(arg_1.x, 25u)], Struct_2(vec4<i32>(-2147483647i, -14273i, 31793i, global0.c), vec2<bool>(true, true), global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], 9714u)), ~23129u)), var_1));
    let var_2 = 1u;
    return vec2<i32>(-u_input.a.x, ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~55687u, 21u)];
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-755f)) - _wgslsmith_f_op_f32(abs(global0.a))), global0.a, _wgslsmith_f_op_f32(-global0.a), global0.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)), 1306f, global0.a, 789f)), ~(~(-53749i)), _wgslsmith_div_vec2_i32(global0.d, vec2<i32>(_wgslsmith_mod_i32(65867i, global0.c), u_input.a.x << (55277u % 32u)) ^ vec2<i32>(var_0.c ^ var_0.c, 1i)));
    global1 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1106f))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-635f))) + -905f)), global0.b, -2147483647i, ~vec2<i32>(2147483647i, u_input.a.x) | func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 1195f, var_1)), ~(~vec3<u32>(0u, 4294967295u, 51049u)), func_1(vec4<bool>(true, true, true, true), ~vec3<u32>(4294967295u, 0u, 60624u), ~global0.d.x, Struct_2(vec4<i32>(global0.c, -1i, 0i, global0.c), vec2<bool>(false, true), Struct_1(-638f, vec4<f32>(global0.b.x, 1256f, var_1, global0.b.x), var_0.c, vec2<i32>(1i, -3141i)), Struct_1(global0.a, global0.b, var_0.c, var_0.d), 58339u))));
    global0 = Struct_1(-418f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 + global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, -924f)) - global0.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * -1492f))) + vec4<f32>(_wgslsmith_f_op_f32(min(-161f, _wgslsmith_f_op_f32(-1965f - global0.a))), -409f, -1425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), 2147483647i, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, 4542i, -9899i), _wgslsmith_mod_i32(global0.d.x, global0.d.x)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), -min(vec2<i32>(u_input.a.x, global0.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(48544i, 2147483647i), vec2<i32>(var_0.c, -16339i), vec2<i32>(global0.d.x, var_0.d.x)))));
    var var_2 = Struct_2(vec4<i32>(global0.d.x << ((~15103u << (firstTrailingBit(1u) % 32u)) % 32u), -40327i, -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, var_0.c, -21095i, 1i), vec4<i32>(30964i, 2147483647i, u_input.a.x, -2147483647i)) ^ ~vec4<i32>(0i, -27245i, 0i, 0i), ~vec4<i32>(u_input.a.x, -34591i, u_input.a.x, global0.d.x) & vec4<i32>(0i, 14405i, -2147483647i, 0i))), vec2<bool>(true, true), global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(12291u, _wgslsmith_clamp_u32(1u, 4294967295u, 0u), 1u)), 1u), 21u)], global1[_wgslsmith_index_u32(firstLeadingBit(1u), 21u)], ~func_1(vec4<bool>(true, false, any(vec3<bool>(true, true, false)), true), _wgslsmith_add_vec3_u32(vec3<u32>(56598u, 45961u, 33928u), select(vec3<u32>(0u, 47110u, 23638u), vec3<u32>(1u, 636u, 0u), vec3<bool>(false, false, true))), ~_wgslsmith_add_i32(u_input.a.x, -2147483647i), Struct_2(vec4<i32>(0i, 2335i, -8200i, u_input.a.x), vec2<bool>(false, false), global1[_wgslsmith_index_u32(~4294967295u, 21u)], Struct_1(-548f, global0.b, global0.d.x, vec2<i32>(22058i, 28594i)), ~12999u)));
    var var_3 = func_5(3343i, var_2.a.zyw, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(3442u, abs(var_2.e)), 25u)], Struct_2(~(var_2.a | -var_2.a), !select(var_2.b, select(vec2<bool>(var_2.b.x, var_2.b.x), var_2.b, true), true), func_5(~(i32(-1i) * -2147483647i), max(countOneBits(var_2.a.zwy), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), max(vec4<u32>(var_2.e, var_2.e, var_2.e, var_2.e), vec4<u32>(var_2.e, var_2.e, var_2.e, var_2.e)), Struct_2(vec4<i32>(9058i, global0.d.x, var_0.d.x, global0.d.x), select(var_2.b, var_2.b, var_2.b), var_2.d, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.e, var_2.e), 21u)], ~var_2.e)), Struct_1(var_1, var_0.b, var_0.c ^ var_2.a.x, vec2<i32>(i32(-1i) * -24723i, _wgslsmith_mult_i32(global0.d.x, var_2.c.d.x))), 3364u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b.x, _wgslsmith_mult_vec3_u32(select(firstLeadingBit(vec3<u32>(var_2.e, var_2.e, var_2.e)), firstLeadingBit(vec3<u32>(36384u, 1u, 0u)), _wgslsmith_dot_vec3_i32(var_2.a.yyx, vec3<i32>(u_input.a.x, -2147483647i, global0.c)) != firstTrailingBit(u_input.a.x)), select(vec3<u32>(0u, ~var_2.e, ~var_2.e), vec3<u32>(~0u, var_2.e, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 29451u, 63035u), vec3<u32>(var_2.e, 4294967295u, 0u))), true)), -711f, firstTrailingBit(vec4<u32>(23171u, func_4(_wgslsmith_div_u32(var_2.e, 4294967295u), Struct_2(var_2.a, vec2<bool>(false, true), global1[_wgslsmith_index_u32(var_2.e, 21u)], var_2.d, var_2.e), vec3<bool>(false, var_2.b.x, var_2.b.x), _wgslsmith_f_op_vec3_f32(var_2.c.b.zyw * var_0.b.zyz)), min(var_2.e, 37429u) << (var_2.e % 32u), 0u)));
}

