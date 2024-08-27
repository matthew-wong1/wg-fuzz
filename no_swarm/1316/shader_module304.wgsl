struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: u32 = 13070u;

var<private> global2: array<i32, 19> = array<i32, 19>(47561i, 2147483647i, 13368i, 1i, 2147483647i, -1i, 22766i, -91908i, 2147483647i, -1i, 11739i, 1i, -11113i, -53439i, -16072i, 28106i, -9131i, 0i, 0i);

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<u32>(8723u, 68892u, 31510u), i32(-2147483648), vec3<u32>(4294967295u, 0u, 4294967295u), 784f, -1i), Struct_1(vec3<u32>(12257u, 68255u, 1u), i32(-2147483648), vec3<u32>(39578u, 1u, 26826u), 252f, 11330i), Struct_1(vec3<u32>(113601u, 81218u, 0u), -58467i, vec3<u32>(15869u, 1u, 4294967295u), 1000f, 10536i), Struct_1(vec3<u32>(47617u, 101573u, 226u), 2147483647i, vec3<u32>(30464u, 39943u, 45118u), -1490f, -1i), Struct_1(vec3<u32>(24446u, 8626u, 54629u), -1i, vec3<u32>(86353u, 47643u, 1u), -961f, 2147483647i), Struct_1(vec3<u32>(42274u, 4294967295u, 1290u), -51968i, vec3<u32>(1u, 1u, 22079u), -968f, -1i), Struct_1(vec3<u32>(1u, 28225u, 59672u), -29789i, vec3<u32>(26465u, 1u, 67409u), -347f, -52898i), Struct_1(vec3<u32>(0u, 1u, 1u), -1i, vec3<u32>(1u, 0u, 22035u), -158f, 2147483647i), Struct_1(vec3<u32>(92845u, 4294967295u, 49454u), -1i, vec3<u32>(50509u, 16145u, 39846u), -1595f, 2147483647i), Struct_1(vec3<u32>(39349u, 4294967295u, 79696u), -10062i, vec3<u32>(1u, 1u, 39537u), -1086f, 15254i), Struct_1(vec3<u32>(1u, 0u, 1u), 19942i, vec3<u32>(15083u, 0u, 1u), -750f, 1i), Struct_1(vec3<u32>(37133u, 4294967295u, 35822u), -1i, vec3<u32>(76371u, 4294967295u, 0u), 437f, 2147483647i), Struct_1(vec3<u32>(32174u, 1520u, 104739u), -11929i, vec3<u32>(0u, 4294967295u, 50737u), 260f, 2147483647i), Struct_1(vec3<u32>(0u, 43013u, 55528u), 0i, vec3<u32>(4294967295u, 919u, 19288u), 1000f, -53973i), Struct_1(vec3<u32>(0u, 10124u, 3229u), 21434i, vec3<u32>(103154u, 1u, 1u), 1111f, 1i), Struct_1(vec3<u32>(1u, 0u, 1u), -51821i, vec3<u32>(25331u, 106478u, 33218u), 375f, 30762i), Struct_1(vec3<u32>(4294967295u, 1u, 49078u), -1i, vec3<u32>(4294967295u, 4294967295u, 0u), -1195f, -19587i), Struct_1(vec3<u32>(49619u, 0u, 29307u), 1i, vec3<u32>(0u, 0u, 1u), 1111f, 7867i), Struct_1(vec3<u32>(0u, 1277u, 6u), 1i, vec3<u32>(1u, 4294967295u, 1u), -523f, i32(-2147483648)), Struct_1(vec3<u32>(19043u, 4294967295u, 1u), 1i, vec3<u32>(1u, 16637u, 12945u), -657f, -3560i), Struct_1(vec3<u32>(1u, 1u, 15648u), 42049i, vec3<u32>(31399u, 35710u, 0u), 918f, 17969i), Struct_1(vec3<u32>(34210u, 0u, 574u), 1i, vec3<u32>(4294967295u, 4294967295u, 39359u), 1592f, 4551i), Struct_1(vec3<u32>(32819u, 4294967295u, 1u), 0i, vec3<u32>(4294967295u, 0u, 0u), 334f, 32225i), Struct_1(vec3<u32>(71333u, 29741u, 42717u), -2309i, vec3<u32>(9301u, 46156u, 4294967295u), 1353f, -5441i), Struct_1(vec3<u32>(288u, 1u, 0u), 1i, vec3<u32>(1u, 84136u, 4294967295u), 1977f, 6137i));

