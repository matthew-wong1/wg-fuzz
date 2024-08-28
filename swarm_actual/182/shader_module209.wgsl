struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-10706i, -4761i, 2147483647i), vec3<i32>(2147483647i, 60691i, 0i), vec3<i32>(-18805i, 0i, -39260i), vec3<i32>(1i, 26008i, 0i), vec3<i32>(i32(-2147483648), 16359i, 1i), vec3<i32>(-14442i, -77380i, -42580i), vec3<i32>(-41096i, 1i, i32(-2147483648)), vec3<i32>(-50643i, 2147483647i, 16547i), vec3<i32>(-27645i, 1i, 4134i), vec3<i32>(2147483647i, -16407i, 358i), vec3<i32>(67855i, -32568i, 0i), vec3<i32>(-1i, 0i, -27952i), vec3<i32>(2147483647i, -907i, i32(-2147483648)), vec3<i32>(-76031i, 1i, -1404i));

var<private> global3: f32;

var<private> global4: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4) -> vec4<bool> {
    global4 = array<vec3<bool>, 10>();
    global1 = vec2<f32>(1800f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - -1213f))));
    let var_0 = u_input.b.x;
    global3 = 189f;
    var var_1 = vec2<bool>(false, !(global1.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) - _wgslsmith_f_op_f32(-global1.x))));
    return !vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-299f, 196f, var_1.x)), -1136f, true)) > global1.x, true, any(select(!arg_1.b, select(vec3<bool>(var_1.x, arg_2.a.x, false), vec3<bool>(var_1.x, var_1.x, false), global4[_wgslsmith_index_u32(1u, 10u)]), !vec3<bool>(arg_1.d.x, true, arg_0.c))), true);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_u32(arg_3.c ^ 4294967295u, max(87457u, 1u));
    let var_1 = Struct_1(64595u, !vec3<bool>(any(!vec4<bool>(arg_2.a.x, false, arg_2.a.x, arg_3.a.x)), u_input.c.x < arg_0.x, arg_3.a.x), 1u, vec2<bool>(arg_3.a.x, arg_3.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(u_input.a.xzw), select(global2[_wgslsmith_index_u32(45044u, 14u)], vec3<i32>(0i, -1i, -1i), arg_2.a.x)), u_input.c.x, ~arg_3.b));
    let var_2 = !select(!select(select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, var_1.d.x), vec4<bool>(true, false, false, var_1.d.x), false), func_3(Struct_2(vec2<u32>(76070u, 896u), vec3<i32>(arg_0.x, 2147483647i, -32381i), true), var_1, arg_3), !vec4<bool>(var_1.b.x, false, true, var_1.b.x)), select(!(!vec4<bool>(arg_3.a.x, var_1.d.x, false, var_1.b.x)), !(!vec4<bool>(var_1.d.x, true, arg_3.a.x, false)), true), !vec4<bool>(!var_1.b.x, arg_2.a.x, !var_1.d.x, arg_1 <= 1369f));
    var var_3 = Struct_3(55604u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), arg_1, 927f, global1.x) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, 849f, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global1.x, arg_1, arg_1)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(841f, 1077f, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(abs(1000f)))))), firstTrailingBit(vec3<u32>(var_1.c, 64380u, 4294967295u) >> (vec3<u32>(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_3.c, arg_3.c), vec3<u32>(arg_3.c, var_1.c, u_input.d.x)), 0u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1606f, arg_1)));
    return Struct_1(10890u, select(var_1.b, vec3<bool>(!var_1.d.x && all(vec2<bool>(arg_2.a.x, var_1.b.x)), arg_2.a.x, false), arg_3.d > _wgslsmith_mod_u32(9128u, 55u)), _wgslsmith_add_u32(firstLeadingBit(1u), 34344u), arg_2.a, firstLeadingBit(_wgslsmith_clamp_vec3_i32(u_input.a.wyz, vec3<i32>(-2147483647i, reverseBits(u_input.c.x), 1i), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(var_3.d.x), 4294967295u), 14u)])));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_4(vec2<bool>(any(select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, false), vec2<bool>(true, false))), arg_0.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-370f, arg_0.x)) + 1000f)), arg_1.b.x, _wgslsmith_sub_u32(u_input.d.x, 10359u), ~(~0u));
    var var_1 = var_0.a;
    global3 = global1.x;
    let var_2 = _wgslsmith_sub_i32(~u_input.c.x, -58659i);
    let var_3 = func_2(u_input.c, arg_0.x, Struct_4(vec2<bool>(any(var_0.a), any(!global4[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_2, var_0.b), ~(-1i)) & ~u_input.a.x, var_0.d, 26513u), Struct_4(vec2<bool>(var_1.x, arg_1.c || all(vec4<bool>(arg_1.c, true, var_1.x, true))), arg_1.b.x, 1u, 96369u));
    return ~(~var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.d.x, abs(u_input.b.x)), u_input.b.zx);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 412f, global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 198f, 2480f) + vec3<f32>(-399f, global1.x, global1.x)), true))))));
    let var_2 = u_input.b.x;
    let var_3 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(262f)) + var_1.x))) - _wgslsmith_f_op_f32(select(global1.x, 561f, !(u_input.c.x < u_input.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f + var_1.x) + global1.x));
    let var_4 = ~_wgslsmith_sub_vec4_u32(u_input.d, select(~vec4<u32>(var_2, 10960u, 41368u, 36630u), vec4<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), func_1(vec3<f32>(var_1.x, -698f, var_3.x), Struct_2(vec2<u32>(u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(0u, 14u)], false)), reverseBits(var_0.x), var_2), vec4<bool>(true, true, true, true)));
    var var_5 = firstTrailingBit(_wgslsmith_clamp_u32(~(~88552u), _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(39111u, var_2)), _wgslsmith_dot_vec3_u32(vec3<u32>(8548u, var_0.x, u_input.d.x), var_4.wyx) >> ((25619u >> (0u % 32u)) % 32u))) << (~(countOneBits(var_4.x) << (1u % 32u)) % 32u);
    global2 = array<vec3<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(u_input.b, var_4.xyx)), var_2, 75161u);
}

