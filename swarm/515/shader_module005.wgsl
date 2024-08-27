struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec3<u32>(4294967295u, 49300u, 4294967295u), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), false, vec3<f32>(-2064f, 626f, -384f)), Struct_2(vec3<u32>(0u, 13162u, 0u), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), false, vec3<f32>(878f, 233f, -828f)), Struct_2(vec3<u32>(1u, 0u, 1u), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), true, vec3<f32>(1000f, -575f, -671f)), Struct_2(vec3<u32>(4294967295u, 121873u, 18007u), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), true, vec3<f32>(-1820f, -490f, 755f)), Struct_2(vec3<u32>(4294967295u, 56759u, 574u), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), true, vec3<f32>(326f, 106f, -160f)), Struct_2(vec3<u32>(1u, 0u, 26326u), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true)), true, vec3<f32>(-1000f, 651f, -823f)), Struct_2(vec3<u32>(12760u, 7587u, 24229u), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false)), false, vec3<f32>(1093f, -1000f, 669f)), Struct_2(vec3<u32>(0u, 1u, 7778u), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), false, vec3<f32>(-1066f, -1673f, 1883f)), Struct_2(vec3<u32>(4294967295u, 44706u, 9135u), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true)), true, vec3<f32>(2577f, 1418f, -337f)), Struct_2(vec3<u32>(48756u, 4294967295u, 6859u), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, true)), true, vec3<f32>(382f, 497f, -360f)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false)), false, vec3<f32>(1000f, -841f, 1277f)), Struct_2(vec3<u32>(4294967295u, 24776u, 0u), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), true, vec3<f32>(-1000f, -127f, 139f)), Struct_2(vec3<u32>(27140u, 3897u, 34010u), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), true, vec3<f32>(-1425f, 1496f, 166f)), Struct_2(vec3<u32>(42832u, 63240u, 1u), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), false, vec3<f32>(-775f, 1000f, 318f)), Struct_2(vec3<u32>(1u, 4294967295u, 16080u), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), true, vec3<f32>(2381f, 503f, -965f)), Struct_2(vec3<u32>(2110u, 26127u, 69072u), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), false, vec3<f32>(2463f, -646f, -240f)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), false, vec3<f32>(478f, -1474f, 1000f)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), false, vec3<f32>(-977f, 1924f, 556f)), Struct_2(vec3<u32>(23149u, 1u, 67858u), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true)), false, vec3<f32>(-1013f, -854f, 1169f)), Struct_2(vec3<u32>(4294967295u, 36050u, 1u), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), true, vec3<f32>(503f, -1000f, -312f)), Struct_2(vec3<u32>(28518u, 4294967295u, 0u), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)), false, vec3<f32>(-800f, 297f, -1163f)), Struct_2(vec3<u32>(81503u, 58656u, 4294967295u), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), true, vec3<f32>(-1000f, 1222f, 445f)), Struct_2(vec3<u32>(1u, 0u, 7748u), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)), false, vec3<f32>(-1710f, 599f, -424f)), Struct_2(vec3<u32>(25328u, 1u, 21172u), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), true, vec3<f32>(-1000f, -308f, -1000f)), Struct_2(vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false)), true, vec3<f32>(158f, -1766f, 1326f)), Struct_2(vec3<u32>(0u, 37342u, 4294967295u), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true)), false, vec3<f32>(1079f, -1000f, -1057f)), Struct_2(vec3<u32>(82900u, 0u, 14322u), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), true, vec3<f32>(1000f, 1439f, -191f)), Struct_2(vec3<u32>(0u, 18532u, 57906u), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), true, vec3<f32>(1206f, 550f, 346f)));

var<private> global1: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(1u, 7818u), vec2<u32>(4294967295u, 1u), vec2<u32>(30064u, 21911u), vec2<u32>(36576u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(51402u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(472u, 3767u), vec2<u32>(25777u, 32558u), vec2<u32>(1u, 1u), vec2<u32>(27708u, 1060u), vec2<u32>(0u, 1u), vec2<u32>(34964u, 0u));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false)));

var<private> global3: Struct_1;

