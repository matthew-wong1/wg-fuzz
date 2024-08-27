struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<f32>, 23>;

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_1(vec4<u32>(arg_1.a.x, ~arg_1.b.x, _wgslsmith_mod_u32(arg_1.a.x, ~arg_1.b.x), 1u), arg_1.b, ~(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, -41165i), vec4<i32>(34809i, 2147483647i, arg_1.c, 0i)), -u_input.a)), _wgslsmith_f_op_f32(select(arg_1.d, arg_1.d, !arg_3.x)), true);
    var var_1 = arg_1;
    var_0 = Struct_1(~arg_1.a, abs(~var_1.a.zx), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.c, 2147483647i, -2147483647i) >> (firstLeadingBit(var_0.a.xxx) % vec3<u32>(32u)), -vec3<i32>(-95i, -2147483647i, 3656i)) ^ ~(~arg_1.c >> (~var_1.a.x % 32u)), 551f, true | (_wgslsmith_f_op_f32(sign(609f)) < arg_1.d));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(abs(~(~vec2<i32>(arg_2.x, arg_1.c))), countOneBits(vec2<i32>(var_0.c, arg_1.c))), -(_wgslsmith_div_i32(2147483647i ^ var_0.c, -var_1.c) ^ (~var_1.c >> (var_1.b.x % 32u))), min((reverseBits(1i) >> (var_1.a.x % 32u)) ^ u_input.a, -25479i), var_0.c);
    let var_3 = !(true != (!all(arg_3.yw) == true));
    return ~(~arg_1.b.x);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(abs(vec4<u32>(0u, ~func_1(vec2<f32>(-1524f, 380f), Struct_1(vec4<u32>(0u, 0u, 0u, 8976u), vec2<u32>(1u, 0u), u_input.a, 1612f, false), vec2<i32>(u_input.a, u_input.a), vec4<bool>(global0.x, true, true, global0.x)), _wgslsmith_div_u32(1u, abs(4294967295u)), ~_wgslsmith_div_u32(1u, 4294967295u))), abs(firstLeadingBit(vec2<u32>(select(81189u, 27665u, global0.x), 1u))), -(~select(_wgslsmith_dot_vec3_i32(vec3<i32>(10763i, u_input.a, 55463i), vec3<i32>(u_input.a, 0i, u_input.a)), ~u_input.a, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(593f, _wgslsmith_f_op_f32(-816f - 133f))) + _wgslsmith_f_op_f32(round(1160f)))), true);
    global1 = array<vec3<f32>, 23>();
    let var_1 = u_input.a;
    var var_2 = vec2<bool>(var_0.e, global0.x);
    let var_3 = true;
    return var_0.a.x;
}

fn func_2() -> bool {
    var var_0 = Struct_1(select(vec4<u32>(23030u, func_3(), ~33441u, 1u), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(false, all(vec4<bool>(global0.x, global0.x, global0.x, false)), u_input.a != 32390i, true & global0.x)), abs(~vec2<u32>(1u, 1u)), ~_wgslsmith_add_i32(reverseBits(i32(-1i) * -2147483647i), ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-538f - 664f) + _wgslsmith_f_op_f32(max(-2134f, 654f)))))), any(!select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, false, true), global0.x), vec4<bool>(true, global0.x, false, true), !vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(~var_0.a.yxw << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.a.x, 69376u), vec3<u32>(0u, var_0.b.x, 18859u), var_0.a.xxy) % vec3<u32>(32u))), abs(vec3<u32>(0u, var_0.a.x, var_0.b.x) >> ((var_0.a.yzw << (var_0.a.yyw % vec3<u32>(32u))) % vec3<u32>(32u)))), ~firstLeadingBit(var_0.b.x)), 9u)];
    let var_2 = global2[_wgslsmith_index_u32(countOneBits(1u), 9u)];
    var var_3 = firstTrailingBit(~(-vec2<i32>(var_0.c, u_input.a)));
    var_3 = vec2<i32>(var_2.c, max(15676i, var_2.c));
    return global0.x | select(var_2.e, false, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~(vec4<i32>(i32(-1i) * -1i, u_input.a, 1i, -u_input.a) & (-vec4<i32>(-28558i, u_input.a, u_input.a, -1i) >> (vec4<u32>(1u, 36845u, 1u, 0u) % vec4<u32>(32u)))), ~(~(vec4<i32>(-1i) * -vec4<i32>(3270i, 13973i, u_input.a, -45108i))));
    let var_1 = global2[_wgslsmith_index_u32(~8954u, 9u)];
    var var_2 = ~(-(~reverseBits(select(vec4<i32>(var_0.x, -1i, var_1.c, -1i), vec4<i32>(var_1.c, 0i, var_1.c, u_input.a), vec4<bool>(global0.x, global0.x, global0.x, var_1.e)))));
    var var_3 = firstTrailingBit(0i >> (_wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(~76300u, var_1.b.x, func_1(vec2<f32>(-1824f, var_1.d), global2[_wgslsmith_index_u32(1u, 9u)], vec2<i32>(0i, var_1.c), vec4<bool>(var_1.e, true, false, false)), var_1.b.x)) % 32u));
    let var_4 = select(!select(select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, true, var_1.e, false), vec4<bool>(true, false, global0.x, var_1.e)), vec4<bool>(false, var_1.e, global0.x, global0.x), var_1.e && true), select(!vec4<bool>(true, false, global0.x, global0.x), !vec4<bool>(global0.x, var_1.e, true, global0.x), !vec4<bool>(true, false, true, global0.x)), true && global0.x), select(!vec4<bool>(u_input.a < 2147483647i, all(vec2<bool>(var_1.e, var_1.e)), true, !var_1.e), vec4<bool>(var_1.e, func_2(), false, all(vec4<bool>(global0.x, var_1.e, false, true))), select(!vec4<bool>(var_1.e, true, true, global0.x), !vec4<bool>(true, global0.x, false, var_1.e), vec4<bool>(true, true, true, true))), all(vec3<bool>(all(vec4<bool>(true, var_1.e, true, true)), any(select(vec4<bool>(false, var_1.e, global0.x, global0.x), vec4<bool>(true, global0.x, false, var_1.e), vec4<bool>(false, true, global0.x, var_1.e))), var_1.e)));
    let var_5 = _wgslsmith_clamp_vec3_u32(var_1.a.xxz, vec3<u32>(19507u | (var_1.a.x << (1u % 32u)), 81133u, firstLeadingBit(abs(var_1.b.x))) >> (vec3<u32>(var_1.b.x, ~var_1.a.x, 88334u) % vec3<u32>(32u)), var_1.a.xww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-675f, -557f, false)), -335f), var_1.d), 0u >> (~var_5.x % 32u), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(abs(var_5.x), 23u)] - vec3<f32>(-752f, -1657f, var_1.d)), reverseBits((0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_5.x, var_1.a.x, var_5.x), vec4<u32>(51168u, 30708u, 73733u, 1u))) | var_1.b.x));
}

