struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: vec2<f32> = vec2<f32>(854f, 885f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    return countOneBits((~(global1.a | -2147483647i) | 1i) | _wgslsmith_add_i32(countOneBits(_wgslsmith_add_i32(global1.a, -1i)), u_input.b.x));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global1 = Struct_1(~(i32(-1i) * -2147483647i), false);
    global0 = arg_0.x;
    let var_0 = reverseBits(vec4<u32>(0u, ~_wgslsmith_clamp_u32(1u, u_input.c, u_input.c), 81830u, ~(~37313u)) << (((abs(vec4<u32>(u_input.c, 0u, 1u, 4294967295u)) | (vec4<u32>(u_input.c, u_input.c, u_input.c, 90255u) | vec4<u32>(u_input.c, u_input.c, 1u, u_input.c))) ^ vec4<u32>(u_input.c, min(u_input.c, u_input.c), 74549u, u_input.c)) % vec4<u32>(32u)));
    var var_1 = Struct_2(countOneBits(vec3<i32>(func_3(), 1i, 2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, u_input.a.x, -2147483647i), u_input.b))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a, 1i), u_input.a) << (_wgslsmith_div_u32(12631u, var_0.x) % 32u), global1.a), global1.b), countOneBits(u_input.c) & ~((0u << (u_input.c % 32u)) >> (_wgslsmith_sub_u32(1u, var_0.x) % 32u)), ~4294967295u);
    let var_2 = var_1.b;
    return true;
}

fn func_1() -> u32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(global2.x - -263f);
    global2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.x, _wgslsmith_f_op_f32(select(global2.x, -101f, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, 469f)))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -213f))), -1000f)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    global0 = -1469f;
    return 24539u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x)));
    let var_1 = -56032i;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1000f, global2.x)))) + global2.x), 2070f, global2.x)));
    var var_3 = ~abs(~reverseBits(func_1()));
    let var_4 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, 0u), _wgslsmith_mult_u32(1u, u_input.c)) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, 101795u) << (firstLeadingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)) % vec4<u32>(32u)), ~(~vec4<u32>(59387u, 4294967295u, u_input.c, 0u))), 4294967295u);
    let var_5 = ~((select(max(vec2<u32>(0u, u_input.c), vec2<u32>(var_4, 4294967295u)), ~vec2<u32>(var_4, 4294967295u), all(vec4<bool>(false, global1.b, true, global1.b))) | vec2<u32>(var_4, countOneBits(42063u))) ^ vec2<u32>(0u, 1u));
    global1 = Struct_1(global1.a, global1.b);
    let var_6 = all(select(!vec2<bool>(false, any(vec4<bool>(global1.b, global1.b, global1.b, false))), select(!select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, true), vec2<bool>(global1.b, global1.b)), select(vec2<bool>(true, true), select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.b), true), !vec2<bool>(global1.b, false)), true), select(vec2<bool>(!global1.b, true), vec2<bool>(!global1.b, false), vec2<bool>(global1.b, true))));
    var var_7 = vec2<bool>(true, (12520u & ~select(69589u, var_5.x, var_6)) != reverseBits(~(0u >> (u_input.c % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_2 * vec3<f32>(global2.x, 749f, -478f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_2.x, 1138f, true))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(141f)), _wgslsmith_f_op_f32(134f + 2378f), var_7.x && var_7.x)), _wgslsmith_f_op_f32(floor(global2.x))))), _wgslsmith_mult_u32(~func_1(), countOneBits(var_4)), var_5, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(var_1), 1i), abs(global1.a << (1u % 32u)), u_input.a.x)));
}

