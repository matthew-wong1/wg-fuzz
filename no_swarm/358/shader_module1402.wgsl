struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    let var_0 = countOneBits(~(-2147483647i));
    let var_1 = arg_0.a.yz;
    let var_2 = arg_2.c.x;
    var var_3 = _wgslsmith_mult_i32(~(-1i), _wgslsmith_sub_i32(var_0 & var_0, u_input.a)) >> ((arg_2.b.a.x | arg_0.b) % 32u);
    var_3 = firstLeadingBit(-4589i);
    return var_0;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_4(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2088f)) - arg_1.x) >= _wgslsmith_f_op_f32(1f + -1257f)), ~(96964u >> (countOneBits(_wgslsmith_sub_u32(u_input.b.x, u_input.c.x)) % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1)));
    var var_2 = _wgslsmith_div_vec3_u32(u_input.b.yzw, countOneBits(_wgslsmith_add_vec3_u32(~(~vec3<u32>(28497u, arg_0, 0u)), u_input.b.wwx & vec3<u32>(var_0.b, arg_0, u_input.b.x))));
    global0 = ~_wgslsmith_mod_i32(~func_3(Struct_4(var_0.a, var_2.x), 1000f, Struct_2(vec2<f32>(506f, -383f), Struct_1(u_input.b.yyz, 1000f), vec3<f32>(var_1.x, -1000f, 2496f)), vec4<bool>(var_0.a.x, false, var_0.a.x, false)), abs(2147483647i >> (var_2.x % 32u))) & u_input.a;
    let var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(arg_2), min(arg_2, u_input.a) >> (var_0.b % 32u)), reverseBits(vec2<i32>(-4677i, u_input.a))), abs(reverseBits(abs(-2147483647i))), -13960i, 31785i);
    return Struct_3(true, var_1.x, _wgslsmith_f_op_f32(select(-2000f, -1209f, false)));
}

fn func_1() -> vec3<bool> {
    var var_0 = u_input.a;
    global0 = i32(-1i) * -_wgslsmith_clamp_i32(u_input.a, -u_input.a, _wgslsmith_sub_i32(0i, u_input.a));
    var var_1 = func_2(0u << ((_wgslsmith_dot_vec3_u32(u_input.b.xzy | u_input.b.xwz, _wgslsmith_clamp_vec3_u32(vec3<u32>(26936u, u_input.b.x, 49582u), vec3<u32>(u_input.b.x, u_input.c.x, 8211u), u_input.b.zyz)) & ~firstTrailingBit(16151u)) % 32u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(335f, 1303f, -825f, 2360f) * vec4<f32>(644f, 779f, 1000f, -984f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-680f, -135f, -385f, 936f))))))), -1i);
    let var_2 = vec3<u32>(~u_input.c.x, ~_wgslsmith_div_u32(min(_wgslsmith_sub_u32(1u, u_input.b.x), _wgslsmith_mod_u32(u_input.c.x, 16751u)), ~_wgslsmith_mod_u32(u_input.b.x, 19100u)), 25722u);
    var var_3 = Struct_5(_wgslsmith_mult_u32(firstTrailingBit(var_2.x), 1u) ^ var_2.x, Struct_4(vec3<bool>(var_1.a, all(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(true, var_1.a, true), var_1.a)), 90095u >= max(u_input.b.x, 0u)), ~var_2.x));
    return !select(var_3.b.a, !vec3<bool>(true, u_input.a < -2147483647i, u_input.a <= u_input.a), select(select(vec3<bool>(false, var_1.a, var_3.b.a.x), !var_3.b.a, !var_3.b.a), vec3<bool>(true, !var_1.a, true), select(vec3<bool>(var_3.b.a.x, var_1.a, var_1.a), select(var_3.b.a, var_3.b.a, var_1.a), select(vec3<bool>(var_3.b.a.x, var_1.a, false), var_3.b.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(select(vec3<bool>(false, true, true), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), func_1()), !(any(vec3<bool>(true, false, false)) & any(vec4<bool>(false, false, false, true)))), u_input.b.x);
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.b.xzx, vec3<u32>(~41180u, _wgslsmith_add_u32(u_input.c.x, var_0.b), reverseBits(u_input.b.x))), abs(_wgslsmith_mod_vec3_u32(u_input.b.zwy, u_input.b.wyy) ^ vec3<u32>(1u, u_input.b.x, 44797u)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.c.x, 2958u), u_input.b.xxy))), u_input.b.xwx);
    var var_2 = Struct_5(_wgslsmith_mod_u32(54307u, _wgslsmith_mod_u32(var_0.b, _wgslsmith_div_u32(_wgslsmith_sub_u32(67170u, 0u), firstTrailingBit(var_1.x)))), var_0);
    var var_3 = func_2(var_0.b, vec4<f32>(_wgslsmith_f_op_f32(-1f), -532f, 1434f, 494f), ~(~firstTrailingBit(countOneBits(u_input.a))));
    let var_4 = abs(vec3<i32>(0i, -min(-u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, -47864i)), _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(-30319i, -22663i, 4161i)), ~(vec3<i32>(u_input.a, u_input.a, u_input.a) << (u_input.b.wyx % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, u_input.a, -(~(~vec2<i32>(1i, -26077i) << (~vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u)))));
}

