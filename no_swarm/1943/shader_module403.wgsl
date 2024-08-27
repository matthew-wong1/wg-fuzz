struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(9866u, 33630u, 1418u, 0u), vec4<u32>(1u, 17223u, 29331u, 0u), vec4<u32>(0u, 56759u, 31819u, 27700u), vec4<u32>(1u, 1u, 4294967295u, 42075u), vec4<u32>(0u, 16879u, 4294967295u, 0u), vec4<u32>(40858u, 20049u, 0u, 22907u), vec4<u32>(63878u, 9800u, 4294967295u, 1u), vec4<u32>(3692u, 39273u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 15429u, 50445u), vec4<u32>(0u, 0u, 0u, 39157u), vec4<u32>(0u, 45635u, 1u, 32142u), vec4<u32>(11856u, 59834u, 3759u, 0u), vec4<u32>(0u, 0u, 0u, 16118u), vec4<u32>(1u, 53244u, 0u, 0u), vec4<u32>(30387u, 25437u, 21141u, 205u), vec4<u32>(4294967295u, 1u, 4294967295u, 46287u), vec4<u32>(0u, 0u, 34139u, 1181u), vec4<u32>(3846u, 6264u, 21664u, 101142u), vec4<u32>(0u, 131716u, 1u, 26809u), vec4<u32>(27995u, 46924u, 57509u, 27315u), vec4<u32>(19018u, 0u, 21648u, 118647u), vec4<u32>(0u, 0u, 24621u, 4294967295u), vec4<u32>(2442u, 19428u, 4294967295u, 4294967295u), vec4<u32>(45109u, 40428u, 1u, 75067u));

var<private> global1: array<Struct_2, 16>;

var<private> global2: Struct_3 = Struct_3(Struct_1(766f, vec3<bool>(false, true, false), vec4<bool>(true, false, true, true)));

var<private> global3: vec3<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_5(Struct_4(~select(u_input.c.x, ~u_input.c.x, global2.a.a <= 1356f), global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(5363u, u_input.a.x)), 16u)]), global1[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(0u)), 16u)], Struct_4(~u_input.c.x, global1[_wgslsmith_index_u32(firstLeadingBit(abs(u_input.a.x)), 16u)]));
    global0 = array<vec4<u32>, 24>();
    let var_1 = Struct_5(Struct_4(u_input.c.x, Struct_2(Struct_1(_wgslsmith_div_f32(global3.x, var_0.a.b.a.a), vec3<bool>(false, global2.a.b.x, var_0.b.d.x), select(var_0.a.b.a.c, vec4<bool>(var_0.c.b.b.c.x, true, var_0.b.b.b.x, true), vec4<bool>(var_0.b.a.c.x, global2.a.b.x, true, true))), var_0.b.a, vec3<i32>(_wgslsmith_sub_i32(u_input.d.x, 5768i), var_0.c.b.c.x ^ u_input.b.x, ~var_0.a.b.c.x), global2.a.b)), Struct_2(var_0.b.a, Struct_1(_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(ceil(-909f)))), global2.a.b, vec4<bool>(global2.a.b.x && var_0.a.b.b.c.x, all(global2.a.c), true, false)), vec3<i32>(i32(-1i) * -4182i, ~var_0.c.b.c.x & _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.c.b.c.x, -2147483647i, u_input.d.x, var_0.c.b.c.x)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.c.x, -73537i, var_0.b.c.x, 1i), vec4<i32>(-35010i, var_0.c.b.c.x, var_0.c.b.c.x, u_input.d.x)), var_0.a.b.c.x, global2.a.b.x || var_0.a.b.a.b.x)), vec3<bool>(true, false, var_0.a.b.d.x)), var_0.a);
    var var_2 = var_1;
    let var_3 = var_0.a.b.a.b.x;
    return !vec4<bool>(!(!var_0.a.b.a.b.x), var_0.b.b.b.x, all(var_2.b.a.c.zy), any(!vec3<bool>(var_2.c.b.b.b.x, true, false)));
}

