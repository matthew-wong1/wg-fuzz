struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(0u, 0u, true), u_input.a.x), 12u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(105064u, 12u)]))))), global0[_wgslsmith_index_u32(1u, 12u)], 1205f)));
    global0 = array<f32, 12>();
    return 30446i;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = ~114745u & _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u);
    let var_2 = vec3<i32>(-10440i, func_3(), arg_1);
    var var_3 = Struct_1(-1116f, min(-(~min(vec3<i32>(-1i, -2147483647i, arg_2.x), vec3<i32>(2147483647i, -26812i, -2147483647i))), vec3<i32>(_wgslsmith_div_i32(~arg_1, reverseBits(arg_2.x)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_2.x, var_2.x), _wgslsmith_sub_i32(-1i, arg_1), arg_1), _wgslsmith_dot_vec2_i32(vec2<i32>(29362i, var_2.x), firstLeadingBit(vec2<i32>(1i, arg_2.x))))), var_2.x);
    let var_4 = _wgslsmith_mult_i32(-arg_1, _wgslsmith_sub_i32(var_3.b.x, max(var_2.x, arg_2.x)));
    return var_1;
}

fn func_1() -> i32 {
    var var_0 = all(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), 0i >= _wgslsmith_dot_vec3_i32(vec3<i32>(-12054i, -2147483647i, -2147483647i), vec3<i32>(30441i, -13607i, 0i))));
    var var_1 = global0[_wgslsmith_index_u32(~(~(~(func_2(vec4<bool>(true, false, true, true), 0i, vec2<i32>(1i, 0i), false) | u_input.a.x))), 12u)];
    global0 = array<f32, 12>();
    var var_2 = (-_wgslsmith_clamp_i32(1i, 4913i, 1i) | -2147483647i) == ((14601i >> (u_input.a.x % 32u)) | -11498i);
    global0 = array<f32, 12>();
    return 0i & (-30306i >> (~countOneBits(_wgslsmith_add_u32(1u, u_input.a.x)) % 32u));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_u32(~(1u & arg_1.b), u_input.a.x | firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1272f, -363f)), arg_1, !(!arg_1.a.x), Struct_1(_wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(arg_1.c + -505f))), countOneBits(~vec3<i32>(-44609i, arg_1.d, arg_1.d)) >> (reverseBits(vec3<u32>(35661u, arg_1.b, 24055u) | vec3<u32>(55230u, 51085u, 1u)) % vec3<u32>(32u)), _wgslsmith_clamp_i32(arg_1.d, func_1(), 0i)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)]));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(select(arg_1.c, 709f, all(select(!vec2<bool>(var_1.c, false), vec2<bool>(false, true), arg_0)))), any(!var_1.b.a.yx), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(96660u, 4294967295u, 26052u))), ~vec3<u32>(u_input.a.x, 42198u, arg_1.b)), max(~vec3<u32>(5324u, 45539u, 4294967295u), min(_wgslsmith_add_vec3_u32(vec3<u32>(50993u, 3899u, 9907u), vec3<u32>(u_input.a.x, arg_1.b, 4294967295u)), ~vec3<u32>(var_1.b.b, 4294967295u, arg_1.b)))), -(~_wgslsmith_sub_i32(countOneBits(-2147483647i), 2147483647i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.c)), var_2.a, arg_1.c)));
    var var_4 = var_2;
    return !vec4<bool>(false, arg_1.a.x, false, any(select(!arg_1.a.wy, var_1.b.a.ww, !vec2<bool>(false, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(!(u_input.a.x != u_input.a.x) == (true & any(vec3<bool>(false, false, true))), Struct_2(vec4<bool>(true, select(false, false, true), any(vec3<bool>(false, false, false)), true), countOneBits(18879u), 883f, func_1())), ~(_wgslsmith_div_u32(firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 72907u, 1u, u_input.a.x), vec4<u32>(1u, u_input.a.x, 54279u, u_input.a.x))) | abs(u_input.a.x >> (u_input.a.x % 32u))), global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 0i);
    var var_1 = _wgslsmith_div_f32(-891f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) + _wgslsmith_f_op_f32(ceil(1f)))) <= global0[_wgslsmith_index_u32(var_0.b, 12u)];
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 4294967295u, ~var_0.b), ~reverseBits(~vec3<u32>(var_0.b, var_0.b, u_input.a.x)));
    var var_3 = ~func_2(!(!var_0.a), -1i, -(~(vec2<i32>(var_0.d, var_0.d) << (var_2.yz % vec2<u32>(32u)))), false);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(1879f + var_0.c)))))), Struct_2(vec4<bool>(var_0.a.x, !(var_0.a.x | true), true, any(select(vec3<bool>(false, true, false), var_0.a.wyy, false))), u_input.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 12u)], _wgslsmith_f_op_f32(floor(var_0.c))))), -var_0.d), var_0.a.x, Struct_1(-959f, _wgslsmith_clamp_vec3_i32((vec3<i32>(var_0.d, -2147483647i, var_0.d) & vec3<i32>(-2147483647i, -1i, -1i)) & ~vec3<i32>(var_0.d, var_0.d, var_0.d), abs(-vec3<i32>(var_0.d, 1721i, -58532i)), vec3<i32>(var_0.d, select(var_0.d, var_0.d, var_0.a.x), var_0.d)), var_0.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 12u)], var_0.c)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(21365u, var_2.x), 12u)])) - var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 14855u, 3721u), var_2)), ~var_2)), 4294967295u, var_2.zz, select(_wgslsmith_mod_i32(65387i, firstTrailingBit(-7434i >> (var_4.b.b % 32u))), -2147483647i, true), var_4.e);
}

