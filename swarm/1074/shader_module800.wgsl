struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(927f, -1290f), vec3<i32>(-2844i, -6084i, 5113i), vec3<u32>(1u, 34719u, 17542u)), Struct_1(vec2<u32>(1u, 45394u), vec2<f32>(1143f, -227f), vec3<i32>(-1i, 20914i, 2147483647i), vec3<u32>(4294967295u, 19982u, 1u)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.b.x)), _wgslsmith_f_op_f32(exp2(arg_2.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x) - _wgslsmith_f_op_f32(-1448f - arg_2.b.x)))));
    var var_1 = 2147483647i;
    var var_2 = ~(~min(arg_2.d.x, ~4294967295u));
    var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, min(u_input.b, u_input.d)), -(vec2<i32>(-2147483647i, u_input.b) | vec2<i32>(arg_0, -2147483647i)) & ~vec2<i32>(-1i, 43318i)) << (select(arg_2.d.x, _wgslsmith_div_u32(u_input.a << (1u % 32u), ~arg_2.a.x), !(!(arg_2.a.x >= 2444u))) % 32u);
    let var_3 = ~(-6049i);
    return 31665u;
}

fn func_1() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 2u)];
    global1 = array<Struct_1, 2>();
    global0 = array<vec4<bool>, 29>();
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x >> (_wgslsmith_sub_u32(~u_input.c, _wgslsmith_mult_u32(0u, u_input.c)) % 32u), ~(var_0.a.x | 39127u) ^ (var_0.a.x >> (82494u % 32u)), 6360u, (_wgslsmith_sub_u32(u_input.a, 41236u) ^ 1u) & var_0.d.x), _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(56856u, 0u, u_input.c), var_0.a.x, var_0.d.x, 1u), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.d.x, 0u, 34394u, 6272u), select(~vec4<u32>(var_0.d.x, 4294967295u, u_input.a, var_0.d.x), vec4<u32>(37816u, 23984u, u_input.a, 0u), vec4<bool>(false, true, false, false)))));
    let var_2 = ~(firstLeadingBit(_wgslsmith_div_u32(func_2(u_input.d, vec2<bool>(true, true), global1[_wgslsmith_index_u32(var_0.d.x, 2u)], vec2<bool>(true, false)), var_1.x)) & var_0.d.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x - 965f))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 2u)];
    var var_1 = var_0.c.x;
    global1 = array<Struct_1, 2>();
    var var_2 = Struct_1(abs(_wgslsmith_mod_vec2_u32(~var_0.a, vec2<u32>(~u_input.c, var_0.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), 183f), ~firstLeadingBit(abs(var_0.c)), vec3<u32>(~(~0u), 79989u, 1u));
    let var_3 = vec4<i32>(select(u_input.b, _wgslsmith_add_i32(_wgslsmith_add_i32(-48723i, arg_0), arg_0) >> (_wgslsmith_sub_u32(reverseBits(u_input.c), select(0u, var_0.d.x, arg_2)) % 32u), any(select(!vec4<bool>(arg_1.x, arg_2, arg_2, false), !global0[_wgslsmith_index_u32(var_0.d.x, 29u)], vec4<bool>(arg_2, true, arg_1.x, true)))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_2.c.x, arg_0, 247i, u_input.b)), vec4<i32>(24563i, -27692i, var_2.c.x, -2147483647i)), vec4<i32>(_wgslsmith_mod_i32(0i, -1625i), ~var_2.c.x, ~(-19751i), -var_2.c.x)), vec4<i32>(38453i, var_0.c.x, u_input.d & ~(-2147483647i), 1i)), var_0.c.x, u_input.b);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<u32>(~firstTrailingBit(1660u), 70846u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-849f * 2648f)))), _wgslsmith_f_op_f32(-151f - _wgslsmith_f_op_f32(func_1()))), _wgslsmith_sub_vec3_i32(~(vec3<i32>(-2147483647i, 0i, u_input.b) >> (~vec3<u32>(u_input.c, 0u, 57340u) % vec3<u32>(32u))), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, u_input.d), vec3<i32>(u_input.d, u_input.d, -2147483647i)) >> (vec3<u32>(_wgslsmith_div_u32(4294967295u, 1u), u_input.a, ~14090u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c), vec3<u32>(9278u, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.a, 0u), vec3<u32>(10753u, 43470u, u_input.c))), select(~vec3<u32>(u_input.c, u_input.a, 118848u), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 47931u, u_input.c), vec3<u32>(u_input.a, 1u, 0u))), true)));
    let var_1 = select(select(select(vec2<bool>(all(vec2<bool>(true, false)), false), vec2<bool>(true, u_input.c != 2211u), true), vec2<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(true, true), true)), !select(vec2<bool>(true, var_0.b.x > var_0.b.x), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, true)), true)), select(vec2<bool>(true, true), vec2<bool>(false, select(true, false, func_3(-1i, vec2<bool>(true, true), true))), all(vec3<bool>(true, true, true))));
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    var_0 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a, var_0.d.xz), _wgslsmith_add_vec2_u32(var_0.d.yz, firstLeadingBit(var_0.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-710f, -185f))))) - _wgslsmith_f_op_vec2_f32(-var_0.b))), _wgslsmith_sub_vec3_i32(var_0.c, vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-40052i, u_input.b, 47872i, u_input.d)), vec4<i32>(1i, 49574i, 17704i, 2147483647i)), 0i, var_0.c.x)), ~var_0.d);
    var var_2 = Struct_1(vec2<u32>(u_input.c, ~var_0.a.x), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b.x)) + _wgslsmith_f_op_f32(1804f * 553f)), _wgslsmith_f_op_f32(-511f - -1221f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(828f, -710f))))), var_0.c, reverseBits(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4119u, 1u), select(var_0.d, var_0.d, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b.x, -613f, var_2.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.b.x, var_0.b.x, var_0.b.x, var_2.b.x)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.b.x)), var_0.b.x, -906f, _wgslsmith_f_op_f32(var_0.b.x + 188f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 205f, 1000f))), select(!vec4<bool>(false, false, var_1.x, false), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.d.x, 31118u), 29u)], select(vec4<bool>(var_1.x, var_1.x, false, false), global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)])))), false)), vec4<i32>(abs(_wgslsmith_div_i32(countOneBits(-14169i), 1i)), var_2.c.x, 2147483647i, abs(-61755i)), vec2<i32>(u_input.d, -13363i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(882f, var_2.b.x)))))))));
}

