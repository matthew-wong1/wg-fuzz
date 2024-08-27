struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 5>;

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.x - 721f), arg_3.x));
    global0 = array<f32, 32>();
    var var_0 = global4[_wgslsmith_index_u32(~6768u, 10u)];
    global0 = array<f32, 32>();
    var var_1 = !select(vec2<bool>(false, (u_input.a.x == 52110i) == !arg_0), !vec2<bool>(true, arg_2), arg_0 && all(!vec3<bool>(true, arg_0, false)));
    return select(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(var_1.x, true)))), select(vec2<bool>(arg_0, _wgslsmith_f_op_f32(floor(arg_3.x)) == _wgslsmith_f_op_f32(f32(-1f) * -135f)), vec2<bool>(var_1.x || !arg_2, var_1.x), true), arg_0);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-676f * -1259f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.x, 32u)]))), -577f));
    let var_1 = -2147483647i;
    var var_2 = Struct_1(~arg_1 & arg_1);
    var var_3 = !any(func_3(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false)), Struct_1(arg_1), all(vec3<bool>(true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-726f)), -1355f, 1f, _wgslsmith_f_op_f32(sign(380f)))));
    global2 = ~(~18988u);
    return _wgslsmith_sub_u32(u_input.b, var_2.a.x);
}

fn func_4(arg_0: f32) -> u32 {
    global1 = -534f;
    let var_0 = global4[_wgslsmith_index_u32(u_input.b, 10u)];
    var var_1 = _wgslsmith_div_u32(1u, ~1u);
    var var_2 = vec4<bool>(all(vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), false, !all(vec3<bool>(true, false, true)), any(func_3(true, Struct_1(vec2<u32>(4294967295u, u_input.b)), false, vec4<f32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], arg_0))))), false, any(!vec4<bool>(true, false, false, any(vec4<bool>(false, false, false, false)))), any(vec3<bool>(any(vec2<bool>(true, false)), !any(vec4<bool>(true, false, false, true)), true)));
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)])), global0[_wgslsmith_index_u32(var_0.a.x >> ((4294967295u ^ (0u >> (u_input.b % 32u))) % 32u), 32u)]))));
    return var_0.a.x;
}

fn func_1() -> Struct_1 {
    global4 = array<Struct_1, 10>();
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(func_4(global0[_wgslsmith_index_u32(abs(func_2(vec4<i32>(28901i, u_input.a.x, u_input.a.x, u_input.c), vec2<u32>(13803u, u_input.b), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)]))), 32u)]), ~_wgslsmith_add_u32(u_input.b, 1u) >> (~(~u_input.b) % 32u), select(~48492u, _wgslsmith_add_u32(~u_input.b, ~u_input.b), true), ~u_input.b << (_wgslsmith_mult_u32(u_input.b, 1u) % 32u)), _wgslsmith_mod_vec4_u32(~select(~vec4<u32>(22017u, u_input.b, u_input.b, u_input.b), ~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), true), ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 49816u, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<u32>(4294967295u, u_input.b, 21812u, u_input.b))));
    global1 = global0[_wgslsmith_index_u32(7816u, 32u)];
    let var_2 = _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(reverseBits(min(var_1.x, 1u))), ~u_input.b), 32u)]));
    return Struct_1(vec2<u32>(0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(69518u, 4294967295u, 2658u, 78760u), ~vec4<u32>(u_input.b, 1u, u_input.b, 0u))));
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = global4[_wgslsmith_index_u32(abs(~(~1u)), 10u)];
    let var_1 = global4[_wgslsmith_index_u32(0u, 10u)];
    global2 = var_0.a.x;
    return max(vec3<i32>(select(-1i, _wgslsmith_mult_i32(-11382i, u_input.a.x), select(true, true, true)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.c, -1i, 1i), vec3<i32>(-17809i, 0i, u_input.c)), ~vec3<i32>(-2147483647i, u_input.a.x, u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(6031i, u_input.c, -13971i) << (vec3<u32>(5179u, arg_0.a.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-4884i, u_input.c, -10902i), vec3<i32>(u_input.a.x, u_input.c, 47027i)))), firstTrailingBit(~vec3<i32>(0i, -2861i, u_input.a.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, -13485i), vec3<i32>(u_input.c, -47947i, u_input.c)))) | _wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, -56878i), vec3<i32>(-38537i, -54985i, u_input.c)), vec3<i32>(u_input.a.x, u_input.c, u_input.a.x))), vec3<i32>(min(-u_input.c, _wgslsmith_add_i32(0i, u_input.c)), ~(~(-68772i)), -32009i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1i), -(~vec3<i32>(1i, 52422i, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(~max(~select(vec3<i32>(u_input.c, -69326i, u_input.a.x), vec3<i32>(-35281i, -1405i, u_input.c), true), func_5(func_1())), vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_clamp_i32(1i, 2147483647i, -20301i), -_wgslsmith_add_i32(0i, u_input.c)), -1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.b, 35769u, 45213u)), ~countOneBits(~vec3<u32>(4294967295u, 1u, 58679u))), ~vec4<u32>(~7237u, 11277u, max(_wgslsmith_add_u32(u_input.b, u_input.b), min(5449u, 4294967295u)), u_input.b), 0i);
}

