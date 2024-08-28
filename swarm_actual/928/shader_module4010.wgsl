struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: Struct_3,
    d: Struct_4,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 2>;

var<private> global2: array<i32, 15>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(731f, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(step(global0.b.a, global0.c))) * 727f), _wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(578f, var_0.x, var_0.x, 846f) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, global0.b.a, var_0.x, -1931f), vec4<f32>(2228f, global0.c, 1237f, -1000f)))))));
    global2 = array<i32, 15>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, 708f, var_0.x, global0.c)), vec4<f32>(1601f, var_0.x, -1253f, -855f), !vec4<bool>(global0.a.x, false, false, global0.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(318f, global0.b.a, 549f, 469f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.a, global0.c, var_0.x, global0.b.a))))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c, 1914f, var_0.x, 1557f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1262f, -1044f, 405f, -1719f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.b.a, 1885f, -415f))), vec4<f32>(757f, 1000f, var_0.x, 787f))))));
    let var_1 = global0.b;
    return 3530u;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    global2 = array<i32, 15>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-101f, _wgslsmith_f_op_f32(-arg_2.a)))), _wgslsmith_f_op_f32(142f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c))))), 355f);
    var var_1 = global0.d;
    return ~_wgslsmith_mod_i32(~firstTrailingBit(countOneBits(-1i)), _wgslsmith_sub_i32(select(1i, _wgslsmith_add_i32(u_input.b, u_input.b), global0.a.x & global0.a.x), 1i));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_5(select(vec2<bool>(true, true), !arg_1.zy, arg_1.yz), min(~func_4(vec4<u32>(0u, u_input.a, global0.b.d.x, u_input.a) & vec4<u32>(4294967295u, 38692u, 4294967295u, u_input.a), func_3(global1[_wgslsmith_index_u32(u_input.a, 2u)]), global0.b), _wgslsmith_dot_vec3_i32(select(~arg_0.wyw, vec3<i32>(u_input.b, -2147483647i, 0i), vec3<bool>(false, true, global0.a.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.xzx, arg_0.zwz), abs(-1i), -2147483647i))), Struct_3(arg_1.yz, global0.b, global0.c, global0.a.x), Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(645f, global0.c, global0.c), vec3<f32>(global0.c, global0.b.a, global0.b.a)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -656f, -946f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, global0.c, 594f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.a, -843f), vec2<f32>(470f, global0.b.a))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(589f, 747f)))))), _wgslsmith_f_op_f32(select(global0.b.a, global0.b.a, true)), -arg_0.ywz, ~vec4<i32>(max(global0.b.b, global2[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(global0.b.d.x, 15u)], -44504i), global1[_wgslsmith_index_u32(global0.b.c, 2u)], firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 2u)]))), -(~arg_0));
    var var_1 = vec3<u32>(select(global0.b.d.x, ~_wgslsmith_clamp_u32(~u_input.a, ~0u, 0u >> (global0.b.c % 32u)), true), _wgslsmith_mult_u32(1u, abs(select(u_input.a, ~var_0.c.b.d.x, !arg_1.x))), 4294967295u);
    var var_2 = 1512f;
    let var_3 = Struct_2(global0.c, select(vec2<u32>(abs(42409u) << (u_input.a % 32u), ~(~var_1.x)), var_0.c.b.d, vec2<bool>(true, global0.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -982f))) * vec2<f32>(-674f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1392f - var_0.c.b.a) + _wgslsmith_div_f32(1499f, var_0.d.a.x)))));
    var var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.x, _wgslsmith_f_op_f32(global0.c - -1067f), _wgslsmith_f_op_f32(max(var_3.c.x, global0.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.c.x, global0.c, var_3.c.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.d.b, vec2<f32>(-995f, global0.b.a))))), _wgslsmith_div_f32(1057f, 204f), arg_0.zwz, vec4<i32>(-2796i, global2[_wgslsmith_index_u32(var_1.x >> (abs(56805u) % 32u), 15u)], -1i << (0u % 32u), -43985i) | vec4<i32>(firstLeadingBit(~arg_2.x), abs(1i), countOneBits(global2[_wgslsmith_index_u32(~u_input.a, 15u)]), min(1i, 2147483647i)));
    return _wgslsmith_div_f32(2793f, 1000f);
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> vec4<u32> {
    global0 = arg_0;
    let var_0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_0.b.d.x, 2u)], global0.b.b, 11429i), vec3<bool>(global0.a.x, false, false), vec2<i32>(14913i, 4442i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + -319f) - _wgslsmith_f_op_f32(f32(-1f) * -440f)) + -222f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-162f - 1171f))) + global0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -847f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a + -1048f)))), _wgslsmith_f_op_f32(-571f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(trunc(1124f)), arg_0.d)) + arg_1)), firstLeadingBit(abs(vec3<i32>(u_input.b, arg_0.b.b, arg_0.b.b)) >> (_wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 860u, u_input.a), vec3<u32>(9483u, 101866u, 26059u), true), ~vec3<u32>(u_input.a, global0.b.c, 55727u)) % vec3<u32>(32u))), _wgslsmith_div_vec4_i32(max(~(-vec4<i32>(2147483647i, 0i, global2[_wgslsmith_index_u32(16849u, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)])), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.b, arg_0.b.b, 2147483647i, global0.b.b), vec4<i32>(6514i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 2u)], u_input.b), vec4<i32>(arg_0.b.b, 2147483647i, -69684i, 2147483647i))), -_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, -1i, -2147483647i, global1[_wgslsmith_index_u32(global0.b.c, 2u)]), vec4<i32>(-1i, 1i, global1[_wgslsmith_index_u32(1u, 2u)], arg_0.b.b))));
    var var_1 = 935f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1038f, global0.c, -714f) - vec3<f32>(global0.c, -1863f, -746f)) * var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.b.a, global0.c))))));
    let var_3 = Struct_3(select(vec2<bool>(_wgslsmith_f_op_f32(var_0.b.x * arg_1) != _wgslsmith_f_op_f32(global0.b.a - 530f), true), arg_0.a, false), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -338f), true);
    return vec4<u32>(_wgslsmith_sub_u32(~u_input.a, select(firstLeadingBit(1u >> (0u % 32u)), max(arg_0.b.c << (arg_0.b.d.x % 32u), global0.b.d.x), all(!vec3<bool>(true, false, global0.d)))), 0u, 8765u, u_input.a);
}

