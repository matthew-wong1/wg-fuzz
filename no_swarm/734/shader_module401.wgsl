struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> u32 {
    global0 = array<f32, 18>();
    var var_0 = 1u;
    global0 = array<f32, 18>();
    var var_1 = true;
    var var_2 = Struct_1(38748u);
    return 10808u;
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = vec3<u32>(arg_0.a | arg_0.a, _wgslsmith_dot_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, 0u, arg_0.a), vec3<u32>(39685u, 31831u, arg_0.a)) << (_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0.a, 4294967295u), vec3<u32>(arg_0.a, arg_0.a, arg_0.a)) % vec3<u32>(32u))), ~(firstTrailingBit(vec3<u32>(arg_0.a, 76570u, arg_0.a)) >> (~vec3<u32>(2363u, arg_0.a, arg_0.a) % vec3<u32>(32u)))), arg_0.a);
    let var_1 = Struct_2(Struct_1(var_0.x), max(vec3<u32>(~5797u, _wgslsmith_mult_u32(~85340u, ~var_0.x), 4294967295u), _wgslsmith_mult_vec3_u32(~vec3<u32>(65236u, var_0.x, arg_0.a), vec3<u32>(arg_0.a, 55226u, 0u)) & select(vec3<u32>(1u, 4294967295u, 1u) << (vec3<u32>(0u, var_0.x, 1u) % vec3<u32>(32u)), vec3<u32>(10769u, var_0.x, var_0.x) & vec3<u32>(9539u, arg_0.a, 28142u), true)), firstLeadingBit(u_input.a));
    let var_2 = any(vec2<bool>(true | all(vec3<bool>(true, true, true)), true | !any(vec3<bool>(true, false, true))));
    var_0 = select(abs(vec3<u32>(firstLeadingBit(func_2()), var_1.a.a, abs(var_0.x))), ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(var_1.b, var_1.b), var_1.b, firstLeadingBit(var_1.b)), !vec3<bool>(false, var_2, select(any(vec3<bool>(false, false, var_2)), !var_2, var_2)));
    global0 = array<f32, 18>();
    return select(select(vec4<bool>(!(!var_2), false != !var_2, arg_0.a <= (4294967295u >> (var_1.b.x % 32u)), true), !vec4<bool>(var_2, var_2, !var_2, true), true), select(select(select(select(vec4<bool>(true, false, var_2, true), vec4<bool>(true, var_2, true, var_2), false), !vec4<bool>(true, var_2, true, var_2), false), !vec4<bool>(true, var_2, false, var_2), !vec4<bool>(var_2, var_2, var_2, true)), select(vec4<bool>(any(vec3<bool>(var_2, false, false)), var_1.a.a <= 0u, var_2 || var_2, true), select(vec4<bool>(true, false, false, true), !vec4<bool>(var_2, var_2, true, true), false), var_2), !any(vec2<bool>(true, true))), !select(select(vec4<bool>(true, var_2, false, var_2), select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(var_2, true, true, var_2), vec4<bool>(true, var_2, var_2, false)), vec4<bool>(false, true, var_2, false)), !select(vec4<bool>(false, true, false, var_2), vec4<bool>(true, true, var_2, var_2), vec4<bool>(false, var_2, var_2, var_2)), true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    var var_0 = select(func_3(arg_0.a).wwz, func_3(arg_0.a).xww, select(select(vec3<bool>(true, true, any(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true));
    global0 = array<f32, 18>();
    let var_1 = Struct_2(Struct_1(~countOneBits(arg_0.b.x)), vec3<u32>(~abs(_wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(arg_0.b.x, 15601u))), ~arg_1.x, (~arg_0.a.a | 0u) | arg_1.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(85199i, arg_0.c, u_input.a), firstLeadingBit(vec3<i32>(-26526i, u_input.a, -2147483647i))), ~(-vec3<i32>(arg_0.c, 6975i, arg_0.c))), -1i));
    var var_2 = Struct_2(var_1.a, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.a.a, _wgslsmith_mult_u32(arg_0.a.a, 1u >> (0u % 32u))), reverseBits(vec3<u32>(42080u, arg_1.x, 13825u))), ~u_input.a);
    let var_3 = _wgslsmith_mod_u32(arg_1.x & 1u, 76124u);
    return -34660i;
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_2(Struct_1(~(~0u)), _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 21836u), vec3<u32>(27440u, 1u, 13883u)), ~(~vec3<u32>(32299u, 49205u, 1u))), -u_input.a), select(select(vec4<u32>(func_2(), firstLeadingBit(4294967295u), ~7745u, abs(0u)), firstLeadingBit(vec4<u32>(11024u, 1u, 54748u, 0u)), func_3(Struct_1(55756u))), min(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 5151u, 27819u, 12422u), vec4<u32>(0u, 10244u, 7221u, 30394u)) << (firstTrailingBit(vec4<u32>(0u, 1u, 8042u, 58232u)) % vec4<u32>(32u)), vec4<u32>(1u, 0u, max(1u, 28878u), 1u)), any(vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_clamp_u32(25084u, 4579u, 43870u), ~1u, select(~14458u, 18258u, true)), firstLeadingBit(vec3<u32>(32009u, 64342u, 37447u))), 18u)]);
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    var var_1 = -(vec3<i32>(-1i) * -(~(~vec3<i32>(53187i, -5137i, 15658i))));
    let var_2 = true;
    return ~0u;
}

fn func_5(arg_0: u32) -> u32 {
    global0 = array<f32, 18>();
    let var_0 = select(~(~vec4<u32>(1u, 4294967295u, arg_0 & 45352u, ~arg_0)), abs(vec4<u32>(1u, 1u, 1u, 1u)), !vec4<bool>(false, func_3(Struct_1(0u)).x, true, true));
    let var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(arg_0, var_0.x, 44158u) ^ 1u), 18u)];
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    return _wgslsmith_add_u32(~firstTrailingBit(3859u), 43133u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_5(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~10577u, _wgslsmith_mod_u32(1u, 27584u)), abs(~0u), func_1())));
    global0 = array<f32, 18>();
    var var_1 = select(~max(vec4<u32>(var_0.a, 1u, 4294967295u, 9116u) ^ reverseBits(vec4<u32>(13643u, 0u, var_0.a, var_0.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(5139u, var_0.a, 75851u, var_0.a), vec4<u32>(var_0.a, 0u, var_0.a, 75739u))), ~abs(~select(vec4<u32>(var_0.a, var_0.a, 0u, 0u), vec4<u32>(8481u, var_0.a, var_0.a, var_0.a), vec4<bool>(true, false, true, true))), true);
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(var_1.xx, vec2<u32>(4294967295u, 4294967295u))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 58286u), var_1.wy))), var_1.wyx, 1i);
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, 4294967295u)), var_1.xw), vec2<u32>(var_0.a, 88040u))), reverseBits(max(var_1.wwx, countOneBits(vec3<u32>(var_1.x, 43082u, 17039u)))), 13497i);
    let var_4 = vec2<bool>(!select(!(var_3.a.a >= 64180u), var_3.b.x != ~var_1.x, true), var_2.c == u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2837f, global0[_wgslsmith_index_u32(var_0.a, 18u)]))))));
}

