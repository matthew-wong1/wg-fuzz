struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<vec4<i32>, 2>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<i32>(u_input.b, -2147483647i, 0i);
    var var_1 = _wgslsmith_f_op_f32(trunc(401f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-315f))), 1000f)));
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -932f)))));
    let var_4 = Struct_5(vec4<i32>(2147483647i, -9508i & var_0.x, var_0.x, countOneBits(u_input.d)));
    return abs(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.c.x, 1u), u_input.a >> (7979u % 32u), 4294967295u << (u_input.a % 32u)) | _wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 0u), vec4<u32>(u_input.a, 0u, u_input.a, 48428u)))) >> (vec4<u32>(47872u, u_input.c.x, u_input.c.x, 0u) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(~(~(-2147483647i)), Struct_2(Struct_1(-_wgslsmith_sub_i32(arg_1.a.a, arg_1.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-153f, -186f) * vec2<f32>(arg_0.x, arg_0.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(-629f, arg_0.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, arg_0.x))))), ~func_3()), ~(vec4<u32>(_wgslsmith_sub_u32(4294967295u, arg_1.c.x), ~45453u, ~arg_1.c.x, ~arg_1.c.x) | vec4<u32>(9543u, _wgslsmith_dot_vec2_u32(arg_1.c.zw, vec2<u32>(585u, arg_1.c.x)), 4294967295u, 15634u)), !(!(!any(vec3<bool>(true, false, true)))));
    global1 = array<vec4<i32>, 2>();
    global0 = array<vec4<i32>, 11>();
    let var_1 = vec4<u32>(abs(~70937u & _wgslsmith_sub_u32(reverseBits(28743u), arg_1.c.x)), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, arg_1.c.x >> (8532u % 32u)), ~_wgslsmith_mult_vec2_u32(arg_1.c.zz, vec2<u32>(arg_1.c.x, u_input.a))) ^ arg_1.c.x, ~(~(~max(var_0.c.x, var_0.c.x))));
    let var_2 = var_0.b.a;
    return Struct_1(_wgslsmith_mult_i32(1i, firstLeadingBit(-15147i)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool) -> vec3<f32> {
    var var_0 = Struct_5(global1[_wgslsmith_index_u32(u_input.a, 2u)]);
    let var_1 = _wgslsmith_f_op_f32(ceil(809f));
    let var_2 = Struct_5(_wgslsmith_clamp_vec4_i32(min(global1[_wgslsmith_index_u32((0u | arg_1.x) ^ _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 2u)], -vec4<i32>(var_0.a.x, 2147483647i, -71393i, 2147483647i)), -vec4<i32>(_wgslsmith_mod_i32(0i, 16731i), arg_0.b.a.a, -2147483647i, 2147483647i), ~(-firstTrailingBit(vec4<i32>(23345i, u_input.d, 1i, 1716i)))));
    var_0 = var_2;
    global1 = array<vec4<i32>, 2>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(711f, arg_0.b.b.x, 1684f), vec3<f32>(arg_0.b.b.x, 1642f, -1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-196f, 1456f, var_1) + vec3<f32>(-324f, var_1, -463f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(660f, arg_0.b.b.x, -447f) + vec3<f32>(var_1, 170f, 214f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -2349f, var_1)))))));
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<i32>, 11>();
    let var_0 = -u_input.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(102109i, Struct_2(func_2(vec4<f32>(136f, 145f, -1515f, -612f), Struct_2(Struct_1(u_input.b), vec2<f32>(-653f, 1725f), vec4<u32>(u_input.c.x, u_input.a, 44251u, 15046u))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-201f, 464f), vec2<f32>(-547f, -181f))), vec4<u32>(4294967295u, 4294967295u, 17215u, u_input.a)), vec4<u32>(~1u, u_input.a, func_3().x, u_input.c.x), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), ~vec4<u32>(1u, u_input.a, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~u_input.a), all(vec2<bool>(true, true)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-646f + -151f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(205f + 1000f), _wgslsmith_f_op_f32(ceil(-1963f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-121f * -535f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-462f))), _wgslsmith_f_op_f32(step(-998f, -871f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-980f, 457f)) - _wgslsmith_f_op_f32(649f - -746f)))));
    let var_2 = ~(-min(_wgslsmith_sub_vec2_i32(vec2<i32>(39830i, var_0), vec2<i32>(1i, u_input.d)), ~vec2<i32>(1i, -304i))) << (u_input.c.xy % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(abs(var_1.x));
    return Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1038f, var_1.x, 2613f, var_1.x))), Struct_2(Struct_1(_wgslsmith_add_i32(var_0, var_2.x)), _wgslsmith_f_op_vec2_f32(var_1.yx * vec2<f32>(151f, var_1.x)), vec4<u32>(0u, u_input.a, firstTrailingBit(u_input.a), u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(select(800f, 1130f, all(vec2<bool>(false, false)) && true))), abs(vec4<u32>(_wgslsmith_add_u32(u_input.a, 28878u), u_input.a, 24200u, u_input.c.x)) & (vec4<u32>(u_input.c.x, 0u, 72743u, 5812u) ^ func_3()));
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> StorageBuffer {
    global1 = array<vec4<i32>, 2>();
    global1 = array<vec4<i32>, 2>();
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(504f, arg_2.b.b.x, 362f, arg_2.b.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, arg_3.b.x, arg_2.b.b.x, 153f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b.x, -1060f, -1408f, arg_3.b.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1311f, arg_2.b.b.x, arg_3.b.x, 506f), vec4<f32>(arg_3.b.x, arg_2.b.b.x, arg_2.b.b.x, arg_3.b.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.b.b.x, arg_3.b.x, 1362f, 894f))))))), arg_2.b);
    return StorageBuffer(-569f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x | u_input.a;
    global1 = array<vec4<i32>, 2>();
    global0 = array<vec4<i32>, 11>();
    let var_1 = vec2<bool>(false, !all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))));
    global1 = array<vec4<i32>, 2>();
    let x = u_input.a;
    s_output = func_5(vec4<bool>(false, !var_1.x, !(!all(vec3<bool>(false, false, true))), !((i32(-1i) * -2601i) < select(u_input.b, u_input.d, true))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-1i, u_input.d), -u_input.b, u_input.d, -50052i), _wgslsmith_mod_vec4_i32(-global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)])), firstTrailingBit(_wgslsmith_sub_i32(~36592i, u_input.b))), Struct_3(1i, func_1(), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 20341u, 0u), vec4<u32>(var_0, u_input.c.x, var_0, 28463u)), vec4<u32>(var_0, var_0, u_input.a, u_input.a), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u)), select(!var_1.x, var_1.x | var_1.x, !var_1.x) & true), func_1());
}

