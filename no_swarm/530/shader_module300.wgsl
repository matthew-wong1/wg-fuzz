struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_1,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-167f, -797f, 227f, -385f, -1914f, -435f, 107f, 974f, -1363f, -1082f, -1212f, 1024f, -802f, -2983f, -465f, -648f, -231f, -731f, -1243f, 898f, 1468f, -889f, -123f, 1720f, 1094f, -671f, 1205f, 670f, 382f, 1000f);

var<private> global1: u32 = 4294967295u;

var<private> global2: vec2<u32> = vec2<u32>(17010u, 1u);

var<private> global3: array<u32, 21>;

var<private> global4: f32 = -1000f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    global2 = vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(0u, global3[_wgslsmith_index_u32(16258u, 21u)], 4294967295u, 6396u)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54491u, 21u)], 21u)], arg_2.c.c, 1u, global2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 27730u, global2.x, 72286u), vec4<u32>(global2.x, arg_2.a.x, 0u, 4294967295u))) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(1u, firstLeadingBit(1u), firstLeadingBit(global2.x), 1u))));
    global3 = array<u32, 21>();
    let var_0 = all(!(!arg_2.c.e));
    global3 = array<u32, 21>();
    global3 = array<u32, 21>();
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1402f);
    global4 = global0[_wgslsmith_index_u32(0u, 30u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-532f, global0[_wgslsmith_index_u32(global2.x, 30u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 30u)]) * vec3<f32>(461f, -1000f, 1263f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(13636u, 30u)], -710f, global0[_wgslsmith_index_u32(global2.x, 30u)]))) * vec3<f32>(global0[_wgslsmith_index_u32(21227u, 30u)], -330f, global0[_wgslsmith_index_u32(~33588u, 30u)])), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(766f, 1087f, global0[_wgslsmith_index_u32(1u, 30u)])))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(150f, 1420f, 355f), vec3<f32>(global0[_wgslsmith_index_u32(13169u, 30u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 21u)], 30u)], -395f), vec3<bool>(false, true, false))))))), !func_3(vec3<bool>(true, true, true), vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 30u)], 212f, global0[_wgslsmith_index_u32(global2.x, 30u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 30u)]), Struct_2(vec2<u32>(0u, 1u), vec4<f32>(-1976f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25438u, 21u)], 21u)], 30u)], 1500f, global0[_wgslsmith_index_u32(4294967295u, 30u)]), Struct_1(global0[_wgslsmith_index_u32(7627u, 30u)], vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.a.x), global2.x, true, vec4<bool>(false, true, false, true)), u_input.a), u_input.a.yy))));
    global0 = array<f32, 30>();
    var var_2 = Struct_1(-433f, vec4<i32>(reverseBits(-1i), 1i, _wgslsmith_dot_vec3_i32(u_input.a, max(-u_input.a, vec3<i32>(u_input.a.x, 1i, u_input.a.x))), ~1i), global3[_wgslsmith_index_u32(0u, 21u)], false, select(select(vec4<bool>(all(vec3<bool>(false, true, false)), false, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(u_input.b <= u_input.b, any(vec2<bool>(true, false)), true, all(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, func_3(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1762f, 710f, var_1.x)), Struct_2(vec2<u32>(37834u, global2.x), vec4<f32>(-556f, global0[_wgslsmith_index_u32(4294967295u, 30u)], var_1.x, global0[_wgslsmith_index_u32(1077u, 30u)]), Struct_1(-1000f, vec4<i32>(15063i, -2147483647i, u_input.b, u_input.b), global3[_wgslsmith_index_u32(0u, 21u)], true, vec4<bool>(true, true, true, false)), u_input.a), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mult_i32(u_input.b, u_input.a.x) > (-1i >> (global2.x % 32u)))));
    return Struct_1(-425f, ~var_2.b, ~(~(~_wgslsmith_add_u32(global2.x, 38138u))), !any(select(select(vec3<bool>(true, false, var_2.d), var_2.e.wyy, vec3<bool>(true, true, var_2.e.x)), var_2.e.xxw, var_2.c == global2.x)), select(select(vec4<bool>(false, !var_2.e.x, var_2.e.x & true, any(var_2.e.xzz)), select(vec4<bool>(var_2.d, var_2.e.x, true, false), !vec4<bool>(true, true, true, var_2.e.x), true), vec4<bool>(true, any(var_2.e), func_3(var_2.e.xyx, vec4<f32>(521f, var_2.a, var_1.x, 1399f), Struct_2(vec2<u32>(26398u, 11170u), vec4<f32>(-1059f, var_1.x, var_1.x, global0[_wgslsmith_index_u32(14126u, 30u)]), Struct_1(var_2.a, vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 19449i), global3[_wgslsmith_index_u32(var_2.c, 21u)], var_2.d, var_2.e), var_2.b.xxw), u_input.a.yz), var_2.e.x)), !var_2.e, vec4<bool>(false, select(true, false, true && var_2.e.x), var_2.d, !all(vec4<bool>(false, false, true, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    let var_0 = true;
    var var_1 = Struct_4(select(vec4<bool>(any(arg_0.d.c.e), false, !(!arg_1.d.c.e.x), arg_0.d.c.d), arg_1.d.c.e, arg_1.b.c.e), arg_1, arg_0.b.c, arg_1.c, arg_1);
    var var_2 = _wgslsmith_div_u32(var_1.c.c, ~countOneBits(abs(4294967295u)) & arg_1.d.c.c);
    global2 = countOneBits(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~var_1.e.b.a, ~(~var_1.e.d.a)), vec2<u32>(reverseBits(~14980u), abs(_wgslsmith_mod_u32(arg_1.d.a.x, 0u)))));
    let var_3 = vec3<bool>(all(vec3<bool>(func_2().d | !arg_0.d.c.e.x, true, !arg_0.e.x)), true, false);
    return arg_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = func_4(Struct_3(arg_0.b.yz, Struct_2(~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], global2.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, global0[_wgslsmith_index_u32(global2.x, 30u)], 192f, arg_0.a)), vec4<f32>(arg_0.a, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 21u)], 30u)], arg_0.a, global0[_wgslsmith_index_u32(64719u, 30u)])), Struct_1(-180f, min(arg_0.b, arg_0.b), _wgslsmith_sub_u32(4294967295u, global3[_wgslsmith_index_u32(arg_0.c, 21u)]), any(vec3<bool>(arg_0.e.x, false, arg_0.d)), arg_0.e), u_input.a), arg_0.b.x, Struct_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(global2.x, 21u)]), vec2<u32>(4294967295u, arg_0.c)), vec4<f32>(-1171f, _wgslsmith_f_op_f32(-249f * arg_0.a), _wgslsmith_div_f32(131f, -324f), 1076f), func_2(), u_input.a), arg_0.e.xwx), Struct_3(vec2<i32>(-2147483647i ^ countOneBits(arg_0.b.x), ~(i32(-1i) * -1i)), Struct_2(~firstTrailingBit(vec2<u32>(8960u, 22624u)), vec4<f32>(_wgslsmith_f_op_f32(220f - -386f), arg_0.a, _wgslsmith_div_f32(-237f, arg_0.a), global0[_wgslsmith_index_u32(~global2.x, 30u)]), arg_0, -vec3<i32>(-2147483647i, -729i, 2147483647i) << (select(vec3<u32>(0u, 0u, 1u), vec3<u32>(4056u, arg_0.c, global3[_wgslsmith_index_u32(0u, 21u)]), arg_0.e.zxz) % vec3<u32>(32u))), abs(-(~57912i)), Struct_2(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, global3[_wgslsmith_index_u32(arg_0.c, 21u)]), reverseBits(vec2<u32>(arg_0.c, arg_0.c))), vec4<f32>(_wgslsmith_f_op_f32(step(1000f, arg_0.a)), -1693f, arg_0.a, _wgslsmith_f_op_f32(ceil(-2271f))), func_2(), vec3<i32>(min(arg_0.b.x, -16423i), i32(-1i) * -36806i, 1i)), vec3<bool>(arg_0.d, all(!vec3<bool>(arg_0.e.x, false, arg_0.e.x)), !any(vec2<bool>(false, arg_0.d)))));
    var var_1 = Struct_4(vec4<bool>(arg_0.e.x, all(vec2<bool>(!var_0.c.d, true)), arg_0.d, func_2().d), Struct_3(-(vec2<i32>(2147483647i, 0i) << (var_0.a % vec2<u32>(32u))) | vec2<i32>(var_0.d.x, reverseBits(arg_0.b.x)), Struct_2((var_0.a & vec2<u32>(var_0.c.c, global2.x)) << (var_0.a % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1145f, -1000f, -415f, global0[_wgslsmith_index_u32(var_0.a.x, 30u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(165f, global0[_wgslsmith_index_u32(21295u, 30u)], var_0.b.x, -218f) - vec4<f32>(global0[_wgslsmith_index_u32(992u, 30u)], 1000f, -617f, -962f))), Struct_1(-1632f, arg_0.b, abs(global2.x), func_3(vec3<bool>(false, true, arg_0.e.x), vec4<f32>(arg_0.a, 718f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11194u, 21u)], 30u)], arg_0.a), Struct_2(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global2.x, 21u)]), var_0.b, arg_0, var_0.d), arg_0.b.xx), arg_0.e), ~vec3<i32>(u_input.b, arg_1.x, 14001i)), 74305i, Struct_2(vec2<u32>(_wgslsmith_mod_u32(1u, var_0.a.x), ~arg_0.c), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(925f, arg_0.a, global0[_wgslsmith_index_u32(arg_0.c, 30u)], 1000f))), arg_0, arg_0.b.yxw & abs(vec3<i32>(arg_0.b.x, -60513i, -2147483647i))), !select(arg_0.e.wxz, vec3<bool>(arg_0.e.x, true, var_0.c.d), !vec3<bool>(arg_0.d, true, false))), Struct_1(_wgslsmith_f_op_f32(628f - func_4(Struct_3(var_0.d.xx, Struct_2(vec2<u32>(0u, arg_0.c), var_0.b, var_0.c, vec3<i32>(arg_1.x, arg_0.b.x, 48979i)), -1303i, Struct_2(var_0.a, vec4<f32>(arg_0.a, 532f, -180f, 1000f), arg_0, var_0.c.b.xwx), vec3<bool>(true, true, true)), Struct_3(arg_0.b.yy, var_0, -1i, Struct_2(var_0.a, vec4<f32>(var_0.b.x, 1295f, var_0.b.x, arg_0.a), Struct_1(246f, arg_0.b, arg_0.c, arg_0.e.x, vec4<bool>(true, arg_0.e.x, arg_0.e.x, arg_0.d)), arg_0.b.xxz), var_0.c.e.zxz)).c.a), vec4<i32>(var_0.c.b.x, -(i32(-1i) * -10607i), arg_0.b.x & u_input.a.x, u_input.b), 0u, !(!(!var_0.c.e.x)), vec4<bool>(any(var_0.c.e.wx), global3[_wgslsmith_index_u32(arg_0.c, 21u)] <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.c, global2.x, global3[_wgslsmith_index_u32(33001u, 21u)]), vec4<u32>(92624u, arg_0.c, var_0.c.c, var_0.a.x)), (var_0.c.b.x > arg_1.x) || arg_0.d, false)), abs(reverseBits(max(-7379i, select(8327i, arg_1.x, arg_0.d)))), Struct_3(vec2<i32>(arg_1.x, arg_1.x), func_4(Struct_3(_wgslsmith_sub_vec2_i32(arg_0.b.zy, vec2<i32>(arg_0.b.x, var_0.c.b.x)), Struct_2(var_0.a, vec4<f32>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(var_0.c.c, 30u)], 675f, var_0.c.a), Struct_1(605f, vec4<i32>(2147483647i, var_0.d.x, arg_0.b.x, -2147483647i), 0u, var_0.c.d, vec4<bool>(var_0.c.d, true, arg_0.d, true)), vec3<i32>(-1i, arg_0.b.x, 0i)), ~(-17985i), var_0, vec3<bool>(true, false, true)), Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.x, 2147483647i), vec2<i32>(-77340i, var_0.c.b.x)), Struct_2(var_0.a, vec4<f32>(103f, var_0.c.a, arg_0.a, arg_0.a), Struct_1(-305f, vec4<i32>(arg_0.b.x, var_0.c.b.x, var_0.c.b.x, arg_0.b.x), 0u, false, var_0.c.e), arg_1), 0i, Struct_2(var_0.a, vec4<f32>(1197f, -1724f, var_0.b.x, global0[_wgslsmith_index_u32(var_0.a.x, 30u)]), var_0.c, vec3<i32>(arg_1.x, arg_0.b.x, u_input.a.x)), vec3<bool>(true, false, var_0.c.d))), arg_0.b.x, func_4(Struct_3(arg_1.xy, Struct_2(vec2<u32>(1u, var_0.c.c), vec4<f32>(1711f, -1000f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53417u, 21u)], 30u)], arg_0.a), Struct_1(1900f, vec4<i32>(var_0.c.b.x, -21018i, u_input.b, 37248i), global2.x, arg_0.d, arg_0.e), vec3<i32>(0i, arg_1.x, arg_0.b.x)), u_input.a.x, var_0, vec3<bool>(arg_0.d, false, false)), Struct_3(_wgslsmith_mod_vec2_i32(arg_1.xz, vec2<i32>(2147483647i, 6658i)), Struct_2(vec2<u32>(4294967295u, global2.x), vec4<f32>(global0[_wgslsmith_index_u32(4025u, 30u)], -1028f, 910f, 225f), var_0.c, arg_1), ~1i, var_0, vec3<bool>(false, true, false))), !func_4(Struct_3(vec2<i32>(-34996i, 0i), Struct_2(var_0.a, var_0.b, var_0.c, vec3<i32>(arg_0.b.x, 1i, var_0.c.b.x)), 674i, var_0, vec3<bool>(true, var_0.c.e.x, var_0.c.e.x)), Struct_3(vec2<i32>(-837i, 0i), var_0, 2147483647i, var_0, var_0.c.e.yzy)).c.e.xwz));
    return Struct_4(func_2().e, var_1.b, var_1.e.b.c, -u_input.a.x ^ -1i, var_1.e);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec2<f32>) -> u32 {
    global3 = array<u32, 21>();
    var var_0 = ~u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -780f), vec4<i32>(-1i, _wgslsmith_clamp_i32(-2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(-494i, 1i), arg_0.zx), _wgslsmith_div_i32(~(-33539i), firstLeadingBit(u_input.a.x)), -_wgslsmith_div_i32(-55440i, u_input.a.x)), u_input.a.x, arg_0.x), global3[_wgslsmith_index_u32(~(~func_1(arg_1.b.d.c, vec3<i32>(var_0.x, 1i, arg_0.x) & vec3<i32>(0i, arg_1.c.b.x, -23043i)).e.b.c.c), 21u)], true, vec4<bool>(arg_1.c.e.x, !(!(true | arg_1.e.d.c.d)), true, -2147483647i >= _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_1.d, 36994i, -2147483647i), arg_0.x | 53773i)));
    var_0 = vec3<i32>(_wgslsmith_add_i32(45443i, arg_0.x), -3144i, _wgslsmith_clamp_i32(arg_0.x, -10217i, -2147483647i));
    let var_2 = vec2<bool>(!(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + arg_1.e.d.c.a))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1504f)))), all(arg_1.e.d.c.e));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_vec2_u32(vec2<u32>(func_5(u_input.a, func_1(Struct_1(global0[_wgslsmith_index_u32(global2.x, 30u)], vec4<i32>(2147483647i, -32172i, u_input.b, 36061i), global3[_wgslsmith_index_u32(global2.x, 21u)], true, vec4<bool>(true, true, true, true)), -vec3<i32>(0i, -29750i, -13016i)), vec2<f32>(-1686f, func_1(Struct_1(-1648f, vec4<i32>(37395i, u_input.a.x, 0i, -448i), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39178u, 21u)], 21u)], false, vec4<bool>(true, false, true, true)), u_input.a).b.b.b.x)), func_2().c >> (countOneBits(96628u) % 32u)), select(abs(~func_1(Struct_1(442f, vec4<i32>(u_input.b, 40832i, u_input.a.x, 8726i), 4341u, true, vec4<bool>(true, true, true, true)), vec3<i32>(-18755i, u_input.a.x, u_input.a.x)).e.d.a), ~_wgslsmith_mult_vec2_u32(min(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 21u)], 21u)]), vec2<u32>(0u, global3[_wgslsmith_index_u32(1u, 21u)])), ~vec2<u32>(53911u, 83947u)), select(vec2<bool>(true, true), vec2<bool>(true, true), ~global3[_wgslsmith_index_u32(0u, 21u)] >= _wgslsmith_mult_u32(1u, 1u))));
    global2 = ~firstLeadingBit(min(abs(func_4(Struct_3(u_input.a.xz, Struct_2(vec2<u32>(global3[_wgslsmith_index_u32(5502u, 21u)], 0u), vec4<f32>(1666f, global0[_wgslsmith_index_u32(global2.x, 30u)], global0[_wgslsmith_index_u32(44248u, 30u)], global0[_wgslsmith_index_u32(36943u, 30u)]), Struct_1(-924f, vec4<i32>(u_input.b, -1i, -1i, 2147483647i), 1u, false, vec4<bool>(true, false, false, false)), vec3<i32>(-13849i, 53645i, 2147483647i)), -1i, Struct_2(vec2<u32>(80726u, 0u), vec4<f32>(-318f, global0[_wgslsmith_index_u32(global2.x, 30u)], -375f, global0[_wgslsmith_index_u32(global2.x, 30u)]), Struct_1(-971f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, -7623i), global3[_wgslsmith_index_u32(1u, 21u)], true, vec4<bool>(false, true, false, true)), vec3<i32>(-2147483647i, u_input.a.x, u_input.b)), vec3<bool>(false, false, true)), Struct_3(vec2<i32>(36367i, 31148i), Struct_2(vec2<u32>(global3[_wgslsmith_index_u32(global2.x, 21u)], 134952u), vec4<f32>(-553f, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 21u)], 21u)], 30u)], 2148f), Struct_1(global0[_wgslsmith_index_u32(0u, 30u)], vec4<i32>(-32617i, -1i, -2147483647i, u_input.b), 1u, false, vec4<bool>(true, false, false, false)), u_input.a), 0i, Struct_2(vec2<u32>(24103u, global2.x), vec4<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 21u)], 30u)], -1000f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 30u)]), Struct_1(-970f, vec4<i32>(u_input.b, -2147483647i, -43419i, u_input.b), global2.x, false, vec4<bool>(false, true, false, false)), u_input.a), vec3<bool>(false, false, true))).a), select(vec2<u32>(87923u, global2.x) << (vec2<u32>(0u, 40512u) % vec2<u32>(32u)), vec2<u32>(1u, 44333u), all(vec2<bool>(true, false)))));
    global4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f))) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9788u, 4294967295u, global3[_wgslsmith_index_u32(func_5(vec3<i32>(u_input.a.x, u_input.b, 0i), Struct_4(vec4<bool>(false, false, false, false), Struct_3(vec2<i32>(u_input.b, u_input.b), Struct_2(vec2<u32>(global3[_wgslsmith_index_u32(global2.x, 21u)], 1u), vec4<f32>(global0[_wgslsmith_index_u32(7441u, 30u)], -702f, 1503f, global0[_wgslsmith_index_u32(global2.x, 30u)]), Struct_1(global0[_wgslsmith_index_u32(0u, 30u)], vec4<i32>(u_input.b, -47606i, u_input.b, 49416i), 45531u, false, vec4<bool>(false, false, true, false)), vec3<i32>(u_input.a.x, u_input.b, -2147483647i)), -22201i, Struct_2(vec2<u32>(1u, 50475u), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -768f, 372f, -102f), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 30u)], vec4<i32>(u_input.a.x, u_input.b, -13964i, 2147483647i), 1u, false, vec4<bool>(false, true, true, true)), u_input.a), vec3<bool>(true, false, true)), Struct_1(global0[_wgslsmith_index_u32(1u, 30u)], vec4<i32>(u_input.b, 2147483647i, 1i, 32790i), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 21u)], 21u)], false, vec4<bool>(true, false, true, false)), u_input.b, Struct_3(vec2<i32>(u_input.a.x, u_input.b), Struct_2(vec2<u32>(15083u, global3[_wgslsmith_index_u32(1299u, 21u)]), vec4<f32>(1147f, global0[_wgslsmith_index_u32(global2.x, 30u)], 285f, -198f), Struct_1(-468f, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), 8594u, false, vec4<bool>(true, true, false, true)), u_input.a), u_input.a.x, Struct_2(vec2<u32>(global2.x, 1034u), vec4<f32>(-267f, 1361f, 359f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8596u, 21u)], 30u)]), Struct_1(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 21u)], 30u)], vec4<i32>(2147483647i, u_input.a.x, -2147483647i, 16817i), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24500u, 21u)], 21u)], false, vec4<bool>(true, true, true, false)), u_input.a), vec3<bool>(false, false, false))), vec2<f32>(1130f, 502f)), 21u)]), _wgslsmith_add_vec3_u32(min(vec3<u32>(46230u, global2.x, 39513u), vec3<u32>(13110u, 0u, global3[_wgslsmith_index_u32(925u, 21u)])), vec3<u32>(1u, global2.x, global2.x) | vec3<u32>(8815u, 1901u, 1u))), 30u)])));
    let var_0 = Struct_3(vec2<i32>(_wgslsmith_add_i32(reverseBits(u_input.b), firstLeadingBit(u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(-25438i, u_input.b, u_input.b), u_input.a) >> (~global2.x % 32u)) ^ vec2<i32>(_wgslsmith_add_i32(-2147483647i ^ u_input.a.x, func_2().b.x), u_input.b), Struct_2(vec2<u32>(_wgslsmith_add_u32(reverseBits(global3[_wgslsmith_index_u32(global2.x, 21u)]), ~global2.x), 39381u), _wgslsmith_div_vec4_f32(vec4<f32>(460f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(44127u, 30u)], global0[_wgslsmith_index_u32(66889u, 30u)])), 1243f, _wgslsmith_f_op_f32(f32(-1f) * -558f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(5562u, 30u)], 279f, -466f, 1060f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 30u)] * global0[_wgslsmith_index_u32(global2.x, 30u)])), -(vec4<i32>(u_input.b, -51578i, u_input.a.x, 2147483647i) | vec4<i32>(41646i, 0i, u_input.b, u_input.b)), ~global2.x, false, !func_2().e), u_input.a | (countOneBits(vec3<i32>(u_input.a.x, 31155i, u_input.b)) & _wgslsmith_mult_vec3_i32(u_input.a, u_input.a))), _wgslsmith_add_i32(-20824i, -1i), func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2590f)), -(~vec4<i32>(u_input.a.x, -4943i, 27886i, 23184i)), ~global2.x, any(vec3<bool>(true, true, true)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true)), _wgslsmith_mod_vec3_i32(max(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), abs(vec3<i32>(u_input.a.x, u_input.b, 19820i))), -vec3<i32>(u_input.b, 1969i, -2147483647i))).e.b, !select(select(func_4(Struct_3(u_input.a.zx, Struct_2(vec2<u32>(15637u, global2.x), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -1016f, 1000f, global0[_wgslsmith_index_u32(1u, 30u)]), Struct_1(global0[_wgslsmith_index_u32(1508u, 30u)], vec4<i32>(2147483647i, -3253i, 0i, -7228i), global2.x, false, vec4<bool>(true, false, false, false)), u_input.a), u_input.a.x, Struct_2(vec2<u32>(global3[_wgslsmith_index_u32(global2.x, 21u)], global3[_wgslsmith_index_u32(10761u, 21u)]), vec4<f32>(1965f, global0[_wgslsmith_index_u32(11266u, 30u)], global0[_wgslsmith_index_u32(global2.x, 30u)], global0[_wgslsmith_index_u32(global2.x, 30u)]), Struct_1(-864f, vec4<i32>(-2147483647i, u_input.a.x, 1i, 5048i), global2.x, false, vec4<bool>(false, false, true, true)), u_input.a), vec3<bool>(true, false, true)), Struct_3(vec2<i32>(1i, u_input.b), Struct_2(vec2<u32>(global2.x, 14648u), vec4<f32>(388f, -353f, -274f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.x, 21u)], 21u)], 30u)]), Struct_1(-1799f, vec4<i32>(2147483647i, u_input.b, u_input.a.x, -34746i), global2.x, true, vec4<bool>(false, false, false, false)), vec3<i32>(u_input.b, u_input.a.x, -2147483647i)), u_input.a.x, Struct_2(vec2<u32>(4294967295u, global2.x), vec4<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13328u, 21u)], 30u)], 609f, global0[_wgslsmith_index_u32(global2.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), Struct_1(global0[_wgslsmith_index_u32(1u, 30u)], vec4<i32>(-43280i, u_input.a.x, 1i, u_input.b), global3[_wgslsmith_index_u32(4294967295u, 21u)], true, vec4<bool>(false, false, false, true)), vec3<i32>(3371i, -1i, u_input.a.x)), vec3<bool>(false, true, false))).c.e.xzy, func_2().e.xww, true), func_2().e.wwz, !func_1(Struct_1(833f, vec4<i32>(-2147483647i, 1i, -43676i, u_input.a.x), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], false, vec4<bool>(true, false, true, true)), u_input.a).b.d.c.e.wwz));
    global3 = array<u32, 21>();
    let var_1 = 6958i;
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, ~(109497u & (57916u >> (global3[_wgslsmith_index_u32(var_0.d.c.c, 21u)] % 32u))), _wgslsmith_sub_u32(firstLeadingBit(var_0.b.c.c) | ~var_0.b.c.c, _wgslsmith_div_u32(_wgslsmith_mult_u32(global2.x, 38561u), firstLeadingBit(global2.x)))), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(var_0.d.c.c, var_0.d.c.c, global2.x)), ~vec3<u32>(~global2.x, var_0.d.a.x, global3[_wgslsmith_index_u32(0u & global3[_wgslsmith_index_u32(var_0.d.c.c, 21u)], 21u)])));
    global0 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, 38865u, 26303u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.c.c, 4294967295u, 104216u, var_2.x) | vec4<u32>(34134u, var_2.x, var_2.x, global2.x), vec4<u32>(68389u, 43014u, var_0.b.c.c, var_2.x) | vec4<u32>(1u, 87924u, 25644u, 3437u))), _wgslsmith_add_u32(~(0u >> (global2.x % 32u)), 44681u), var_2.x), _wgslsmith_f_op_vec4_f32(var_0.b.b + _wgslsmith_f_op_vec4_f32(-func_1(Struct_1(-833f, var_0.b.c.b, 16386u, var_0.d.c.d, vec4<bool>(var_0.b.c.e.x, false, var_0.b.c.d, true)), u_input.a).e.d.b)));
}

