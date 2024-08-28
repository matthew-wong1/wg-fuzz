struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -2073f)))));
    var var_1 = Struct_1(vec3<i32>(32085i, ~arg_0.a.x, arg_0.b), _wgslsmith_clamp_i32(-(~arg_0.b), 1i, abs(~arg_0.b)));
    let var_2 = ~(~13013u);
    var var_3 = 8763u;
    let var_4 = Struct_1(var_1.a, _wgslsmith_mult_i32(min(abs(firstTrailingBit(26609i)), 1i), arg_0.a.x));
    return var_4;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = func_2(Struct_1(~(select(arg_2.a, arg_2.a, vec3<bool>(false, arg_1.x, true)) >> (~vec3<u32>(arg_3.x, 4294967295u, 8308u) % vec3<u32>(32u))), 0i));
    var_0 = func_2(Struct_1(max(-_wgslsmith_add_vec3_i32(arg_2.a, vec3<i32>(var_0.b, var_0.b, var_0.a.x)), arg_2.a), -2147483647i));
    var var_1 = -53843i;
    var_1 = u_input.a.x;
    let var_2 = Struct_1(arg_2.a, ~arg_2.b);
    return var_2;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = !(!select(vec2<bool>(!arg_1, true), vec2<bool>(false, !arg_1), true));
    var var_1 = arg_2.a.yz;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(590f * -2486f) - 730f))) * _wgslsmith_f_op_f32(select(1f, -1293f, all(!var_0))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1091f))) - -1464f)));
    var var_3 = func_1(_wgslsmith_clamp_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(4294967295u, 29296u, 4294967295u, 4294967295u))) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(38593u, 53354u, 1u, 0u), vec4<u32>(4294967295u, 39670u, 23098u, 39542u), vec4<u32>(4294967295u, 21769u, 1u, 1u)), ~vec4<u32>(_wgslsmith_div_u32(56456u, 102562u), _wgslsmith_dot_vec4_u32(vec4<u32>(42657u, 0u, 47442u, 53564u), vec4<u32>(1u, 4294967295u, 0u, 55284u)), 1u, 4294967295u), ~vec4<u32>(_wgslsmith_div_u32(24535u, 11600u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(48898u, 0u, 4294967295u, 1u), vec4<u32>(216u, 0u, 84524u, 62289u)), ~0u)), vec4<bool>(var_0.x, true, arg_2.b >= arg_0, arg_1), Struct_1(vec3<i32>(-2147483647i, u_input.b, ~var_1.x) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2.a, arg_2.a), ~vec3<i32>(28778i, u_input.a.x, var_1.x), min(vec3<i32>(arg_0, -2147483647i, var_1.x), arg_2.a)), _wgslsmith_mult_i32(-var_1.x, ~arg_0) | _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.x, arg_2.b, var_1.x, -28929i), vec4<i32>(u_input.a.x, arg_2.a.x, 15626i, -39086i), vec4<bool>(false, false, var_0.x, true)), vec4<i32>(0i, -61183i, 0i, -9411i))), vec4<u32>(17653u, select(0u, reverseBits(_wgslsmith_add_u32(21518u, 1u)), all(select(vec4<bool>(var_0.x, arg_1, true, var_0.x), vec4<bool>(var_0.x, true, arg_1, var_0.x), arg_1))), ~select(1u, 30051u, true), 4294967295u));
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(~0u, max(28962u, 50675u)))), min(vec2<u32>(1u, 1u), max(vec2<u32>(~3902u, ~4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)))), vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(30760u, 1u)), select(vec2<u32>(9264u, 0u), vec2<u32>(20692u, 4294967295u), false)) & 132217u));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_0.x;
    var var_1 = ~select(select(vec2<u32>(10748u, 4294967295u), vec2<u32>(4294967295u, arg_0.x), false) >> (min(~vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(var_0, arg_0.x) & arg_0) % vec2<u32>(32u)), arg_0 ^ arg_0, any(vec2<bool>(true, true)));
    var var_2 = arg_2;
    let var_3 = func_2(Struct_1(-vec3<i32>(-arg_2.a.x, -9474i & arg_2.b, var_2.a.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_2.a.x, 889i)), vec2<i32>(abs(arg_2.b), _wgslsmith_mod_i32(0i, 2795i)))));
    var_1 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(_wgslsmith_add_u32(4294967295u, var_1.x), 1u)), vec2<u32>(_wgslsmith_clamp_u32(~func_3(arg_2.a.x, true, var_3).x, ~_wgslsmith_sub_u32(17140u, 1u), 14580u), 70350u));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_mod_vec3_i32(func_4(func_3(-16132i & u_input.b, true, func_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<bool>(true, true, false, false), Struct_1(vec3<i32>(u_input.b, u_input.b, -2147483647i), u_input.a.x), vec4<u32>(4294967295u, 20742u, 4294967295u, 30499u))), 1f, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.b)), vec3<i32>((101158i ^ u_input.a.x) ^ 15914i, u_input.b ^ (-17418i & u_input.a.x), max(-13590i, -34191i))));
    var var_1 = _wgslsmith_div_vec3_u32(reverseBits(~(~(~vec3<u32>(10555u, 0u, 6539u)))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 50086u, 4294967295u), vec3<u32>(1u, 29161u, 83154u)), ~4294967295u, 1u), vec3<bool>(all(vec4<bool>(false, true, true, true)), true, any(vec3<bool>(false, true, false)))), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(119238u, 1u, 4294967295u, 33500u), vec4<u32>(1u, 71593u, 4294967295u, 0u)), 1u, ~4294967295u), vec3<bool>(-2147483647i <= var_0.x, true, true))));
    var_1 = ~vec3<u32>(_wgslsmith_add_u32(var_1.x, 1u), 0u, min(func_3(i32(-1i) * -1i, true, func_2(Struct_1(var_0, 88088i))).x, 34251u));
    var var_2 = func_1(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(20442u, 5811u, var_1.x, 43756u), reverseBits(vec4<u32>(var_1.x, 65832u, var_1.x, var_1.x))), vec4<u32>(4294967295u, var_1.x, var_1.x, max(var_1.x, var_1.x))), vec4<bool>(true, true, true, true), func_1(~vec4<u32>(12880u, var_1.x, 1u, var_1.x) << (vec4<u32>(43642u, ~var_1.x, 1u, 1u) % vec4<u32>(32u)), select(vec4<bool>(false, select(false, false, false), all(vec4<bool>(true, false, false, false)), true), vec4<bool>(all(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, false, true)), false), vec4<bool>(true, any(vec3<bool>(true, false, false)), any(vec2<bool>(true, false)), false)), func_2(Struct_1(_wgslsmith_add_vec3_i32(var_0, var_0), var_0.x)), ~(~select(vec4<u32>(var_1.x, 22288u, 1u, var_1.x), vec4<u32>(4294967295u, var_1.x, 4294967295u, var_1.x), false))), ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(5055u, var_1.x), 56577u, var_1.x), var_1.x, ~4294967295u, _wgslsmith_dot_vec2_u32(var_1.zy, vec2<u32>(1u, var_1.x))));
    let var_3 = _wgslsmith_mult_u32(var_1.x, ~(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x), reverseBits(var_1.x)) & var_1.x));
    var var_4 = func_1(select(abs(~vec4<u32>(var_1.x, 1u, var_3, 77060u)) << (_wgslsmith_add_vec4_u32(max(vec4<u32>(var_3, 0u, var_3, var_1.x), vec4<u32>(93232u, var_1.x, var_3, var_1.x)), vec4<u32>(var_1.x, 8693u, 4294967295u, 7277u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_3, var_3, 1u, 4294967295u), vec4<u32>(13966u, var_1.x, 27883u, 0u)), vec4<u32>(var_3, ~0u, var_3, var_1.x)), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), false)), !vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false)), var_0.x >= ~var_0.x, true, true), func_2(Struct_1(max(firstLeadingBit(vec3<i32>(1i, var_2.a.x, u_input.a.x)), vec3<i32>(-2147483647i, var_0.x, -2147483647i)), 1i)), _wgslsmith_div_vec4_u32(select((vec4<u32>(var_3, var_3, var_3, 4294967295u) << (vec4<u32>(var_3, var_3, 84397u, 0u) % vec4<u32>(32u))) >> ((vec4<u32>(0u, var_3, 0u, var_3) >> (vec4<u32>(var_1.x, var_3, 1u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(reverseBits(vec4<u32>(18229u, 3927u, 13444u, var_1.x)), vec4<u32>(70054u, var_1.x, 0u, var_1.x), true), vec4<bool>(true, true, true, true)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 1u, 53471u, 10809u), vec4<u32>(var_1.x, 55566u, var_1.x, 1u)), vec4<u32>(var_3, var_1.x, var_1.x, var_1.x), true) | ~vec4<u32>(13446u, var_1.x, var_1.x, var_3))).a.xz;
    let var_5 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-670f, 3056f, -691f), vec3<f32>(986f, 1539f, 2132f), vec3<bool>(false, true, false)))))))));
    let var_6 = firstTrailingBit(vec4<i32>(-var_4.x, -2147483647i, min(var_4.x, u_input.a.x), _wgslsmith_mult_i32(var_0.x, var_0.x)) >> (((vec4<u32>(var_3, var_3, 48891u, var_1.x) ^ vec4<u32>(1u, 35387u, 0u, 4883u)) ^ select(vec4<u32>(var_3, 4294967295u, 39256u, var_1.x), vec4<u32>(var_3, 4294967295u, var_3, 4294967295u), vec4<bool>(false, false, false, false))) % vec4<u32>(32u))) ^ ~select(vec4<i32>(~37397i, var_2.b, var_0.x | 2147483647i, ~(-2147483647i)), vec4<i32>(-106i, -1378i, 1i, abs(u_input.b)), _wgslsmith_f_op_f32(-var_5.x) <= -927f);
    let var_7 = (~var_2.a.x << (_wgslsmith_mod_u32(~var_3, ~(~var_1.x)) % 32u)) | -14057i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3 | reverseBits(var_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_5.x))), var_0.yz);
}

