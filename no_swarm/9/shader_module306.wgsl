struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<u32>(1u, 1u, 60994u), vec2<i32>(-7118i, 0i), 213f), Struct_1(vec3<u32>(1u, 12543u, 1u), vec2<i32>(-29869i, -1i), -1000f), Struct_1(vec3<u32>(0u, 98711u, 33987u), vec2<i32>(64887i, i32(-2147483648)), 1000f), Struct_1(vec3<u32>(9878u, 27803u, 11857u), vec2<i32>(46523i, 6261i), -738f), Struct_1(vec3<u32>(19066u, 1u, 1u), vec2<i32>(i32(-2147483648), 5884i), -1398f), Struct_1(vec3<u32>(55827u, 1u, 4294967295u), vec2<i32>(-1i, 1i), -1288f), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec2<i32>(-4856i, 4544i), 334f), Struct_1(vec3<u32>(40285u, 57394u, 78812u), vec2<i32>(1i, 2147483647i), 318f), Struct_1(vec3<u32>(1421u, 4294967295u, 7853u), vec2<i32>(1i, i32(-2147483648)), -554f), Struct_1(vec3<u32>(23075u, 0u, 23005u), vec2<i32>(0i, 10802i), 1355f), Struct_1(vec3<u32>(98794u, 10600u, 1u), vec2<i32>(18621i, -1i), -613f), Struct_1(vec3<u32>(1u, 4294967295u, 48147u), vec2<i32>(-15975i, 0i), 1543f), Struct_1(vec3<u32>(1u, 32053u, 37968u), vec2<i32>(-59190i, 8528i), -1336f), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<i32>(-2588i, 49840i), 833f), Struct_1(vec3<u32>(4294967295u, 1u, 3012u), vec2<i32>(38859i, 0i), 1121f), Struct_1(vec3<u32>(17364u, 4294967295u, 419u), vec2<i32>(2147483647i, -43797i), -260f));

var<private> global2: array<vec3<bool>, 16>;

var<private> global3: array<bool, 17> = array<bool, 17>(false, false, true, true, false, true, true, true, true, true, true, true, false, true, true, false, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> f32 {
    global2 = array<vec3<bool>, 16>();
    var var_0 = firstLeadingBit(-vec2<i32>(~_wgslsmith_mult_i32(-5223i, 0i), -103947i));
    let var_1 = vec3<i32>(max(_wgslsmith_clamp_i32((i32(-1i) * -14980i) >> (u_input.c.x % 32u), 26936i, 1i), u_input.b), var_0.x, u_input.b);
    var var_2 = reverseBits(_wgslsmith_add_vec3_i32(firstTrailingBit(firstTrailingBit(var_1)), abs(-vec3<i32>(var_0.x, -8503i, u_input.b))) >> (~(firstLeadingBit(vec3<u32>(23847u, 0u, 1u)) >> (_wgslsmith_sub_vec3_u32(u_input.a.zwz, vec3<u32>(global0.x, 18926u, 100120u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global1 = array<Struct_1, 16>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-3104f, 1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) * _wgslsmith_div_f32(457f, 547f)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_3(6708u, -_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -31269i, u_input.b), -vec3<i32>(u_input.b, -6050i, -3718i)), arg_0.c, vec4<u32>(arg_0.a.x, ~arg_0.a.x, 4294967295u, countOneBits(13131u)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.c + -145f))) + -934f))), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.c)), arg_0.c, _wgslsmith_f_op_f32(659f - -1078f), 640f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, arg_0.c, var_0.c, -277f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_0.c, -724f, 265f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, arg_0.c, 1236f) * vec3<f32>(1605f, var_0.c, 127f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-197f, _wgslsmith_f_op_f32(-var_0.c), var_0.c) + vec3<f32>(-1620f, -276f, _wgslsmith_f_op_f32(1026f * arg_0.c)))));
    var var_2 = arg_1.x && false;
    let var_3 = select(!global2[_wgslsmith_index_u32(0u, 16u)], vec3<bool>(arg_1.x, true, select(true, arg_1.x, arg_1.x)), !(!(abs(var_1.b) > 1u)));
    let var_4 = 745f;
    return var_1.d.x;
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global2 = array<vec3<bool>, 16>();
    global3 = array<bool, 17>();
    let var_0 = select(true, all(vec2<bool>(!any(global2[_wgslsmith_index_u32(14197u, 16u)]), global3[_wgslsmith_index_u32(global0.x | (46490u | u_input.c.x), 17u)])), firstLeadingBit(1u) < ~(~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 4294967295u))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1000f) + vec3<f32>(-1617f, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(644f, arg_0, 1815f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -453f, -735f), vec3<f32>(arg_0, arg_0, arg_0)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0, -1653f) * vec3<f32>(1000f, -244f, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-394f, -304f, arg_0) + vec3<f32>(arg_0, arg_0, 111f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(~global0.x, 16u)])), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_0 + 406f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-440f, 687f, arg_0), vec3<f32>(arg_0, arg_0, -1000f))) + vec3<f32>(_wgslsmith_f_op_f32(694f - -1368f), 575f, arg_0))));
    let var_2 = !all(vec2<bool>(_wgslsmith_f_op_f32(abs(var_1.x)) == _wgslsmith_f_op_f32(-var_1.x), all(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), 16u)])));
    return global2[_wgslsmith_index_u32(u_input.c.x, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 17>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(1u, global0.x, u_input.a.x, ~global0.x)), _wgslsmith_add_vec4_u32(~(~(vec4<u32>(global0.x, global0.x, global0.x, 1u) | u_input.a)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(10698u, 52389u, 4294967295u, 75389u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 8128u, u_input.c.x, u_input.c.x), u_input.a), u_input.a.x, ~u_input.a.x, 0u), firstLeadingBit(u_input.a)))), 17u)];
    let var_1 = true;
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1363f))) - _wgslsmith_f_op_f32(227f + _wgslsmith_f_op_f32(func_1()))));
    var var_3 = !select(vec4<bool>(func_2(_wgslsmith_f_op_f32(520f + -862f)).x, all(select(vec3<bool>(global3[_wgslsmith_index_u32(22800u, 17u)], false, true), vec3<bool>(var_1, true, var_1), true)), all(vec4<bool>(false, false, var_2.x, global3[_wgslsmith_index_u32(global0.x, 17u)])), any(global2[_wgslsmith_index_u32(abs(global0.x), 16u)])), select(select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 17u)], true, var_2.x), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 17u)], global3[_wgslsmith_index_u32(1u, 17u)], var_1), true), vec4<bool>(false, false, var_1, true), !vec4<bool>(var_2.x, global3[_wgslsmith_index_u32(43268u, 17u)], true, false)), vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 17u)] || false, true, true, global3[_wgslsmith_index_u32(u_input.a.x, 17u)]), global3[_wgslsmith_index_u32(4294967295u, 17u)]), false | any(vec3<bool>(var_1, false, var_1)));
    let var_4 = vec4<i32>(-4434i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b) | firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), -firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, 45181i))), u_input.b, firstTrailingBit(_wgslsmith_div_i32(firstLeadingBit(0i), ~(-18918i & u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1124f, 1967f, -1818f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1399f, -1484f, -490f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-206f, 252f, 1355f) + vec3<f32>(518f, -1058f, 398f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 2894f, -1185f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1125f, -500f, -219f))), true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(288f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f + -224f)))));
}

