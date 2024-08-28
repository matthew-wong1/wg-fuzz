struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 5993i;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(16979i, 1i), vec2<i32>(1i, 5276i), vec2<i32>(-34653i, -46429i), vec2<i32>(-45491i, 0i), vec2<i32>(-35721i, -1i), vec2<i32>(-3890i, 0i), vec2<i32>(-3295i, -6985i), vec2<i32>(2147483647i, -69065i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, -6626i), vec2<i32>(-30219i, -1i), vec2<i32>(-1198i, 0i), vec2<i32>(1i, -2915i), vec2<i32>(-9165i, 0i), vec2<i32>(-36637i, 22558i), vec2<i32>(-25638i, 1437i), vec2<i32>(57230i, i32(-2147483648)), vec2<i32>(0i, 37246i), vec2<i32>(0i, -24323i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-895i, 2147483647i), vec2<i32>(27221i, i32(-2147483648)), vec2<i32>(-14336i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), 63791i), vec2<i32>(1i, 24416i));

var<private> global2: array<vec4<bool>, 27>;

var<private> global3: vec4<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec2<bool> {
    global1 = array<vec2<i32>, 29>();
    global0 = -28762i;
    global1 = array<vec2<i32>, 29>();
    global0 = ~u_input.b;
    global3 = global2[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(reverseBits(0u))) & 1u, _wgslsmith_add_u32(24879u, 0u), !arg_1), 27u)];
    return arg_0.zx;
}

fn func_3() -> i32 {
    global3 = vec4<bool>(all(select(select(vec2<bool>(global3.x, false), global3.zw, true), vec2<bool>(global3.x, global3.x), global3.x)) & global3.x, all(global3.xx), true, global3.x | ((false && all(vec2<bool>(global3.x, global3.x))) || global3.x));
    var var_0 = 4294967295u;
    global3 = select(vec4<bool>(all(select(!vec3<bool>(true, global3.x, global3.x), !global3.xxy, global3.xzx)), global3.x, true, u_input.a.x < (abs(u_input.a.x) >> ((u_input.a.x | 28410u) % 32u))), global2[_wgslsmith_index_u32(1u << (~u_input.a.x % 32u), 27u)], select(select(vec4<bool>(true, select(global3.x, global3.x, global3.x), true, global3.x | true), vec4<bool>(all(global3.xzz), global3.x && false, true, 0i > u_input.b), true), vec4<bool>(func_2(global3.wxw, true & global3.x).x, true, !all(vec4<bool>(global3.x, global3.x, global3.x, true)), true), global3.x));
    global2 = array<vec4<bool>, 27>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-460f, -1876f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-702f - -634f) + _wgslsmith_f_op_f32(f32(-1f) * -1098f))), _wgslsmith_f_op_f32(trunc(-928f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1512f + 1326f) + -144f))))));
    return _wgslsmith_div_i32(u_input.b, ~reverseBits(-u_input.b));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: bool) -> Struct_2 {
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec2_u32(~u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x)));
    global1 = array<vec2<i32>, 29>();
    let var_1 = global3.yxy;
    let var_2 = vec4<i32>(u_input.b, 2694i, min(arg_1.x, i32(-1i) * -18171i) & _wgslsmith_div_i32(_wgslsmith_div_i32(37347i, -arg_1.x), u_input.b), firstLeadingBit(arg_1.x));
    let var_3 = !vec2<bool>(global3.x, arg_0.x && var_1.x);
    return Struct_2(-countOneBits(var_2.x ^ select(u_input.b, var_2.x, arg_0.x)), Struct_1(vec2<i32>(select(arg_1.x << (u_input.a.x % 32u), ~1i, arg_2), -1i), firstTrailingBit(vec3<u32>(reverseBits(78665u), 4294967295u, ~u_input.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1330f * 1435f), -251f, _wgslsmith_f_op_f32(select(1088f, 641f, var_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1046f, -830f, -1512f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 1632f, -219f)))))), Struct_1(vec2<i32>(-1i) * -global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, u_input.a.x), 29u)], select(~(~vec3<u32>(33030u, 1u, u_input.a.x)), (vec3<u32>(var_0.x, var_0.x, 18620u) >> (vec3<u32>(var_0.x, 0u, u_input.a.x) % vec3<u32>(32u))) & (vec3<u32>(var_0.x, var_0.x, var_0.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 75984u) % vec3<u32>(32u))), !all(global3.ww)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, 1000f, -544f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, 532f, 1946f))))), global1[_wgslsmith_index_u32(var_0.x, 29u)]);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = vec3<f32>(376f, _wgslsmith_f_op_f32(min(arg_1.c.c.x, arg_2.b.c.x)), arg_1.c.c.x);
    var var_1 = vec2<f32>(arg_2.b.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -447f), func_4(global3.xz, ~arg_1.c.a, all(vec4<bool>(false, global3.x, global3.x, global3.x))).c.c.x)))));
    global0 = arg_2.c.a.x;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.c.x))));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1000f + arg_2.b.c.x), _wgslsmith_f_op_f32(-1499f + var_0.x)), arg_1.b.c);
    return false;
}

