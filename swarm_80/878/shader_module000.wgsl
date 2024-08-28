struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a ^ u_input.a, u_input.a, -21476i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, -u_input.a), u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -27852i, abs(-1i), (u_input.a << (0u % 32u)) << (21333u % 32u)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -10928i, u_input.b, u_input.a), vec4<i32>(4361i, u_input.b, 20682i, -24724i), ~vec4<i32>(-21594i, u_input.a, -2147483647i, -44i))));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(24992u, 1u), 25u)];
    let var_2 = _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_div_u32(var_1.a, 0u), var_1.a | var_1.a) << (vec2<u32>(_wgslsmith_add_u32(64498u, var_1.a), _wgslsmith_sub_u32(109755u, 0u)) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~(vec2<u32>(var_1.a, 1u) ^ vec2<u32>(var_1.a, 1u)), ~abs(vec2<u32>(var_1.a, var_1.a))), ~select(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<bool>(true, false)) & vec2<u32>(56279u, abs(var_1.a))));
    let var_3 = -37724i;
    return min(1u >> (0u % 32u), var_1.a);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(func_3(), 25u)];
    var_0 = Struct_1(select(var_0.a, 0u, !any(vec2<bool>(true, true)) & ((arg_1 && true) | false)));
    var var_1 = var_0.a;
    let var_2 = 1i;
    global0 = array<Struct_1, 25>();
    return Struct_2(arg_1 && select(arg_1, select(true, true, all(vec4<bool>(arg_1, true, arg_1, arg_1))), true), Struct_1(var_0.a), true, _wgslsmith_mod_vec3_u32(firstTrailingBit(~(~vec3<u32>(26759u, 8801u, 0u))), vec3<u32>(~var_0.a, 0u, select(arg_0 >> (var_0.a % 32u), var_0.a, false && arg_1))), vec2<u32>(var_0.a, abs(firstTrailingBit(reverseBits(48512u)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    global0 = array<Struct_1, 25>();
    global1 = u_input.b;
    global1 = _wgslsmith_clamp_i32(-u_input.a, -22645i, reverseBits(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-1i, u_input.a) << (arg_3.e % vec2<u32>(32u)))) & 1i);
    global1 = u_input.b;
    var var_0 = func_2(arg_2.a, arg_3.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1043f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1461f, -2106f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(544f, _wgslsmith_div_f32(-321f, -1000f), true)) + 1202f)))).b;
    return vec2<bool>(false, any(select(select(!vec4<bool>(arg_1, false, arg_3.a, false), !vec4<bool>(arg_1, arg_3.c, false, arg_1), !vec4<bool>(arg_1, false, arg_3.a, false)), vec4<bool>(u_input.a < 96i, select(false, arg_1, false), true, arg_3.c), vec4<bool>(arg_3.c, true, any(vec3<bool>(arg_3.a, false, arg_1)), true))));
}

fn func_1() -> vec4<u32> {
    let var_0 = all(select(func_4(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 25u)], true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4927u, 55584u, 37732u), ~vec3<u32>(50496u, 4294967295u, 25376u)), 25u)], func_2(1u, true, -2418f)), select(vec2<bool>(true, true), func_4(Struct_1(1u), false, func_2(4294967295u, false, -302f).b, Struct_2(true, global0[_wgslsmith_index_u32(0u, 25u)], true, vec3<u32>(17007u, 0u, 0u), vec2<u32>(1u, 1u))), false), !(!all(vec2<bool>(true, false)))));
    var var_1 = func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(min(4294967295u, 1u), _wgslsmith_add_u32(~4294967295u, 1u), ~(~1u)), ~(~func_2(4294967295u, true, -437f).d)), all(!func_4(Struct_1(0u), var_0, func_2(1u, var_0, 321f).b, func_2(0u, true, -1071f))), -2143f).b;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1270f * _wgslsmith_f_op_f32(-216f + 945f)), 621f)));
    var var_3 = Struct_2(true, Struct_1(var_1.a), var_0, vec3<u32>(~_wgslsmith_div_u32(var_1.a << (var_1.a % 32u), ~var_1.a), ~70761u, reverseBits(var_1.a)), ~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(30274u, var_1.a), select(vec2<u32>(0u, var_1.a), vec2<u32>(var_1.a, var_1.a), false))));
    var var_4 = _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(61047u, 25632u, 0u)), var_3.d, var_3.d);
    return vec4<u32>(var_1.a ^ ~var_3.e.x, 10200u, firstLeadingBit(~0u), var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    global0 = array<Struct_1, 25>();
    let var_1 = 36489u;
    var var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(~select(max(vec4<u32>(var_0, 55189u, var_1, 4159u), vec4<u32>(7142u, var_1, var_0, var_1)), vec4<u32>(1u, var_0, var_1, 67444u), vec4<bool>(true, true, true, true)), ~func_1()), var_0, func_2(2103u, all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1198f - 1000f), -645f)))).b.a, _wgslsmith_mod_u32(abs(var_0), (func_2(var_0, false, -867f).e.x >> (_wgslsmith_sub_u32(var_0, 8371u) % 32u)) << (_wgslsmith_mod_u32(22092u, _wgslsmith_add_u32(var_0, var_1)) % 32u)));
    global0 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-893f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -436f))), _wgslsmith_f_op_f32(trunc(-373f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1106f)) + -590f))));
}

