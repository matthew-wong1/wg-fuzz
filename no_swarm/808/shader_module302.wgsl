struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(392f, 118f, -2253f, -922f), 3066f, 4294967295u, vec3<f32>(530f, 561f, -1365f));

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(-255f)), Struct_3(Struct_2(874f)), Struct_3(Struct_2(-858f)), Struct_3(Struct_2(-339f)), Struct_3(Struct_2(-1152f)), Struct_3(Struct_2(-1000f)), Struct_3(Struct_2(181f)), Struct_3(Struct_2(-1005f)), Struct_3(Struct_2(726f)), Struct_3(Struct_2(951f)), Struct_3(Struct_2(-412f)), Struct_3(Struct_2(381f)), Struct_3(Struct_2(1242f)), Struct_3(Struct_2(369f)), Struct_3(Struct_2(-440f)), Struct_3(Struct_2(-399f)), Struct_3(Struct_2(562f)), Struct_3(Struct_2(1283f)), Struct_3(Struct_2(-146f)), Struct_3(Struct_2(-1280f)), Struct_3(Struct_2(-772f)), Struct_3(Struct_2(-389f)), Struct_3(Struct_2(-595f)), Struct_3(Struct_2(-1312f)), Struct_3(Struct_2(853f)), Struct_3(Struct_2(704f)), Struct_3(Struct_2(-803f)), Struct_3(Struct_2(-2169f)));

var<private> global3: array<vec3<f32>, 6>;

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> i32 {
    return -1i;
}

fn func_2() -> Struct_1 {
    let var_0 = i32(-1i) * -func_3(199f);
    let var_1 = _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(reverseBits(-1i), firstTrailingBit(0i))), ~min(vec2<i32>(u_input.b, firstLeadingBit(2147483647i)), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, var_0)));
    var var_2 = vec3<u32>(~global1.c, global1.c, 26387u) << ((_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, global1.c, u_input.a.x, 57320u), vec4<u32>(1u, 0u, u_input.c, 7089u)), ~u_input.a.x, 1u), vec3<u32>(global1.c, u_input.c, 4294967295u)) << (~vec3<u32>(18088u, 67131u, firstTrailingBit(global1.c)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-420f - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 1u, var_2.x), ~vec3<u32>(0u, var_2.x, 0u)), 30u)])) - global0[_wgslsmith_index_u32(1u ^ ~max(~u_input.a.x, _wgslsmith_mult_u32(1u, u_input.c)), 30u)]);
    let var_4 = !(true && (var_1 >= 1550i));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -2427f, global0[_wgslsmith_index_u32(var_2.x >> (var_2.x % 32u), 30u)], _wgslsmith_f_op_f32(f32(-1f) * -225f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-169f, var_3, global1.b, -565f))))), 621f, _wgslsmith_div_u32(global1.c, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, u_input.c, u_input.c), vec3<u32>(u_input.a.x, 82030u, var_2.x)), min(vec3<u32>(u_input.c, var_2.x, u_input.c), vec3<u32>(global1.c, global1.c, global1.c)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(4294967295u, 6u)] + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, -558f, -236f) - vec3<f32>(1091f, var_3, global0[_wgslsmith_index_u32(var_2.x, 30u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-649f, var_3, global1.a.x)))))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> i32 {
    global2 = array<Struct_3, 28>();
    var var_0 = -2147483647i;
    global1 = func_2();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)));
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(-21168i, _wgslsmith_add_i32(u_input.b, -46654i)), max(25359i, firstLeadingBit(39602i)), -u_input.b), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b & -37265i, -15813i, _wgslsmith_mod_i32(0i, u_input.b)), vec3<i32>(22542i, ~1i, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 30>();
    let var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -613f), true, _wgslsmith_f_op_f32(-global1.a.x)) >> (~firstTrailingBit(firstLeadingBit(func_2().c)) % 32u);
    global4 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~(~u_input.c), 30u)], _wgslsmith_f_op_f32(min(-467f, global1.b)), _wgslsmith_div_f32(-1131f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.c), 30u)]), _wgslsmith_f_op_f32(step(global1.a.x, -1720f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(429f, _wgslsmith_f_op_f32(-global1.a.x))))), func_2().d.x), _wgslsmith_add_u32(u_input.c, 4294967295u), _wgslsmith_f_op_vec3_f32(sign(global3[_wgslsmith_index_u32(u_input.c, 6u)])));
    let var_2 = true;
    let var_3 = vec4<bool>(false, false, true, false);
    var var_4 = var_3.wwx;
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(528f)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 30u)] + 152f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d.x), 544f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.c, 30u)] * -125f))))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.c, 30u)]), -477f);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(abs(vec4<i32>(39545i, -19654i, 0i, 23204i)) ^ reverseBits(vec4<i32>(u_input.d, u_input.d, -1i, 36044i)))), max(~countOneBits(u_input.a.x) << (global1.c % 32u), _wgslsmith_mod_u32(abs(17713u), _wgslsmith_dot_vec2_u32(~u_input.a, select(vec2<u32>(14603u, global1.c), u_input.a, vec2<bool>(false, var_2))))));
}

