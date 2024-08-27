struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 21>;

var<private> global2: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1839f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), 798f));
    global0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-firstLeadingBit(2727i), ~(~(i32(-1i) * -2147483647i)), _wgslsmith_add_i32(global2.x, 13822i)), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(1i, global2.x, 26976i) & vec3<i32>(global2.x, 28238i, -8546i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -1i, global2.x), vec3<i32>(-26348i, -2147483647i, global2.x) ^ vec3<i32>(u_input.a, -22780i, global2.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.b.x >= u_input.d.x)), select(vec3<i32>(_wgslsmith_div_i32(9725i, -7409i), 0i, ~global2.x), countOneBits(-vec3<i32>(global2.x, u_input.a, u_input.a)), true)));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>((u_input.a | -1i) ^ 1i, u_input.a, -(~(-32491i)), 1i), _wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.a, 27864i, u_input.a, -3832i)), ~vec4<i32>(global2.x, 21013i, global2.x, global2.x)), min(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(global2.x, u_input.a, u_input.a, global2.x)), -vec4<i32>(0i, -1i, -1i, 1425i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, u_input.a, u_input.a, -2147483647i), vec4<i32>(-1i, global2.x, 0i, 1i)) << ((vec4<u32>(4294967295u, 0u, 1u, u_input.d.x) << (vec4<u32>(1u, 14076u, u_input.d.x, 101546u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(~vec4<i32>(global2.x, 2147483647i, -31221i, -15206i), ~vec4<i32>(-1i, -34110i, -1i, 52753i))));
    let var_2 = 58902u;
    global1 = array<f32, 21>();
    return var_0.xz;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(arg_0, (u_input.d.x >> (arg_1 % 32u)) ^ 4294967295u, 1u, -_wgslsmith_div_vec4_i32(abs(vec4<i32>(24138i, u_input.a, -57230i, 29182i)), ~vec4<i32>(global2.x, global2.x, global2.x, u_input.a))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, true, false) || true, 1u != (u_input.b.x >> (u_input.d.x % 32u)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.d.x > 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), -653f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(19513u, 21u)], arg_0) - vec2<f32>(global1[_wgslsmith_index_u32(39658u, 21u)], 2001f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, arg_0))))));
    global1 = array<f32, 21>();
    var var_1 = abs(_wgslsmith_mod_vec2_u32(u_input.b.yz, ~(~u_input.b.yy | vec2<u32>(10403u, 4294967295u))));
    let var_2 = ~(~vec4<u32>(_wgslsmith_div_u32(0u, ~var_0.a.b), var_1.x, reverseBits(1u) >> ((arg_1 >> (4294967295u % 32u)) % 32u), ~var_0.a.c));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1102f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(37265u, 21u)]))), arg_0)), 27446u, arg_1, ~countOneBits(vec4<i32>(global2.x, global2.x, global2.x, -2647i))), !var_0.b, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-231f, -765f), _wgslsmith_f_op_f32(f32(-1f) * -2215f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))), var_0.c));
    return Struct_2(var_0.a, vec4<bool>(var_0.b.x, false, false, any(vec3<bool>(all(var_0.b), all(var_3.b), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 21u)] - var_3.a.a)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a, global1[_wgslsmith_index_u32(arg_1.a.c, 21u)], -883f, 320f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], arg_1.a.a, 1000f, -226f))) * vec4<f32>(arg_1.c.x, global1[_wgslsmith_index_u32(9008u, 21u)], 1000f, global1[_wgslsmith_index_u32(1u, 21u)]))))));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(9827i, _wgslsmith_mod_i32(i32(-1i) * -1i, min(arg_1.a.d.x, -2147483647i))), ~(-_wgslsmith_add_i32(arg_0.x, -27316i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 3622i), global2.xz), -vec2<i32>(arg_0.x, 685i)) & global2.x, -1i), _wgslsmith_mult_vec4_i32(~arg_1.a.d, ~select(arg_1.a.d, abs(vec4<i32>(2147483647i, arg_1.a.d.x, var_0, arg_0.x)), all(arg_1.b))));
    var var_3 = 41594i;
    let var_4 = arg_1.a;
    return var_4;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    global0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(10836i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.a, -2147483647i, -1i), min(vec4<i32>(2147483647i, global2.x, 12142i, global2.x), vec4<i32>(-1i, 4248i, u_input.a, -1i))), -49682i)), _wgslsmith_div_i32(abs(global2.x), countOneBits(select(_wgslsmith_dot_vec3_i32(vec3<i32>(4270i, 0i, 41170i), vec3<i32>(1i, global2.x, global2.x)), _wgslsmith_mult_i32(1i, arg_0.x), true))));
    var var_0 = Struct_2(func_4(vec2<i32>(arg_0.x, ~u_input.a) << ((vec2<u32>(0u, u_input.d.x) >> (vec2<u32>(0u, 71311u) % vec2<u32>(32u))) % vec2<u32>(32u)), func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(32740u, ~u_input.b.x), 21u)], ~0u)), vec4<bool>(false, !(!(27822u < u_input.d.x)), !(!any(vec3<bool>(true, false, true))), true), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 21u)] + arg_1), global1[_wgslsmith_index_u32(u_input.b.x, 21u)]));
    global1 = array<f32, 21>();
    global2 = var_0.a.d.wwx;
    let var_1 = vec2<u32>(u_input.c.x ^ 4294967295u, u_input.d.x);
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(784f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1857f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(332f * global1[_wgslsmith_index_u32(1u, 21u)]) * -743f))), global1[_wgslsmith_index_u32(1u, 21u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 21>();
    var var_0 = u_input.a;
    var var_1 = -(i32(-1i) * -1i);
    let var_2 = false;
    let var_3 = global2.zy;
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(-2147483647i, global2.x, 0i), -465f))), _wgslsmith_dot_vec4_u32(vec4<u32>(~4323u, ~4294967295u, 1u, 32555u), vec4<u32>(~u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.d.x)), abs(u_input.d.x), u_input.b.x)), 1u, -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 16142i, -20742i, u_input.a), vec4<i32>(2147483647i, var_3.x, var_3.x, -1i)) << ((select(vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.d.x), vec4<u32>(16654u, u_input.d.x, 1u, u_input.b.x), false) << (~vec4<u32>(u_input.b.x, 25183u, 11572u, 9630u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(!vec4<bool>(true, var_2, var_2, false), vec4<bool>(var_2, any(!vec4<bool>(var_2, var_2, var_2, var_2)), var_2, !(u_input.a == global2.x)), vec4<bool>(false, all(vec4<bool>(var_2, true, true, true)), true, any(vec4<bool>(true, false, false, var_2)))), vec2<f32>(-126f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.c.x), 21u)])));
    let x = u_input.a;
    s_output = StorageBuffer(-10147i, _wgslsmith_div_vec3_i32(var_4.a.d.xxw, var_4.a.d.yyz), firstLeadingBit(-_wgslsmith_clamp_i32(i32(-1i) * -24737i, global2.x ^ var_4.a.d.x, abs(13619i))), -abs(var_4.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-915f + _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-270f + global1[_wgslsmith_index_u32(var_4.a.c, 21u)]))))));
}

