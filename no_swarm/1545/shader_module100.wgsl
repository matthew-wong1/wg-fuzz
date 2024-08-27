struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
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

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(76632u, 8587u, 16066u), vec3<u32>(4294967295u, 71026u, 2672u), vec3<u32>(34074u, 31257u, 0u), vec3<u32>(0u, 0u, 4294967295u));

var<private> global2: array<vec2<i32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, arg_1.x, 4294967295u) & vec4<u32>(11886u, arg_0.b.d.x, arg_0.b.d.x, 58149u), vec4<u32>(70185u, arg_1.x, arg_0.b.d.x, 9268u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_0.b.d.x, 75065u, 38972u, arg_1.x)), ~vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 4294967295u), vec4<u32>(45534u, 0u, arg_0.b.d.x, arg_1.x) & vec4<u32>(arg_1.x, arg_1.x, 1u, 4294967295u)), select(abs(vec4<u32>(690u, 36201u, arg_0.b.d.x, 4294967295u)), ~vec4<u32>(60405u, arg_1.x, arg_1.x, arg_1.x), arg_3)), vec4<u32>(15126u, 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.x, 38869u, 4597u), vec4<u32>(arg_1.x, arg_1.x, 13075u, arg_1.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 9714u), arg_0.b.d), arg_0.b.d.x))), vec4<u32>(max(~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(9006u, 4u)], vec3<u32>(arg_1.x, arg_1.x, 13748u)), 0u >> (arg_1.x % 32u)), ~1u, arg_0.b.d.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(10462u, 1u, 59334u, 36710u)), vec4<u32>(4294967295u, 32422u, 12097u, 4294967295u)) << ((0u & _wgslsmith_dot_vec2_u32(arg_0.b.d.zy, vec2<u32>(35562u, 4294967295u))) % 32u)));
    let var_2 = _wgslsmith_mult_u32(arg_1.x, max(reverseBits(102431u), 4294967295u));
    var var_3 = arg_0;
    var_3 = arg_0;
    return arg_0.b.d.x;
}

fn func_2() -> u32 {
    let var_0 = 6782i;
    return _wgslsmith_mult_u32(42541u, ~((func_3(Struct_3(vec4<i32>(0i, u_input.d, 55824i, u_input.b.x), global0[_wgslsmith_index_u32(59190u, 26u)], -638f, Struct_2(vec2<f32>(1054f, -111f))), global1[_wgslsmith_index_u32(0u, 4u)], 1202f, vec4<bool>(false, false, false, true)) ^ 1u) | 1u));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1815f * _wgslsmith_div_f32(405f, 1103f)) + _wgslsmith_f_op_f32(trunc(-1664f))) + 1356f)));
    var var_1 = vec2<bool>(!all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), true)), false);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1316f)) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(_wgslsmith_div_f32(1770f, var_0), var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, -1198f, var_0))) * vec3<f32>(-386f, _wgslsmith_f_op_f32(1000f - var_0), var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-839f, var_0, var_0)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-314f, var_0, -1201f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1843f, 1393f) - vec3<f32>(var_0, 591f, 120f))))), select(vec3<u32>(~0u, _wgslsmith_add_u32(1u, countOneBits(659u)), 1u & func_2()), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 21239u, 65292u), firstTrailingBit(vec3<u32>(38290u, 1u, 1u)), vec3<u32>(0u, 77730u, 0u)) & firstLeadingBit(vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_div_f32(var_0, 476f))) > _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-var_0)))));
    var var_3 = vec4<u32>(~97681u, ~min(_wgslsmith_sub_u32(var_2.d.x, 6112u), 66385u) | 22264u, ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_2.d.x, 1u, 14769u, var_2.d.x) | vec4<u32>(var_2.d.x, 90937u, var_2.d.x, var_2.d.x)), ~vec4<u32>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x)), ~(23152u & ~var_2.d.x) >> (var_2.d.x % 32u));
    var var_4 = -679f;
    return Struct_3(~vec4<i32>(_wgslsmith_clamp_i32(u_input.d, _wgslsmith_clamp_i32(u_input.c, -2147483647i, u_input.a.x), _wgslsmith_mod_i32(2147483647i, u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.d), ~global2[_wgslsmith_index_u32(0u, 32u)]), firstTrailingBit(_wgslsmith_div_i32(1i, u_input.a.x)), countOneBits(i32(-1i) * -63246i)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32((vec4<u32>(var_3.x, var_2.d.x, var_2.d.x, 65127u) ^ vec4<u32>(4294967295u, 1u, 0u, var_3.x)) ^ vec4<u32>(var_3.x, var_2.d.x, 1u, var_2.d.x), vec4<u32>(_wgslsmith_mod_u32(var_3.x, var_2.d.x), func_2(), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(var_3.x, 1u)), 6780u)), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - -1356f)), Struct_2(_wgslsmith_f_op_vec2_f32(-var_2.c.yz)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: vec2<f32>) -> bool {
    let var_0 = arg_0.b.b;
    var var_1 = func_1().b;
    let var_2 = vec4<i32>(abs(~(-1i)) >> (func_2() % 32u), i32(-1i) * -(~arg_0.a.x), -1i, ~select(-24562i, ~select(-2147483647i, -3770i, true), ~u_input.d != -u_input.a.x));
    return all(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))) && (~1u > max(~23820u >> ((arg_0.b.d.x & var_1.d.x) % 32u), arg_0.b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-462f, -109f, func_4(func_1(), Struct_2(vec2<f32>(-460f, -1169f)), _wgslsmith_f_op_f32(round(-1002f)), vec2<f32>(1421f, -1032f)))));
    var var_1 = func_1();
    let var_2 = var_1.d;
    global0 = array<Struct_1, 26>();
    let var_3 = func_1().b;
    var_1 = func_1();
    let var_4 = func_1().b;
    let var_5 = var_1.a.wzz;
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(select(func_1().a.xzx, select(var_1.a.zxx, abs(vec3<i32>(2147483647i, 1i, var_5.x)), all(vec3<bool>(false, true, true))), true), vec3<i32>(_wgslsmith_sub_i32(-var_1.a.x, 2147483647i), select(var_5.x, -13140i, true), -1i)));
}