var<private> global4: vec3<f32> = vec3<f32>(-1872f, -2019f, 187f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, global4.x, global4.x))) - vec3<f32>(_wgslsmith_f_op_f32(-global4.x), -718f, -458f))));
    var var_1 = 1i;
    global2 = array<i32, 19>();
    var var_2 = !(!(!vec4<bool>(true, true, true, select(false, true, false))));
    global0 = array<Struct_2, 8>();
    return !select(vec2<bool>(all(vec4<bool>(var_2.x, true, true, false)), true), var_2.xz, true);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global2 = array<i32, 19>();
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(-vec4<i32>(25033i, 2845i, arg_2.b, global2[_wgslsmith_index_u32(arg_2.a.x, 19u)]) ^ (vec4<i32>(arg_2.b, 2147483647i, arg_2.e, arg_2.e) << (vec4<u32>(arg_2.a.x, 21567u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mod_i32(1i, arg_2.e), arg_2.b, -1i, _wgslsmith_sub_i32(-2147483647i, arg_2.b)));
    return any(select(!select(vec3<bool>(true, arg_1.x, arg_1.x), !vec3<bool>(arg_1.x, true, arg_1.x), !arg_1.x), select(select(vec3<bool>(true, arg_1.x, false), !vec3<bool>(false, arg_1.x, arg_1.x), false), vec3<bool>(true, true, true), true), !(!arg_1.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = ~(~vec3<u32>(~arg_2.c.x, ~arg_2.c.x, ~(arg_2.c.x | 0u)));
    let var_1 = vec4<bool>(false, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.x, -688f, arg_2.d))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -111f, global4.x)))), !(!func_2()), arg_2, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~0u, 39958u, arg_2.c.x), ~var_0.x >> (4294967295u % 32u)), 8u)]), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1648f, 1289f, 774f), vec3<f32>(-750f, global4.x, 1761f)))), select(!vec2<bool>(arg_0, false), !func_2(), true), Struct_1(~vec3<u32>(arg_2.c.x, 1378u, var_0.x) & abs(vec3<u32>(17883u, var_0.x, 0u)), arg_2.e, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 26860u, 10872u), vec3<u32>(arg_2.a.x, arg_2.c.x, arg_2.a.x)), _wgslsmith_f_op_f32(-arg_2.d), 37017i), global0[_wgslsmith_index_u32(var_0.x, 8u)]), true);
    global2 = array<i32, 19>();
    let var_2 = global0[_wgslsmith_index_u32(2267u, 8u)];
    let var_3 = Struct_1(reverseBits(firstTrailingBit(var_2.a.wzw)), firstTrailingBit(_wgslsmith_sub_i32(~arg_1.x, _wgslsmith_add_i32(_wgslsmith_div_i32(18443i, -16383i), 2147483647i))), ~var_2.a.yyw, 915f, select(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, -69705i, 1i))), _wgslsmith_div_i32(max(2147483647i, 1i), 17894i), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_1 {
    global1 = 1u;
    var var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(20579u), 25u)];
    let var_1 = global0[_wgslsmith_index_u32(1u, 8u)];
    let var_2 = !select(vec4<bool>(!any(arg_3), arg_3.x, any(arg_3), true), vec4<bool>(true, !arg_3.x, !(false == arg_3.x), !(false | arg_3.x)), !func_3(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(-1056f, global4.x, global4.x)), select(vec2<bool>(false, arg_3.x), vec2<bool>(arg_3.x, arg_3.x), false), Struct_1(var_1.a.yxx, 27638i, arg_2.wxw, arg_0.x, 2147483647i), Struct_2(var_1.a, -1000f)));
    var var_3 = global3[_wgslsmith_index_u32(var_0.c.x, 25u)];
    return global3[_wgslsmith_index_u32(100699u, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, _wgslsmith_f_op_f32(func_1(true, u_input.a.xx, global3[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_f_op_f32(sign(1423f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4.x), global4.x, _wgslsmith_f_op_f32(-global4.x)))), vec4<i32>(u_input.a.x, -72415i, 23023i, global2[_wgslsmith_index_u32(abs(1u), 19u)]), firstTrailingBit(countOneBits(min(vec4<u32>(4294967295u, 39694u, 0u, 4294967295u), vec4<u32>(1u, 12322u, 0u, 79461u)))), vec3<bool>(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), true, func_2().x));
    global1 = var_0.c.x;
    global4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(661f, var_0.d)) + global4.x) - var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(var_0.b, -81651i)), Struct_1(vec3<u32>(0u, var_0.a.x, var_0.c.x), u_input.a.x, vec3<u32>(10169u, var_0.a.x, var_0.a.x), global4.x, 31205i))) - _wgslsmith_div_f32(-221f, 124f)), _wgslsmith_f_op_f32(-1f))));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 452f, global4.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, var_0.d, -683f)))))), ~vec4<i32>(16371i, max(var_0.b, 0i) | ~var_0.b, var_0.b, abs(firstTrailingBit(2147483647i))), ~firstLeadingBit(select(vec4<u32>(0u, 54941u, var_0.c.x, 0u), vec4<u32>(47443u, var_0.c.x, var_0.c.x, var_0.a.x), vec4<bool>(true, true, true, true))), vec3<bool>(true != any(vec4<bool>(true, false, false, true)), 0u != ~(var_0.c.x & 0u), any(vec4<bool>(true, true, func_3(vec3<f32>(global4.x, -244f, 1396f), vec2<bool>(true, true), global3[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(var_0.a.x, 8u)]), true))));
    var var_2 = _wgslsmith_sub_vec4_u32(select(select(_wgslsmith_add_vec4_u32(~vec4<u32>(55626u, var_0.a.x, 8362u, 4294967295u), ~vec4<u32>(var_0.c.x, 3557u, 1u, 4294967295u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(63211u, 4294967295u, 4634u, var_1.c.x), vec4<u32>(0u, var_1.a.x, 1u, var_1.c.x) >> (vec4<u32>(106340u, var_0.c.x, var_0.a.x, 4603u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, var_0.a.x, 4294967295u, var_0.a.x)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), false)), vec4<u32>(53250u, 12649u, ~(var_1.a.x & var_1.a.x), ~var_0.a.x), min(-2147483647i, max(-13310i, 29184i)) >= _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(var_1.c.x, 19u)], _wgslsmith_mod_i32(u_input.a.x, -9649i))), ~(~abs(vec4<u32>(1u, var_1.a.x, 4294967295u, var_1.a.x))) | _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(0u, var_0.a.x, 23791u, 57786u) >> (vec4<u32>(63726u, 0u, 0u, var_0.a.x) % vec4<u32>(32u))), reverseBits(~vec4<u32>(4294967295u, var_1.c.x, var_1.a.x, 13295u))));
    global0 = array<Struct_2, 8>();
    let var_3 = Struct_1(abs(vec3<u32>(108275u, ~22686u, _wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.c), var_0.c))), -1i, var_0.c, var_1.d, _wgslsmith_clamp_i32(i32(-1i) * -firstTrailingBit(28866i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.b, var_0.b) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 4317u, var_0.a.x, var_1.c.x), vec4<u32>(26165u, 36334u, 32875u, 4294967295u)) % 32u), var_0.b, global2[_wgslsmith_index_u32(~75724u, 19u)]), abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(14845i, 28486i, -13234i), vec3<i32>(-14400i, var_1.b, 35195i)), min(1123i, global2[_wgslsmith_index_u32(1u, 19u)]), var_1.e))));
    var var_4 = global0[_wgslsmith_index_u32(select(~7151u, _wgslsmith_add_u32(var_3.c.x, _wgslsmith_dot_vec3_u32(var_3.a ^ var_1.c, vec3<u32>(var_3.c.x, 1u, var_2.x))) & (~(~var_3.a.x) ^ (~var_2.x ^ 36270u)), !any(vec4<bool>(true, true, true, true))), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(reverseBits(~abs(vec4<u32>(var_4.a.x, 3431u, 49971u, 4294967295u))), ~var_4.a), max(firstLeadingBit(var_3.c.x), var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1867f));
}