var<private> global4: f32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2.e;
    return global2[_wgslsmith_index_u32(abs(26934u), 23u)];
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_3(func_1(any(vec3<bool>(all(vec4<bool>(global3.a.x, global3.a.x, true, false)), global3.a.x, true == global3.a.x)), global3.a.x, global0[_wgslsmith_index_u32(~(~24783u), 28u)]), _wgslsmith_f_op_f32(-1685f + _wgslsmith_f_op_f32(1f + -742f)), ~(firstTrailingBit(~vec4<u32>(u_input.b, 58283u, 4294967295u, u_input.b)) & ~(vec4<u32>(u_input.b, 1u, 51914u, u_input.b) ^ vec4<u32>(1u, u_input.b, 4294967295u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-861f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f * -2217f)))), global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.b, 24428u)), vec3<u32>(u_input.b, 73042u, 0u) ^ vec3<u32>(u_input.b, 61841u, 17881u)) ^ (u_input.b << ((4294967295u << (u_input.b % 32u)) % 32u))), 23u)]);
    var var_1 = vec3<bool>(true, u_input.a <= countOneBits(2147483647i), global3.a.x);
    var var_2 = ~u_input.b;
    var_2 = 53451u;
    var var_3 = Struct_2(~vec3<u32>(select(4294967295u, 31410u, true), var_0.c.x, ~0u) ^ max(vec3<u32>(var_0.c.x, ~var_0.c.x, ~39525u), _wgslsmith_sub_vec3_u32(var_0.c.yww, var_0.c.wyz)), Struct_1(vec3<bool>(false, any(func_1(var_1.x, false, global0[_wgslsmith_index_u32(u_input.b, 28u)]).a.yx), false)), global2[_wgslsmith_index_u32(var_0.c.x, 23u)], select(u_input.a >= _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), 1i), all(!var_0.a.a), any(vec2<bool>(false, any(vec3<bool>(global3.a.x, var_0.e.a.x, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.b, -1003f)), vec3<f32>(894f, 769f, 1269f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-116f)), _wgslsmith_f_op_f32(-1125f * 707f), _wgslsmith_f_op_f32(-var_0.d))))));
    return _wgslsmith_add_vec3_i32(vec3<i32>(-16092i, _wgslsmith_mult_i32(u_input.a, abs(u_input.a | u_input.a)), u_input.c), abs(~vec3<i32>(min(-9370i, u_input.c), i32(-1i) * -2147483647i, _wgslsmith_sub_i32(17118i, 776i))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    let var_0 = ~(-(~(-func_3())));
    var var_1 = _wgslsmith_f_op_f32(-283f - 2428f);
    global1 = array<vec2<u32>, 14>();
    var var_2 = arg_1;
    let var_3 = Struct_2(_wgslsmith_clamp_vec3_u32(arg_0, ~vec3<u32>(1u, 0u, u_input.b) << (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), arg_0) % vec3<u32>(32u)), ~arg_0) ^ vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.b, u_input.b, 0u)), 2894u), arg_0.x, _wgslsmith_div_u32(~60385u, firstTrailingBit(1u))), Struct_1(vec3<bool>(global3.a.x | false, var_2.a.x, false)), arg_1, all(!vec2<bool>(arg_2.a.x, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(682f, -1475f, -517f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 617f, 1475f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1606f, 1239f, 555f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(353f, -560f, 457f) + vec3<f32>(-732f, 1007f, 1935f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(414f, -273f, 1070f)))));
    return Struct_3(Struct_1(var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(22455u, u_input.b, 1u, u_input.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, var_3.a.x, arg_0.x), vec4<u32>(u_input.b, 6738u, arg_0.x, 103570u))), reverseBits(~(vec4<u32>(72411u, 0u, var_3.a.x, u_input.b) >> (vec4<u32>(4294967295u, 1u, 13121u, 22811u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-154f * var_3.e.x))) + _wgslsmith_f_op_f32(var_3.e.x * var_3.e.x)), Struct_1(vec3<bool>(arg_1.a.x, func_1(!var_2.a.x, global3.a.x, Struct_2(var_3.a, Struct_1(vec3<bool>(true, true, true)), var_3.b, false, var_3.e)).a.x, !arg_2.a.x == false)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_1.d;
    var var_1 = arg_1;
    var var_2 = 6717u;
    var var_3 = arg_1;
    var var_4 = !vec3<bool>(true, var_3.a.a.x, var_1.e.a.x);
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 23>();
    var var_0 = -17619i;
    var var_1 = Struct_2(~(~vec3<u32>(0u, 1u, u_input.b)) << (~_wgslsmith_add_vec3_u32(select(vec3<u32>(15425u, 47808u, 1u), vec3<u32>(u_input.b, 51007u, 0u), vec3<bool>(global3.a.x, false, global3.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(35806u, u_input.b, 0u))) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(1u, 23u)], func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(510f)) - -483f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_div_f32(383f, 872f)), global3.a.x, global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 28u)]), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1542f, 502f, 211f))))));
    let var_2 = _wgslsmith_div_vec2_i32(reverseBits(min(min(vec2<i32>(1i, u_input.a) | vec2<i32>(u_input.c, -1i), -vec2<i32>(u_input.a, u_input.c)), vec2<i32>(u_input.a, ~35433i))), min(~vec2<i32>(1i, reverseBits(-2147483647i)), firstLeadingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(0i, u_input.c), vec2<i32>(-22871i, 0i)))));
    var_0 = abs(var_2.x) & var_2.x;
    var_0 = ~(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2035f, _wgslsmith_f_op_f32(1530f + var_1.e.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(Struct_2(vec3<u32>(var_1.a.x, 0u, var_1.a.x), Struct_1(vec3<bool>(global3.a.x, true, global3.a.x)), var_1.b, global3.a.x, vec3<f32>(196f, -600f, var_1.e.x)), func_2(vec3<u32>(39566u, 15868u, var_1.a.x), Struct_1(global3.a), var_1.c, var_1.c.a.x), -2147483647i, countOneBits(vec3<i32>(-47500i, var_2.x, var_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(vec3<u32>(u_input.b, u_input.b, u_input.b), global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(21800u, 23u)], false).b), false)), _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(471f, _wgslsmith_f_op_f32(-var_1.e.x))))), _wgslsmith_mod_vec4_i32(max(~vec4<i32>(2147483647i, var_2.x, u_input.a, 10282i), vec4<i32>(u_input.a, var_2.x, -2147483647i, var_2.x)) >> (vec4<u32>(~66287u, var_1.a.x | 1u, u_input.b, var_1.a.x) % vec4<u32>(32u)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -35746i, var_2.x, u_input.c), vec4<i32>(u_input.c, 38052i, -1991i, var_2.x)), vec4<i32>(1i, -2147483647i, -8098i, 0i), !vec4<bool>(global3.a.x, true, true, true)) | abs(vec4<i32>(u_input.c, -1i, var_2.x, 1i))), -1i, _wgslsmith_clamp_u32(u_input.b << (abs(func_2(vec3<u32>(4294967295u, 6723u, 4294967295u), global2[_wgslsmith_index_u32(u_input.b, 23u)], Struct_1(var_1.b.a), global3.a.x).c.x) % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, var_1.a.x), 4294967295u), 76034u), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-660f)))), 1259f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.e.x)) + -423f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(floor(var_1.e.x)))))));
}

