struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17>;

var<private> global1: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(84330u, 0u), vec2<u32>(5118u, 11986u), vec2<u32>(36610u, 53931u), vec2<u32>(1u, 4294967295u));

var<private> global2: f32 = 309f;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    global0 = array<vec4<f32>, 17>();
    global1 = array<vec2<u32>, 4>();
    return -min(arg_1.d.x, arg_1.c);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> i32 {
    global0 = array<vec4<f32>, 17>();
    global1 = array<vec2<u32>, 4>();
    var var_0 = ~(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)) >> (~select(_wgslsmith_add_vec4_u32(arg_1, vec4<u32>(arg_0, 0u, arg_0, u_input.c)), arg_1, true) % vec4<u32>(32u)));
    global0 = array<vec4<f32>, 17>();
    var_0 = vec4<i32>(_wgslsmith_sub_i32(max(-1i, _wgslsmith_sub_i32(~var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-10671i, var_0.x, -2147483647i), vec3<i32>(0i, var_0.x, 9964i)))), var_0.x), _wgslsmith_dot_vec2_i32((vec2<i32>(var_0.x, -2136i) << ((global1[_wgslsmith_index_u32(arg_1.x, 4u)] & vec2<u32>(arg_2.x, 32903u)) % vec2<u32>(32u))) >> ((vec2<u32>(arg_0, 0u) << (~vec2<u32>(arg_2.x, arg_0) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(~func_3(false, Struct_1(vec4<f32>(1513f, 467f, 795f, -339f), u_input.c, -1166i, vec4<i32>(var_0.x, -2147483647i, var_0.x, 1i))), var_0.x)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-(-13076i & var_0.x), 2147483647i), ~(~var_0.x)), _wgslsmith_div_i32(-66275i, ~(-(var_0.x >> (arg_0 % 32u)))));
    return _wgslsmith_clamp_i32(select(_wgslsmith_div_i32(var_0.x, -18364i), var_0.x | (_wgslsmith_add_i32(var_0.x, var_0.x) | (var_0.x ^ var_0.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), ~(-var_0.x), 35296i);
}

fn func_1() -> vec4<f32> {
    let var_0 = select(!(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, !all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), all(vec3<bool>(true, true, true)) || true, !any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_1 = Struct_3(-(~(-vec3<i32>(-73923i, -1i, -35534i))) | ~vec3<i32>(~(-39754i), -49638i, func_2(0u, vec4<u32>(0u, u_input.b, 0u, u_input.a), vec3<u32>(u_input.d, 3451u, 0u))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(28670u, 17u)])))), vec4<f32>(815f, 333f, -348f, -271f)))), ~1u, -47529i, select(-(~vec4<i32>(6312i, var_1.a.x, 848i, var_1.a.x)) >> (vec4<u32>(u_input.d, u_input.a, _wgslsmith_mod_u32(1u, u_input.d), u_input.c | u_input.d) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, 1i, -2147483647i), vec4<i32>(var_1.a.x, 1i, var_1.a.x, var_1.a.x)) & (_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, -31612i, 29540i), vec4<i32>(-2147483647i, var_1.a.x, 35787i, -6011i)) & vec4<i32>(-1i, var_1.a.x, var_1.a.x, 2147483647i)), !any(!vec3<bool>(false, true, var_0.x))));
    global2 = -939f;
    var var_3 = select(var_0.yz, var_0.xw, true);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(22713u, _wgslsmith_div_u32(u_input.d, u_input.a)), global1[_wgslsmith_index_u32(var_2.b, 4u)] ^ global1[_wgslsmith_index_u32(16869u, 4u)]), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>((_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, 14504u), u_input.d) | u_input.c) ^ ~(~u_input.b), u_input.c);
    var var_1 = vec3<i32>(-_wgslsmith_mod_i32(_wgslsmith_clamp_i32(13565i, 0i, -26359i) >> (u_input.d % 32u), -1i), abs(abs(1i)), 1i);
    global1 = array<vec2<u32>, 4>();
    let var_2 = !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    var_1 = vec3<i32>(max(_wgslsmith_add_i32(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 19074i), _wgslsmith_mod_vec2_i32(var_1.yy, var_1.xz))), 13658i), var_1.x, var_1.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(74909u & u_input.c, u_input.b, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(u_input.b, var_0.x)), select(94240u, u_input.a, var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -264f), vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x * 108f))))), -2147483647i, reverseBits(~(vec3<u32>(var_0.x, var_0.x, 4294967295u) << (vec3<u32>(1u, u_input.b, var_0.x) % vec3<u32>(32u)))) ^ vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(21186u, 1u, u_input.b), abs(vec3<u32>(0u, var_0.x, 36724u))), select(select(u_input.d, 30917u, var_2.x), ~73629u, all(vec4<bool>(false, var_2.x, var_2.x, var_2.x)))));
}

