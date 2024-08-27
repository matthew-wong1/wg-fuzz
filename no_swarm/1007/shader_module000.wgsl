struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: bool, arg_1: f32) -> i32 {
    global0 = -2147483647i;
    let var_0 = _wgslsmith_sub_vec3_i32(-firstTrailingBit(vec3<i32>(u_input.a.x, 21935i, u_input.a.x) | vec3<i32>(-7558i, u_input.a.x, u_input.a.x)), vec3<i32>(_wgslsmith_sub_i32(max(6475i, u_input.a.x), u_input.a.x), 2147483647i, 1i)) ^ min(_wgslsmith_add_vec3_i32(~select(vec3<i32>(29298i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, -1i), vec3<bool>(false, false, true)), ~vec3<i32>(-29160i, -2147483647i, -1208i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-4455i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(-2147483647i, 1i, u_input.a.x, u_input.a.x)), u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-22268i, -1i))), ~vec3<i32>(-13858i, u_input.a.x, -20640i) & (vec3<i32>(-1i, u_input.a.x, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, 33069i))));
    var var_1 = vec3<u32>(~1u, 1u >> (~4294967295u % 32u), 75584u) | vec3<u32>(~(~select(0u, 1387u, arg_0)), _wgslsmith_div_u32(1u, 1u), 2129u);
    global0 = -38985i;
    var var_2 = Struct_1(firstLeadingBit(var_0), 11518u);
    return ~(max(1i, max(-21069i, var_2.a.x)) | countOneBits(-1i));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0.x;
    let var_1 = Struct_1(abs(arg_1.a) ^ arg_2.a, ~_wgslsmith_sub_u32(0u, arg_1.b));
    var var_2 = 1u;
    var_2 = ~37017u;
    return arg_1;
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global0 = ~(-min(1i, ~_wgslsmith_add_i32(-1i, u_input.a.x)));
    var var_0 = ~(abs(~vec2<u32>(1948u, 65489u)) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(15598u, 4294967295u), vec2<u32>(0u, 42534u), vec2<u32>(0u, 1u)) % vec2<u32>(32u))) >> (select(max(~reverseBits(vec2<u32>(15895u, 55220u)), vec2<u32>(1u, func_2(vec4<f32>(638f, 1060f, 1044f, 702f), Struct_1(vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), 0u), Struct_1(vec3<i32>(-42067i, u_input.a.x, -65396i), 29514u)).b)), vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(38086u, 4294967295u)), abs(vec2<u32>(31792u, 0u)))), !select(any(arg_0.xy), true, true)) % vec2<u32>(32u));
    var var_1 = 0i;
    var var_2 = -firstLeadingBit(u_input.a.x) & (_wgslsmith_sub_i32(_wgslsmith_add_i32(26461i, 0i & u_input.a.x), _wgslsmith_sub_i32(-33416i, min(u_input.a.x, 0i))) ^ -min(abs(0i), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)));
    global0 = firstLeadingBit(~u_input.a.x);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(select(abs(vec4<i32>(u_input.a.x, -31466i, u_input.a.x, u_input.a.x)), abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 1i != u_input.a.x), vec4<i32>(u_input.a.x, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-899f, -212f, 910f, -1133f) * vec4<f32>(-763f, 445f, 244f, -519f)), func_2(vec4<f32>(1986f, -516f, -1683f, 2645f), Struct_1(vec3<i32>(10684i, 2147483647i, u_input.a.x), var_0.x), Struct_1(vec3<i32>(u_input.a.x, 2147483647i, 0i), var_0.x)), func_2(vec4<f32>(2394f, -682f, -797f, 1488f), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 1u), Struct_1(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), var_0.x))).a.x, reverseBits(-12731i), -20690i)), select(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, 8860i, u_input.a.x), vec4<i32>(-24367i, u_input.a.x, 10012i, select(u_input.a.x, 2147483647i, arg_0.x)), u_input.a.x < -1i) >> (select(vec4<u32>(~12844u, _wgslsmith_div_u32(30815u, 10819u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)), var_0.x), vec4<u32>(var_0.x, 80307u, var_0.x, var_0.x), true) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-u_input.a.x & ~_wgslsmith_mod_i32(-u_input.a.x, func_1(true, 861f)), 14382i, u_input.a.x, select(reverseBits(1i), -u_input.a.x, true) >> (4294967295u % 32u));
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(119f, -566f, 816f, -449f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(120f, -333f, -636f, 499f))))))), Struct_1(abs(_wgslsmith_div_vec3_i32(var_0.xyw, vec3<i32>(0i, -21333i, -2147483647i)) | (vec3<i32>(u_input.a.x, -2147483647i, -2147483647i) | vec3<i32>(u_input.a.x, u_input.a.x, 22480i))), 31135u), Struct_1(vec3<i32>(-1i, select(_wgslsmith_dot_vec2_i32(var_0.zz, u_input.a), u_input.a.x, select(true, false, true)), -1i), 86245u));
    var var_2 = -1796f;
    let var_3 = func_3(vec3<bool>(false, any(vec3<bool>(true, true, true)), true)) ^ 4118i;
    var var_4 = firstTrailingBit(var_0.x & -19032i);
    var var_5 = vec2<bool>(false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-767f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(436f, -576f) - vec2<f32>(886f, -686f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-435f, -1065f))), vec2<f32>(910f, -856f))), select(vec2<bool>(true, var_5.x), vec2<bool>(false, var_5.x), var_5.x))))), -478f, var_1.b, var_1.b);
}

