struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
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

var<private> global2: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = true;
    var var_1 = Struct_1(max(vec4<i32>(firstTrailingBit(1i), -(~global1.a.x), global1.a.x, -(~1i)), global1.a));
    global2 = ~global1.a.x;
    global1 = Struct_1(_wgslsmith_mod_vec4_i32(reverseBits(global1.a), ~vec4<i32>(2147483647i, _wgslsmith_div_i32(global1.a.x, var_1.a.x), _wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(0i, var_1.a.x, global1.a.x, 29836i)), ~(-1i))));
    global1 = Struct_1(select(-(~global1.a), vec4<i32>(-1i) * -(~var_1.a), !select(!vec4<bool>(var_0, true, false, true), select(vec4<bool>(true, false, false, var_0), vec4<bool>(true, false, var_0, var_0), vec4<bool>(false, true, true, var_0)), vec4<bool>(var_0, var_0, var_0, var_0))));
    return !var_0;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>) -> i32 {
    let var_0 = vec2<bool>(func_3(), arg_0.x);
    global2 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f))))) * _wgslsmith_f_op_f32(sign(282f)));
    let var_2 = Struct_1(global1.a);
    global1 = var_2;
    return firstLeadingBit(~_wgslsmith_mult_i32(1i, 1i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = -401f;
    global1 = arg_3;
    let var_0 = 41334u;
    let var_1 = false;
    global1 = Struct_1(vec4<i32>(select(func_2(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, true, false), var_1), !vec4<bool>(var_1, var_1, true, var_1)), 47769i, any(vec3<bool>(var_1, var_1, false))), select(_wgslsmith_mod_i32(select(arg_3.a.x, arg_1.a.x, var_1), ~arg_0.a.x), min(1i, global1.a.x), false), _wgslsmith_add_i32(~_wgslsmith_sub_i32(10369i, -7430i), _wgslsmith_clamp_i32(0i, global1.a.x, arg_3.a.x)), -15490i >> (countOneBits(min(var_0, 0u)) % 32u)));
    return var_0 ^ _wgslsmith_mod_u32(~(~1u >> (~var_0 % 32u)), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(34199u, 248u, u_input.c.x, 4294967295u), u_input.a)), ~_wgslsmith_sub_u32(var_0, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -258f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-945f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931f * 125f) + -319f))));
    var var_0 = u_input.a.xzw;
    var var_1 = Struct_1(global1.a);
    var_0 = firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(32738u, 48443u), ~(~var_0.x), 4294967295u), vec3<u32>(_wgslsmith_div_u32(func_1(Struct_1(var_1.a), Struct_1(vec4<i32>(global1.a.x, global1.a.x, var_1.a.x, -2147483647i)), Struct_1(vec4<i32>(2147483647i, -18814i, var_1.a.x, var_1.a.x)), Struct_1(vec4<i32>(global1.a.x, 6722i, 1i, 1i))), 35047u), u_input.a.x, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(-(countOneBits(_wgslsmith_dot_vec2_i32(var_1.a.zx, vec2<i32>(global1.a.x, -1i))) | _wgslsmith_div_i32(firstLeadingBit(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, 1i), vec3<i32>(12875i, 0i, var_1.a.x)))), var_1.a.x, ~vec4<u32>(4294967295u, u_input.d, u_input.c.x, select(func_1(Struct_1(global1.a), Struct_1(var_1.a), Struct_1(vec4<i32>(-1i, -1i, var_1.a.x, var_1.a.x)), Struct_1(global1.a)), ~26090u, all(vec4<bool>(false, true, false, false)))), -2147483647i, var_1.a.x);
}

