struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

var<private> global1: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(648f, -1830f, 906f), vec3<f32>(1889f, 1000f, -731f), vec3<f32>(-984f, 185f, 303f), vec3<f32>(156f, 500f, -437f), vec3<f32>(1367f, 902f, 1154f), vec3<f32>(-1594f, -1607f, -1207f), vec3<f32>(329f, 1357f, 228f), vec3<f32>(-741f, -2099f, 1143f), vec3<f32>(1681f, -1731f, 515f), vec3<f32>(1000f, 1141f, -807f), vec3<f32>(-1000f, 1448f, -283f), vec3<f32>(-902f, 378f, -239f), vec3<f32>(532f, -607f, -1082f), vec3<f32>(703f, -1000f, -175f), vec3<f32>(-218f, -828f, 290f), vec3<f32>(-1429f, -1138f, 198f), vec3<f32>(1100f, -369f, 533f), vec3<f32>(1420f, -816f, 1094f), vec3<f32>(1041f, 793f, -159f), vec3<f32>(457f, 320f, -1000f), vec3<f32>(1933f, 356f, 643f), vec3<f32>(829f, 1269f, 1997f), vec3<f32>(1000f, -1403f, 138f), vec3<f32>(1306f, -274f, 147f), vec3<f32>(-953f, 961f, -500f), vec3<f32>(-320f, -1000f, 1554f), vec3<f32>(-308f, -1000f, -1000f), vec3<f32>(-642f, -1032f, -171f));

var<private> global2: array<u32, 5> = array<u32, 5>(28882u, 77701u, 25507u, 4294967295u, 30556u);

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), -1i);

