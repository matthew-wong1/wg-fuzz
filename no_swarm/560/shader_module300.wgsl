struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-39587i, 2147483647i, 1i, -160i), false);

var<private> global1: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(4294967295u, 11711u), vec2<u32>(1u, 38290u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 40283u), vec2<u32>(4294967295u, 48173u), vec2<u32>(60971u, 75111u), vec2<u32>(1u, 38207u), vec2<u32>(0u, 4294967295u));

var<private> global2: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> vec2<bool> {
    global0 = Struct_1(vec4<i32>(-global0.a.x, 2152i, arg_1.x ^ 1i, ~_wgslsmith_clamp_i32(-arg_1.x, 0i, u_input.c)), false);
    global1 = array<vec2<u32>, 8>();
    global2 = array<vec3<bool>, 30>();
    var var_0 = i32(-1i) * -8666i;
    global2 = array<vec3<bool>, 30>();
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    var var_0 = Struct_1(vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.c, global0.a.x, -1i, global0.a.x)), select(global0.b && all(func_3(false, vec3<i32>(-39509i, u_input.c, 0i))), true, _wgslsmith_div_u32(~u_input.b, countOneBits(u_input.b)) <= _wgslsmith_dot_vec2_u32(reverseBits(global1[_wgslsmith_index_u32(u_input.a, 8u)]), global1[_wgslsmith_index_u32(4294967295u, 8u)])));
    var_0 = Struct_1(var_0.a | ((var_0.a >> (vec4<u32>(u_input.a, 47023u, 0u, 30829u) % vec4<u32>(32u))) << (vec4<u32>(u_input.a ^ u_input.a, u_input.a, 0u, u_input.a) % vec4<u32>(32u))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -922f) * _wgslsmith_f_op_f32(step(-2353f, -1230f))) > -530f));
    let var_1 = Struct_3(~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 4294967295u), ~global1[_wgslsmith_index_u32(4294967295u, 8u)], vec2<u32>(u_input.a, 0u))), vec2<f32>(1528f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1968f - -409f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1777f)))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1696f) * _wgslsmith_f_op_f32(select(-1000f, -767f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1482f))));
    var_0 = Struct_1(var_0.a << ((~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 21573u, 19241u, 1u), vec4<u32>(var_1.a.x, 4294967295u, 4294967295u, var_1.a.x)) & vec4<u32>(~4294967295u, 1u, var_1.a.x, 27226u | var_1.a.x)) % vec4<u32>(32u)), global0.b || true);
    var var_2 = Struct_3(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, ~u_input.b) | (0u << ((u_input.a ^ 0u) % 32u)), 8u)]), vec2<f32>(_wgslsmith_f_op_f32(-362f + _wgslsmith_f_op_f32(913f + var_1.c.x)), var_1.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, var_1.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(912f, var_1.b.x), _wgslsmith_f_op_f32(floor(-1829f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c + var_1.b))));
    return ~2147483647i;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<f32> {
    let var_0 = select(firstTrailingBit(_wgslsmith_sub_i32(41220i, global0.a.x) << (4294967295u % 32u)) <= func_2(abs(global0.a)), !(arg_1.x <= ~1u), true);
    global0 = Struct_1(_wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.x, -11352i, u_input.c, u_input.c), vec4<i32>(global0.a.x, global0.a.x, 0i, -11040i) ^ vec4<i32>(global0.a.x, u_input.c, 19894i, u_input.c))), ~vec4<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), ~u_input.c, 1i, -20142i), global0.a | global0.a), !all(vec4<bool>(false, var_0, var_0, true)) || any(!(!vec4<bool>(var_0, var_0, true, false))));
    global0 = Struct_1(global0.a, -6582i <= (-(u_input.c >> (26583u % 32u)) ^ u_input.c));
    let var_1 = _wgslsmith_f_op_f32(309f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(411f, -908f) - 1f));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1602f, _wgslsmith_f_op_f32(var_1 * var_1)) - -1000f)), var_1);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3) -> vec4<u32> {
    global2 = array<vec3<bool>, 30>();
    var var_0 = Struct_1(global0.a, global0.b);
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_sub_u32(~1u, 3996u), 4294967295u, min(min(~36933u, abs(arg_0.x)), arg_2.a.x), arg_2.a.x >> (u_input.a % 32u)));
    var var_2 = Struct_2(vec4<u32>(~(abs(var_1.a.x) >> (_wgslsmith_mod_u32(63038u, u_input.a) % 32u)), countOneBits(1u), var_1.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1.a.zxz, vec3<u32>(arg_0.x, u_input.a, 59303u)), arg_0.x | arg_0.x) & ~(arg_2.a.x << (1u % 32u))));
    var var_3 = global0.a;
    return select(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.x, arg_0.x, arg_0.x, var_1.a.x), reverseBits(var_1.a))), select(~var_2.a ^ var_1.a, vec4<u32>(var_2.a.x, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(var_2.a.x, 8u)], vec2<u32>(4294967295u, 27467u)) ^ var_2.a.x, u_input.a ^ min(arg_2.a.x, var_2.a.x), 11675u), vec4<bool>(all(vec3<bool>(var_0.b, var_0.b, false)) & false, true, (var_0.b && global0.b) && any(vec3<bool>(var_0.b, var_0.b, true)), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 30>();
    global2 = array<vec3<bool>, 30>();
    let var_0 = Struct_2(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 50427u, u_input.a, 6731u), vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 3051u, u_input.b), vec4<u32>(u_input.a, 47105u, u_input.a, u_input.b)), !vec4<bool>(true, global0.b, global0.b, global0.b)), ~(~vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.a))), func_4(~(vec3<u32>(u_input.a, u_input.b, 20211u) & vec3<u32>(1845u, u_input.b, 33486u)), 895f, Struct_3(~global1[_wgslsmith_index_u32(u_input.a, 8u)], vec2<f32>(193f, 477f), _wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), global1[_wgslsmith_index_u32(12556u, 8u)]))))));
    var var_1 = any(vec3<bool>(true, global0.b, true));
    var var_2 = Struct_3(max(min(select(~global1[_wgslsmith_index_u32(u_input.b, 8u)], vec2<u32>(var_0.a.x, u_input.b), global0.b), ~abs(vec2<u32>(u_input.b, 33333u))), ~(vec2<u32>(4623u, var_0.a.x) ^ reverseBits(vec2<u32>(u_input.b, 16143u)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2723f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(!vec2<bool>(true, global0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1304f, -312f, global0.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1008f - 558f) - -1739f))), vec2<f32>(_wgslsmith_f_op_f32(-1f), -421f));
    let x = u_input.a;
    s_output = StorageBuffer(-(~func_2(global0.a)));
}

