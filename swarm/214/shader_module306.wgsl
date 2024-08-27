struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-44893i, 25312i, 15926i, 9488i), vec4<f32>(-668f, 968f, 1000f, 171f), false);

var<private> global1: array<vec4<bool>, 18>;

var<private> global2: u32;

var<private> global3: array<f32, 25> = array<f32, 25>(121f, -1608f, 1164f, -1265f, 740f, -1000f, 257f, 380f, -339f, -736f, -141f, -1620f, 311f, -515f, -651f, -2231f, -130f, -2073f, 508f, 1000f, -1140f, 151f, 862f, -798f, 532f);

var<private> global4: i32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = vec2<u32>(max(~0u, _wgslsmith_mod_u32(countOneBits(1u), firstLeadingBit(arg_2))), 11445u);
    global0 = arg_1;
    return global0.b.x;
}

fn func_2() -> Struct_1 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(34103u, 25u)])), _wgslsmith_f_op_f32(-941f + _wgslsmith_f_op_f32(-1000f + 479f)), -1689f, global0.b.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3[_wgslsmith_index_u32(15994u, 25u)], 493f, global3[_wgslsmith_index_u32(u_input.c, 25u)], global3[_wgslsmith_index_u32(u_input.b, 25u)]))))) * global0.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(64766u, u_input.b), 25u)] + -862f), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~26619u, 25u)], -1371f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 25u)] * global3[_wgslsmith_index_u32(4294967295u, 25u)]) - global0.b.x))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x + global3[_wgslsmith_index_u32(1u, 25u)]), 1332f, 1116f, _wgslsmith_div_f32(global0.b.x, var_1.x)))), Struct_1(~(~global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b + global0.b)), global0.c), _wgslsmith_mod_u32(u_input.c, u_input.b), true)) - _wgslsmith_f_op_f32(917f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(795f - 1462f))))));
    var var_3 = i32(-1i) * -_wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(max(0i, 1i), u_input.d.x));
    var var_4 = (~(vec4<i32>(-1i) * -vec4<i32>(46920i, global0.a.x, 2147483647i, 2147483647i)) & _wgslsmith_add_vec4_i32(min(global0.a >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 75658u) % vec4<u32>(32u)), vec4<i32>(-12300i, -1i, 2147483647i, u_input.d.x)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, u_input.d.x, global0.a.x, -41877i), global0.a) ^ countOneBits(global0.a))) ^ vec4<i32>(-12895i, -1i, i32(-1i) * -_wgslsmith_mod_i32(-49743i, global0.a.x), _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(-2147483647i, -2147483647i)));
    return Struct_1(select(vec4<i32>(-max(2147483647i, u_input.a), -abs(-30704i), global0.a.x, global0.a.x), ~_wgslsmith_div_vec4_i32(global0.a, _wgslsmith_div_vec4_i32(global0.a, vec4<i32>(2147483647i, 0i, 0i, 1i))), select(global1[_wgslsmith_index_u32(1u, 18u)], vec4<bool>(true, global0.c, true, global0.c), global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.c), 18u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(min(global0.b, global0.b))), !select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31132u, u_input.c, 55040u), vec3<u32>(54168u, 0u, u_input.b)), 18u)], vec4<bool>(true, false, true, global0.c), true))), true);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_u32(~(~(~(~vec4<u32>(0u, 1u, 1u, u_input.b)))), firstTrailingBit(vec4<u32>(~arg_2.x >> (_wgslsmith_clamp_u32(u_input.c, 0u, 168u) % 32u), ~(arg_2.x & 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(28335u, arg_2.x, u_input.b, u_input.b), vec4<u32>(arg_2.x, 1u, 0u, u_input.c)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(65866u, arg_2.x, 0u), vec3<u32>(4294967295u, 0u, 49688u))))));
    let var_1 = func_2();
    global1 = array<vec4<bool>, 18>();
    var_0 = ~(~(~vec4<u32>(var_0.x, u_input.c, u_input.b, 13383u) | ~min(vec4<u32>(42278u, 5721u, u_input.c, 1u), vec4<u32>(46123u, 1u, 1u, arg_2.x))));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(21957i, arg_1, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(~var_1.a.wxx, firstLeadingBit(vec3<i32>(var_1.a.x, 59016i, 3819i))) << (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 1u)), reverseBits(arg_2)) % 32u)), arg_0.a);
    return Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-44484i, -24887i), -35691i, -arg_0.a.x, max(arg_1, 15992i)), var_1.a, select(vec4<i32>(arg_1, arg_0.a.x, u_input.d.x, 2147483647i), vec4<i32>(-22712i, 2147483647i, global0.a.x, u_input.d.x), false)), ~vec4<i32>(countOneBits(-16706i), func_2().a.x, -var_2, 14373i >> (0u % 32u))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-652f)), 1202f), _wgslsmith_f_op_f32(global0.b.x * 1656f), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1773f, -464f, global3[_wgslsmith_index_u32(24851u, 25u)], global0.b.x), var_1.b))), Struct_1(vec4<i32>(-10384i, arg_0.a.x, 17981i, 43050i), vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 25u)], global0.b.x, global0.b.x, var_1.b.x), all(vec4<bool>(true, global0.c, global0.c, true))), reverseBits(0u), false)), _wgslsmith_f_op_f32(-global0.b.x)), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    global4 = global0.a.x;
    var var_0 = func_1(arg_1, arg_1.a.x, ~_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, 10106u), select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(1u, u_input.b)), vec2<u32>(1u, 5625u), true)));
    var var_1 = _wgslsmith_mult_u32(~min(u_input.b, u_input.c ^ u_input.c), ~u_input.b);
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.b.x)) * 1000f), global0.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), global0.b.x))) - _wgslsmith_f_op_f32(min(-1196f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b.x), -101f)), var_0.b.x)))));
    return ~u_input.c;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: u32) -> StorageBuffer {
    let var_0 = select(!select(select(select(vec2<bool>(false, global0.c), vec2<bool>(false, global0.c), global0.c), vec2<bool>(true, true), vec2<bool>(global0.c, false)), vec2<bool>(!global0.c, any(vec3<bool>(true, false, global0.c))), select(!vec2<bool>(global0.c, true), vec2<bool>(true, false), all(vec3<bool>(false, true, true)))), !(!(!select(vec2<bool>(global0.c, global0.c), vec2<bool>(true, global0.c), false))), select(select(!select(vec2<bool>(global0.c, global0.c), vec2<bool>(global0.c, false), vec2<bool>(global0.c, global0.c)), vec2<bool>(!global0.c, global0.c), !global0.c & !global0.c), vec2<bool>(!(global0.a.x >= global0.a.x), true), global0.c));
    let var_1 = Struct_1(~global0.a, global0.b, var_0.x);
    var var_2 = !any(vec3<bool>(var_1.c, !(global0.b.x > global0.b.x), !(var_0.x & var_1.c)));
    global4 = -(~(-1i));
    global0 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_i32(var_1.a, _wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(var_1.a.x, 3475i, -2147483647i, arg_1.x)))) ^ reverseBits(arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(global3[_wgslsmith_index_u32(67641u, 25u)], global0.b.x, 453f, -1000f)))) - vec4<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b, 25u)], global3[_wgslsmith_index_u32(u_input.b, 25u)]), global0.b.x, global0.b.x, global0.b.x))), !var_0.x);
    return StorageBuffer(28550u, -829f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(-global0.a, global0.a, abs(_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u)))) | func_4(select(select(vec3<bool>(global0.c, global0.c, false), vec3<bool>(global0.c, true, global0.c), vec3<bool>(false, true, false)), vec3<bool>(false, true, false), true), func_1(Struct_1(global0.a, global0.b, false), ~u_input.a, ~vec2<u32>(4294967295u, 57123u))));
}

