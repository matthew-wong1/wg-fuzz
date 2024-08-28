struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: i32 = 1i;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(1i, 84708u, vec3<f32>(-2077f, 2345f, 713f), vec3<i32>(2147483647i, -1i, 2147483647i), 704f), Struct_1(2147483647i, 44656u, vec3<f32>(214f, 802f, 530f), vec3<i32>(i32(-2147483648), 0i, 0i), 1000f), Struct_1(-46441i, 19721u, vec3<f32>(634f, -1248f, 419f), vec3<i32>(1012i, 1540i, 1i), -160f), Struct_1(1i, 73956u, vec3<f32>(1498f, -1531f, -354f), vec3<i32>(-9409i, 39399i, 0i), 1142f), Struct_1(1i, 12935u, vec3<f32>(-680f, -1629f, -1164f), vec3<i32>(29324i, -10787i, -1i), 1857f), Struct_1(-1i, 52487u, vec3<f32>(-398f, -170f, 1000f), vec3<i32>(i32(-2147483648), 37475i, -15044i), 350f), Struct_1(2147483647i, 1u, vec3<f32>(-904f, -1729f, -1173f), vec3<i32>(23433i, -17994i, 1i), -640f), Struct_1(0i, 4294967295u, vec3<f32>(-293f, 1573f, 520f), vec3<i32>(0i, -58837i, 2488i), -252f), Struct_1(i32(-2147483648), 4294967295u, vec3<f32>(-2070f, 1758f, 234f), vec3<i32>(-69454i, i32(-2147483648), 1i), 548f), Struct_1(37508i, 0u, vec3<f32>(-304f, -290f, 908f), vec3<i32>(2147483647i, -21073i, i32(-2147483648)), 2526f), Struct_1(-1i, 1u, vec3<f32>(1000f, -2072f, 1188f), vec3<i32>(5963i, -2435i, 1i), -474f), Struct_1(-15676i, 5004u, vec3<f32>(285f, 146f, -699f), vec3<i32>(-1i, 15637i, -32871i), -207f), Struct_1(-23246i, 13424u, vec3<f32>(-137f, 748f, -241f), vec3<i32>(2147483647i, -3050i, -9612i), 1000f), Struct_1(1i, 21640u, vec3<f32>(501f, -629f, -904f), vec3<i32>(2147483647i, -5136i, i32(-2147483648)), 1007f), Struct_1(2147483647i, 10135u, vec3<f32>(-1707f, 1683f, -225f), vec3<i32>(1i, 1i, -1i), 513f), Struct_1(21776i, 4294967295u, vec3<f32>(986f, -557f, 553f), vec3<i32>(0i, 30873i, 39464i), -834f), Struct_1(-27631i, 1u, vec3<f32>(-826f, 841f, 548f), vec3<i32>(-1i, i32(-2147483648), 2147483647i), 1297f), Struct_1(i32(-2147483648), 4294967295u, vec3<f32>(863f, 1263f, -1787f), vec3<i32>(i32(-2147483648), -28751i, 19427i), 2027f), Struct_1(0i, 0u, vec3<f32>(101f, 1086f, 226f), vec3<i32>(19968i, 3337i, -38456i), 234f), Struct_1(-60424i, 0u, vec3<f32>(-680f, -861f, 487f), vec3<i32>(35685i, -13992i, 2147483647i), 1691f), Struct_1(i32(-2147483648), 1u, vec3<f32>(1486f, 177f, 631f), vec3<i32>(-41963i, -28750i, -12785i), -1000f), Struct_1(i32(-2147483648), 116959u, vec3<f32>(-834f, 912f, 2099f), vec3<i32>(36536i, 20881i, 44689i), -1295f), Struct_1(2147483647i, 27994u, vec3<f32>(148f, -406f, -1000f), vec3<i32>(35932i, -1i, 2147483647i), 1460f), Struct_1(18373i, 84432u, vec3<f32>(526f, 398f, -514f), vec3<i32>(-1i, i32(-2147483648), -24823i), 2025f), Struct_1(-18982i, 8783u, vec3<f32>(1182f, 770f, 101f), vec3<i32>(39248i, -19783i, 20869i), 547f), Struct_1(14381i, 49556u, vec3<f32>(-716f, 1050f, -1436f), vec3<i32>(5339i, -1i, -1i), 400f), Struct_1(20111i, 4294967295u, vec3<f32>(-933f, 263f, -972f), vec3<i32>(-36167i, 22945i, 0i), -1190f), Struct_1(-52331i, 4294967295u, vec3<f32>(454f, 827f, -1334f), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), -128f), Struct_1(53618i, 1u, vec3<f32>(558f, 587f, 499f), vec3<i32>(2147483647i, i32(-2147483648), 34653i), 1000f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = vec3<bool>(true, true, true);
    return 0i;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_1(firstLeadingBit(func_3(vec3<i32>(u_input.a, 3675i, arg_1.x)) >> (countOneBits(~global1.b) % 32u)), 7055u, global1.c, vec3<i32>(-global1.d.x, 1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global1.d, global1.d), ~global1.a), firstTrailingBit(-18378i & u_input.a))), 455f);
    let var_1 = ~firstLeadingBit(arg_1);
    global1 = Struct_1(_wgslsmith_add_i32(var_0.d.x, abs(arg_1.x)) & firstLeadingBit(-global1.d.x), u_input.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(456f + 586f), -796f, -491f)), vec3<f32>(var_0.e, global1.e, global1.c.x), select(select(vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(true, true, false), arg_3), arg_3, any(vec2<bool>(true, arg_3.x))))), vec3<i32>(-1234i, arg_2.x, -firstTrailingBit(reverseBits(1i))), 914f);
    var var_2 = _wgslsmith_div_vec2_i32(abs(vec2<i32>(select(-16932i, arg_2.x, 43587u < global1.b), reverseBits(~var_1.x))), vec2<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 10234i, -16228i), var_0.d), global1.d.x)));
    let var_3 = -1635f;
    return !all(!vec4<bool>(false, true, true, all(vec3<bool>(true, false, false))));
}

