struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: array<vec3<f32>, 13>;

var<private> global2: vec4<u32>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = !any(select(select(!vec4<bool>(false, arg_0.x, true, true), select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), arg_0.x), arg_0.x), select(select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, arg_0.x)), select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x)), arg_0.x), vec4<bool>(global2.x < arg_1.a.x, arg_0.x, 15443u < arg_1.a.x, arg_0.x)));
    var var_1 = Struct_3(vec4<i32>(-9577i, _wgslsmith_mult_i32(2147483647i, u_input.b.x), 0i, ~(~reverseBits(u_input.e))), ~firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, u_input.c.x, 1u), vec3<u32>(2670u, global2.x, 10628u))), Struct_1(min(arg_1.a, global2.zx)), arg_0.x, !(!arg_0.x));
    var_1 = Struct_3(_wgslsmith_add_vec4_i32(u_input.b, reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2906i, 52424i, 40163i, 15983i), vec4<i32>(4669i, u_input.a, 27802i, 1i)), vec4<i32>(u_input.b.x, var_1.a.x, var_1.a.x, u_input.b.x), var_1.a))), ~select(vec3<u32>(10290u, global2.x, ~var_1.c.a.x), reverseBits(~vec3<u32>(1u, 4294967295u, u_input.c.x)), select(!global0[_wgslsmith_index_u32(var_1.b.x, 31u)], vec3<bool>(arg_0.x, var_1.e, var_1.d), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, var_1.b.x), 31u)])), Struct_1(u_input.c.wy), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-204f, 667f)) - _wgslsmith_f_op_f32(sign(-272f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(560f - -2316f) * _wgslsmith_f_op_f32(ceil(2641f))), true)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !arg_0.x && all(!(!vec4<bool>(true, true, false, var_1.e))));
    let var_2 = Struct_4(arg_1, !select(select(select(vec4<bool>(true, var_1.e, var_1.e, arg_0.x), vec4<bool>(var_1.d, arg_0.x, arg_0.x, var_1.e), arg_0.x), !vec4<bool>(arg_0.x, true, true, arg_0.x), !var_1.d), vec4<bool>(false, !arg_0.x, true, false), all(arg_0)));
    var var_3 = var_1.a.x;
    return vec3<u32>(85749u, arg_1.a.x, 4294967295u);
}

