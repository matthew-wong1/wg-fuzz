struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(0u), Struct_2(54914u), Struct_2(4294967295u), Struct_2(1u), Struct_2(1417u), Struct_2(0u), Struct_2(1u), Struct_2(1u), Struct_2(20969u), Struct_2(6510u), Struct_2(0u), Struct_2(21293u), Struct_2(13261u), Struct_2(93201u), Struct_2(97417u), Struct_2(55278u), Struct_2(0u), Struct_2(0u), Struct_2(14621u), Struct_2(1u), Struct_2(0u), Struct_2(1u), Struct_2(66743u), Struct_2(193u), Struct_2(35185u), Struct_2(63109u), Struct_2(4294967295u), Struct_2(1u), Struct_2(8101u), Struct_2(16499u));

var<private> global1: vec3<i32>;

var<private> global2: u32 = 111u;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    global1 = min(firstTrailingBit(~vec3<i32>(4520i, firstLeadingBit(-11828i), ~u_input.c)), vec3<i32>(1i, max(global1.x, 3196i), -6247i | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 22043i, global1.x, 0i), vec4<i32>(u_input.c, global1.x, 15166i, global1.x))) << (countOneBits(~vec3<u32>(u_input.a.x, 24332u, 19988u)) % vec3<u32>(32u)));
    var var_0 = arg_0;
    var var_1 = Struct_2(~arg_0.c);
    global1 = vec3<i32>(global1.x, global1.x, global1.x);
    return var_1.a;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_3) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 30u)];
    global1 = arg_0.a.xwz;
    var var_1 = abs(vec2<u32>(_wgslsmith_div_u32(1u, func_3(arg_0.c, arg_1.a.x)), ~(~u_input.b)) >> (~(~(~u_input.a)) % vec2<u32>(32u)));
    let var_2 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a, ~3999u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a)) ^ ~countOneBits(vec4<u32>(arg_0.c.c, 53413u, var_0.a, 4294967295u)), reverseBits(max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b, var_0.a, 48334u, var_1.x), vec4<u32>(1u, var_1.x, u_input.a.x, 6720u)), ~vec4<u32>(u_input.b, 1u, u_input.b, 41459u)))));
    global2 = var_2.a;
    return arg_1.a.x;
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    global1 = vec3<i32>(-1i) * -abs(vec3<i32>(-global1.x, ~0i, global1.x));
    var var_0 = _wgslsmith_clamp_u32(u_input.b, ~_wgslsmith_add_u32(~1u, ~_wgslsmith_div_u32(u_input.d, 0u)), firstLeadingBit(~arg_0.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(515f)) - 447f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(100f))) + _wgslsmith_f_op_f32(round(414f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 387f) + vec2<f32>(-120f, 435f)))), vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_5(vec4<i32>(global1.x, 1i, 0i, -38096i), vec4<i32>(global1.x, -9240i, global1.x, 31998i), Struct_1(false, 811f, arg_0.a, vec2<bool>(true, true), vec2<f32>(-1437f, -340f))), Struct_3(vec3<f32>(387f, -382f, 1508f), u_input.a.x))), -951f)), min(~_wgslsmith_div_u32(arg_0.a, arg_0.a), 65351u ^ _wgslsmith_clamp_u32(20457u, 0u, arg_0.a)) >= arg_0.a));
    var var_2 = -vec3<i32>(-2147483647i, 14483i, 2147483647i);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-var_1.x));
    return ~(~(~(-vec4<i32>(1i, global1.x, 0i, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    let var_0 = ~(global1.x >> (0u % 32u));
    var var_1 = Struct_5(select(vec4<i32>(u_input.c ^ var_0, -(~(-2900i)), -2147483647i, -2147483647i), ~func_1(global0[_wgslsmith_index_u32(49918u, 30u)]), false), _wgslsmith_div_vec4_i32(max(-(vec4<i32>(-2147483647i, 0i, 1i, var_0) | vec4<i32>(global1.x, -10436i, 61402i, 0i)), ~(~vec4<i32>(u_input.c, u_input.c, u_input.c, 1i))), firstTrailingBit(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_0, u_input.c, -2147483647i, 1i), vec4<i32>(global1.x, 2147483647i, 25485i, 22931i), vec4<bool>(true, false, true, true)), vec4<i32>(3613i, var_0, -25929i, 9997i)))), Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1165f + -1005f)) + _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(round(978f))))), firstTrailingBit(u_input.b), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-21796i, -13552i), vec2<i32>(global1.x, u_input.c)) == _wgslsmith_mod_i32(0i, global1.x), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2307f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c.e.x, _wgslsmith_f_op_f32(step(var_1.c.e.x, _wgslsmith_f_op_f32(trunc(var_1.c.e.x)))), _wgslsmith_f_op_f32(f32(-1f) * -848f), 1000f))));
    var var_3 = Struct_3(vec3<f32>(-1038f, var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_5(vec4<i32>(-2147483647i, global1.x, 2147483647i, -1i), var_1.b, var_1.c), Struct_3(vec3<f32>(1344f, -881f, var_2.x), 13108u))) + var_2.x)), u_input.a.x);
    var_1 = Struct_5(var_1.b, vec4<i32>(var_1.b.x, countOneBits((i32(-1i) * -1i) | -u_input.c), var_1.b.x, -(~(var_0 | var_0))), var_1.c);
    var var_4 = Struct_3(var_3.a, _wgslsmith_mod_u32(var_1.c.c, _wgslsmith_add_u32(0u, min(var_3.b, var_3.b))));
    var var_5 = 2193f;
    var var_6 = reverseBits(countOneBits(~vec4<u32>(0u, u_input.a.x, 29505u, var_3.b) & _wgslsmith_clamp_vec4_u32(vec4<u32>(33327u, 41017u, var_4.b, var_1.c.c), vec4<u32>(0u, 1u, var_3.b, 20173u), vec4<u32>(0u, 0u, 0u, u_input.a.x)))) & abs(vec4<u32>(u_input.a.x, 31859u, u_input.d, 10314u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.a.x, _wgslsmith_div_f32(var_1.c.e.x, 414f)))), var_1.c.b), var_0, _wgslsmith_sub_i32(0i, 43i));
}

