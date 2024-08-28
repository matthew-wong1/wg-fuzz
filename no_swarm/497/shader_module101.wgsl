struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
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

var<private> global0: vec3<f32> = vec3<f32>(337f, -858f, 810f);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(3472u, vec4<u32>(80108u, 1u, 1u, 1u)), Struct_1(0u, vec4<u32>(1u, 4294967295u, 83187u, 58553u)), Struct_1(0u, vec4<u32>(67173u, 28425u, 32924u, 1u)), Struct_1(16043u, vec4<u32>(11693u, 1u, 44686u, 1u)), Struct_1(934u, vec4<u32>(4294967295u, 15626u, 27287u, 0u)), Struct_1(0u, vec4<u32>(78949u, 1u, 1u, 4294967295u)), Struct_1(17876u, vec4<u32>(30988u, 86165u, 1u, 40442u)), Struct_1(57248u, vec4<u32>(4294967295u, 66509u, 1u, 4294967295u)), Struct_1(9036u, vec4<u32>(23692u, 36969u, 46139u, 64816u)), Struct_1(3850u, vec4<u32>(0u, 27464u, 1u, 4294967295u)), Struct_1(1u, vec4<u32>(4294967295u, 1u, 0u, 48256u)), Struct_1(0u, vec4<u32>(1u, 80746u, 1u, 4294967295u)), Struct_1(1u, vec4<u32>(52445u, 4294967295u, 0u, 24439u)), Struct_1(4294967295u, vec4<u32>(4294967295u, 50566u, 0u, 0u)), Struct_1(60528u, vec4<u32>(75465u, 1u, 114278u, 51345u)), Struct_1(4294967295u, vec4<u32>(0u, 39623u, 59746u, 63708u)), Struct_1(4464u, vec4<u32>(1u, 4294967295u, 1u, 0u)), Struct_1(61547u, vec4<u32>(1u, 0u, 0u, 1u)), Struct_1(0u, vec4<u32>(14101u, 8853u, 169604u, 4294967295u)), Struct_1(32359u, vec4<u32>(0u, 1u, 78789u, 4294967295u)), Struct_1(1u, vec4<u32>(4294967295u, 2715u, 0u, 1304u)), Struct_1(15053u, vec4<u32>(1u, 23312u, 1u, 1u)), Struct_1(13973u, vec4<u32>(61815u, 125719u, 0u, 4294967295u)), Struct_1(0u, vec4<u32>(1u, 9559u, 786u, 88495u)), Struct_1(1u, vec4<u32>(47391u, 38179u, 70764u, 0u)), Struct_1(4294967295u, vec4<u32>(1u, 4294967295u, 13408u, 20453u)), Struct_1(63247u, vec4<u32>(38577u, 1u, 7824u, 4294967295u)), Struct_1(4294967295u, vec4<u32>(49018u, 4294967295u, 19568u, 17207u)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, ~max(u_input.a, u_input.b)), min(max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.a, u_input.b)), ~vec2<u32>(u_input.b, u_input.b)), abs(abs(vec2<u32>(u_input.a, u_input.a))))), ~(~vec2<u32>(u_input.b, 30855u)) & vec2<u32>(u_input.b, 26184u), vec2<bool>(false, true));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1547f, 433f, 1001f) - vec3<f32>(global0.x, global0.x, global0.x))) + vec3<f32>(-349f, -148f, global0.x))))));
    var var_1 = -9341i;
    global1 = array<Struct_1, 28>();
    var var_2 = vec4<f32>(1051f, 651f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 332f))));
    return var_2.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), global0.x, 623f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 1000f) + vec3<f32>(-225f, global0.x, -101f))))));
    var var_0 = arg_2;
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -266f, global0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1299f), 322f, _wgslsmith_f_op_f32(global0.x - global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -945f, -1805f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -876f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, global0.x))), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -305f, 167f) * vec3<f32>(global0.x, -623f, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1907f, global0.x))))), any(vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1564f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(514f))))), !any(vec2<bool>(false, true))))));
    let var_2 = _wgslsmith_div_u32(69384u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(3134u << (u_input.a % 32u), countOneBits(u_input.b)), vec2<u32>(u_input.b, 1u)));
    return Struct_1(~_wgslsmith_dot_vec3_u32(var_0.b.wyy, vec3<u32>(u_input.a | var_0.b.x, _wgslsmith_dot_vec2_u32(var_0.b.zy, vec2<u32>(arg_1, 4294967295u)), ~13298u)), arg_2.b ^ var_0.b);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = func_2(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-14885i, -2147483647i), vec2<i32>(1i, u_input.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 27209i), vec2<i32>(1i, 27526i))) | firstTrailingBit(max(vec2<i32>(15928i, -2147483647i), vec2<i32>(u_input.c, u_input.c))), ~((vec2<i32>(u_input.c, -11558i) ^ vec2<i32>(-1i, u_input.c)) | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.c, u_input.c)))), firstTrailingBit(4294967295u), Struct_1(72375u, arg_0.b));
    var var_2 = global1[_wgslsmith_index_u32(~1u, 28u)];
    var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec4_u32(select(arg_0.b, _wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(arg_0.a, var_1.b.x, arg_0.a, var_2.b.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true)), var_2.b)), vec4<u32>(~min(27568u, 1u), 0u, 1u, _wgslsmith_clamp_u32(4294967295u, 45397u, ~_wgslsmith_mod_u32(44910u, 48660u))));
    return Struct_1(~(~25485u), reverseBits(var_1.b));
}

fn func_1() -> f32 {
    var var_0 = func_4(func_2(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c) ^ vec2<i32>(u_input.c, u_input.c)) << (vec2<u32>(18323u, 58002u) % vec2<u32>(32u)), ~firstLeadingBit(~0u), Struct_1(_wgslsmith_add_u32(0u, 43465u), ~(~vec4<u32>(u_input.b, u_input.b, u_input.b, 4663u)))));
    global1 = array<Struct_1, 28>();
    global1 = array<Struct_1, 28>();
    var var_1 = vec3<bool>(!(30891u > ~var_0.b.x), any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(step(1000f, 1983f)) <= _wgslsmith_f_op_f32(abs(global0.x)))));
    var var_2 = global1[_wgslsmith_index_u32(3137u, 28u)];
    return -1734f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(func_1()));
    var var_0 = !(true & !any(vec3<bool>(true, true, true)));
    var_0 = all(select(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), vec2<bool>(!select(true, false, true), (u_input.c >= u_input.c) && true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false)));
    let var_1 = (!(_wgslsmith_sub_u32(u_input.b, 11282u) <= 1387u) == all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true))) || any(!vec4<bool>(true, true, true, select(false, false, false)));
    var var_2 = reverseBits(u_input.c & ~(~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(global0.zz);
}