fn func_2() -> Struct_3 {
    global0 = array<vec4<u32>, 24>();
    return Struct_3(Struct_1(-379f, vec3<bool>(false, all(vec4<bool>(global2.a.c.x, true, false, true)) == (global2.a.b.x && false), select(global2.a.c.x, select(global2.a.c.x, global2.a.b.x, global2.a.c.x), select(true, global2.a.b.x, global2.a.b.x))), func_3()));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec3<f32>) -> Struct_4 {
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, 889f, arg_3.x) * arg_3))) * _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(-672f, -593f, arg_2.c.b.b.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - arg_3.x), 803f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(arg_1.a.a * global2.a.a))), func_2().a.a) + _wgslsmith_f_op_vec3_f32(step(arg_3, vec3<f32>(global2.a.a, global3.x, arg_2.a.b.b.a)))));
    var var_0 = -621f;
    var var_1 = arg_2.c;
    global0 = array<vec4<u32>, 24>();
    var var_2 = ~var_1.b.c.yx;
    return Struct_4(u_input.a.x, arg_2.b);
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(abs(-9920i), func_2(), Struct_5(Struct_4(select(1u, 18699u, select(global2.a.b.x, true, global2.a.c.x)), global1[_wgslsmith_index_u32(min(1u, firstTrailingBit(u_input.c.x)), 16u)]), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -380f), !vec3<bool>(false, global2.a.c.x, global2.a.c.x), select(global2.a.c, vec4<bool>(false, true, global2.a.c.x, false), vec4<bool>(global2.a.b.x, global2.a.c.x, global2.a.b.x, global2.a.b.x))), func_2().a, u_input.b.xxz, vec3<bool>(false, any(vec3<bool>(global2.a.c.x, true, false)), u_input.c.x > 12782u)), Struct_4(u_input.a.x, Struct_2(Struct_1(-974f, global2.a.c.wyx, vec4<bool>(false, true, false, true)), Struct_1(global2.a.a, global2.a.b, global2.a.c), ~vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), !vec3<bool>(global2.a.b.x, global2.a.c.x, global2.a.c.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(102f, global3.x, -925f) * vec3<f32>(-107f, global2.a.a, 571f)), vec3<f32>(-840f, -928f, global2.a.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.x + global3.x), global2.a.a, global2.a.a))));
    var var_1 = Struct_2(var_0.b.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a.a), _wgslsmith_f_op_f32(round(-759f))) * global2.a.a), global2.a.c.wwx, func_4(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.b.x, 4463i, 1i), vec4<i32>(u_input.b.x, 11567i, -17645i, var_0.b.c.x)), Struct_3(global2.a), Struct_5(Struct_4(u_input.a.x, global1[_wgslsmith_index_u32(var_0.a, 16u)]), global1[_wgslsmith_index_u32(var_0.a, 16u)], Struct_4(69885u, Struct_2(global2.a, Struct_1(global3.x, var_0.b.b.c.xxz, vec4<bool>(false, true, true, var_0.b.d.x)), vec3<i32>(2147483647i, u_input.d.x, u_input.b.x), global2.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(232f, var_0.b.a.a, global3.x)))).b.b.c), u_input.b.wwy, vec3<bool>(func_4(-2147483647i, Struct_3(global2.a), Struct_5(Struct_4(u_input.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), func_4(u_input.d.x, Struct_3(Struct_1(1048f, vec3<bool>(false, global2.a.c.x, var_0.b.d.x), vec4<bool>(true, false, global2.a.b.x, global2.a.b.x))), Struct_5(Struct_4(var_0.a, Struct_2(Struct_1(430f, global2.a.c.zyy, vec4<bool>(global2.a.b.x, global2.a.b.x, global2.a.b.x, var_0.b.d.x)), global2.a, vec3<i32>(var_0.b.c.x, var_0.b.c.x, u_input.d.x), vec3<bool>(false, false, global2.a.b.x))), Struct_2(Struct_1(global3.x, global2.a.b, vec4<bool>(true, var_0.b.b.c.x, global2.a.c.x, global2.a.b.x)), Struct_1(567f, var_0.b.d, global2.a.c), var_0.b.c, var_0.b.a.c.zzz), Struct_4(var_0.a, global1[_wgslsmith_index_u32(4294967295u, 16u)])), vec3<f32>(global2.a.a, 868f, 497f)).b, func_4(u_input.d.x, Struct_3(Struct_1(-442f, vec3<bool>(true, true, global2.a.c.x), vec4<bool>(true, true, global2.a.c.x, global2.a.b.x))), Struct_5(Struct_4(var_0.a, Struct_2(Struct_1(-1640f, var_0.b.a.b, var_0.b.a.c), Struct_1(-775f, var_0.b.a.b, vec4<bool>(false, false, global2.a.b.x, global2.a.c.x)), u_input.b.wxx, vec3<bool>(false, global2.a.c.x, global2.a.c.x))), Struct_2(Struct_1(-254f, var_0.b.a.b, vec4<bool>(true, var_0.b.b.c.x, true, global2.a.c.x)), var_0.b.a, vec3<i32>(var_0.b.c.x, u_input.b.x, 26995i), vec3<bool>(var_0.b.b.b.x, global2.a.c.x, false)), Struct_4(var_0.a, Struct_2(var_0.b.a, Struct_1(-876f, vec3<bool>(global2.a.c.x, var_0.b.b.c.x, global2.a.c.x), vec4<bool>(var_0.b.b.b.x, global2.a.c.x, global2.a.c.x, global2.a.c.x)), vec3<i32>(var_0.b.c.x, -1i, -32464i), global2.a.c.xwz))), vec3<f32>(global3.x, global3.x, global3.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-527f, -508f, global3.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, global2.a.a, 1020f))))).b.a.b.x, func_4(var_0.b.c.x, func_2(), Struct_5(func_4(6129i, Struct_3(Struct_1(1198f, vec3<bool>(false, true, global2.a.c.x), var_0.b.b.c)), Struct_5(Struct_4(23017u, global1[_wgslsmith_index_u32(29542u, 16u)]), Struct_2(global2.a, var_0.b.a, u_input.b.zwy, var_0.b.a.c.xyz), Struct_4(u_input.c.x, var_0.b)), vec3<f32>(global2.a.a, global2.a.a, 343f)), var_0.b, func_4(var_0.b.c.x, Struct_3(global2.a), Struct_5(Struct_4(78999u, var_0.b), var_0.b, Struct_4(1u, var_0.b)), vec3<f32>(var_0.b.b.a, 664f, global2.a.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.a, global2.a.a, 903f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, global2.a.a, global2.a.a), vec3<f32>(285f, global3.x, 2040f))), var_0.a < u_input.a.x))).b.a.b.x, false == var_0.b.b.b.x));
    var var_2 = ~countOneBits(u_input.a.yyx);
    var_0 = func_4(_wgslsmith_mult_i32(-1i, -53560i), func_2(), Struct_5(Struct_4(func_4(u_input.d.x, Struct_3(global2.a), Struct_5(Struct_4(12876u, var_0.b), Struct_2(global2.a, var_1.b, vec3<i32>(33833i, var_1.c.x, var_0.b.c.x), var_1.b.b), Struct_4(var_2.x, Struct_2(Struct_1(1941f, vec3<bool>(global2.a.b.x, true, global2.a.c.x), var_1.a.c), Struct_1(1000f, var_1.d, vec4<bool>(false, var_0.b.a.b.x, var_0.b.b.b.x, global2.a.b.x)), vec3<i32>(1i, var_1.c.x, var_0.b.c.x), vec3<bool>(false, false, true)))), vec3<f32>(global3.x, global3.x, var_0.b.b.a)).a >> (firstTrailingBit(4294967295u) % 32u), func_4(var_0.b.c.x, Struct_3(Struct_1(var_1.a.a, var_1.d, vec4<bool>(var_1.a.b.x, true, var_0.b.b.b.x, false))), Struct_5(Struct_4(var_0.a, Struct_2(var_0.b.b, Struct_1(global2.a.a, vec3<bool>(var_0.b.d.x, var_1.a.c.x, var_0.b.d.x), var_1.b.c), vec3<i32>(u_input.d.x, -5968i, 2147483647i), var_1.b.c.wxz)), Struct_2(var_1.a, Struct_1(global3.x, vec3<bool>(true, false, var_0.b.b.b.x), vec4<bool>(true, global2.a.b.x, false, true)), var_0.b.c, global2.a.b), Struct_4(var_0.a, Struct_2(global2.a, Struct_1(1271f, var_0.b.d, var_1.b.c), var_0.b.c, vec3<bool>(global2.a.b.x, false, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1207f, global2.a.a, global2.a.a))).b), func_4(0i, Struct_3(func_2().a), Struct_5(Struct_4(var_2.x, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), func_4(-12435i, Struct_3(Struct_1(-858f, vec3<bool>(global2.a.c.x, false, true), var_1.a.c)), Struct_5(Struct_4(4294967295u, Struct_2(Struct_1(var_0.b.a.a, vec3<bool>(var_1.d.x, false, var_1.a.c.x), var_1.b.c), global2.a, var_0.b.c, vec3<bool>(global2.a.b.x, var_1.a.c.x, true))), global1[_wgslsmith_index_u32(4294967295u, 16u)], Struct_4(1u, global1[_wgslsmith_index_u32(var_2.x, 16u)])), vec3<f32>(779f, var_1.b.a, 845f)).b, Struct_4(21500u, global1[_wgslsmith_index_u32(var_0.a, 16u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -273f, -302f) * vec3<f32>(global3.x, global2.a.a, -402f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(293f, var_0.b.b.a, var_0.b.a.a))))).b, func_4(reverseBits(func_4(5441i, Struct_3(var_1.a), Struct_5(Struct_4(0u, Struct_2(var_1.b, var_0.b.b, var_1.c, global2.a.c.yyz)), var_0.b, Struct_4(u_input.c.x, var_0.b)), vec3<f32>(global2.a.a, 680f, global2.a.a)).b.c.x), Struct_3(func_4(var_0.b.c.x, Struct_3(Struct_1(239f, vec3<bool>(var_0.b.d.x, global2.a.b.x, true), vec4<bool>(var_1.b.b.x, var_0.b.d.x, false, var_1.d.x))), Struct_5(Struct_4(u_input.a.x, Struct_2(var_0.b.b, var_0.b.b, vec3<i32>(35339i, 11186i, var_1.c.x), global2.a.b)), Struct_2(Struct_1(-970f, var_1.d, global2.a.c), Struct_1(global3.x, global2.a.c.zyy, var_0.b.a.c), var_1.c, vec3<bool>(var_0.b.b.c.x, var_1.d.x, false)), Struct_4(4294967295u, var_0.b)), vec3<f32>(var_0.b.a.a, 1000f, 2153f)).b.b), Struct_5(Struct_4(u_input.c.x, global1[_wgslsmith_index_u32(34365u, 16u)]), func_4(var_0.b.c.x, Struct_3(global2.a), Struct_5(Struct_4(2967u, Struct_2(global2.a, Struct_1(1881f, vec3<bool>(false, true, var_0.b.d.x), vec4<bool>(var_1.d.x, global2.a.b.x, true, true)), u_input.b.yxy, var_1.a.b)), var_0.b, Struct_4(u_input.a.x, Struct_2(Struct_1(-323f, vec3<bool>(var_0.b.b.c.x, var_0.b.b.b.x, var_0.b.d.x), vec4<bool>(var_0.b.b.b.x, false, global2.a.c.x, false)), Struct_1(-461f, vec3<bool>(true, false, true), vec4<bool>(false, var_1.d.x, var_1.b.c.x, var_1.a.b.x)), vec3<i32>(var_1.c.x, var_1.c.x, 0i), var_1.b.b))), vec3<f32>(var_0.b.a.a, global2.a.a, global3.x)).b, Struct_4(0u, Struct_2(Struct_1(global3.x, vec3<bool>(var_1.d.x, true, false), vec4<bool>(global2.a.c.x, false, false, false)), var_0.b.b, vec3<i32>(u_input.b.x, var_0.b.c.x, var_0.b.c.x), vec3<bool>(false, global2.a.b.x, var_0.b.a.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-363f, global3.x, var_0.b.b.a) * vec3<f32>(var_0.b.b.a, global3.x, global2.a.a))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.b.a, global3.x, global2.a.a))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1033f, var_1.a.a, 1000f))))));
    let var_3 = Struct_5(func_4(var_1.c.x, Struct_3(var_0.b.a), Struct_5(func_4(_wgslsmith_div_i32(var_0.b.c.x, 2147483647i), func_2(), Struct_5(Struct_4(1u, Struct_2(var_0.b.a, Struct_1(2132f, vec3<bool>(true, var_1.a.b.x, false), vec4<bool>(var_0.b.d.x, false, true, true)), vec3<i32>(17310i, var_1.c.x, u_input.b.x), var_0.b.a.b)), var_0.b, Struct_4(38645u, Struct_2(Struct_1(var_0.b.b.a, vec3<bool>(global2.a.c.x, false, true), vec4<bool>(false, true, true, var_0.b.b.b.x)), global2.a, vec3<i32>(-10410i, u_input.b.x, var_0.b.c.x), var_1.b.c.yxw))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.b.a, -1000f, global3.x), vec3<f32>(var_1.b.a, 525f, 150f)))), func_4(-u_input.b.x, Struct_3(Struct_1(677f, global2.a.b, global2.a.c)), Struct_5(Struct_4(u_input.c.x, Struct_2(global2.a, Struct_1(var_0.b.b.a, var_1.d, vec4<bool>(false, var_1.a.c.x, false, true)), var_1.c, var_1.b.b)), Struct_2(var_1.a, var_1.b, vec3<i32>(u_input.b.x, 13761i, -17047i), vec3<bool>(true, global2.a.c.x, var_0.b.b.c.x)), Struct_4(var_2.x, global1[_wgslsmith_index_u32(var_0.a, 16u)])), vec3<f32>(-138f, 761f, global3.x)).b, func_4(82503i, func_2(), Struct_5(Struct_4(var_0.a, global1[_wgslsmith_index_u32(var_2.x, 16u)]), Struct_2(Struct_1(global2.a.a, vec3<bool>(false, false, true), vec4<bool>(global2.a.c.x, var_1.d.x, true, false)), Struct_1(1198f, var_1.b.b, vec4<bool>(var_0.b.d.x, true, var_0.b.a.b.x, var_0.b.d.x)), vec3<i32>(2147483647i, var_0.b.c.x, -2147483647i), global2.a.b), Struct_4(20274u, Struct_2(Struct_1(var_1.a.a, var_1.a.b, var_1.b.c), var_0.b.a, u_input.b.yyy, var_1.d))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a.a, var_1.b.a, -396f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.a, -166f, -618f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1103f, -201f) * vec3<f32>(-1612f, var_1.b.a, 1000f)))))), func_4(-u_input.d.x, func_2(), Struct_5(Struct_4(u_input.a.x, Struct_2(Struct_1(var_0.b.a.a, var_0.b.d, vec4<bool>(true, false, var_0.b.d.x, var_0.b.d.x)), var_0.b.b, vec3<i32>(var_0.b.c.x, u_input.d.x, var_0.b.c.x), var_1.b.b)), Struct_2(func_4(-22440i, Struct_3(global2.a), Struct_5(Struct_4(0u, Struct_2(Struct_1(319f, var_0.b.d, vec4<bool>(global2.a.c.x, false, var_0.b.d.x, global2.a.c.x)), global2.a, u_input.b.zzy, vec3<bool>(true, var_0.b.d.x, var_0.b.a.c.x))), Struct_2(Struct_1(var_1.b.a, var_1.a.b, vec4<bool>(var_1.b.b.x, true, var_0.b.d.x, false)), var_1.a, vec3<i32>(2147483647i, u_input.d.x, var_0.b.c.x), var_0.b.a.c.zwz), Struct_4(u_input.c.x, Struct_2(global2.a, Struct_1(global3.x, global2.a.b, var_0.b.b.c), vec3<i32>(var_0.b.c.x, var_1.c.x, 1i), global2.a.b))), vec3<f32>(global3.x, -1176f, -920f)).b.a, func_4(-2147483647i, Struct_3(var_1.a), Struct_5(Struct_4(var_2.x, global1[_wgslsmith_index_u32(37492u, 16u)]), Struct_2(Struct_1(var_0.b.a.a, vec3<bool>(false, var_0.b.b.b.x, true), var_0.b.a.c), Struct_1(global3.x, vec3<bool>(var_0.b.b.b.x, var_1.d.x, true), var_1.a.c), vec3<i32>(2147483647i, u_input.b.x, 2147483647i), vec3<bool>(var_0.b.b.b.x, global2.a.c.x, true)), Struct_4(var_0.a, Struct_2(Struct_1(global2.a.a, var_0.b.a.c.wwx, vec4<bool>(true, var_0.b.d.x, true, var_1.d.x)), var_1.a, var_1.c, var_0.b.d))), vec3<f32>(var_0.b.b.a, -1147f, -1413f)).b.a, vec3<i32>(1i, -207i, 1i), vec3<bool>(var_1.a.c.x, false, global2.a.b.x)), func_4(u_input.b.x, func_2(), Struct_5(Struct_4(1u, Struct_2(Struct_1(1314f, var_1.b.b, vec4<bool>(var_1.b.b.x, true, var_1.d.x, true)), Struct_1(global3.x, vec3<bool>(var_1.a.c.x, false, true), var_0.b.b.c), u_input.d, vec3<bool>(var_1.b.c.x, true, var_1.d.x))), Struct_2(Struct_1(-501f, vec3<bool>(true, global2.a.c.x, var_0.b.b.b.x), vec4<bool>(var_0.b.b.c.x, var_0.b.b.b.x, var_1.a.c.x, var_0.b.b.c.x)), var_0.b.b, var_0.b.c, vec3<bool>(global2.a.c.x, true, var_1.d.x)), Struct_4(4294967295u, Struct_2(Struct_1(global3.x, var_1.d, var_1.a.c), Struct_1(global2.a.a, vec3<bool>(true, var_0.b.d.x, global2.a.b.x), global2.a.c), vec3<i32>(var_0.b.c.x, var_0.b.c.x, -16909i), var_0.b.b.c.xxw))), vec3<f32>(global3.x, -193f, global3.x))), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.a.a + _wgslsmith_f_op_f32(f32(-1f) * -968f)), var_0.b.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.a + global2.a.a) - _wgslsmith_f_op_f32(-global3.x)))).b, func_4(2147483647i, func_2(), Struct_5(Struct_4(var_0.a, Struct_2(global2.a, Struct_1(var_0.b.b.a, var_0.b.a.c.yyx, vec4<bool>(global2.a.b.x, var_1.a.b.x, true, true)), var_1.c, var_1.b.c.zwx)), global1[_wgslsmith_index_u32(var_2.x, 16u)], Struct_4(10325u, Struct_2(Struct_1(551f, vec3<bool>(global2.a.c.x, false, true), var_0.b.b.c), global2.a, vec3<i32>(2147483647i, var_1.c.x, var_1.c.x), vec3<bool>(true, global2.a.b.x, false)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, 1908f, var_0.b.a.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, -1134f) * vec3<f32>(var_0.b.a.a, var_1.a.a, 1271f)))))));
    return Struct_4(_wgslsmith_sub_u32(~(~var_0.a & 4294967295u), var_0.a ^ func_4(-10723i, Struct_3(Struct_1(475f, vec3<bool>(var_0.b.b.b.x, var_1.d.x, false), var_0.b.a.c)), var_3, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a.a, -814f, 2333f)))).a), var_0.b);
}

