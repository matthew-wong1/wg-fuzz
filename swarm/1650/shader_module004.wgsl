struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(4184i, 36326i, 4294967295u, 2147483647i, vec4<bool>(false, true, false, true)), Struct_1(-32606i, -25117i, 4294967295u, -43307i, vec4<bool>(true, false, false, false)), Struct_1(-17746i, -7697i, 1u, -37185i, vec4<bool>(false, true, false, true)), Struct_1(8007i, -34236i, 55792u, 2147483647i, vec4<bool>(false, true, false, true)), Struct_1(1i, -55407i, 1437u, i32(-2147483648), vec4<bool>(false, true, true, true)), Struct_1(-43305i, 2147483647i, 1u, -1i, vec4<bool>(true, false, false, true)), Struct_1(14531i, -23400i, 1u, i32(-2147483648), vec4<bool>(true, false, true, true)), Struct_1(-23850i, 1i, 16867u, 2147483647i, vec4<bool>(true, true, true, false)), Struct_1(-8034i, 2147483647i, 4153u, 2147483647i, vec4<bool>(false, true, false, true)), Struct_1(-5954i, -1i, 37486u, 14327i, vec4<bool>(false, false, true, true)), Struct_1(-1i, 1332i, 49548u, -1i, vec4<bool>(false, true, true, false)), Struct_1(69206i, i32(-2147483648), 1u, 0i, vec4<bool>(false, true, false, false)), Struct_1(i32(-2147483648), 2147483647i, 59738u, i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_1(-11222i, -37144i, 0u, -27268i, vec4<bool>(false, true, false, false)), Struct_1(1i, -45887i, 3126u, -1i, vec4<bool>(true, false, false, true)), Struct_1(3887i, i32(-2147483648), 0u, 3789i, vec4<bool>(false, true, true, false)), Struct_1(-25661i, i32(-2147483648), 40090u, 1i, vec4<bool>(false, true, false, true)), Struct_1(21188i, 39679i, 1u, 22699i, vec4<bool>(false, true, true, true)), Struct_1(-65013i, 9652i, 8177u, 7359i, vec4<bool>(true, false, false, false)), Struct_1(1i, 1i, 4294967295u, -1i, vec4<bool>(false, true, false, false)), Struct_1(3238i, -1i, 14675u, -1i, vec4<bool>(false, false, false, false)));

var<private> global1: array<u32, 23>;

