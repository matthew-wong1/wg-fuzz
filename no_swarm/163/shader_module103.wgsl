struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    global0 = vec3<f32>(-1847f, 1004f, global0.x);
    return vec3<f32>(361f, _wgslsmith_div_f32(-1294f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, 769f)), _wgslsmith_f_op_f32(-global0.x))))), -592f);
}

fn func_2() -> vec3<bool> {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, -644f), vec3<f32>(global0.x, global0.x, -2238f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1258f, global0.x, 671f), vec3<f32>(463f, -661f, -942f))), true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, 207f, 524f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + vec3<f32>(global0.x, global0.x, global0.x))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.zx)) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 157f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), -1507f)))), 1722f));
    var_0 = global0.yz;
    let var_1 = 1i;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 732f, var_0.x) * vec3<f32>(-1078f, 315f, global0.x))))));
    return select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, true)), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), !(_wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(abs(115f)))), select(!vec3<bool>(all(vec2<bool>(true, false)), true, any(vec2<bool>(false, false))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), all(vec4<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, false)), true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), 348f < _wgslsmith_f_op_f32(-global0.x)));
}

fn func_1() -> u32 {
    let var_0 = ~abs(vec3<u32>(u_input.b.x, ~u_input.d | (1u ^ u_input.d), u_input.d));
    let var_1 = func_2();
    var var_2 = 27675i;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()).x, vec2<u32>(_wgslsmith_add_u32(u_input.d, u_input.d), ~var_0.x), 485i, max(min(vec4<u32>(_wgslsmith_mod_u32(46385u, u_input.b.x), min(var_0.x, var_0.x), u_input.d, 17172u), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 16280u, 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, var_0.x, 0u, 9053u), vec4<u32>(1u, 37162u, u_input.d, u_input.d)))), _wgslsmith_mod_vec4_u32((vec4<u32>(22594u, 4294967295u, 0u, 0u) ^ vec4<u32>(var_0.x, u_input.d, 1u, u_input.d)) >> (~vec4<u32>(u_input.d, u_input.b.x, 4294967295u, 25605u) % vec4<u32>(32u)), vec4<u32>(14610u, ~1u, 4294967295u, select(10159u, 123922u, var_1.x)))), u_input.c.wyz);
    let var_4 = any(vec3<bool>(var_1.x, var_1.x, !(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 14u)], -1i), var_3.e.xz) == (var_3.c ^ u_input.c.x))));
    return ~1u;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_2(~arg_0.b.x, _wgslsmith_clamp_vec2_i32(u_input.a.zy, -max(u_input.c.zy, u_input.a.yx), -abs(vec2<i32>(15385i, arg_0.a))) << (min(~(~arg_0.c.zz), ~(~arg_0.c.zz)) % vec2<u32>(32u)), firstLeadingBit(arg_0.c), _wgslsmith_f_op_f32(-global0.x), arg_0.e);
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1232f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-990f, global0.x, 2237f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, global0.x, 674f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, -541f, global0.x)))))));
    let var_0 = func_4(Struct_2(u_input.a.x, -vec2<i32>(abs(global1[_wgslsmith_index_u32(4294967295u, 14u)]), reverseBits(2711i)), vec4<u32>(~u_input.d, u_input.d & u_input.d, ~4294967295u, 0u) | vec4<u32>(~12119u, 0u | u_input.b.x, func_1(), ~u_input.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + -694f), global0.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), u_input.b, firstLeadingBit(abs(u_input.c.x)), ~(~vec4<u32>(22635u, u_input.d, 48248u, 50187u)), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-9184i, u_input.a.x, global1[_wgslsmith_index_u32(u_input.d, 14u)])), u_input.a.x & 2147483647i))), ~(~firstLeadingBit(u_input.d)) < 1u);
    var var_1 = 22844i;
    var var_2 = ~min(_wgslsmith_add_i32(abs(u_input.a.x) >> (~4294967295u % 32u), firstLeadingBit(-u_input.a.x)), 2147483647i);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x * -1221f), -1699f, -469f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 2493f, var_0.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, global0.x, global0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1522f, global0.x, global0.x), vec3<f32>(global0.x, -166f, global0.x)))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(209f, var_0.a, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, _wgslsmith_f_op_f32(max(-1856f, global0.x)), 1257f)), !vec3<bool>(any(vec3<bool>(false, false, true)), false, all(vec2<bool>(true, true))))));
    var var_3 = Struct_2(u_input.c.x, firstLeadingBit(vec2<i32>(reverseBits(_wgslsmith_mod_i32(u_input.a.x, 1i)), _wgslsmith_dot_vec3_i32(u_input.c.ywy, vec3<i32>(-2147483647i, u_input.c.x, -10982i)))), vec4<u32>(~_wgslsmith_mod_u32(~var_0.b.x, 20058u), firstTrailingBit(~(u_input.b.x << (0u % 32u))), 0u, ~_wgslsmith_mod_u32(func_4(Struct_2(var_0.c, vec2<i32>(u_input.a.x, u_input.a.x), var_0.d, -910f, var_0), false).b.x, ~4294967295u)), -1413f, func_4(Struct_2(_wgslsmith_sub_i32(1i, -1i), -vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 14u)], u_input.c.x), vec4<u32>(max(0u, 30846u), var_0.b.x, ~var_0.d.x, ~0u), 1214f, var_0), !(true && (-478f > var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~(-(~vec2<i32>(-2147483647i, var_3.e.e.x))));
}

