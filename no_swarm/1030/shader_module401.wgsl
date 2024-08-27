struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(i32(-2147483648), 637i, 2147483647i, 10738i, 2147483647i, 1383i);

var<private> global1: u32;

var<private> global2: f32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.d, 15200u), 6u)], -(4762i | global0[_wgslsmith_index_u32(4294967295u, 6u)])) << (_wgslsmith_div_u32(~(u_input.d << (u_input.d % 32u)), u_input.a.x) % 32u), u_input.a, u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -341f, -1748f, 1000f))), vec4<f32>(401f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-402f + -666f), _wgslsmith_f_op_f32(138f - -1012f)), -2887f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1618f))))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(123f, _wgslsmith_f_op_f32(trunc(-1040f))))))));
    let var_2 = firstLeadingBit(~vec2<i32>(_wgslsmith_sub_i32(1i, 37620i << (0u % 32u)), firstTrailingBit(reverseBits(-2147483647i))));
    global0 = array<i32, 6>();
    var var_3 = ~(~(~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a.x, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, 1u), vec3<u32>(var_0.b.x, u_input.d, u_input.d)), ~vec3<u32>(58652u, var_0.b.x, 8476u))));
    return ~vec2<u32>(4294967295u, _wgslsmith_div_u32(57822u, u_input.a.x));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_1(u_input.c.x, reverseBits(func_3()), i32(-1i) * -u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(-250f * 691f), _wgslsmith_f_op_f32(ceil(-537f)), -1343f)) + vec4<f32>(-1120f, _wgslsmith_div_f32(-264f, -213f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(748f + -1376f), -241f), -568f)));
    let var_1 = !(!(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), true)));
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 6u)], -1i), u_input.c), max(vec2<i32>(1i, global0[_wgslsmith_index_u32(var_0.b.x, 6u)]), vec2<i32>(-22751i, 8850i)))), countOneBits(select(u_input.a, select(~u_input.a, _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(4294967295u, 54428u)), false), var_1.xz)), -12373i, _wgslsmith_f_op_vec4_f32(ceil(var_0.d)));
    global2 = _wgslsmith_f_op_f32(floor(var_2.d.x));
    let var_3 = !var_1.zy;
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(36330u, var_0.b.x, ~(~2263u), 76054u), vec4<u32>(_wgslsmith_div_u32(var_0.b.x, 4294967295u), firstTrailingBit(var_2.b.x), 4294967295u, countOneBits(24300u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 94116u, 0u), ~vec4<u32>(0u, u_input.a.x, var_0.b.x, 1u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(u_input.b | u_input.b, i32(-1i) * -39782i)), ~vec2<i32>(15267i, arg_2.c) >> (abs(firstLeadingBit(arg_1.wy)) % vec2<u32>(32u))) < ~arg_2.a;
    let var_2 = firstTrailingBit(0i);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-762f)), 502f));
    global2 = _wgslsmith_f_op_f32(-var_0.d.x);
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = func_4(vec3<f32>(_wgslsmith_div_f32(1302f, arg_0.d.x), -422f, _wgslsmith_f_op_f32(arg_1 * arg_1)), func_2(), arg_0);
    let var_1 = Struct_1(_wgslsmith_div_i32(reverseBits(abs(~1i)), firstLeadingBit(~(~u_input.b))), _wgslsmith_add_vec2_u32(vec2<u32>(56883u, u_input.a.x), min(var_0.b, _wgslsmith_add_vec2_u32(arg_0.b, u_input.a) >> (vec2<u32>(28312u, u_input.d) % vec2<u32>(32u)))), ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 6u)], arg_0.a, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec3<i32>(var_0.a, 1813i, -24603i), vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_i32(~vec3<i32>(arg_0.c, u_input.b, 4671i), vec3<i32>(-1i, 8712i, global0[_wgslsmith_index_u32(arg_0.b.x, 6u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-895f, -380f)), 757f, _wgslsmith_f_op_f32(round(1535f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) * _wgslsmith_f_op_f32(-776f * arg_0.d.x)))));
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1221f, 792f, arg_0.d.x), vec3<f32>(var_0.d.x, 1192f, -456f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, -154f, 452f))), var_1.d.xzx))), _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, u_input.a.x, arg_0.b.x, 14852u), vec4<u32>(6362u, var_0.b.x, 4294967295u, u_input.d) | vec4<u32>(arg_0.b.x, 54567u, arg_0.b.x, arg_0.b.x))), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.b.x, var_0.b.x, 737u), vec4<u32>(u_input.d, u_input.a.x, var_0.b.x, var_1.b.x)))), func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, arg_0.d.x, 1000f)))), vec4<u32>(_wgslsmith_add_u32(var_0.b.x << (0u % 32u), 1u), firstTrailingBit(func_4(arg_0.d.zzz, vec4<u32>(arg_0.b.x, u_input.d, 0u, var_0.b.x), Struct_1(var_1.c, arg_0.b, var_0.a, arg_0.d)).b.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.b.x, var_0.b.x, var_1.b.x, var_1.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, 45149u, 4294967295u, 0u), vec4<u32>(var_0.b.x, 11848u, u_input.a.x, 83094u))), var_1.b.x), Struct_1(~var_1.a, vec2<u32>(func_4(vec3<f32>(1339f, -1094f, 411f), vec4<u32>(5090u, u_input.d, 1u, arg_0.b.x), Struct_1(-16678i, var_0.b, -1i, vec4<f32>(261f, var_1.d.x, 994f, arg_1))).b.x, var_1.b.x | u_input.a.x), 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1355f, var_1.d.x, var_0.d.x) + vec4<f32>(1781f, arg_0.d.x, -642f, 1000f)) - _wgslsmith_f_op_vec4_f32(-var_0.d)))));
    var_2 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.d.x)), -944f)), -162f, 1827f)), _wgslsmith_mult_vec4_u32(~(vec4<u32>(18005u, 1u, 15910u, arg_0.b.x) >> (firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, arg_0.b.x, 0u)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.b.x, 1u, u_input.a.x, 56331u), ~(vec4<u32>(15951u, var_1.b.x, arg_0.b.x, var_2.b.x) ^ vec4<u32>(1u, 0u, var_0.b.x, 1u)))), arg_0);
    var var_3 = _wgslsmith_add_vec2_u32(var_2.b, _wgslsmith_div_vec2_u32(func_4(var_1.d.zwx, ~(~vec4<u32>(0u, 7981u, u_input.d, 15544u)), Struct_1(~var_0.c, vec2<u32>(arg_0.b.x, var_1.b.x), ~(-83978i), var_2.d)).b, var_0.b));
    return var_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-518f * -755f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 931f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(2147483647i, u_input.a, 2147483647i, vec4<f32>(-1032f, 282f, 677f, -129f)), 2276f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1339f, -386f) + 1711f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))))));
    var var_1 = 1i;
    var var_2 = select(-vec3<i32>(~u_input.b, ~global0[_wgslsmith_index_u32(~u_input.a.x, 6u)], max(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.d, 6u)], -16013i), u_input.c.x)), max(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.d, 6u)], 1i)), ~vec3<i32>(8539i, -2147483647i, -20613i)), i32(-1i) * -u_input.c.x), vec3<i32>(-25426i | u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 0i), vec3<i32>(-262i, 2147483647i, u_input.c.x)), countOneBits(1i))), select(vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), true, !all(vec2<bool>(false, false))), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))));
    global2 = _wgslsmith_f_op_f32(abs(-1000f));
    let var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1626f)) - 528f)))), u_input.a.x, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, 59003u), _wgslsmith_sub_u32(62712u, 48808u)), firstTrailingBit(u_input.a.x)), ~var_2.yx);
}

