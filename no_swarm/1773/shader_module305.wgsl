struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14>;

var<private> global1: array<vec2<u32>, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> bool {
    return (_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 31293i, 0i, u_input.a), vec4<i32>(u_input.a, 2147483647i, 16738i, arg_2)), -(~arg_2)) == 13074i) || !any(vec3<bool>(true, true, true));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(135f))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, var_0.a.a, -34064i) ^ vec3<i32>(2147483647i, 1i, var_0.a.a)), vec3<i32>(~arg_1, max(-44319i, var_0.a.a), u_input.a))), -1000f);
    var var_2 = -firstLeadingBit(_wgslsmith_sub_vec3_i32(max(vec3<i32>(28549i, u_input.a, arg_1), -vec3<i32>(var_1.a.a, u_input.a, -39332i)), _wgslsmith_add_vec3_i32(vec3<i32>(716i, 1i, -9106i) >> (vec3<u32>(1u, 4294967295u, u_input.c) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(arg_1, 23523i, var_1.a.a)))));
    global1 = array<vec2<u32>, 2>();
    let var_3 = abs(global1[_wgslsmith_index_u32(~u_input.d, 2u)]);
    return var_1;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_3(vec3<bool>(select(true, true, func_2(Struct_1(-39385i), 1u, arg_0)), all(vec2<bool>(u_input.d != 4294967295u, true)), true), ~countOneBits(arg_0), 170f);
    var var_1 = true;
    let var_2 = func_3(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), 1i & ~(i32(-1i) * -u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b)), var_0.b)) - _wgslsmith_f_op_f32(ceil(-2521f)))).a;
    var var_3 = Struct_2(func_3(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, false, false)))), -2147483647i, var_0.b).a, true, 1u, ~vec4<u32>(reverseBits(~u_input.c), u_input.d, ~reverseBits(u_input.d), u_input.d & u_input.d));
    var_3 = Struct_2(var_0.a, var_3.b, var_3.d.x, firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_3.d.x, 47699u, 23525u, var_3.c), ~var_3.d), _wgslsmith_mult_vec4_u32(~var_3.d, ~var_3.d))));
    return func_3(!vec3<bool>(true && select(var_3.b, var_3.b, var_3.b), _wgslsmith_sub_i32(var_3.a.a, 9754i) < _wgslsmith_dot_vec4_i32(vec4<i32>(22675i, -2147483647i, -1i, 0i), vec4<i32>(-1i, 0i, arg_0, -6093i)), var_3.b), var_0.a.a, -1010f).a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> Struct_5 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(27617i, arg_1.a.a.a), _wgslsmith_div_i32(~arg_1.a.a.a, countOneBits(-1i))), 34396i) >> (u_input.d % 32u);
    var var_1 = arg_1.b.a >= ~1i;
    let var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-465f * _wgslsmith_div_f32(-417f, arg_2))), -374f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, func_3(vec3<bool>(true, arg_3, true), var_0, -553f).b) * func_3(select(vec3<bool>(arg_3, arg_0.x, arg_3), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, false, true)), abs(-60712i), -1814f).b), -968f), Struct_4(func_3(select(!vec3<bool>(arg_3, false, arg_0.x), vec3<bool>(true, true, true), select(vec3<bool>(true, arg_3, arg_0.x), vec3<bool>(arg_0.x, arg_3, true), vec3<bool>(true, arg_0.x, false))), -countOneBits(1i), -643f), arg_1.b));
    var var_3 = func_1(min(2147483647i, -arg_1.a.a.a));
    global1 = array<vec2<u32>, 2>();
    return global0[_wgslsmith_index_u32(u_input.d, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(680f)) - -1350f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(857f, 119f))))) - -382f)));
    let var_1 = Struct_3(Struct_1(-7649i), var_0);
    var var_2 = func_4(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))), Struct_4(Struct_3(func_1(i32(-1i) * -20997i), var_0), Struct_1(_wgslsmith_mult_i32(u_input.a, ~u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2038f))))), false);
    global1 = array<vec2<u32>, 2>();
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1272f);
    let var_4 = func_3(!vec3<bool>(select(true, all(vec3<bool>(false, true, true)), true), !all(vec3<bool>(false, true, true)), false), ~func_4(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), func_4(vec2<bool>(true, true), Struct_4(var_2.b.a, Struct_1(9715i)), _wgslsmith_f_op_f32(max(var_3, var_2.a.x)), true).b, -265f, _wgslsmith_clamp_i32(15549i, -1i, 1i) == ~u_input.b.x).b.a.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_3(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), abs(-21091i), -1581f).b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(164f, var_0, true)), _wgslsmith_f_op_f32(abs(var_0)), var_1.b >= var_3)) * _wgslsmith_f_op_f32(max(-440f, _wgslsmith_f_op_f32(f32(-1f) * -520f)))))).a;
    global1 = array<vec2<u32>, 2>();
    global0 = array<Struct_5, 14>();
    global0 = array<Struct_5, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, ~u_input.c), ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d, 0u, 4152u), vec3<u32>(u_input.c, 1u, 41929u))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.d, 24057u, 4294967295u)), ~vec3<u32>(u_input.c, u_input.c, 14636u))), firstTrailingBit(vec3<u32>(0u | u_input.c, u_input.c, ~54549u))));
}