fn func_1() -> vec4<u32> {
    let var_0 = vec2<bool>(any(!vec4<bool>(true, true, func_2(vec2<u32>(global1.b, global1.b), vec2<i32>(global1.d.x, 49296i), vec2<i32>(4358i, global1.a), vec3<bool>(true, true, true)), true)), (select(any(vec2<bool>(false, false)), all(vec2<bool>(false, true)), true) | all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))) && false);
    global0 = abs(_wgslsmith_mult_i32(-2147483647i, -select(countOneBits(6749i), _wgslsmith_sub_i32(global1.a, 48503i), true)));
    global2 = array<Struct_1, 29>();
    global0 = firstLeadingBit(2147483647i);
    global2 = array<Struct_1, 29>();
    return vec4<u32>(1u, 6061u, u_input.d.x, u_input.d.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> bool {
    let var_0 = vec3<i32>(select(abs(~(-1i)), -1i >> (~_wgslsmith_mod_u32(global1.b, global1.b) % 32u), true), _wgslsmith_add_i32((i32(-1i) * -1i) | global1.a, ~_wgslsmith_div_i32(global1.a, -1086i)), ~0i);
    let var_1 = all(select(vec3<bool>(true | (var_0.x > var_0.x), true, func_2(u_input.d, vec2<i32>(u_input.b, u_input.b) >> (u_input.d % vec2<u32>(32u)), -vec2<i32>(global1.a, var_0.x), vec3<bool>(true, false, true))), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(exp2(1f));
    return any(!vec3<bool>(any(vec3<bool>(true, false, false)) || true, var_1, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 46576i | ~global1.d.x;
    var var_0 = global2[_wgslsmith_index_u32(55493u, 29u)];
    var var_1 = !vec4<bool>(true, _wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(1939f + -441f)) >= 232f, true | (true && (var_0.b == u_input.c)), func_4(func_1(), -1139f) == true);
    global0 = _wgslsmith_div_i32(var_0.d.x, global1.d.x);
    var var_2 = 95371i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global1.d.yy, global1.d.zy >> (vec2<u32>(u_input.c, global1.b) % vec2<u32>(32u))), countOneBits(_wgslsmith_div_vec2_i32(var_0.d.yx, var_0.d.zy))), firstLeadingBit(~39339i), ~(-_wgslsmith_div_i32(u_input.a, 0i))));
}

