struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global1 = Struct_2(vec3<i32>(max(1i, -global1.a.x), -47886i, -1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(471f * global1.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1921f)), -338f, global1.b.x) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(global1.b)), global1.b))), 39309u, global1.a.zz, ~firstLeadingBit(firstLeadingBit(1i)));
    let var_0 = Struct_1(vec4<bool>(!(-1i != abs(global1.a.x)), global1.c < (69255u << (~global1.c % 32u)), _wgslsmith_clamp_u32(u_input.a ^ 1u, global1.c & u_input.a, max(1u, 43874u)) <= u_input.a, 1000f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b.x + global1.b.x)))), ~(~(~(~42971u))));
    let var_1 = firstTrailingBit(-vec4<i32>(global1.a.x, global1.d.x, _wgslsmith_sub_i32(-30877i, -1i), _wgslsmith_dot_vec2_i32(global1.a.zz, global1.d))) >> (firstLeadingBit(select(vec4<u32>(u_input.a << (5147u % 32u), u_input.a & 39957u, ~var_0.b, 1u), countOneBits(vec4<u32>(var_0.b, 4294967295u, 72568u, u_input.a)), any(vec3<bool>(false, var_0.a.x, true)))) % vec4<u32>(32u));
    let var_2 = Struct_1(var_0.a, _wgslsmith_div_u32(_wgslsmith_mod_u32(~var_0.b, ~(~4294967295u)), abs(~52606u)));
    global0 = array<vec3<u32>, 16>();
    return _wgslsmith_clamp_i32(var_1.x, global1.e, global1.a.x);
}

fn func_2() -> bool {
    global0 = array<vec3<u32>, 16>();
    global0 = array<vec3<u32>, 16>();
    let var_0 = !(!(func_3() <= global1.d.x) && true);
    let var_1 = Struct_1(!select(select(!vec4<bool>(true, false, var_0, var_0), select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, true, false)), any(vec3<bool>(false, var_0, false))), vec4<bool>(true, all(vec3<bool>(true, var_0, var_0)), !var_0, global1.b.x != 107f), var_0), (~max(global1.c, 0u) ^ 0u) << (78433u % 32u));
    global0 = array<vec3<u32>, 16>();
    return true;
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = ~(~(~(~global1.c)));
    let var_1 = global1.e;
    let var_2 = Struct_1(vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), func_2(), true || !select(true, false, false), true), 1u);
    let var_3 = Struct_2(vec3<i32>((global1.d.x | _wgslsmith_add_i32(global1.a.x, global1.e)) & _wgslsmith_mod_i32(13796i, 1i ^ global1.d.x), ~(-9631i), 52258i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1742f, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(global1.b.x - arg_1)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), -2161f) * _wgslsmith_f_op_vec4_f32(abs(global1.b))), abs(global1.c), vec2<i32>(0i, global1.d.x >> (global1.c % 32u)), ~global1.d.x);
    global0 = array<vec3<u32>, 16>();
    return Struct_1(vec4<bool>(true, true, any(var_2.a.wzz), true), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 16>();
    var var_0 = 0i;
    var var_1 = func_1(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, 537f)));
    var_1 = Struct_1(select(var_1.a, !vec4<bool>(true, true, any(vec2<bool>(var_1.a.x, var_1.a.x)), !var_1.a.x), var_1.a.x), ~countOneBits(_wgslsmith_div_u32(global1.c, func_1(800f, 2663f).b)));
    var_1 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x + global1.b.x), global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_div_f32(global1.b.x, -394f)))), 389f)), -180f);
    var var_2 = Struct_2(vec3<i32>(global1.a.x, -50924i, -46840i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(global1.b)), global1.b, !var_1.a.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global1.c, global1.c, var_1.b, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1.c, u_input.a, global1.c) ^ vec4<u32>(u_input.a, 1u, global1.c, 83815u), ~vec4<u32>(var_1.b, global1.c, 9970u, var_1.b))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.c, var_1.b, 20397u) | global0[_wgslsmith_index_u32(global1.c, 16u)], global0[_wgslsmith_index_u32(u_input.a, 16u)]), vec3<u32>(u_input.a, 4294967295u, 1772u) | vec3<u32>(4294967295u, global1.c, u_input.a))), global1.a.xy, -8447i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.b.yz));
}