fn func_6(arg_0: bool) -> Struct_1 {
    global1 = array<vec2<i32>, 29>();
    return func_4(!vec2<bool>(select(false & global3.x, true, true), !all(vec3<bool>(true, true, true))), _wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(~(~4294967295u), 29u)]), select(false, arg_0, global3.x)).b;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(vec2<i32>(22491i, -((2147483647i >> (u_input.a.x % 32u)) << (select(1u, 4294967295u, global3.x) % 32u))), arg_3.b, arg_3.c);
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(max(vec2<i32>(0i, -51840i) >> (~vec2<u32>(u_input.a.x, 9128u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(firstLeadingBit(var_0.a), select(vec2<i32>(u_input.b, u_input.b), arg_2, global3.xy))), _wgslsmith_div_vec2_i32(arg_1.d | vec2<i32>(arg_2.x, 11055i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_3.a.x, arg_2.x), vec2<i32>(arg_1.c.a.x, 0i) ^ vec2<i32>(45751i, var_0.a.x)))), vec3<u32>(countOneBits(_wgslsmith_div_u32(~u_input.a.x, 72621u)), arg_3.b.x ^ 24699u, _wgslsmith_mult_u32(abs(0u), u_input.a.x)), _wgslsmith_f_op_vec3_f32(-arg_0));
    let var_2 = false;
    let var_3 = ~u_input.a;
    var var_4 = func_6(func_5(-70118i, func_4(func_2(global3.www, global3.x && true), vec2<i32>(-2572i, func_3()), var_2), arg_1));
    return var_4.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(_wgslsmith_add_vec2_i32(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), -vec2<i32>(2147483647i, 0i))), vec3<u32>(_wgslsmith_sub_u32(~(~54706u), u_input.a.x), u_input.a.x, (~10541u >> (u_input.a.x % 32u)) ^ func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-583f, -1266f, -508f), vec3<f32>(2096f, 1323f, -1690f))), Struct_2(0i, Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], vec3<u32>(u_input.a.x, 60697u, u_input.a.x), vec3<f32>(835f, 1000f, -1299f)), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 29u)], vec3<u32>(48850u, 1u, u_input.a.x), vec3<f32>(-1000f, 432f, -1126f)), vec2<i32>(u_input.b, -35246i)), vec2<i32>(u_input.b, 0i), Struct_1(global1[_wgslsmith_index_u32(6068u, 29u)], vec3<u32>(4294967295u, 0u, 41480u), vec3<f32>(172f, 381f, 2549f)))), vec3<f32>(1f, 1f, 1f));
    let var_1 = abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(select(vec4<i32>(u_input.b, 2147483647i, -3113i, 0i), vec4<i32>(22889i, 2147483647i, 14832i, -2147483647i), vec4<bool>(true, global3.x, true, global3.x))), vec4<i32>(u_input.b, u_input.b, var_0.a.x, 78541i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, -2147483647i, u_input.b), vec4<i32>(var_0.a.x, -2147483647i, 4805i, var_0.a.x))), firstLeadingBit(vec4<i32>(var_0.a.x, 1i, u_input.b, var_0.a.x) << (firstTrailingBit(vec4<u32>(u_input.a.x, 1u, 15341u, 1509u)) % vec4<u32>(32u))), select(vec4<i32>(~var_0.a.x, countOneBits(var_0.a.x), -var_0.a.x, ~(-1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, var_0.a.x), vec4<i32>(-1619i, -14680i, 2147483647i, u_input.b), vec4<i32>(u_input.b, var_0.a.x, u_input.b, var_0.a.x)) & ~vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, u_input.b), global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_div_f32(var_0.c.x, 114f)))));
}