var<private> global4: vec2<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> i32 {
    return ~1i;
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 2331f, _wgslsmith_f_op_f32(f32(-1f) * -2540f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -1335f, -888f), vec3<f32>(1195f, arg_1.x, 410f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 509f, -1284f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 28u)], vec3<f32>(1282f, 1300f, arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - vec3<f32>(1000f, -1415f, 1789f))), vec3<bool>(1u < u_input.b, 4294967295u < u_input.b, arg_2.c.d)))));
    global1 = array<vec3<f32>, 28>();
    global0 = array<vec4<bool>, 23>();
    let var_1 = vec3<f32>(var_0.x, arg_1.x, _wgslsmith_f_op_f32(step(var_0.x, arg_1.x)));
    return var_0.x;
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, 54772u), ~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], u_input.b, u_input.b, 3492u), ~vec4<u32>(67289u, u_input.b, u_input.b, 1u))) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(max(69497u, global2[_wgslsmith_index_u32(22128u, 5u)]), _wgslsmith_add_u32(u_input.b, 4294967295u)));
    global4 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, i32(-1i) * -14187i), -vec2<i32>(max(-6235i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2753u, 5u)], 5u)], 5u)] % 32u), global4.x), firstTrailingBit(countOneBits(-12742i))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-318f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-193f)) * _wgslsmith_f_op_f32(-1865f + -863f)), arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2374f, -141f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(863f)))), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(true, vec4<f32>(1192f, -821f, 247f, 1480f), Struct_2(Struct_1(global3.x, false, vec3<bool>(false, arg_0.x, false), arg_0.x), Struct_1(0i, arg_0.x, vec3<bool>(arg_0.x, false, arg_0.x), true), Struct_1(18328i, arg_0.x, vec3<bool>(arg_0.x, false, false), arg_0.x), u_input.b, Struct_1(1i, arg_0.x, vec3<bool>(true, false, true), arg_0.x)))), -437f)) - 149f)));
    global0 = array<vec4<bool>, 23>();
    let var_2 = global0[_wgslsmith_index_u32(992u, 23u)];
    return false;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = Struct_2(arg_0, arg_0, Struct_1(abs(~(-global3.x)), !(max(13481u, u_input.b) == u_input.b), select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.d, true, false), vec3<bool>(false, arg_0.d, var_0.c.x), true), arg_0.c.x), select(select(arg_0.c, var_0.c, false), select(vec3<bool>(arg_0.d, false, false), arg_0.c, vec3<bool>(arg_0.b, true, false)), var_0.c), arg_0.c), !arg_0.b), u_input.b, Struct_1(_wgslsmith_add_i32(~select(38484i, -5299i, true), -1i), true, var_0.c, select(false, arg_0.b, false && var_0.b)));
    var var_2 = ~vec4<u32>(var_1.d, 3802u, 45468u, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(u_input.b, 98354u)), 5u)]) << (vec4<u32>(~16675u, _wgslsmith_clamp_u32(firstLeadingBit(35229u), 0u, ~29474u) ^ ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~110715u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 5u)], 5u)] | global2[_wgslsmith_index_u32(var_1.d, 5u)]), vec2<u32>(_wgslsmith_mod_u32(7885u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5091u, 5u)], 5u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 5u)]), vec4<u32>(1u, 9589u, var_1.d, global2[_wgslsmith_index_u32(0u, 5u)])))), u_input.b) % vec4<u32>(32u));
    let var_3 = var_1.c.a > reverseBits(~_wgslsmith_div_i32(reverseBits(-27982i), 2147483647i));
    global1 = array<vec3<f32>, 28>();
    return Struct_2(arg_0, Struct_1(var_0.a, false, vec3<bool>(true, !(arg_0.b & var_1.e.b), !(var_0.c.x && true)), false), var_1.e, abs(_wgslsmith_mult_u32(4294967295u, ~var_1.d)), var_1.c);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<vec4<bool>, 23>();
    let var_0 = ~min(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(arg_1.d, global2[_wgslsmith_index_u32(53455u, 5u)], u_input.b, arg_1.d), max(vec4<u32>(42552u, 63221u, 38649u, arg_1.d), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 5u)], u_input.b, arg_1.d, 4294967295u)), func_2(vec2<bool>(true, false))), vec4<u32>(select(4294967295u, 5057u, false), global2[_wgslsmith_index_u32(~4294967295u, 5u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 5u)], 5u)], func_4(arg_1.e).d)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.d, arg_1.d, 4294967295u, 1u), ~vec4<u32>(u_input.b, 1u, 4294967295u, 4294967295u)));
    return Struct_1(-(~0i), false, func_4(arg_1.a).c.c, arg_1.e.b);
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global4 = vec2<i32>(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(13917i, _wgslsmith_div_i32(global4.x, arg_1.a), 1i), -(i32(-1i) * -18304i), 21625i), arg_1.a);
    var var_0 = true;
    let var_1 = any(vec2<bool>(true, arg_1.b));
    var var_2 = 655f;
    var var_3 = func_4(arg_1);
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 23>();
    global1 = array<vec3<f32>, 28>();
    var var_0 = func_6(4294967295u, func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(585f, -578f) - vec2<f32>(181f, 893f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1193f, 363f) * vec2<f32>(-295f, 419f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1192f, -574f))), func_4(Struct_1(func_1(), true, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), func_2(vec2<bool>(false, true)))), select(select(vec2<bool>(true, false), func_4(Struct_1(-40747i, true, vec3<bool>(false, true, true), false)).b.c.yy, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), any(global0[_wgslsmith_index_u32(u_input.b, 23u)]) && true), _wgslsmith_add_vec3_i32(reverseBits(-vec3<i32>(global4.x, global3.x, -1i)), select(vec3<i32>(9224i, global4.x, global3.x), abs(vec3<i32>(12557i, u_input.a, 1i)), vec3<bool>(false, false, false)))));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(~1i, _wgslsmith_div_i32(max(var_0.a, 11115i), global3.x ^ 0i)) >> (~1u % 32u), -_wgslsmith_mult_i32(-27530i, -1i));
    var var_2 = Struct_2(func_4(func_4(func_5(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1882f, -659f))), Struct_2(Struct_1(u_input.a, var_0.c.x, var_0.c, var_0.c.x), Struct_1(16388i, var_0.c.x, var_0.c, true), Struct_1(42449i, false, var_0.c, true), 1u, Struct_1(global4.x, var_0.d, var_0.c, var_0.d)), vec2<bool>(var_0.c.x, var_0.c.x), vec3<i32>(-14801i, 27042i, var_0.a) & vec3<i32>(-23080i, global4.x, 20040i))).c).b, func_4(Struct_1(~(-4320i), true, var_0.c, any(var_0.c.xx) || all(vec3<bool>(false, var_0.b, false)))).a, Struct_1(1i, !var_0.c.x, var_0.c, true), 58333u, func_4(Struct_1(-2147483647i, var_0.c.x, vec3<bool>(true, false, true), select(true, func_6(global2[_wgslsmith_index_u32(32497u, 5u)], Struct_1(2147483647i, var_0.c.x, vec3<bool>(var_0.b, false, true), var_0.d)).c.x, var_0.d))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(abs(i32(-1i) * -global4.x), global3.x));
}

