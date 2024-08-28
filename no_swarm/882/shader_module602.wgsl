struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 74169u;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec2<i32>(44845i, 2147483647i), vec2<bool>(true, true), 527f, Struct_1(vec2<f32>(-1359f, 1601f), vec2<bool>(false, false), 1u, vec3<u32>(1u, 4294967295u, 87976u))), Struct_2(vec2<i32>(2147483647i, -15175i), vec2<bool>(false, false), 108f, Struct_1(vec2<f32>(1625f, 228f), vec2<bool>(true, true), 1u, vec3<u32>(67287u, 85279u, 34218u))), Struct_2(vec2<i32>(2147483647i, 31371i), vec2<bool>(false, true), 315f, Struct_1(vec2<f32>(1587f, 604f), vec2<bool>(false, false), 0u, vec3<u32>(84049u, 56050u, 4294967295u))), Struct_2(vec2<i32>(i32(-2147483648), -42741i), vec2<bool>(false, false), 250f, Struct_1(vec2<f32>(1251f, -1643f), vec2<bool>(false, true), 1u, vec3<u32>(4294967295u, 4294967295u, 0u))), Struct_2(vec2<i32>(11631i, 28309i), vec2<bool>(false, false), 1603f, Struct_1(vec2<f32>(864f, 1042f), vec2<bool>(true, false), 4294967295u, vec3<u32>(1u, 38380u, 20275u))), Struct_2(vec2<i32>(21837i, i32(-2147483648)), vec2<bool>(true, false), 318f, Struct_1(vec2<f32>(968f, -196f), vec2<bool>(false, false), 31120u, vec3<u32>(0u, 46376u, 85135u))), Struct_2(vec2<i32>(-13254i, i32(-2147483648)), vec2<bool>(true, false), -1611f, Struct_1(vec2<f32>(-618f, -179f), vec2<bool>(true, true), 1u, vec3<u32>(1u, 4294967295u, 17937u))), Struct_2(vec2<i32>(12172i, 5371i), vec2<bool>(false, true), -364f, Struct_1(vec2<f32>(-602f, -435f), vec2<bool>(false, false), 0u, vec3<u32>(47149u, 4294967295u, 57509u))), Struct_2(vec2<i32>(56305i, 1i), vec2<bool>(false, true), -675f, Struct_1(vec2<f32>(-1383f, -368f), vec2<bool>(true, true), 18388u, vec3<u32>(85015u, 4294967295u, 4294967295u))), Struct_2(vec2<i32>(11409i, 1i), vec2<bool>(true, false), 748f, Struct_1(vec2<f32>(-893f, -124f), vec2<bool>(false, false), 0u, vec3<u32>(0u, 15746u, 1118u))), Struct_2(vec2<i32>(1i, -37002i), vec2<bool>(true, false), -115f, Struct_1(vec2<f32>(222f, -793f), vec2<bool>(false, true), 97237u, vec3<u32>(30263u, 15088u, 103u))), Struct_2(vec2<i32>(6247i, 9804i), vec2<bool>(false, true), 1443f, Struct_1(vec2<f32>(-1677f, -787f), vec2<bool>(true, true), 35662u, vec3<u32>(81187u, 26582u, 32364u))), Struct_2(vec2<i32>(-25245i, 2147483647i), vec2<bool>(false, true), -173f, Struct_1(vec2<f32>(1000f, -1342f), vec2<bool>(true, true), 123472u, vec3<u32>(0u, 26613u, 1u))), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(false, true), -157f, Struct_1(vec2<f32>(-3106f, -264f), vec2<bool>(false, true), 4294967295u, vec3<u32>(27553u, 4294967295u, 35594u))), Struct_2(vec2<i32>(-27038i, 9930i), vec2<bool>(false, true), 214f, Struct_1(vec2<f32>(777f, 813f), vec2<bool>(false, true), 4294967295u, vec3<u32>(27628u, 4294967295u, 4294967295u))), Struct_2(vec2<i32>(2147483647i, 1i), vec2<bool>(false, true), -816f, Struct_1(vec2<f32>(1594f, -1267f), vec2<bool>(true, false), 1u, vec3<u32>(1u, 56621u, 0u))), Struct_2(vec2<i32>(55715i, -1i), vec2<bool>(false, true), -944f, Struct_1(vec2<f32>(-543f, -297f), vec2<bool>(true, true), 1u, vec3<u32>(4294967295u, 68043u, 13820u))), Struct_2(vec2<i32>(0i, -50342i), vec2<bool>(false, false), 2277f, Struct_1(vec2<f32>(-367f, -1077f), vec2<bool>(true, false), 9379u, vec3<u32>(22556u, 4294967295u, 43460u))));

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<u32> {
    global0 = ~reverseBits(4294967295u);
    return min(global3.d, ~arg_1.d.d);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    global3 = Struct_1(global1.a, !global3.b, global1.d.x, reverseBits(func_3(select(select(vec4<bool>(arg_0, global3.b.x, true, true), vec4<bool>(arg_0, true, true, true), true), vec4<bool>(global1.b.x, true, true, global3.b.x), true), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.d.x, global3.d.x), 18u)])));
    let var_0 = select(vec4<bool>(all(!(!global3.b)), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(trunc(2717f))) != _wgslsmith_f_op_f32(f32(-1f) * -565f), global3.b.x && select(all(vec4<bool>(global3.b.x, global3.b.x, global1.b.x, false)), global3.b.x, true), true), vec4<bool>(!arg_0, all(!select(vec4<bool>(true, true, false, global3.b.x), vec4<bool>(global3.b.x, global3.b.x, global1.b.x, global3.b.x), true)), any(vec3<bool>(all(vec2<bool>(global1.b.x, true)), select(false, true, global3.b.x), false)), true), true);
    let var_1 = global2[_wgslsmith_index_u32(1u, 18u)];
    let var_2 = ~countOneBits(vec3<u32>(3126u, firstLeadingBit(max(98671u, 0u)), min(~26789u, select(1u, 1u, true))));
    let var_3 = Struct_1(global3.a, select(select(!select(var_1.b, var_1.b, vec2<bool>(var_0.x, var_0.x)), select(!global3.b, !var_0.wx, global3.b), vec2<bool>(false, global1.b.x)), !var_0.xx, true), countOneBits(firstLeadingBit(~var_1.d.c | reverseBits(38312u))), _wgslsmith_clamp_vec3_u32(var_2, vec3<u32>(firstTrailingBit(global1.c), _wgslsmith_div_u32(0u, global1.d.x), _wgslsmith_dot_vec2_u32(global3.d.yz, vec2<u32>(var_1.d.c, 0u))), ~var_1.d.d) >> (global3.d % vec3<u32>(32u)));
    return Struct_1(global1.a, vec2<bool>(~1u >= ~_wgslsmith_dot_vec4_u32(vec4<u32>(26219u, global3.c, 1u, 1u), vec4<u32>(26293u, 1u, 0u, 20121u)), var_1.d.b.x), global3.c ^ max(global1.d.x, select(1u, 37231u, !global1.b.x)), vec3<u32>(min(abs(var_2.x), countOneBits(0u)), _wgslsmith_mult_u32(4294967295u, 1u), firstTrailingBit(var_3.c) | ~var_1.d.c) ^ (vec3<u32>(_wgslsmith_mod_u32(var_1.d.d.x, var_2.x), 0u, ~36064u) | vec3<u32>(~1u, 19223u, 6033u >> (var_3.c % 32u))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, i32(-1i) * -15814i), -(~u_input.a) | -(u_input.a ^ u_input.b)), -38637i);
    var var_1 = Struct_2(~vec2<i32>(~u_input.b, _wgslsmith_mult_i32(var_0, 58776i) & 1i), global1.b, global1.a.x, func_2(any(vec2<bool>(true, true)), global1.a));
    var var_2 = func_2(var_1.b.x | select(-2147483647i >= (var_1.a.x | var_1.a.x), true, all(var_1.d.b)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(927f - 342f) - 927f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.a.x - global1.a.x)))), var_1.d.a.x));
    var var_3 = Struct_2(select(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.a, vec2<i32>(u_input.b, var_0)), countOneBits(-28269i)), vec2<i32>(var_1.a.x, -2147483647i >> (var_2.c % 32u))), vec2<i32>(~(-2147483647i), u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(16720u, global3.c, 0u), var_2.d ^ var_2.d) == max(countOneBits(var_1.d.d.x), _wgslsmith_mult_u32(var_2.c, 22713u))), global3.b, 2304f, var_1.d);
    global2 = array<Struct_2, 18>();
    return var_3.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(firstLeadingBit(global1.d.x), 4294967295u), ~func_1().d.xy), 18u)];
    let var_1 = func_2(true, global3.a);
    var var_2 = (4294967295u & var_0.d.c) << (0u % 32u);
    var var_3 = select(abs(vec4<i32>(1i, var_0.a.x, 1i, ~var_0.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -1i, countOneBits(arg_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, var_0.a.x, arg_0.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a, 1i), vec3<i32>(var_0.a.x, 35489i, 1i))), u_input.b), ~(~abs(vec4<i32>(var_0.a.x, u_input.a, u_input.a, var_0.a.x)))), vec4<bool>(all(select(!global3.b, func_2(true, vec2<f32>(1080f, arg_1.a.x)).b, var_0.d.c >= var_1.c)), true, ~_wgslsmith_div_u32(global3.c, 55395u) != _wgslsmith_mult_u32(118087u << (global1.d.x % 32u), 1u), true));
    var_3 = -firstTrailingBit(firstTrailingBit(vec4<i32>(21872i, var_3.x, var_3.x, var_0.a.x))) | abs(max(_wgslsmith_add_vec4_i32(vec4<i32>(-9985i, u_input.b, 20194i, 5034i), abs(vec4<i32>(1i, var_0.a.x, u_input.b, arg_0.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(24650i, 32375i, 26594i, -2147483647i), vec4<i32>(arg_0.a.x, var_3.x, var_0.a.x, u_input.b)) | (vec4<i32>(-1i, 49663i, arg_0.a.x, 36330i) >> (vec4<u32>(15597u, arg_1.d.x, 46185u, 68061u) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 18>();
    let var_0 = 4294967295u <= ~(_wgslsmith_add_u32(0u, ~global1.c) >> (~_wgslsmith_mult_u32(global1.c, global3.d.x) % 32u));
    let var_1 = (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.c, global1.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.x, 4294967295u, global3.d.x, global1.d.x), vec4<u32>(global1.d.x, global1.c, 1u, 1u)), 4294967295u), 4294967295u) != ~_wgslsmith_add_u32(20999u, ~global1.d.x)) | false;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(58935u, 18u)], func_1(), func_1())), 1979f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - -604f))) == -685f;
    let var_3 = abs(_wgslsmith_add_u32(~abs(~global3.c), global1.c << (global1.c % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(firstTrailingBit(select(vec4<u32>(0u, 0u, 43195u, 88347u), vec4<u32>(global3.d.x, global1.c, 0u, 0u), false))), abs(vec4<u32>(4294967295u, global3.c, 4294967295u, global1.d.x) | vec4<u32>(0u, global3.c, 0u, 0u)) >> (abs(vec4<u32>(global1.d.x, 16566u, 0u, var_3)) % vec4<u32>(32u)), vec4<bool>(global1.b.x, (1i != u_input.b) || var_1, false, var_0)), 359f, firstTrailingBit(_wgslsmith_mult_i32(-1i, min(~(-1i), -2147483647i))), global1.a.x);
}

