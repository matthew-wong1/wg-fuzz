struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<u32>) -> u32 {
    global0 = select(15667u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 0u >> (arg_2.x % 32u), reverseBits(arg_2.x)), arg_2.wyy), false) | arg_1.x;
    var var_0 = ~u_input.a;
    return ~26801u;
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(27891u, 4294967295u, 1u)), firstTrailingBit(15124u) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 195u, 8075u), vec4<u32>(4294967295u, 1u, 3165u, 0u)))), Struct_1(~67748u), select(min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(47544u, 1u, 0u, 21600u)) | vec4<u32>(max(1u, 49831u), _wgslsmith_dot_vec4_u32(vec4<u32>(13192u, 1u, 60137u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)), 1u, countOneBits(1u)), ~firstLeadingBit(~vec4<u32>(18588u, 2683u, 44605u, 1u)), arg_0.x));
    var var_1 = 218f;
    global0 = 7274u;
    var var_2 = abs(_wgslsmith_add_u32(0u, 44622u));
    var var_3 = abs(vec2<u32>(19105u ^ min(_wgslsmith_div_u32(var_0.b.a, 1u), ~var_0.c.x), _wgslsmith_add_u32(var_0.b.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.b.a, 58533u, 0u), ~8298u))));
    return Struct_3(~(-2147483647i), min(var_0.c.zzx, countOneBits(var_0.c.zxz)) & ~vec3<u32>(func_3(Struct_2(Struct_1(var_3.x), Struct_1(var_0.c.x), vec4<u32>(var_0.a.a, var_0.c.x, 16916u, var_0.c.x)), vec4<u32>(var_3.x, var_3.x, 0u, 21849u), vec4<u32>(var_3.x, var_0.b.a, 6591u, var_0.b.a)), firstLeadingBit(899u), ~var_0.b.a), 19847u);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = !vec2<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true);
    global0 = ~firstTrailingBit(select(arg_3.a << (arg_3.a % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_2.x, 29804u), arg_0.b.x), true));
    global0 = arg_0.c;
    let var_1 = vec3<bool>(var_0.x, !all(!(!var_0)), !var_0.x);
    global0 = _wgslsmith_clamp_u32(16513u, _wgslsmith_sub_u32(arg_3.a, reverseBits(arg_2.x)), ~abs(max(arg_2.x, 21622u))) | 4294967295u;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1481f)), _wgslsmith_f_op_f32(trunc(-2483f)), _wgslsmith_div_f32(2397f, -959f), _wgslsmith_f_op_f32(438f * -201f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1430f, -2450f, -394f, -449f), vec4<f32>(-102f, -524f, 249f, 449f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), -269f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2434f)), -1611f, 340f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1183f, 802f, -136f, 2020f))))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(854f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x), -144f, _wgslsmith_f_op_f32(-arg_1.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<bool>(true, false, true)), 0u, min(vec3<u32>(73995u, 0u, 1u), vec3<u32>(30160u, 28563u, 19256u)), Struct_1(4063u))), vec4<f32>(arg_1.x, 1620f, 1965f, arg_1.x)))));
    global0 = 0u;
    let var_1 = -22619i;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(939f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-777f)) + 1728f)), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(830f))))));
    let var_2 = -countOneBits(abs(vec3<i32>(-5228i, arg_0, u_input.a.x)) ^ select(vec3<i32>(-2147483647i, var_1, -1989i), vec3<i32>(u_input.a.x, -2147483647i, -4914i), vec3<bool>(false, true, true))) | countOneBits(vec3<i32>(16711i, 68138i, ~reverseBits(var_1)));
    return Struct_2(Struct_1(18418u), Struct_1(4294967295u), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(0u, 4294967295u, 6722u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, true, all(vec3<bool>(false, true, select(any(vec4<bool>(true, false, false, false)), true, false))));
    let var_1 = func_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -129f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(426f)), _wgslsmith_f_op_f32(2215f + 1151f)))))));
    let var_2 = firstLeadingBit(~var_1.c.xyz);
    var var_3 = 0u;
    let var_4 = Struct_2(Struct_1(min(var_1.b.a, abs(0u))), func_1(reverseBits(firstTrailingBit(u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(trunc(1543f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1226f, 140f)) - 1000f))).b, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_4.c.x, var_2.x, ~0u ^ _wgslsmith_add_u32(var_4.c.x, reverseBits(4294967295u))), 0u, vec2<u32>(17970u, ~_wgslsmith_mult_u32(var_1.b.a, ~var_1.c.x)));
}

