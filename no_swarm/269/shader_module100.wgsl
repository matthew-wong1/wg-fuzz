struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: array<u32, 25>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> bool {
    global1 = array<u32, 25>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1870f);
    let var_1 = Struct_2(select(!(_wgslsmith_f_op_f32(select(var_0, var_0, true)) < _wgslsmith_f_op_f32(select(arg_1.e, -1288f, arg_2))), true, arg_0));
    var var_2 = u_input.a;
    let var_3 = ~vec3<i32>(1i, -(_wgslsmith_dot_vec2_i32(vec2<i32>(-36616i, arg_3.x), arg_3.yx) >> (reverseBits(u_input.a) % 32u)), _wgslsmith_add_i32(arg_3.x, -(2147483647i >> (global1[_wgslsmith_index_u32(4294967295u, 25u)] % 32u))));
    return false;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(Struct_2(func_3(true, Struct_1(vec4<i32>(-99259i, 2147483647i, 1i, 919i), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(755f, -1375f))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], 48956u), vec3<u32>(global1[_wgslsmith_index_u32(61492u, 25u)], u_input.a, global1[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_f_op_f32(-467f + 544f)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), firstLeadingBit(-vec3<i32>(-24114i, 1i, 0i)))));
    var var_1 = vec2<f32>(149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(298f - -1077f), _wgslsmith_f_op_f32(step(1000f, 1625f)))))));
    var var_2 = -2147483647i;
    var_2 = -(select(1i, _wgslsmith_div_i32(1i, 1i), true) ^ 91559i);
    let var_3 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 25u)], 25u)] | (u_input.a | global1[_wgslsmith_index_u32(u_input.a, 25u)])), ~abs(select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(39379u, u_input.a), vec2<bool>(false, var_0.a.a))), !vec2<bool>(true, var_0.a.a || true)), ~(~(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], 30864u))) ^ select(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(max(41760u, 73810u), 1u), all(vec3<bool>(var_0.a.a, true, var_0.a.a)) || false));
    return Struct_2(false);
}

fn func_1() -> Struct_4 {
    let var_0 = func_2();
    var var_1 = global1[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 25u)], 25u)], u_input.a) | vec4<u32>(u_input.a, 76568u, u_input.a, global1[_wgslsmith_index_u32(42991u, 25u)])), ~(~vec4<u32>(u_input.a, 7300u, 7332u, 1u))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(u_input.a), 4294967295u, u_input.a ^ 15495u), 25u)], 25948u), _wgslsmith_clamp_u32(max(max(4294967295u, global1[_wgslsmith_index_u32(u_input.a, 25u)]) << (u_input.a % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 67500u)), _wgslsmith_add_u32(1u, 6643u))), u_input.a, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(9745u, 0u), 25u)], 0u), global1[_wgslsmith_index_u32(u_input.a, 25u)]), 25u)])), 25u)];
    global1 = array<u32, 25>();
    var var_2 = -_wgslsmith_mult_i32(-select(-1i, -1i, true), abs(1i)) & (-2147483647i << (_wgslsmith_add_u32(u_input.a, ~firstLeadingBit(u_input.a)) % 32u));
    let var_3 = global0[_wgslsmith_index_u32(abs(29266u), 30u)];
    return Struct_4(vec2<bool>(true, !(!select(var_0.a, var_3.a.a, var_0.a))), _wgslsmith_sub_i32(i32(-1i) * -72208i, 0i));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> Struct_5 {
    global0 = array<Struct_3, 30>();
    let var_0 = func_2();
    global0 = array<Struct_3, 30>();
    let var_1 = true;
    let var_2 = func_2();
    return Struct_5(var_2);
}

fn func_5(arg_0: Struct_5) -> Struct_5 {
    global1 = array<u32, 25>();
    let var_0 = -259f;
    let var_1 = _wgslsmith_sub_i32(reverseBits(-abs(1i)), 0i);
    global0 = array<Struct_3, 30>();
    global0 = array<Struct_3, 30>();
    return Struct_5(arg_0.a);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_5) -> Struct_5 {
    let var_0 = vec3<i32>(17441i >> (~_wgslsmith_div_u32(_wgslsmith_mod_u32(110884u, u_input.a), max(43255u, global1[_wgslsmith_index_u32(u_input.a, 25u)])) % 32u), 2147483647i, -(~_wgslsmith_div_i32(i32(-1i) * -25235i, ~(-50917i))));
    var var_1 = select(-1i & firstTrailingBit(firstLeadingBit(var_0.x >> (7583u % 32u))), reverseBits(23485i), false);
    global1 = array<u32, 25>();
    var_1 = ~(23352i & reverseBits(~var_0.x)) | ~abs(var_0.x);
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 30u)];
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-192f, 659f)) + _wgslsmith_f_op_f32(460f + -895f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(310f, -100f))), true & all(vec4<bool>(true, false, false, true)))), 403f, !any(vec2<bool>(true, true))))));
    var var_1 = func_6(Struct_2(true), func_5(func_4(func_1(), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(105418u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 25u)]), vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22979u, 25u)], 25u)], 53477u))), func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(f32(-1f) * -1010f))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~7534u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.a, 25u)], 0u), 98412u)), vec2<u32>(37735u << (0u % 32u), ~100943u) << (~abs(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), ~(~(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], 4294967295u)))));
}

