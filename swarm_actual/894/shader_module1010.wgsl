struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-698f - 904f), 226f)))));
    let var_2 = arg_0;
    let var_3 = -1000f;
    let var_4 = firstTrailingBit(arg_0.a);
    return var_2;
}

fn func_3() -> u32 {
    let var_0 = func_1(func_1(Struct_1(~1u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1602f, _wgslsmith_f_op_f32(select(-384f, -213f, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -123f))));
    let var_2 = u_input.c;
    var var_3 = func_1(Struct_1(~7206u));
    var var_4 = Struct_1(~0u);
    return _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(0u, ~_wgslsmith_mult_u32(var_3.a, 15047u)), ~var_2.x, _wgslsmith_clamp_u32(~(~var_0.a << ((4294967295u | u_input.c.x) % 32u)), var_3.a | (~var_3.a & firstLeadingBit(var_2.x)), ~1u));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.x - -304f) != _wgslsmith_div_f32(arg_1.x, 543f);
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.a.xy, ~vec2<u32>(min(arg_2, arg_3.a), arg_2));
    var var_2 = arg_3;
    let var_3 = var_0;
    let var_4 = vec4<u32>(~(~110065u >> (1u % 32u)) ^ func_3(), 1u, _wgslsmith_dot_vec4_u32(~u_input.a, reverseBits(vec4<u32>(var_2.a, u_input.a.x, 85832u, 4294967295u)) ^ u_input.a), u_input.a.x);
    return func_1(Struct_1(~59099u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(u_input.b.zyw, vec4<f32>(1f, 1f, 1f, 1f), 1u, func_1(Struct_1(0u)));
    var var_1 = ~countOneBits(_wgslsmith_mult_u32(var_0.a, var_0.a));
    let var_2 = _wgslsmith_sub_vec3_u32(~vec3<u32>(reverseBits(u_input.a.x), abs(var_0.a << (13393u % 32u)), _wgslsmith_dot_vec2_u32(~u_input.c.yz, ~vec2<u32>(81668u, 0u))), vec3<u32>(24693u, var_0.a, ~(var_0.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 112913u, 1u), vec3<u32>(8483u, var_0.a, u_input.a.x)) % 32u))));
    var var_3 = Struct_1(var_0.a);
    var_3 = var_0;
    var_1 = ~57070u;
    let var_4 = u_input.a;
    let var_5 = 391f;
    let var_6 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-30835i, 0i, u_input.b.x), u_input.b.wyx)), vec3<i32>(1i, _wgslsmith_div_i32(firstLeadingBit(u_input.b.x), u_input.b.x), min(-u_input.b.x, _wgslsmith_div_i32(2147483647i, u_input.b.x)))), max(~abs(i32(-1i) * -47055i), firstTrailingBit(u_input.b.x) & _wgslsmith_clamp_i32(min(63820i, -2147483647i), ~u_input.b.x, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c, countOneBits(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 6091u, 1u), vec3<u32>(0u, u_input.c.x, 30153u)))), vec3<bool>(true, true, true)), var_4, 11308u, var_5);
}

