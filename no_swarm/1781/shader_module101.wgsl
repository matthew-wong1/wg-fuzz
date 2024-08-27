struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true));

var<private> global3: u32 = 8484u;

var<private> global4: vec4<u32> = vec4<u32>(25597u, 1u, 1u, 47591u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    global4 = vec4<u32>(1u, u_input.a, ~firstTrailingBit(~(~0u)), 1u ^ global4.x);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-478f, 346f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(746f + -1099f)), 1287f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-633f))))), _wgslsmith_f_op_f32(select(151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-700f + -596f) - _wgslsmith_f_op_f32(abs(347f))) * _wgslsmith_f_op_f32(round(1f))), true)));
    global2 = array<vec4<bool>, 12>();
    global4 = countOneBits(vec4<u32>(global1.x, _wgslsmith_div_u32(~50196u, ~61073u) | global1.x, global4.x, global4.x));
    let var_1 = ~((vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.c)) << (select(global1.xy, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, global4.x), global4.wz), true & any(vec3<bool>(arg_0.x, false, false))) % vec2<u32>(32u)));
    return vec4<u32>(~_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(u_input.b, global1.x)), _wgslsmith_dot_vec3_u32(abs(global1.yxw), global1.zyy & global1.xxx)), 0u, ~global1.x, ~global1.x);
}

fn func_2(arg_0: u32) -> vec2<u32> {
    let var_0 = select(firstTrailingBit(-vec3<i32>(u_input.c, ~u_input.c, u_input.c)), vec3<i32>(64584i ^ ~u_input.c, 1i, 2147483647i), !vec3<bool>(true || (global1.x > global1.x), any(vec2<bool>(false, false)), true & (u_input.c > u_input.c)));
    global1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.d, u_input.d, 0u, 14414u)) | _wgslsmith_add_vec4_u32(vec4<u32>(global4.x, global4.x, 1210u, global1.x) | vec4<u32>(4636u, global1.x, global1.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global4.x, 0u, global1.x), vec4<u32>(36310u, global4.x, 41431u, 76498u))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, arg_0, 38598u, global4.x), ~vec4<u32>(1u, 9438u, arg_0, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.x, u_input.d, 1u), vec4<u32>(global4.x, arg_0, global4.x, 1u)), true)), abs(func_3(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
    global4 = ~(select(~vec4<u32>(global4.x, 1u, 52989u, 4294967295u), firstTrailingBit(vec4<u32>(11120u, 25125u, global1.x, global1.x)), global2[_wgslsmith_index_u32(1u, 12u)]) | ~countOneBits(vec4<u32>(arg_0, u_input.e, 0u, u_input.e))) << (abs(select(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, 23650u, 4294967295u, global4.x)), countOneBits(vec4<u32>(global4.x, 4294967295u, u_input.a, 11053u))), _wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, 40539u, arg_0, global4.x), ~vec4<u32>(arg_0, arg_0, 4294967295u, 1u)), select(select(global2[_wgslsmith_index_u32(arg_0, 12u)], global2[_wgslsmith_index_u32(global1.x, 12u)], vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), !global2[_wgslsmith_index_u32(global1.x, 12u)]))) % vec4<u32>(32u));
    global4 = vec4<u32>(_wgslsmith_mult_u32(~select(arg_0, 1u, all(vec3<bool>(false, false, false))), global4.x), func_3(vec3<bool>(true, min(70768u, global1.x) >= arg_0, all(vec3<bool>(true, false, false)))).x, arg_0, reverseBits(~select(~1u, max(global1.x, 63267u), global4.x == 0u)));
    let var_1 = max(-(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, -2147483647i, -52037i, u_input.c), min(vec4<i32>(u_input.c, var_0.x, 9423i, -48031i), vec4<i32>(var_0.x, -35128i, -2147483647i, var_0.x))) & vec4<i32>(1i, -u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 53057i, -2147483647i), vec4<i32>(-39060i, -1i, -10327i, 19978i)), ~(-55236i))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.c, -2147483647i, 23314i) | vec4<i32>(-2147483647i, var_0.x, 0i, u_input.c), abs(vec4<i32>(5136i, u_input.c, u_input.c, var_0.x))) ^ countOneBits(~vec4<i32>(48367i, u_input.c, var_0.x, 18578i)), _wgslsmith_mult_vec4_i32(vec4<i32>(3041i, var_0.x, u_input.c, 71660i), vec4<i32>(_wgslsmith_mult_i32(7754i, var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), var_0.zy), -16488i, _wgslsmith_add_i32(u_input.c, var_0.x)))));
    return ~max(global1.wz, vec2<u32>(global4.x, 1648u << (global4.x % 32u))) | select(global1.yy, ~vec2<u32>(reverseBits(global4.x), global4.x), true);
}

