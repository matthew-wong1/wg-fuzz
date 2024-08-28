struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 2147483647i, 52350i);

var<private> global1: vec3<i32>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_2(Struct_1(~global2.a.a), Struct_1(max(44639u, min(25519u, _wgslsmith_mod_u32(0u, 48349u)))));
    var var_1 = ~abs(countOneBits(vec3<u32>(0u, ~global2.a.a, ~10195u)));
    global0 = ~(~_wgslsmith_mult_vec3_i32(-select(vec3<i32>(-1i, global0.x, -8405i), vec3<i32>(59805i, arg_0, u_input.a), true), abs(vec3<i32>(u_input.a, 1i, 0i))));
    global2 = Struct_2(global2.a, Struct_1(~firstLeadingBit(arg_2.x)));
    global2 = Struct_2(Struct_1(1u), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a, var_0.b.a, 1u, 0u), vec4<u32>(4969u, 567u, var_0.a.a, var_0.b.a)) | ~var_0.b.a, ~global2.b.a)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1129f))) - _wgslsmith_f_op_f32(690f - _wgslsmith_f_op_f32(sign(894f)))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(-1204f, _wgslsmith_f_op_f32(abs(217f)), false))))))));
}

fn func_2() -> bool {
    global2 = Struct_2(Struct_1(countOneBits(select(1u, global2.a.a, true))), global2.a);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1701f)), _wgslsmith_f_op_f32(func_3(36442i, ~vec2<i32>(u_input.a, 2147483647i), ~vec2<u32>(20833u, global2.a.a)))))), 1709f, -537f);
    global0 = -countOneBits(-_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, global1.x, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 38970i), vec3<i32>(34702i, 1i, u_input.a))));
    var var_1 = all(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), all(vec3<bool>(true, true, false))));
    let var_2 = Struct_1(min(0u, global2.b.a));
    return true;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(select(u_input.a, 17021i, arg_1.x), 8014i, -1i & global0.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-21818i, global0.x, u_input.a, 0i), vec4<i32>(-1i, global0.x, -789i, global0.x)), global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(10040i, 1603i)))) & (-(~vec3<i32>(1i, u_input.a, -20861i)) & ~(~vec3<i32>(-32598i, 57045i, global1.x))));
    global1 = _wgslsmith_clamp_vec3_i32(~(-(vec3<i32>(global1.x, -1i, 0i) & vec3<i32>(2147483647i, -6481i, -2147483647i))) >> (vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_2.a, 11575u), 1u), arg_2.a, global2.b.a | arg_2.a) % vec3<u32>(32u)), vec3<i32>(-_wgslsmith_sub_i32(0i | global1.x, 2147483647i), 21653i, -1i), (vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(u_input.a, global1.x)), _wgslsmith_mult_i32(global1.x, 30762i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -2147483647i, global0.x), vec3<i32>(-2888i, -2147483647i, 1i))) >> (vec3<u32>(_wgslsmith_mod_u32(20409u, arg_2.a), abs(3981u), _wgslsmith_mult_u32(52246u, 1u)) % vec3<u32>(32u))) ^ vec3<i32>(u_input.a, -(i32(-1i) * -19297i), max(-22969i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, 14326i, -20334i), vec4<i32>(15698i, u_input.a, -15151i, 10037i)))));
    global2 = Struct_2(arg_2, Struct_1(arg_2.a));
    var var_0 = Struct_1(abs(reverseBits(min(~0u, firstLeadingBit(44456u)))));
    var var_1 = arg_0;
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    global0 = vec3<i32>(22290i, ~(i32(-1i) * -7673i), abs(global1.x));
    global2 = arg_2;
    let var_0 = select(arg_3.zzy, vec3<bool>(all(arg_3.zzw), arg_3.x, all(arg_3)), vec3<bool>(((global1.x >> (arg_0.a % 32u)) | 1i) == _wgslsmith_clamp_i32(-global0.x, 36480i, 1i), any(vec4<bool>(arg_3.x, any(arg_3.xxw), arg_3.x && arg_3.x, arg_3.x)), !((global0.x & global0.x) == 2147483647i)));
    var var_1 = _wgslsmith_add_u32(global2.a.a, 37862u);
    let var_2 = arg_1.a;
    return Struct_2(Struct_1(~(~_wgslsmith_clamp_u32(0u, arg_0.a, arg_2.a.a))), func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-389f, -239f)))), vec3<bool>(true, select(true, arg_0.a <= arg_1.a, true), true), arg_0));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = 386u;
    global2 = func_5(global2.a, func_4(-314f, select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(all(vec2<bool>(false, false)), func_2(), true), vec3<bool>(any(vec4<bool>(false, true, true, true)), any(vec2<bool>(false, false)), global1.x != 0i)), global2.b), Struct_2(Struct_1(~0u), Struct_1(1u)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))));
    let var_1 = ~abs(~0u);
    let var_2 = Struct_1(~min(39636u, _wgslsmith_sub_u32(firstLeadingBit(arg_0), 4294967295u)));
    var var_3 = global1.yy;
    return min(_wgslsmith_sub_i32(i32(-1i) * -22889i, i32(-1i) * -21041i), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(u_input.a, abs(~firstTrailingBit(_wgslsmith_add_i32(-28342i, global0.x))), _wgslsmith_clamp_i32(func_1(44572u), ~_wgslsmith_dot_vec4_i32(min(vec4<i32>(global1.x, global1.x, 28623i, 34187i), vec4<i32>(-2147483647i, u_input.a, global0.x, global0.x)), select(vec4<i32>(-1i, u_input.a, 2147483647i, -36397i), vec4<i32>(20469i, global1.x, u_input.a, global0.x), false)), global0.x));
    global1 = reverseBits(select(firstLeadingBit(-vec3<i32>(global1.x, 2147483647i, 27177i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.x, global1.x), vec3<i32>(global1.x, 1i, 2147483647i)), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 0i, 18154i), vec3<i32>(-2147483647i, 0i, u_input.a))), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(global1.x, 8865i, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global1.x, global1.x), vec3<i32>(global1.x, 0i, 17210i)))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, all(vec4<bool>(false, true, true, false))), true)));
    let var_0 = func_5(Struct_1(29764u), Struct_1(~global2.b.a), Struct_2(Struct_1(4332u), func_5(func_5(global2.b, func_4(-755f, vec3<bool>(false, true, false), global2.b), func_5(global2.b, global2.b, Struct_2(global2.a, global2.b), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))).a, Struct_1(global2.b.a << (global2.a.a % 32u)), Struct_2(func_5(Struct_1(global2.a.a), global2.b, Struct_2(global2.a, global2.a), vec4<bool>(true, false, true, false)).a, func_4(859f, vec3<bool>(true, true, false), global2.a)), vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true)).a), vec4<bool>(true, true, true, true)).b;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -872f) - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(global0.x, global1.xy, vec2<u32>(70728u, var_0.a))))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 2604f, _wgslsmith_f_op_f32(abs(-852f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_div_f32(344f, -517f), _wgslsmith_f_op_f32(f32(-1f) * -602f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(454f, -748f, -432f), vec3<f32>(-577f, 1113f, 120f), true))))))));
    let var_2 = Struct_2(global2.a, func_5(Struct_1(1u), var_0, func_5(var_0, func_4(_wgslsmith_f_op_f32(1027f + 292f), vec3<bool>(true, false, false), func_4(-716f, vec3<bool>(false, false, true), var_0)), func_5(Struct_1(global2.a.a), global2.b, Struct_2(global2.b, Struct_1(32771u)), vec4<bool>(false, true, false, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), vec4<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), !any(vec3<bool>(true, false, false)), true)).b);
    let var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>((i32(-1i) * -17277i) >> ((select(global2.b.a, 4294967295u, true) << (var_0.a % 32u)) % 32u), -max(func_1(27223u), func_1(global2.b.a))), var_1.xx, vec2<u32>(var_0.a, ~abs(~0u)));
}

