struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec3<u32>,
    d: Struct_4,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-837f, -337f, -1022f), vec3<f32>(-878f, -522f, 245f), vec3<f32>(264f, -1007f, 522f), vec3<f32>(1039f, -1000f, 1645f), vec3<f32>(205f, -1168f, 946f), vec3<f32>(1000f, 1560f, 1170f), vec3<f32>(-935f, -567f, -1150f), vec3<f32>(-1911f, 659f, 1222f));

var<private> global2: vec4<u32> = vec4<u32>(1u, 33593u, 13136u, 27140u);

var<private> global3: vec2<i32> = vec2<i32>(0i, 0i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: i32, arg_3: bool) -> vec4<u32> {
    let var_0 = arg_1.d.a;
    var var_1 = Struct_1(arg_0.yw, max(~(~reverseBits(vec4<u32>(arg_1.c.x, 6086u, 0u, 0u))), firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(20298u, 78176u, 36526u, u_input.c), vec4<u32>(u_input.c, u_input.c, arg_1.c.x, global2.x), vec4<u32>(0u, u_input.c, 4294967295u, global2.x)))), firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 1u, arg_1.c.x, 9384u)), vec4<u32>(arg_1.c.x, global2.x, 45003u, u_input.c) ^ vec4<u32>(global2.x, 4294967295u, arg_1.c.x, global2.x)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.b.x, arg_1.d.c.x), var_1.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, 663f), vec2<f32>(927f, -601f))))))), vec4<u32>(global2.x, ((var_1.c.x & 1u) | abs(1u)) ^ ~_wgslsmith_sub_u32(global2.x, u_input.c), 4294967295u, ~(~4294967295u)), min(var_1.b, ~(~select(vec4<u32>(0u, arg_1.c.x, 12895u, arg_1.c.x), var_1.b, vec4<bool>(arg_3, true, false, arg_1.b)))));
    var var_2 = _wgslsmith_f_op_f32(abs(var_1.a.x));
    global1 = array<vec3<f32>, 8>();
    return vec4<u32>(max(_wgslsmith_sub_u32(~global2.x, var_1.b.x), ~7682u), 4294967295u, arg_1.c.x, 1u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global2.x | 0u, 56873u, firstLeadingBit(1u), 60328u), var_1.c);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    global2 = ~vec4<u32>(u_input.c, ~4294967295u, ~global2.x, 0u & max(arg_0, 35001u)) & ~func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -837f, -465f, -1305f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1614f, -664f, 692f, 1451f)), vec4<bool>(true, false, true, false))), Struct_5(Struct_4(0i, global1[_wgslsmith_index_u32(4294967295u, 8u)], vec4<f32>(-1269f, -898f, 1000f, -170f)), true, vec3<u32>(1u, global2.x, global2.x), Struct_4(21796i, vec3<f32>(874f, -477f, -111f), vec4<f32>(-254f, -991f, -380f, -1510f)), Struct_4(u_input.d, vec3<f32>(1115f, 697f, -977f), vec4<f32>(1000f, -264f, 1000f, 120f))), -1i, true);
    global2 = countOneBits(~select(~vec4<u32>(u_input.c, u_input.c, 1u, arg_0), ~vec4<u32>(4294967295u, 88751u, 62094u, 48371u), vec4<bool>(select(true, false, true), arg_1.x == -41604i, true, false)));
    global2 = vec4<u32>(firstTrailingBit(u_input.c), 1u, arg_0, ~arg_0 << (75827u % 32u));
    global1 = array<vec3<f32>, 8>();
    let var_0 = -min(global3.x, ~u_input.a.x);
    return _wgslsmith_mod_i32(46328i, countOneBits(-2147483647i));
}

fn func_1() -> i32 {
    global2 = ~(~(~vec4<u32>(4294967295u, global2.x, global2.x, global2.x) << (~(~vec4<u32>(23332u, u_input.c, global2.x, 4294967295u)) % vec4<u32>(32u))));
    global2 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(4294967295u, 0u, u_input.c, 3816u))), ~(vec4<u32>(1u, global2.x, global2.x, u_input.c) & (vec4<u32>(0u, 5986u, 55765u, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, global2.x, u_input.c)))), global2.x, u_input.c, 105636u);
    global3 = vec2<i32>(-global3.x, ~func_2(~(u_input.c & global2.x), ~vec3<i32>(global3.x, global3.x, 0i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, 4294967295u, global2.x), global2.yyx) % vec3<u32>(32u))));
    let var_0 = Struct_1(vec2<f32>(269f, -789f), select(vec4<u32>(_wgslsmith_sub_u32(global2.x, u_input.c), countOneBits(30650u), 10775u, min(global2.x, global2.x)), reverseBits(~vec4<u32>(25061u, u_input.c, 4294967295u, 1u)), true) & vec4<u32>(~23991u, u_input.c, u_input.c, u_input.c), abs(min(~vec4<u32>(global2.x, global2.x, global2.x, global2.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, u_input.c, 4294967295u, 1u), vec4<u32>(28399u, u_input.c, 1u, 0u)) % vec4<u32>(32u)), vec4<u32>(countOneBits(global2.x), ~u_input.c, countOneBits(global2.x), max(4294967295u, u_input.c)))));
    global0 = -1406f;
    return i32(-1i) * -9790i;
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_3 {
    global3 = vec2<i32>(-countOneBits(10365i), _wgslsmith_add_i32(firstTrailingBit(9128i), _wgslsmith_mult_i32(_wgslsmith_add_i32(~(-10999i), u_input.b), arg_1)));
    global3 = ~vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_1, arg_1, -17644i, u_input.b)), vec4<i32>(global3.x, 42402i, arg_1, -2147483647i) & -u_input.a), arg_1);
    var var_0 = ~global2.wzw ^ ~select((vec3<u32>(global2.x, 0u, global2.x) << (vec3<u32>(u_input.c, u_input.c, global2.x) % vec3<u32>(32u))) >> (vec3<u32>(29505u, 4294967295u, u_input.c) % vec3<u32>(32u)), global2.zwy, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))));
    let var_1 = !select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), true), vec3<bool>(true, true, true)), true || all(vec2<bool>(true, false)));
    global3 = u_input.a.xz;
    return Struct_3(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(162f, 2651f);
    global1 = array<vec3<f32>, 8>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 318f, var_0.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - var_0.x), var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 613f) - var_1.x)) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-var_1.x)), -652f), var_1.x));
    let var_3 = -firstTrailingBit(abs(-select(global3.x, global3.x, true)));
    var var_4 = -2303f;
    var var_5 = func_4(global3.x >> (~(~103337u) % 32u), ~_wgslsmith_add_i32(-countOneBits(1i), func_1()));
    var var_6 = -1398f;
    var var_7 = vec4<u32>(1u, global2.x, max(reverseBits(60571u), _wgslsmith_mod_u32(u_input.c, ~(~0u))), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, -abs(2147483647i), var_3 | abs(-1i)));
}

