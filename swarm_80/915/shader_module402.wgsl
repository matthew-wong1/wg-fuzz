struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> u32 {
    return 0u;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(arg_1.a, ~(~vec3<u32>(54908u, arg_1.b.x, u_input.b) & ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a.c.x, 0u, u_input.b), arg_1.b)), _wgslsmith_div_u32(106808u, func_2(_wgslsmith_f_op_f32(195f - 368f), select(vec3<bool>(arg_1.a.a, arg_1.a.a, true), vec3<bool>(arg_1.a.a, true, arg_1.a.a), false), _wgslsmith_div_vec2_f32(vec2<f32>(401f, 118f), vec2<f32>(-229f, -865f)), vec4<bool>(arg_1.a.a, arg_1.a.a, true, arg_1.a.a))) << (~67417u % 32u));
    let var_1 = var_0.a.a;
    global1 = 1u;
    var_0 = arg_1;
    var var_2 = vec3<bool>(false, any(select(select(select(vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a), vec3<bool>(false, var_0.a.a, true), vec3<bool>(arg_1.a.a, false, var_0.a.a)), vec3<bool>(var_0.a.a, var_0.a.a, false), var_0.a.a || true), !vec3<bool>(arg_1.a.a, true, true), select(select(vec3<bool>(true, arg_1.a.a, arg_1.a.a), vec3<bool>(true, arg_1.a.a, true), vec3<bool>(arg_1.a.a, arg_1.a.a, false)), !vec3<bool>(arg_1.a.a, var_0.a.a, false), vec3<bool>(var_0.a.a, true, false)))), true);
    return ~4294967295u >> (~firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, u_input.b), vec2<u32>(arg_1.c, var_0.c))) % 32u);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = i32(-1i) * -1i;
    global1 = _wgslsmith_sub_u32(reverseBits(_wgslsmith_clamp_u32(~63387u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, arg_1.b), vec3<u32>(4294967295u, 0u, arg_2)), func_2(-1221f, vec3<bool>(true, true, arg_1.a), vec2<f32>(-1000f, arg_0), vec4<bool>(arg_1.a, true, arg_1.a, false)))), u_input.b) ^ ~3679u;
    global1 = arg_2 << (abs(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(-43643i, 2147483647i, -15311i), -arg_1.d.wzx), Struct_2(Struct_1(true, 0u, vec3<u32>(0u, 112457u, 40889u), arg_1.d), arg_1.c, 1u))) % 32u);
    global0 = ~_wgslsmith_clamp_i32(arg_1.d.x, arg_1.d.x, ~u_input.a);
    let var_1 = u_input.c;
    return Struct_1(any(!select(select(vec3<bool>(false, arg_1.a, false), vec3<bool>(false, true, false), vec3<bool>(true, false, arg_1.a)), select(vec3<bool>(arg_1.a, true, true), vec3<bool>(arg_1.a, false, true), arg_1.a), !vec3<bool>(true, arg_1.a, arg_1.a))), 27138u, ~arg_1.c, vec4<i32>(reverseBits(u_input.a), ~arg_1.d.x & u_input.c, _wgslsmith_sub_i32(-1i, 32035i), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, -1i, -2147483647i), -countOneBits(vec3<i32>(var_1, u_input.a, 4845i)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec2<i32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-143f - 741f)));
    return max(reverseBits(arg_1.a.d.yz), vec2<i32>(firstTrailingBit(-18556i) | select(29030i, 2147483647i, true), -(~select(u_input.a, arg_0.d.x, arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true | !(62550u != _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(106059u, u_input.b))));
    var var_1 = func_4(Struct_1(true, ~0u, vec3<u32>(u_input.b | u_input.b, 1u, 20350u), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.c, -19827i, u_input.a, u_input.a)), -vec4<i32>(3152i, 0i, u_input.a, 0i)), (vec4<i32>(-1i, u_input.c, -4073i, u_input.a) & vec4<i32>(3228i, 2045i, u_input.c, u_input.a)) << (firstLeadingBit(vec4<u32>(4294967295u, 32300u, u_input.b, u_input.b)) % vec4<u32>(32u)))), Struct_2(func_1(-622f, Struct_1(true, ~30109u, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 68077u, 5435u), vec3<u32>(u_input.b, 1u, 4294967295u)), vec4<i32>(1i, u_input.a, 2147483647i, u_input.c) ^ vec4<i32>(u_input.c, u_input.a, -76929i, u_input.a)), u_input.b), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 24837u), vec3<u32>(u_input.b, 1u, 49978u))), countOneBits(1u)), ~(51211u >> (u_input.b % 32u)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-393f * -260f), -600f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1685f))), 119f);
    var var_3 = -_wgslsmith_clamp_i32(-34312i, u_input.a, -1i);
    var_1 = max(-_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-23854i, -2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-60256i, -13265i)), vec2<i32>(-2147483647i, var_1.x)), max(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(var_1.x, u_input.c)) << (~max(vec2<u32>(0u, u_input.b), vec2<u32>(34235u, 1u)) % vec2<u32>(32u))) ^ -(((vec2<i32>(u_input.c, 2147483647i) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) >> (func_1(var_2.x, Struct_1(var_0, u_input.b, vec3<u32>(39434u, 0u, u_input.b), vec4<i32>(u_input.c, -14860i, 0i, var_1.x)), u_input.b).c.zy % vec2<u32>(32u))) >> ((countOneBits(vec2<u32>(0u, 1u)) | ~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(169f);
}

