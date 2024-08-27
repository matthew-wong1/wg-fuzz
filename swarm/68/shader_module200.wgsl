struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
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

var<private> global0: vec4<u32> = vec4<u32>(1u, 5333u, 4294967295u, 73831u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, arg_2.c, arg_2.c, 1830f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.a, arg_2.b.a.x, arg_2.a, -270f)))), _wgslsmith_f_op_vec4_f32(-arg_2.b.a)), arg_0.x, _wgslsmith_mult_u32(arg_1.x, abs(~19569u) & ~global0.x));
    let var_1 = 7503u;
    global0 = _wgslsmith_mult_vec4_u32(~arg_1, vec4<u32>(~max(1u, 55745u), ~var_0.c, ~arg_2.b.c & max(abs(9616u), arg_1.x), 4294967295u));
    var var_2 = firstTrailingBit(-(~(~arg_2.d.zxy)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -821f)));
    return all(select(arg_0, vec4<bool>(true, var_0.b != true, arg_0.x || arg_2.b.b, true), select(var_0.b, all(vec3<bool>(var_0.b, arg_2.b.b, false)), !var_0.b))) & true;
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = !select(true, func_3(vec4<bool>(true, true, false, false), _wgslsmith_mult_vec4_u32(vec4<u32>(23961u, u_input.a, 11594u, global0.x), vec4<u32>(global0.x, global0.x, u_input.a, u_input.a)), Struct_3(-455f, Struct_1(vec4<f32>(-133f, 877f, 717f, -493f), true, 1u), -738f, arg_0), ~global0.x) || true, false);
    var var_1 = u_input.a;
    let var_2 = Struct_2(min(1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstTrailingBit(1u), global0.x | global0.x, 63327u), global0.x)));
    global0 = _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_2.a, global0.x, firstTrailingBit(1347u), firstTrailingBit(min(4294967295u, u_input.a)))), ~select(vec4<u32>(34976u, var_2.a, abs(global0.x), _wgslsmith_mod_u32(global0.x, 9686u)), ~(~vec4<u32>(u_input.a, var_2.a, 1u, global0.x)), !(!vec4<bool>(true, var_0, var_0, var_0))));
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, 427f, -2223f, -520f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1250f, -956f, -851f, 672f))), vec4<f32>(1f, 1f, 1f, 1f), select(!vec4<bool>(var_0, true, var_0, var_0), !vec4<bool>(true, var_0, true, var_0), var_0 | true))), var_0, _wgslsmith_mult_u32(81211u, 1u)), Struct_2(~var_2.a));
    return vec2<bool>(false & var_3.a.b, var_0);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = ~vec2<i32>(min(firstTrailingBit(arg_2), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.b.xzx, u_input.b.xxw), arg_2, arg_2)), u_input.b.x);
    global0 = abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, u_input.a), global0.x, arg_3.x, 1u), ~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)));
    var_0 = ~vec2<i32>(0i, abs(1i));
    let var_1 = u_input.b.yzz;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1772f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(174f, -654f))), -620f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f), _wgslsmith_f_op_f32(422f + -1254f))))), select(!arg_1.x, any(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), arg_1.x), 0u);
    return vec4<u32>(min(36523u, (global0.x & ~1u) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 41624u, 4294967295u), global0.zww) | max(4294967295u, global0.x)) % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global0.x), global0.wy) | select(arg_3, global0.wx, arg_0.x), ~global0.yy & ~vec2<u32>(arg_3.x, var_2.c)), abs(0u)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.c, 8u), min(global0.zx, vec2<u32>(5072u, 41517u))), select(1u, ~global0.x, true)), ~_wgslsmith_div_u32(firstLeadingBit(~var_2.c), global0.x));
}