fn func_1() -> f32 {
    let var_0 = ~func_2(~global1.x);
    var var_1 = -min(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, 3380i)) >> (~(~30006u) % 32u), 0i);
    let var_2 = !select(global2[_wgslsmith_index_u32(~(~var_0.x), 12u)], select(vec4<bool>(true, true, false, global1.x < global4.x), !select(vec4<bool>(false, true, true, true), global2[_wgslsmith_index_u32(0u, 12u)], false), select(any(vec4<bool>(true, true, true, false)), true, false)), false);
    global0 = -46500i;
    global3 = func_3(!vec3<bool>(any(vec2<bool>(var_2.x, true)), true, false)).x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(step(2245f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2372f - -1000f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1614f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -1681f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f) * _wgslsmith_f_op_f32(363f + 554f))))));
    let var_1 = Struct_1(~(-(~u_input.c)) >> (func_2(~func_2(4294967295u).x).x % 32u), select(select(vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(var_0.x - -494f) == _wgslsmith_f_op_f32(floor(var_0.x))), vec3<bool>((u_input.c != u_input.c) || true, true, true), false), global4.x);
    let var_2 = Struct_1(0i, !vec3<bool>(!all(global2[_wgslsmith_index_u32(4294967295u, 12u)]), true, select(1u, 48650u, true) > ~4294967295u), 85580u);
    let var_3 = Struct_1(abs(max(var_2.a, -14411i)), !var_1.b, ~4294967295u);
    let var_4 = var_2;
    global4 = (abs(firstTrailingBit(vec4<u32>(4294967295u, 0u, 4294967295u, 39419u))) & vec4<u32>(46795u, func_3(vec3<bool>(var_2.b.x, var_4.b.x, false)).x >> (~4294967295u % 32u), _wgslsmith_clamp_u32(~var_2.c, 72214u, 1u), 135736u)) << (vec4<u32>((abs(var_1.c) ^ firstLeadingBit(0u)) | ~1u, global1.x, var_1.c, ~(~abs(18451u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(var_2.c ^ u_input.e, 4294967295u), global1.x >> (_wgslsmith_add_u32(4294967295u, max(34030u, var_4.c)) % 32u), 1u, var_4.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) + _wgslsmith_div_f32(1164f, var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -183f, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(floor(-1806f)))) * var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-251f, var_0.x, -1000f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -2112f, 1000f) + vec3<f32>(var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2174f), -1311f, _wgslsmith_f_op_f32(floor(-947f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(626f, 968f, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 771f, 509f, 592f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-816f, 950f, 338f, var_0.x), vec4<f32>(-2220f, -1084f, var_0.x, var_0.x)))), vec4<f32>(-1371f, -1130f, _wgslsmith_f_op_f32(-var_0.x), -686f), !(!var_2.b.x))), global2[_wgslsmith_index_u32(~func_3(var_3.b).x, 12u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-2850f * -1525f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(-var_0.x), all(var_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(var_0.x + 1000f), true)) - 686f))));
}

