struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<f32>, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    global1 = array<vec2<f32>, 11>();
    global1 = array<vec2<f32>, 11>();
    let var_0 = arg_1.a;
    global0 = arg_1;
    global1 = array<vec2<f32>, 11>();
    return ~4903u ^ ~(reverseBits(_wgslsmith_mult_u32(1u, 41707u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 38780u, 1u, 0u)));
}

fn func_2() -> Struct_2 {
    var var_0 = global0.a;
    var var_1 = countOneBits(_wgslsmith_clamp_u32(68573u, _wgslsmith_div_u32(func_3(-global0.a.d, Struct_2(global0.a), vec2<i32>(4989i, var_0.d) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), Struct_1(false, var_0.b, global0.a.c, 14151i)), 0u), ~(~_wgslsmith_clamp_u32(1u, 6580u, 8465u))));
    let var_2 = ~_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(12918u, 21092u)), vec2<u32>(1u, 4767u)), _wgslsmith_mult_u32(1u, 48961u)), ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 0u, 3191u, 0u), vec4<u32>(1u, 41854u, 4294967295u, 1u)), firstTrailingBit(vec4<u32>(34520u, 0u, 1u, 19359u))));
    var_1 = 1u;
    var var_3 = var_2;
    return Struct_2(Struct_1(select(_wgslsmith_mod_u32(27692u, var_2) >= _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 14631u, var_2, 50581u), vec4<u32>(0u, 65612u, 4508u, 4294967295u)), !var_0.a, true), _wgslsmith_f_op_vec2_f32(-var_0.b), select(vec2<bool>(true, true), var_0.c, all(vec4<bool>(global0.a.c.x, false, global0.a.c.x, var_0.c.x)) | true), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, 0i), vec3<i32>(global0.a.d, u_input.e, var_0.d)), 13656i)));
}

fn func_1() -> i32 {
    var var_0 = select(!vec3<bool>(!(global0.a.b.x < -533f), true, false), !vec3<bool>(all(vec4<bool>(global0.a.a, false, true, global0.a.c.x)) | true, global0.a.c.x, !all(vec4<bool>(false, false, global0.a.c.x, false))), global0.a.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b.x, global0.a.b.x) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(2352u, 0u), vec2<u32>(3750u, 0u)), 11u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1018f, 1000f)))) - global1[_wgslsmith_index_u32(~1u, 11u)]);
    let var_2 = Struct_2(global0.a);
    global0 = func_2();
    var var_3 = var_2;
    return firstTrailingBit(_wgslsmith_add_i32(-(-11192i << (1u % 32u)), u_input.c));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = -_wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(global0.a.d, 2147483647i, arg_0.d, 15843i)), ~(vec4<i32>(global0.a.d, 1i, arg_0.d, global0.a.d) ^ vec4<i32>(2147483647i, 2147483647i, -25101i, 2147483647i)), vec4<i32>(i32(-1i) * -2147483647i, u_input.b << (23935u % 32u), -var_0.a.d, _wgslsmith_div_i32(35593i, global0.a.d))) & ~select(~vec4<i32>(u_input.e, -1i, 16474i, arg_0.d), vec4<i32>(_wgslsmith_div_i32(1i, u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.d, 1i), vec2<i32>(arg_0.d, global0.a.d)), i32(-1i) * -14619i, -55644i), select(var_0.a.a || global0.a.c.x, true, !arg_0.c.x));
    let var_2 = !(!(!arg_0.c.x));
    global0 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.b.x)) + arg_0.b.x) >= var_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(func_4(Struct_1(global0.a.c.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.b.x, 1259f) * global0.a.b), vec2<bool>(global0.a.a, global0.a.c.x), func_1())), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.b)))), global0.a.c, global0.a.d));
    global1 = array<vec2<f32>, 11>();
    global0 = func_2();
    global1 = array<vec2<f32>, 11>();
    let var_1 = !vec3<bool>(false, var_0.a.c.x, !global0.a.c.x);
    var var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, global0.a.b.x, -338f, global0.a.b.x) - vec4<f32>(global0.a.b.x, var_0.a.b.x, global0.a.b.x, global0.a.b.x)))))))), vec3<u32>(~func_3(1i, func_2(), ~vec2<i32>(-2147483647i, u_input.d), var_0.a), ~1u, func_3(-var_0.a.d, func_2(), u_input.a, func_2().a)));
}

