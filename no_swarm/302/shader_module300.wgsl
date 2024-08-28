struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> vec3<i32> {
    global0 = Struct_1(0u);
    let var_0 = Struct_1(firstLeadingBit(53256u ^ global0.a));
    var var_1 = global0.a >> (749u % 32u);
    let var_2 = Struct_1(abs(_wgslsmith_dot_vec3_u32((vec3<u32>(8271u, 1u, var_0.a) << (vec3<u32>(1u, var_0.a, global0.a) % vec3<u32>(32u))) ^ vec3<u32>(0u, 13617u, 4294967295u), ~(~vec3<u32>(u_input.b, global0.a, 1u)))));
    global0 = var_2;
    return vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, -27089i, 2147483647i, 0i) >> (u_input.a % vec4<u32>(32u))), max(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(1i, 1i, -2147483647i, 0i) << (u_input.a % vec4<u32>(32u))))), 1i >> (countOneBits((58754u | global0.a) ^ var_0.a) % 32u), -(~_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(2034i, 1i, 1i)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    var var_0 = any(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), vec3<bool>(true, true, true)));
    var var_1 = countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(min(9571u, arg_1.a) >> (u_input.c.x % 32u), global0.a & min(20316u, 4294967295u), arg_1.a & select(4294967295u, 4294967295u, false)), vec3<u32>(~arg_1.a & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.a, arg_1.a), u_input.c), arg_1.a, firstTrailingBit(select(global0.a, 37952u, true)))));
    let var_2 = Struct_1(_wgslsmith_mult_u32((arg_1.a & 1u) ^ 32458u, 2216u));
    global0 = Struct_1(~1u);
    var var_3 = any(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true))));
    return 17672u > (u_input.a.x & 5651u);
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    global0 = Struct_1(global0.a);
    var_0 = func_3(~(~func_2()), Struct_1(_wgslsmith_mod_u32(44285u, countOneBits(abs(global0.a)))));
    var var_1 = vec4<bool>(true, true, true, true);
    global0 = Struct_1(abs(~_wgslsmith_mult_u32(global0.a, 0u) & ~(~45169u)));
    return Struct_1(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(14167u, 4294967295u, u_input.b, u_input.d)), global0.a), global0.a));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = func_1();
    var var_0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-173f, -505f)) + _wgslsmith_f_op_f32(round(559f))) + arg_1) - _wgslsmith_f_op_f32(max(596f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-474f)), 382f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(round(arg_1)))) * arg_1))));
    global0 = arg_3;
    var var_1 = arg_1;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(u_input.d);
    global0 = func_4(~global0.a, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f - 380f)) + _wgslsmith_f_op_f32(f32(-1f) * -841f))), func_1(), Struct_1(_wgslsmith_dot_vec3_u32((vec3<u32>(global0.a, u_input.a.x, 50351u) << (u_input.c % vec3<u32>(32u))) ^ ~vec3<u32>(global0.a, u_input.a.x, 36072u), firstLeadingBit(u_input.c))));
    let var_0 = 42326i;
    var var_1 = -select(-vec4<i32>(1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(7850i, -17757i, -2147483647i, var_0), vec4<i32>(var_0, 1i, var_0, 0i)), 2147483647i), vec4<i32>(_wgslsmith_clamp_i32(var_0, -13586i, 3265i) | var_0, var_0, countOneBits(_wgslsmith_sub_i32(var_0, -10209i)), max(min(-3170i, -7819i), var_0 << (u_input.a.x % 32u))), true);
    let var_2 = func_1();
    var var_3 = Struct_1(global0.a);
    var var_4 = vec3<f32>(-1619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2344f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1463f) + -861f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-443f * 257f) - 1870f)), _wgslsmith_f_op_f32(-1f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4294967295u), ~u_input.a.zz), _wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(8197u, 1u)))));
}

