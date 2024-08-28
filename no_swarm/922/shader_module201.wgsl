struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7>;

var<private> global1: Struct_1;

var<private> global2: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-184f))))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))) * global1.a), ~(~u_input.a.yyy));
    global0 = array<vec3<bool>, 7>();
    let var_1 = Struct_1(1869f, u_input.a.yzx);
    let var_2 = reverseBits(~vec2<u32>(1u, 1u));
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) + global2.x) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(select(922f, -586f, false)))), _wgslsmith_f_op_f32(-var_1.a)));
}

fn func_1() -> u32 {
    global2 = vec3<f32>(global2.x, global1.a, global1.a);
    let var_0 = _wgslsmith_f_op_f32(sign(-1026f));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(global2.x)), u_input.a.zwy);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + var_0), countOneBits(~(min(global1.b, vec3<i32>(global1.b.x, global1.b.x, global1.b.x)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(3919u, 3864u, u_input.d), vec3<u32>(1u, u_input.c, 19867u)) % vec3<u32>(32u)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-124f * -1847f))))), var_1.b);
    return select(~_wgslsmith_mult_u32(reverseBits(_wgslsmith_mult_u32(u_input.c, 0u)), max(u_input.c, ~1u)), _wgslsmith_add_u32(~u_input.c, 0u), func_2());
}

fn func_3(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<vec3<bool>, 7>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a, global2.x, 1283f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, -1181f, -1000f), vec3<f32>(global2.x, 477f, -813f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1589f, 354f, global2.x) + vec3<f32>(1751f, -688f, global2.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a, global2.x, global2.x))))), _wgslsmith_div_vec3_f32(vec3<f32>(256f, global2.x, global2.x), vec3<f32>(global1.a, -315f, 551f)), vec3<bool>(true, true, true))), select(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(1u, u_input.c, u_input.c)), 7u)], select(select(global0[_wgslsmith_index_u32(u_input.d, 7u)], vec3<bool>(false, false, true), true), global0[_wgslsmith_index_u32(u_input.d, 7u)], true)))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-global2.x), abs(vec3<i32>(_wgslsmith_div_i32(-38623i, _wgslsmith_mult_i32(arg_0.x, 0i)), u_input.a.x, firstLeadingBit(~arg_0.x))));
    let var_1 = u_input.d;
    let var_2 = vec4<i32>(u_input.a.x, global1.b.x, i32(-1i) * -1i, abs(u_input.b));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a, -1000f), _wgslsmith_f_op_f32(global2.x * global1.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) - _wgslsmith_div_f32(-1000f, var_0.x)))), -global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_1(global2.x, u_input.a.wzx);
    global1 = func_3(vec2<i32>(global1.b.x >> (func_1() % 32u), 30440i));
    var var_2 = !vec2<bool>(false, all(!select(vec2<bool>(false, true), vec2<bool>(var_0, true), false)));
    let var_3 = -_wgslsmith_div_vec4_i32(u_input.a | _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -11602i, global1.b.x, global1.b.x) ^ vec4<i32>(global1.b.x, u_input.b, -2147483647i, global1.b.x), countOneBits(vec4<i32>(-11198i, -3906i, global1.b.x, 1i))), -(~vec4<i32>(global1.b.x, -2147483647i, -2147483647i, 18272i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, min(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-2147483647i), global1.b.x, 26164i), abs(~var_3.zzz))));
}