var<private> global2: array<vec4<f32>, 29>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = arg_1;
    return reverseBits(2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = max(_wgslsmith_add_i32(i32(-1i) * -2147483647i, arg_2), u_input.b);
    global2 = array<vec4<f32>, 29>();
    let var_1 = Struct_1(-17512i, -(~_wgslsmith_div_i32(arg_2, var_0 >> (arg_0.c % 32u))), ~global1[_wgslsmith_index_u32(0u, 23u)], func_3(~vec2<u32>(1u, 17546u), Struct_1(abs(arg_1.x), 0i, firstTrailingBit(11410u), 0i, vec4<bool>(true, arg_0.e.x, true, arg_0.e.x)), true) | -2147483647i, !vec4<bool>(arg_0.e.x, false, all(select(arg_0.e.yyz, vec3<bool>(arg_0.e.x, false, arg_0.e.x), false)), all(vec2<bool>(false, false))));
    let var_2 = Struct_3(Struct_2(var_1, ~(~u_input.c.yy), var_1, Struct_1(_wgslsmith_div_i32(0i, ~(-14461i)), _wgslsmith_clamp_i32(11825i >> (var_1.c % 32u), var_0, u_input.b | var_0), ~(u_input.c.x & global1[_wgslsmith_index_u32(72840u, 23u)]), -_wgslsmith_div_i32(2381i, arg_2), select(vec4<bool>(true, false, arg_0.e.x, var_1.e.x), !vec4<bool>(false, var_1.e.x, var_1.e.x, true), var_1.e)), global2[_wgslsmith_index_u32(u_input.c.x, 29u)]), arg_0, _wgslsmith_sub_vec2_i32(vec2<i32>(22636i, _wgslsmith_dot_vec2_i32(arg_1.zx, arg_1.yx) >> (~0u % 32u)), arg_1.xz), vec3<bool>(any(arg_0.e.zwx), ~arg_0.c >= 45807u, any(select(select(vec4<bool>(var_1.e.x, arg_0.e.x, var_1.e.x, arg_0.e.x), arg_0.e, var_1.e.x), vec4<bool>(false, false, true, true), false))), arg_0.e.x);
    let var_3 = Struct_3(Struct_2(Struct_1(-10437i, 2147483647i, 57359u, -_wgslsmith_mult_i32(1i, -5197i), vec4<bool>(var_1.e.x, !var_2.d.x, arg_0.e.x, true)), ~(~(~var_2.a.b)), arg_0, var_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_2.a.e, _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 29u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(arg_0.c, 29u)])), var_2.a.e, var_1.e.x || true)), false))), global0[_wgslsmith_index_u32(var_1.c, 21u)], abs(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.c.x, 2147483647i), var_2.c), _wgslsmith_clamp_vec2_i32(var_2.c, var_2.c, vec2<i32>(arg_0.b, var_1.b)))) >> (u_input.c.yy % vec2<u32>(32u)), select(var_2.d, vec3<bool>(all(arg_0.e.zx), select(var_2.d.x | false, var_2.a.e.x <= var_2.a.e.x, any(vec2<bool>(true, var_2.e))), !any(var_1.e.zzy)), select(!var_1.e.yyz, select(vec3<bool>(true, true, true), select(vec3<bool>(var_2.d.x, arg_0.e.x, false), var_2.a.d.e.yxx, vec3<bool>(true, false, arg_0.e.x)), vec3<bool>(arg_0.e.x, arg_0.e.x, false)), select(select(var_1.e.zzy, vec3<bool>(false, var_1.e.x, true), arg_0.e.x), select(vec3<bool>(var_2.b.e.x, var_1.e.x, true), vec3<bool>(arg_0.e.x, false, false), var_2.a.d.e.wxy), true))), var_1.e.x);
    return Struct_1(~(i32(-1i) * -44961i), _wgslsmith_sub_i32(-1i, var_2.b.d), global1[_wgslsmith_index_u32((var_1.c | var_3.b.c) & arg_0.c, 23u)], 0i, !arg_0.e);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global1 = array<u32, 23>();
    global2 = array<vec4<f32>, 29>();
    let var_0 = Struct_2(Struct_1(47739i, arg_1.a, select(_wgslsmith_mult_u32(1u, 4406u), _wgslsmith_mod_u32(arg_0.x, 41772u), arg_1.e.x), arg_1.a, select(select(!arg_1.e, select(vec4<bool>(arg_1.e.x, arg_1.e.x, arg_1.e.x, arg_1.e.x), arg_1.e, arg_1.e), vec4<bool>(arg_1.e.x, arg_1.e.x, arg_1.e.x, false)), arg_1.e, !arg_1.e)), ~min(~(~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 11167u)), vec2<u32>(0u, _wgslsmith_mod_u32(4294967295u, 62961u))), arg_1, arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-479f * 1668f), _wgslsmith_f_op_f32(sign(1313f)), _wgslsmith_div_f32(506f, -1007f), _wgslsmith_f_op_f32(322f - -1164f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(804f, _wgslsmith_f_op_f32(max(1359f, -1100f)), 1f, _wgslsmith_f_op_f32(select(-704f, -2541f, arg_1.e.x))))));
    global2 = array<vec4<f32>, 29>();
    global2 = array<vec4<f32>, 29>();
    return u_input.c.x;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> vec2<i32> {
    let var_0 = arg_2.zx;
    var var_1 = u_input.c;
    var var_2 = -reverseBits(vec4<i32>(-21920i, 1i, min(37179i << (u_input.c.x % 32u), reverseBits(u_input.b)), 24691i));
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, func_4(~select(u_input.c, vec3<u32>(0u, 29577u, 4294967295u), vec3<bool>(false, arg_0, false)), func_2(global0[_wgslsmith_index_u32(4294967295u, 21u)], vec4<i32>(var_2.x, 2147483647i, u_input.a, u_input.a) << (vec4<u32>(var_1.x, 23565u, 0u, 13547u) % vec4<u32>(32u)), u_input.b))), 21u)], var_1.yx, global0[_wgslsmith_index_u32(~(~0u), 21u)], func_2(Struct_1(func_2(global0[_wgslsmith_index_u32(var_1.x, 21u)], select(vec4<i32>(6325i, 1i, 2147483647i, 2147483647i), vec4<i32>(3035i, u_input.b, 58779i, 2147483647i), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), -5210i).d, -89491i ^ ~u_input.a, ~4593u, -1i, !(!vec4<bool>(arg_0, false, false, false))), abs(vec4<i32>(var_2.x | u_input.b, var_2.x, -35i, -var_2.x)), func_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-19845i, var_2.x, var_2.x, 29488i), vec4<i32>(var_2.x, u_input.a, u_input.a, -1i)), -2147483647i, u_input.c.x, 2147483647i, select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, true, arg_0), arg_0)), vec4<i32>(_wgslsmith_mult_i32(var_2.x, 0i), u_input.a, ~var_2.x, abs(u_input.a)), _wgslsmith_sub_i32(5911i, u_input.a)).d), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x + arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + arg_2.x), -142f), 150f) + _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(1u, 29u)] * vec4<f32>(-1000f, var_0.x, _wgslsmith_f_op_f32(var_0.x + 571f), _wgslsmith_f_op_f32(-388f + 704f)))));
    let var_4 = ~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 0u, true), 0u), func_2(func_2(global0[_wgslsmith_index_u32(var_3.c.c, 21u)], max(vec4<i32>(2818i, u_input.a, u_input.b, -1i), vec4<i32>(u_input.a, -2147483647i, var_2.x, -3035i)), ~(-47836i)), abs(select(vec4<i32>(1i, -25767i, u_input.a, -39550i), vec4<i32>(var_2.x, 1i, var_3.d.d, 24157i), vec4<bool>(true, true, var_3.c.e.x, false))), -34952i).c);
    return vec2<i32>(i32(-1i) * -2147483647i, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 23>();
    let var_0 = ~(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 23u)], u_input.c.x, global1[_wgslsmith_index_u32(1u, 23u)]) ^ global1[_wgslsmith_index_u32(firstTrailingBit(55054u), 23u)], ~reverseBits(73672u)) >> (0u % 32u));
    global2 = array<vec4<f32>, 29>();
    var var_1 = 216f;
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~select(select(func_1(var_2, global1[_wgslsmith_index_u32(1u, 23u)], vec4<f32>(-1000f, 1703f, 2728f, -1000f)), vec2<i32>(u_input.b, -1i), false), select(firstLeadingBit(vec2<i32>(u_input.b, 0i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(47655i, -1i)), vec2<bool>(true, true)), true), (_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b, -2147483647i, 1i, 22593i), vec4<i32>(u_input.a, -53476i, 87652i, u_input.b), vec4<bool>(var_2, var_2, var_2, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 1i, u_input.b), vec4<i32>(-2147483647i, u_input.b, 1i, u_input.b))) | (_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 32131i, u_input.b, u_input.a), vec4<i32>(u_input.b, 24287i, 0i, u_input.b)) & (vec4<i32>(u_input.b, 0i, -2147483647i, u_input.a) | vec4<i32>(-37556i, -1i, -25591i, -9368i)))) ^ vec4<i32>(~u_input.a, -_wgslsmith_mod_i32(u_input.b, 2147483647i), ~(-u_input.b), _wgslsmith_mod_i32(select(29423i, -24475i, false), 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1468f, 204f, 1095f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1683f, -615f, -1236f))))))), vec3<i32>(u_input.b & (u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(57416u, 4294967295u)) % 32u)), _wgslsmith_sub_i32(func_2(global0[_wgslsmith_index_u32(39944u, 21u)], vec4<i32>(u_input.b, 31318i, -2147483647i, u_input.b), u_input.b).b, 42688i) >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(var_0, 23u)], 1u), 4294967295u) % 32u), func_3(u_input.c.zz, Struct_1(u_input.a, ~u_input.a, 10259u, 35763i, select(vec4<bool>(true, var_2, var_2, false), vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(true, false, var_2, false))), true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-668f, 1094f, false)), _wgslsmith_f_op_f32(490f + 1715f), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, 479f)))), _wgslsmith_f_op_f32(abs(-249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1069f), -1125f, _wgslsmith_f_op_f32(step(-1256f, 872f)))), true)));
}