fn func_4(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_1(global2.yz);
    var var_1 = _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_mult_u32(countOneBits(abs(u_input.d.x)), global2.x));
    var var_2 = vec3<u32>(global2.x, abs(0u), 0u);
    var var_3 = !all(vec2<bool>(true, true)) || !(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true)) || (true | all(vec2<bool>(true, false))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c.x, 3627u), 13u)]))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-947f, _wgslsmith_div_f32(183f, 491f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1282f)))), _wgslsmith_f_op_f32(f32(-1f) * -190f)));
    return any(vec3<bool>(!(!all(vec4<bool>(true, true, true, true))), !(select(false, false, false) | select(true, false, false)), !select(false, true, true) | (var_4.x > -244f)));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: i32, arg_3: vec2<f32>) -> vec4<u32> {
    global0 = array<vec3<bool>, 31>();
    var var_0 = arg_1.a.a.x;
    let var_1 = _wgslsmith_f_op_f32(arg_3.x - arg_3.x);
    let var_2 = (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41434u, u_input.d.x), vec2<u32>(4294967295u, global2.x)) >> (_wgslsmith_add_u32(global2.x, arg_1.a.a.x) % 32u), global2.x) | u_input.c.x) >= u_input.d.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-588f + arg_3.x), -394f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1, -969f), _wgslsmith_div_f32(arg_3.x, -595f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1)))) + arg_3.x))));
    return ~vec4<u32>(1u, 67056u, _wgslsmith_div_u32(~arg_1.a.a.x, ~select(88401u, global2.x, true)), 5830u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(808f * arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x)) + vec3<f32>(_wgslsmith_f_op_f32(min(-540f, _wgslsmith_f_op_f32(select(-645f, arg_0.x, true)))), 726f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -1481f) + _wgslsmith_f_op_f32(sign(445f))))));
    global2 = ~func_5(func_4(func_3(select(vec2<bool>(false, false), vec2<bool>(false, false), false), Struct_1(global2.wx))), Struct_4(Struct_1(select(vec2<u32>(19612u, u_input.d.x), vec2<u32>(0u, global2.x), false)), vec4<bool>(true, true, true, any(vec2<bool>(false, true)))), 2147483647i, arg_0.xz);
    var var_1 = Struct_4(Struct_1(~abs(vec2<u32>(45798u, global2.x)) << ((firstTrailingBit(global2.yw) >> (abs(vec2<u32>(global2.x, u_input.d.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), !select(vec4<bool>(true, all(global0[_wgslsmith_index_u32(global2.x, 31u)]), true, all(vec3<bool>(true, false, false))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), (arg_0.x == 1147f) || true));
    global1 = array<vec3<f32>, 13>();
    let var_2 = 18799u;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - var_0.a.x) + _wgslsmith_f_op_f32(999f - var_0.a.x)))), 1000f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(floor(var_0.a.x))), -1383f);
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-775f, 2361f, arg_1.x, arg_1.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -579f, _wgslsmith_f_op_f32(f32(-1f) * -1272f), _wgslsmith_f_op_f32(-1678f * -1143f))) + vec4<f32>(-1175f, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x)));
    global1 = array<vec3<f32>, 13>();
    let var_1 = 1u;
    let var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -u_input.b, -u_input.b), abs(_wgslsmith_add_i32(1i, (u_input.b.x << (global2.x % 32u)) & u_input.e)), -1i);
    var var_3 = global2.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -217f), 451f)));
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = firstTrailingBit(u_input.b);
    let var_1 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1230f * -980f), _wgslsmith_f_op_f32(f32(-1f) * -345f)))) - -418f)));
    let var_2 = ~0u;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_6(global2.xzy, _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, var_1)), select(vec2<i32>(0i, -27542i), ~u_input.b.zx, arg_0 == var_0.x))), vec2<bool>(true, select(any(vec4<bool>(false, true, false, false)), true, true)))), -1067f, var_1, _wgslsmith_f_op_f32(-var_1));
    global2 = countOneBits(~(~(~u_input.c))) >> (vec4<u32>(~var_2 >> (var_2 % 32u), ~_wgslsmith_dot_vec2_u32(func_5(true, Struct_4(Struct_1(vec2<u32>(54469u, var_2)), vec4<bool>(true, false, false, false)), arg_0, vec2<f32>(var_1, var_1)).xy, _wgslsmith_sub_vec2_u32(global2.xz, vec2<u32>(u_input.c.x, 29453u))), 60149u, global2.x) % vec4<u32>(32u));
    return Struct_4(Struct_1(func_5(all(vec2<bool>(true, true)), Struct_4(Struct_1(u_input.c.zz), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false)), -abs(u_input.e), _wgslsmith_f_op_vec2_f32(var_3.ww * var_3.wy)).yx), select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), !(global2.x >= 4294967295u)), _wgslsmith_clamp_i32(select(u_input.a, u_input.b.x, true), -u_input.a, u_input.a) <= _wgslsmith_mod_i32(firstTrailingBit(var_0.x), firstLeadingBit(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.d;
    let var_0 = func_1(-u_input.e);
    let var_1 = func_1(u_input.b.x);
    global1 = array<vec3<f32>, 13>();
    global0 = array<vec3<bool>, 31>();
    let var_2 = Struct_5(global1[_wgslsmith_index_u32(global2.x ^ var_0.a.a.x, 13u)]);
    let var_3 = var_2;
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d & u_input.c));
}

