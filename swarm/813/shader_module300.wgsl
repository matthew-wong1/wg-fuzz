struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-191f, -1431f), vec2<f32>(-114f, 225f), vec2<f32>(308f, -448f), vec2<f32>(215f, 528f), vec2<f32>(254f, -198f), vec2<f32>(1527f, -585f), vec2<f32>(898f, 715f), vec2<f32>(977f, -1031f), vec2<f32>(596f, -889f), vec2<f32>(1847f, -687f), vec2<f32>(-1000f, -544f), vec2<f32>(-784f, 295f), vec2<f32>(712f, -468f), vec2<f32>(434f, 645f), vec2<f32>(-1092f, -617f), vec2<f32>(-1927f, -1595f), vec2<f32>(-431f, -767f), vec2<f32>(-678f, 607f), vec2<f32>(-1000f, 300f), vec2<f32>(1686f, -714f), vec2<f32>(813f, 1637f), vec2<f32>(509f, 1326f), vec2<f32>(688f, -722f), vec2<f32>(1004f, -1328f), vec2<f32>(431f, 1290f), vec2<f32>(-1000f, 377f), vec2<f32>(894f, 359f), vec2<f32>(915f, -627f), vec2<f32>(658f, -225f), vec2<f32>(-340f, -236f), vec2<f32>(272f, -307f));

var<private> global2: Struct_4 = Struct_4(51296u, Struct_3(vec2<u32>(4294967295u, 3463u)), 70630u, Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(1292f, -651f)), vec4<u32>(25167u, 0u, 56434u, 4294967295u));