fn func_1() -> f32 {
    global0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 22577u, abs(0u), 24334u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(901u, 21362u, u_input.a, global0.x), vec4<u32>(global0.x, u_input.a, global0.x, 70777u) ^ vec4<u32>(global0.x, 4294967295u, global0.x, 18527u), select(vec4<u32>(global0.x, u_input.a, global0.x, u_input.a), vec4<u32>(3283u, 1u, u_input.a, u_input.a), false)), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(0u, 47618u, u_input.a, 51049u), vec4<u32>(global0.x, u_input.a, 23826u, 0u), false), vec4<u32>(u_input.a, u_input.a, ~42693u, global0.x)), ~(~vec4<u32>(global0.x, global0.x, u_input.a, global0.x)) | reverseBits(min(vec4<u32>(global0.x, 8796u, global0.x, 67734u), vec4<u32>(4294967295u, 38259u, global0.x, global0.x))));
    global0 = vec4<u32>(138914u, firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.x, 49528u, global0.x), vec4<u32>(1u, global0.x, u_input.a, 29213u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0.yz, firstLeadingBit(global0.wz)), _wgslsmith_div_u32(_wgslsmith_add_u32(global0.x, global0.x), firstLeadingBit(u_input.a))), u_input.a) | vec4<u32>(~u_input.a, _wgslsmith_clamp_u32(~(~0u), _wgslsmith_add_u32(global0.x, 16002u), ~4294967295u), 4294967295u, 1u);
    let var_0 = ~(~_wgslsmith_dot_vec4_u32(func_4(func_2(vec4<i32>(-39877i, -8723i, u_input.c, u_input.c)), vec2<bool>(false, true), firstTrailingBit(-1i), vec2<u32>(0u, u_input.a)), abs(~vec4<u32>(4294967295u, global0.x, 9268u, u_input.a))));
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~global0.x, 106641u, 1u, min(var_0, 0u)) | vec4<u32>(var_0, var_0, ~1u, ~global0.x), reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(28859u, 1u, 1u, 35174u), vec4<u32>(var_0, 0u, 106246u, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(59554u, var_0, abs(var_0), _wgslsmith_div_u32(1u, 4294967295u)), ~(vec4<u32>(4294967295u, u_input.a, global0.x, global0.x) | vec4<u32>(26815u, var_0, 55592u, 3127u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global0.x, 1u), vec4<u32>(4294967295u, 1u, 43662u, u_input.a)))) & vec4<u32>(firstLeadingBit(36006u), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, _wgslsmith_clamp_u32(global0.x, 37606u, u_input.a), countOneBits(1u), global0.x), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(521u, var_0, u_input.a, 0u), vec4<u32>(4294967295u, var_0, var_0, global0.x), vec4<u32>(49411u, u_input.a, 4294967295u, var_0)), vec4<u32>(4294967295u, u_input.a, global0.x, global0.x), vec4<bool>(true, true, true, true))), ~(~global0.x), global0.x);
    var var_1 = !select(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), !all(vec2<bool>(false, false)), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), !vec4<bool>(any(vec2<bool>(true, true)), true, true, true));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2071f), _wgslsmith_f_op_f32(2158f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(750f, 1302f)) + _wgslsmith_f_op_f32(f32(-1f) * -806f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(594f, -654f, 511f, -826f), vec4<f32>(-585f, _wgslsmith_f_op_f32(step(1356f, -334f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(929f, -841f)))))), false, 1u);
    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(var_0.c, 4294967295u, 4294967295u)), ~vec3<u32>(1u, 4294967295u, global0.x) << (~vec3<u32>(global0.x, global0.x, var_0.c) % vec3<u32>(32u))) | ~(~31704u & _wgslsmith_mod_u32(4294967295u, var_0.c)));
    global0 = firstLeadingBit(~vec4<u32>(4068u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.c, global0.x, 1u, 12062u)), vec4<u32>(4294967295u, global0.x, 4294967295u, 30084u)), 1u, _wgslsmith_add_u32(0u, 19712u)));
    global0 = abs(max(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u) << ((u_input.a | u_input.a) % 32u), var_1.a, max(57087u, 0u), 0u), _wgslsmith_mod_vec4_u32(~(vec4<u32>(global0.x, 1u, u_input.a, 36924u) | vec4<u32>(0u, var_0.c, 42861u, 18744u)), min(firstLeadingBit(vec4<u32>(1u, 22288u, 0u, var_0.c)), abs(vec4<u32>(0u, var_1.a, u_input.a, 13510u))))));
    var var_2 = ~_wgslsmith_div_vec4_i32(abs((u_input.b << (vec4<u32>(global0.x, 50560u, u_input.a, global0.x) % vec4<u32>(32u))) | vec4<i32>(u_input.b.x, 2317i, u_input.b.x, -2147483647i)), u_input.b);
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), !var_0.b, _wgslsmith_add_u32(~_wgslsmith_sub_u32(71186u, global0.x), firstLeadingBit(~0u))), Struct_2(~(global0.x >> (0u % 32u)) ^ (1u ^ _wgslsmith_mult_u32(var_1.a, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(var_3.b.a), select(1u, ~_wgslsmith_sub_u32(var_3.b.a, var_1.a), func_2(vec4<i32>(58991i, u_input.b.x, u_input.c, u_input.c)).x)));
}

