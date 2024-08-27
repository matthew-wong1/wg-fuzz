struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

var<private> global1: array<Struct_5, 7>;

var<private> global2: Struct_2;

var<private> global3: array<vec4<u32>, 7>;

var<private> global4: array<vec2<u32>, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = countOneBits(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(reverseBits(1i), -global2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), vec2<i32>(global2.a, 2147483647i))), ~abs(1i)), ~_wgslsmith_mult_i32(-global2.a, u_input.a), global2.a, global2.a));
    global2 = Struct_2(_wgslsmith_mod_i32(u_input.a, -1i), (_wgslsmith_div_u32(~4294967295u, countOneBits(global2.c)) ^ reverseBits(~29542u)) << (((reverseBits(global2.b) | firstTrailingBit(u_input.c.x)) & 33172u) % 32u), 32342u);
    global3 = array<vec4<u32>, 7>();
    global4 = array<vec2<u32>, 28>();
    var_0 = firstTrailingBit(select(vec4<i32>(select(-global2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(32079i, -19730i, 2147483647i, global2.a), u_input.d), arg_0), 8886i, firstTrailingBit(var_0.x), u_input.b.x), vec4<i32>(_wgslsmith_add_i32(10850i, u_input.d.x), ~(-2147483647i), -1i, 63474i) ^ ~u_input.d, any(select(select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), vec2<bool>(false, arg_0), true))));
    return -1i;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(func_3(true), 36092u, abs(_wgslsmith_sub_u32(min(u_input.c.x, u_input.c.x) ^ 4294967295u, abs(global2.b))));
    let var_1 = !(!vec2<bool>(!all(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, true, true)) & true));
    var var_2 = Struct_1(select(vec2<bool>(any(select(var_1, var_1, vec2<bool>(true, var_1.x))), var_1.x), select(vec2<bool>(true, !var_1.x), vec2<bool>(true, true), true), !var_1), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~(u_input.b & vec3<i32>(var_0.a, 35198i, u_input.b.x)), reverseBits(vec3<i32>(global2.a, 16235i, global2.a))), select(~countOneBits(u_input.d.xyz), -(vec3<i32>(var_0.a, -1i, 0i) | vec3<i32>(var_0.a, u_input.a, 8480i)), true)), vec3<bool>(!var_1.x, true, var_1.x), select(var_1, select(vec2<bool>(any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), true), select(vec2<bool>(var_1.x, true), select(vec2<bool>(var_1.x, var_1.x), var_1, var_1.x), !var_1), true), false));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f) * 1599f));
    let var_4 = _wgslsmith_add_vec3_i32(firstLeadingBit(~(-min(u_input.b, vec3<i32>(9609i, 2533i, 0i)))), var_2.b);
    return Struct_3(_wgslsmith_f_op_f32(638f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 344f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(744f, -790f), vec2<f32>(-214f, -736f), select(var_2.a, var_1, false))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1092f, -430f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1686f) + vec2<f32>(-282f, 2862f)), true)))), var_4.x, -446f, -216f);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = true;
    var var_1 = ~(~(~(~(~global2.c))));
    var var_2 = vec3<bool>(true, true, arg_0.x);
    var var_3 = func_2();
    var var_4 = Struct_2(-(~global2.a), ~(~0u), u_input.c.x);
    return Struct_1(arg_0.xy, u_input.b, !(!vec3<bool>(true, true, any(vec4<bool>(var_2.x, var_0, arg_0.x, arg_0.x)))), !arg_0.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(748f * _wgslsmith_div_f32(581f, _wgslsmith_f_op_f32(min(-284f, 1375f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(657f, -1456f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1039f), -884f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(496f))), 1f)), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1118f, _wgslsmith_f_op_f32(-1414f - 1894f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(274f - 358f), _wgslsmith_f_op_f32(f32(-1f) * -1085f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-692f + -164f), _wgslsmith_div_f32(173f, 1031f), any(vec3<bool>(true, true, true)))))));
    var var_1 = func_1(vec3<bool>(select(false, true, (var_0.c & 1i) >= global2.a), true == (_wgslsmith_f_op_f32(f32(-1f) * -1743f) <= _wgslsmith_f_op_f32(round(var_0.b.x))), !all(vec2<bool>(true, true))));
    var_1 = func_1(select(!var_1.c, vec3<bool>(var_1.d.x && true, var_1.a.x, false), vec3<bool>(func_1(select(var_1.c, var_1.c, var_1.a.x)).a.x, all(vec2<bool>(var_1.d.x, false)), !var_1.a.x)));
    global2 = Struct_2(~(-_wgslsmith_clamp_i32(var_0.c, _wgslsmith_sub_i32(var_1.b.x, -1859i), countOneBits(var_0.c))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(~(46904u & u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 12200u), vec3<u32>(41278u, 20636u, global2.b)) >> (7184u % 32u), ~83727u), global2.b), _wgslsmith_add_u32(firstLeadingBit(~(~global2.c)), select(~16955u, u_input.c.x, var_1.c.x)));
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~global4[_wgslsmith_index_u32(firstLeadingBit(~global2.c), 28u)] | ~global4[_wgslsmith_index_u32(~u_input.c.x, 28u)], firstTrailingBit(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(1u, 7u)], abs(global3[_wgslsmith_index_u32(83242u ^ global2.c, 7u)]))), u_input.c.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(var_0.b, var_0.b)))) - _wgslsmith_f_op_vec2_f32(max(var_0.b, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-902f, -465f), vec2<f32>(-1495f, 1586f)))))), _wgslsmith_f_op_vec2_f32(-var_0.b))));
}