var<private> global3: array<bool, 14>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(global2.d.b.x)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-472f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.b.x))), global2.d.b.x));
    let var_1 = Struct_5(Struct_4(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(abs(10035u), 28u)], ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.c, 28u)], 0u), 28u)]), global2.b, global2.c, global2.d, ~max(global2.e, firstTrailingBit(global2.e))), Struct_4(~1u, global2.b, abs(global2.a), Struct_1(global2.d.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 31u)]))), select(~global2.e, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], u_input.c), ~global2.e), (global2.d.a.x | false) && !global3[_wgslsmith_index_u32(global2.b.a.x, 14u)])), min(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b.x, -9373i, 0i), vec3<i32>(1i, u_input.b.x, u_input.a) ^ vec3<i32>(-2147483647i, u_input.a, u_input.b.x), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a))) << (_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(41631u, 41974u, 0u)), global2.e.yyx, vec3<u32>(global0[_wgslsmith_index_u32(global2.c, 28u)], u_input.d, u_input.d) | global2.e.zww) % vec3<u32>(32u)), ~vec3<i32>(select(-5461i, -2147483647i, global3[_wgslsmith_index_u32(4294967295u, 14u)]), u_input.a, 4760i)));
    let var_2 = Struct_5(Struct_4(global2.a, var_1.a.b, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1403u, 28u)], 13704u), global2.b.a), 28u)], 52114u, 21336u), var_1.a.d, ~(~abs(var_1.b.e))), Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.a, max(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global2.e.x, 28u)], global0[_wgslsmith_index_u32(var_1.b.b.a.x, 28u)], 1u), ~u_input.d)), 28u)], Struct_3(firstLeadingBit(var_1.b.b.a)), ~(~(~var_1.a.b.a.x)), var_1.a.d, ~global2.e ^ vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.b.b.a.x), vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a, 28u)], 28u)])), _wgslsmith_mod_u32(1u, global2.b.a.x), abs(4294967295u))), _wgslsmith_sub_vec3_i32(-var_1.c, _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.b.x, ~(-143i), u_input.b.x), vec3<i32>(min(u_input.a, var_1.c.x), firstLeadingBit(33840i), abs(u_input.b.x)))));
    var var_3 = -(reverseBits(countOneBits(reverseBits(vec4<i32>(-331i, -1i, -1i, -16762i)))) | ~_wgslsmith_div_vec4_i32(-vec4<i32>(-21701i, 1i, var_1.c.x, 1i), vec4<i32>(-24891i, 29739i, var_1.c.x, -2147483647i)));
    var var_4 = -1i;
    return vec4<bool>(any(vec3<bool>(!select(var_1.a.d.a.x, true, global3[_wgslsmith_index_u32(241u, 14u)]), true, all(!var_2.b.d.a.xy))), global3[_wgslsmith_index_u32(~(~1u), 14u)], global2.d.a.x, any(!select(select(var_1.a.d.a.yzx, vec3<bool>(true, var_1.a.d.a.x, global3[_wgslsmith_index_u32(var_2.b.e.x, 14u)]), vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b.e.x, 28u)], 14u)], var_2.a.d.a.x, false)), vec3<bool>(global2.d.a.x, false, global3[_wgslsmith_index_u32(21051u, 14u)]), var_1.b.d.a.yxx)));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec4<bool> {
    global0 = array<u32, 28>();
    global3 = array<bool, 14>();
    global3 = array<bool, 14>();
    let var_0 = Struct_2(arg_1.c.x, Struct_1(select(func_3(), global2.d.a, vec4<bool>(all(vec2<bool>(global2.d.a.x, false)), true, global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.c, 28u)], 14u)], select(true, true, false))), _wgslsmith_f_op_vec2_f32(arg_1.b.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(global2.b.a.x, 31u)])))), vec4<i32>(-31874i, ~(-_wgslsmith_div_i32(51206i, arg_0)), _wgslsmith_mod_i32(2147483647i, 13578i), arg_1.a));
    let var_1 = var_0.b.a.xwx;
    return !var_0.b.a;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_3, arg_2: u32) -> vec3<bool> {
    var var_0 = vec4<bool>(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.d.b.x), global2.d.b.x) == _wgslsmith_f_op_f32(global2.d.b.x - arg_0.a.d.b.x)), true, any(global2.d.a.wwy), (_wgslsmith_f_op_f32(_wgslsmith_div_f32(934f, -208f) - -706f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.d.b.x))) | any(select(arg_0.b.d.a, !global2.d.a, arg_0.a.d.a)));
    let var_1 = !((global2.d.a.x && (-1i < (1050i | u_input.b.x))) && all(select(vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 14u)], true, true, global3[_wgslsmith_index_u32(0u, 14u)]), func_2(0i, Struct_2(1i, Struct_1(arg_0.a.d.a, vec2<f32>(arg_0.a.d.b.x, 553f)), vec4<i32>(arg_0.c.x, arg_0.c.x, 39695i, u_input.a))), global2.d.b.x <= -373f)));
    let var_2 = vec3<f32>(global2.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.b.x + -1047f)))), global2.d.b.x);
    var_0 = global2.d.a;
    var var_3 = -344f;
    return select(select(global2.d.a.yzz, global2.d.a.wyx, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~33857u, arg_0.b.c), 14u)]), !(!vec3<bool>(!var_1, !var_0.x, 0i >= arg_0.c.x)), vec3<bool>((all(vec3<bool>(false, true, true)) & var_1) && !all(arg_0.a.d.a), false, !(!(!var_1))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = arg_2;
    global1 = array<vec2<f32>, 31>();
    global2 = Struct_4(~1u, Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.a, 54290u), vec2<u32>(_wgslsmith_div_u32(u_input.d, 11084u), 4294967295u))), ~_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(15536u, 0u), arg_2.e.wy)), 59976u), Struct_1(!select(vec4<bool>(false, arg_2.d.a.x, false, global2.d.a.x), select(arg_2.d.a, vec4<bool>(true, global3[_wgslsmith_index_u32(arg_2.a, 14u)], global3[_wgslsmith_index_u32(1u, 14u)], true), true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 31u)])) - vec2<f32>(156f, 1223f)) * _wgslsmith_f_op_vec2_f32(global2.d.b - _wgslsmith_f_op_vec2_f32(arg_2.d.b + vec2<f32>(-198f, -111f))))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(min(global2.b.a.x, global0[_wgslsmith_index_u32(55078u, 28u)]), 28u)], ~0u, global2.e.x, 1u), vec4<u32>(_wgslsmith_mult_u32(1u, 18968u), 82404u, u_input.c, _wgslsmith_div_u32(0u, var_0.a))));
    var var_1 = _wgslsmith_f_op_f32(-global2.d.b.x);
    global2 = Struct_4(arg_2.c << (~(~(0u | global0[_wgslsmith_index_u32(1u, 28u)])) % 32u), var_0.b, ~select(_wgslsmith_mult_u32(arg_2.c >> (var_0.a % 32u), ~global2.c), global2.b.a.x, all(vec4<bool>(global2.d.a.x, false, false, true))), global2.d, ~vec4<u32>(var_0.e.x, countOneBits(29457u), _wgslsmith_sub_u32(reverseBits(global2.b.a.x), global2.a), var_0.e.x));
    return arg_2.b;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    var var_0 = func_4(global2.d.a.wxx, func_2(1i, Struct_2(~7237i, Struct_1(select(global2.d.a, global2.d.a, true), arg_1.yy), vec4<i32>(-1i & u_input.a, _wgslsmith_sub_i32(1i, -1i), i32(-1i) * -2147483647i, u_input.a))), Struct_4(_wgslsmith_mod_u32(~reverseBits(arg_3.a.x), ~1u), arg_3, 1u, global2.d, vec4<u32>(28144u, abs(1u), 4294967295u, 4294967295u)), !func_2(-27072i, Struct_2(~(-1i), Struct_1(global2.d.a, vec2<f32>(-403f, -164f)), reverseBits(vec4<i32>(32829i, u_input.b.x, 9717i, 78515i)))).yww);
    var var_1 = arg_2.xzx;
    var var_2 = global2.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_2.b), _wgslsmith_f_op_vec2_f32(-var_2.b)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(~35086u, 31u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-487f, arg_1.x) * vec2<f32>(201f, 774f)), vec2<f32>(-1000f, -1499f), false))), vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d.b.x)))))), func_2(-1i, Struct_2(firstLeadingBit(u_input.a), global2.d, vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 2147483647i))).x || !arg_0));
    global3 = array<bool, 14>();
    return 16557u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_5(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(688f, global2.d.b.x, global2.d.b.x) - vec3<f32>(global2.d.b.x, global2.d.b.x, global2.d.b.x))))), global2.e, func_4(select(global2.d.a.zwx, !global2.d.a.zyw, func_1(Struct_5(Struct_4(global0[_wgslsmith_index_u32(75475u, 28u)], Struct_3(vec2<u32>(22919u, global0[_wgslsmith_index_u32(45313u, 28u)])), 4294967295u, global2.d, global2.e), Struct_4(4294967295u, Struct_3(vec2<u32>(global0[_wgslsmith_index_u32(41682u, 28u)], u_input.d)), 25113u, Struct_1(global2.d.a, vec2<f32>(global2.d.b.x, global2.d.b.x)), vec4<u32>(global2.e.x, 26158u, 17503u, global2.b.a.x)), vec3<i32>(u_input.a, u_input.a, -40543i)), Struct_3(global2.e.xw), u_input.c)), vec4<bool>(!global2.d.a.x, global3[_wgslsmith_index_u32(global2.e.x, 14u)], true, true), Struct_4(abs(global0[_wgslsmith_index_u32(4294967295u, 28u)]), Struct_3(vec2<u32>(105277u, global0[_wgslsmith_index_u32(7391u, 28u)])), ~6795u, global2.d, global2.e), global2.d.a.zwx)), func_4(global2.d.a.wxx, func_3(), Struct_4(~9565u, func_4(!vec3<bool>(global2.d.a.x, global3[_wgslsmith_index_u32(global2.c, 14u)], true), global2.d.a, Struct_4(global2.b.a.x, global2.b, 1u, Struct_1(global2.d.a, global1[_wgslsmith_index_u32(29422u, 31u)]), vec4<u32>(global2.e.x, 4294967295u, global2.c, global0[_wgslsmith_index_u32(u_input.c, 28u)])), !vec3<bool>(false, global2.d.a.x, false)), u_input.c, Struct_1(vec4<bool>(true, true, true, true), global2.d.b), min(~global2.e, vec4<u32>(0u, 18683u, 1u, u_input.d))), vec3<bool>(!global2.d.a.x & true, true, global2.d.a.x)), ~(global2.e.x ^ ~82547u), global2.d, global2.e);
    global1 = array<vec2<f32>, 31>();
    let var_1 = Struct_1(vec4<bool>(!func_1(Struct_5(Struct_4(u_input.d, Struct_3(vec2<u32>(global0[_wgslsmith_index_u32(global2.e.x, 28u)], 1u)), 41343u, Struct_1(global2.d.a, vec2<f32>(global2.d.b.x, global2.d.b.x)), vec4<u32>(var_0.b.a.x, 59892u, 72524u, 4294967295u)), Struct_4(u_input.c, var_0.b, u_input.d, Struct_1(vec4<bool>(false, true, true, global2.d.a.x), var_0.d.b), vec4<u32>(u_input.d, global2.e.x, 48251u, u_input.d)), vec3<i32>(1i, u_input.b.x, u_input.b.x)), Struct_3(var_0.e.zz), 23475u).x, func_3().x, !all(func_1(Struct_5(Struct_4(global2.b.a.x, Struct_3(global2.e.wz), 0u, Struct_1(var_0.d.a, vec2<f32>(var_0.d.b.x, 727f)), vec4<u32>(global2.c, u_input.d, 23487u, u_input.d)), Struct_4(global2.b.a.x, Struct_3(vec2<u32>(4294967295u, 2897u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], Struct_1(global2.d.a, vec2<f32>(-1160f, -918f)), global2.e), vec3<i32>(11577i, u_input.b.x, u_input.b.x)), global2.b, u_input.c).xx), true), global1[_wgslsmith_index_u32(u_input.c, 31u)]);
    let var_2 = var_1;
    var var_3 = func_4(!vec3<bool>(true, true, !select(true, var_1.a.x, var_1.a.x)), func_3(), Struct_4(0u, global2.b, 4294967295u, var_2, vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global2.b.a.x, 28u)], 57098u) >> (u_input.c % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~49258u, 28u)], firstLeadingBit(34009u)), 28u)], 1u, abs(_wgslsmith_sub_u32(global2.a, 40479u)))), !vec3<bool>(func_3().x, true, true));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.b.x, var_0.d.b.x, 249f, _wgslsmith_f_op_f32(min(-2316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.b.x)) * _wgslsmith_f_op_f32(round(-548f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, var_2.b.x, var_2.b.x, global2.d.b.x) - vec4<f32>(var_1.b.x, 314f, -278f, var_0.d.b.x))))));
    var var_5 = var_1.a;
    let var_6 = func_1(Struct_5(Struct_4(1u, Struct_3(vec2<u32>(1u, u_input.d) >> (var_0.e.ww % vec2<u32>(32u))), ~abs(1u), Struct_1(vec4<bool>(false, global3[_wgslsmith_index_u32(62525u, 14u)], global3[_wgslsmith_index_u32(5152u, 14u)], var_5.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.x, var_2.b.x), vec2<f32>(var_2.b.x, var_2.b.x), false))), countOneBits(vec4<u32>(43745u, global0[_wgslsmith_index_u32(4294967295u, 28u)], global2.c, global0[_wgslsmith_index_u32(103496u, 28u)]))), Struct_4(firstLeadingBit(_wgslsmith_mult_u32(var_0.b.a.x, 31480u)), Struct_3(~vec2<u32>(var_3.a.x, u_input.c)), 31610u, var_1, select(global2.e, vec4<u32>(var_0.a, global2.e.x, 12295u, var_3.a.x) ^ vec4<u32>(4294967295u, u_input.c, global2.a, 4294967295u), any(global2.d.a.xw))), vec3<i32>(0i, _wgslsmith_sub_i32(u_input.a, u_input.b.x), countOneBits(firstLeadingBit(-2147483647i)))), Struct_3(vec2<u32>(~var_3.a.x, abs(1u))), global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(59102u, global0[_wgslsmith_index_u32(~18772u, 28u)])), 28u)]).yy;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(14368i, 16488i)), u_input.b, u_input.b), vec3<u32>(select(reverseBits(global0[_wgslsmith_index_u32(20873u, 28u)] | global0[_wgslsmith_index_u32(53396u, 28u)]), ~47025u, !all(vec3<bool>(var_6.x, var_5.x, true))), 59065u, abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.b.a.x, 4294967295u), var_0.b.a.x, _wgslsmith_mult_u32(46340u, 1u)))));
}