fn func_5(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: Struct_5, arg_3: bool) -> bool {
    var var_0 = global2.a.b;
    let var_1 = ~(~arg_1.x | firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(26336i, arg_2.a.b.c.x, -1i), vec3<i32>(arg_1.x, arg_2.c.b.c.x, -2147483647i)))) >= _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(2147483647i, 1i) ^ _wgslsmith_mult_i32(arg_0.a.b.c.x, 1i), min(u_input.b.x, 12288i)), -func_1().b.c.x);
    let var_2 = Struct_5(Struct_4(~(~arg_2.a.a), arg_0.c.b), Struct_2(arg_0.a.b.a, Struct_1(_wgslsmith_f_op_f32(round(-202f)), !vec3<bool>(var_0.x, true, arg_3), func_1().b.a.c), vec3<i32>(arg_0.a.b.c.x, max(0i, -4759i), ~(-14241i)), global2.a.c.xwx), func_1());
    var_0 = var_2.c.b.b.c.xyy;
    var_0 = arg_2.c.b.d;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(i32(-1i) * -u_input.b.x, 2147483647i), 13448i) > (max(u_input.d.x, -31671i) | 2147483647i);
    var var_1 = countOneBits(9479u);
    let var_2 = true & !func_5(Struct_5(func_1(), Struct_2(Struct_1(1849f, global2.a.c.xyz, global2.a.c), Struct_1(1727f, global2.a.c.wxx, global2.a.c), u_input.d, global2.a.c.xyw), Struct_4(11586u, Struct_2(global2.a, global2.a, vec3<i32>(u_input.d.x, 22022i, u_input.d.x), vec3<bool>(true, true, false)))), u_input.d, Struct_5(Struct_4(u_input.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), func_4(u_input.b.x, Struct_3(global2.a), Struct_5(Struct_4(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 16u)]), global1[_wgslsmith_index_u32(4294967295u, 16u)], Struct_4(u_input.a.x, Struct_2(Struct_1(global3.x, global2.a.b, global2.a.c), Struct_1(-1000f, vec3<bool>(false, global2.a.b.x, global2.a.c.x), global2.a.c), u_input.d, vec3<bool>(false, false, global2.a.b.x)))), vec3<f32>(1389f, 140f, global3.x)).b, Struct_4(4294967295u, global1[_wgslsmith_index_u32(44163u, 16u)])), _wgslsmith_add_u32(u_input.a.x, 1u) != 1u);
    var var_3 = Struct_1(354f, !(!global2.a.b), vec4<bool>(true, func_3().x, true, u_input.c.x >= 1u));
    global2 = func_2();
    var var_4 = Struct_3(func_1().b.a);
    let var_5 = !func_3().wxy;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(func_1().b.c.x, u_input.b.x), u_input.b.ywz, ~(~vec2<i32>(1i, u_input.d.x)), firstLeadingBit(-1i) << (~u_input.a.x % 32u));
}