fn func_1() -> bool {
    let var_0 = func_5(Struct_3(!global0.a, Struct_1(global0.c, ~(~global2[_wgslsmith_index_u32(u_input.a, 15u)]), ~(~0u), _wgslsmith_mult_vec2_u32(abs(global0.b.d), _wgslsmith_add_vec2_u32(global0.b.d, vec2<u32>(0u, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(56094i, 20705i, -19261i, global2[_wgslsmith_index_u32(94560u, 15u)]) >> (vec4<u32>(u_input.a, 49576u, 4294967295u, 4294967295u) % vec4<u32>(32u)), select(vec3<bool>(global0.d, true, false), vec3<bool>(false, global0.d, false), vec3<bool>(global0.a.x, false, false)), vec2<i32>(1i, u_input.b))) * -875f), all(vec4<bool>(false, global0.b.d.x <= global0.b.c, true || global0.a.x, true))), 1f);
    let var_1 = var_0;
    global2 = array<i32, 15>();
    let var_2 = _wgslsmith_sub_i32(~u_input.b, ~(-1i));
    global2 = array<i32, 15>();
    return all(vec2<bool>(all(vec2<bool>(!global0.a.x, !global0.d)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(!global0.d, func_1());
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-945f + -1528f), vec2<u32>(0u, min(u_input.a, min(44341u, 4294967295u))) & ~vec2<u32>(_wgslsmith_add_u32(21046u, global0.b.d.x), ~4294967295u), vec2<f32>(-258f, -157f));
    var var_2 = 2612f;
    var var_3 = var_0.x;
    var var_4 = 42725u;
    var var_5 = false;
    var var_6 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~(~select(vec3<i32>(3158i, -1i, -21522i), vec3<i32>(-44381i, 593i, -3461i), vec3<bool>(var_0.x, true, true))), max(max(vec3<i32>(1i, u_input.b, -1i) ^ vec3<i32>(55064i, u_input.b, u_input.b), vec3<i32>(-2147483647i, -22766i, global1[_wgslsmith_index_u32(u_input.a, 2u)])), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -24612i, 36025i) | vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(global1[_wgslsmith_index_u32(var_1.b.x, 2u)], 2147483647i, global1[_wgslsmith_index_u32(1u, 2u)]))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(70986u, 2u)], -1i), vec3<i32>(55320i, global1[_wgslsmith_index_u32(u_input.a, 2u)], global0.b.b), true), -vec3<i32>(0i, 18562i, global0.b.b), -vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 2u)], -23134i)) >> (vec3<u32>(u_input.a << (33047u % 32u), global0.b.c & var_1.b.x, ~var_1.b.x) % vec3<u32>(32u))), abs(max(max(max(var_1.b, var_1.b), ~vec2<u32>(1u, 10329u)), ~vec2<u32>(var_1.b.x, 39279u))), u_input.a, global0.b.b);
}

