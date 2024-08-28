struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 21700u;

var<private> global1: f32 = -498f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    global1 = 1073f;
    var var_0 = -23112i;
    var_0 = ~firstTrailingBit(u_input.c.x);
    var var_1 = Struct_1(~_wgslsmith_add_u32(_wgslsmith_div_u32(53658u, 1u), 1u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1014f, 170f, 1000f, -364f) + vec4<f32>(-175f, -1898f, 1845f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1688f, -1418f, 257f) + vec4<f32>(171f, -636f, 634f, -1457f)))))), ~vec3<i32>((u_input.c.x | u_input.c.x) & min(0i, u_input.c.x), 33488i, 27226i));
    global0 = u_input.a;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-458f * _wgslsmith_f_op_f32(abs(-1656f)))));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> u32 {
    return arg_1.e.x | abs(~_wgslsmith_div_u32(4294967295u, arg_1.e.x));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(u_input.a, 4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(605f, -1026f, 1000f, 300f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(1218f)), _wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_div_f32(-1097f, 1895f), _wgslsmith_div_f32(-1250f, 1101f)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), true))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-591f, -797f, -741f, -939f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-421f, 1000f, -1309f, -196f) - vec4<f32>(-1434f, 1023f, 1155f, -1575f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(515f, 1000f, -384f, 582f), vec4<f32>(-1000f, -602f, 726f, -548f)))))))), vec3<i32>(_wgslsmith_div_i32(u_input.b, 0i), u_input.c.x, ~(u_input.c.x & u_input.b)) | _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(_wgslsmith_div_i32(2147483647i, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(403i, u_input.c.x), vec2<i32>(-60075i, 36741i)), 2147483647i)));
    global1 = _wgslsmith_f_op_f32(max(-1472f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.b.x))));
    var var_1 = vec2<i32>(countOneBits(-2147483647i), _wgslsmith_dot_vec2_i32(~(u_input.c & vec2<i32>(2147483647i, -9929i)), max(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(11284i, -1i), vec2<i32>(1i, -1i), u_input.c), _wgslsmith_div_vec2_i32(vec2<i32>(61050i, var_0.c.x), vec2<i32>(-2147483647i, var_0.c.x))), _wgslsmith_clamp_vec2_i32(u_input.c, _wgslsmith_clamp_vec2_i32(u_input.c, var_0.c.yz, vec2<i32>(12491i, 0i)), select(vec2<i32>(var_0.c.x, var_0.c.x), u_input.c, vec2<bool>(false, false))))));
    var var_2 = ~reverseBits(~var_0.a << (1u % 32u)) == abs(14475u);
    global1 = 421f;
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = (vec2<i32>(-1i) * -u_input.c) << (~u_input.d % vec2<u32>(32u));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x)));
    var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(42410i), abs(u_input.b | -var_0.x)), arg_0.c.zx);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x), _wgslsmith_f_op_f32(select(arg_2.b.x, -322f, true)))))), ~vec2<u32>(arg_0.a, 1u), max(-2147483647i, -16772i), arg_1.x, _wgslsmith_div_vec2_u32(vec2<u32>(45729u, reverseBits(_wgslsmith_div_u32(1u, 46163u))), vec2<u32>(firstTrailingBit(func_2(arg_1.x, Struct_2(arg_0.b.x, u_input.d, var_1.c.x, arg_1.x, vec2<u32>(var_1.a, 1u)), vec3<i32>(-35554i, 1i, arg_2.c.x))), ~(~var_1.a))));
    return -48370i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_1());
    var var_0 = vec4<u32>(abs(~_wgslsmith_mult_u32(1910u, u_input.d.x) & 60325u), 4914u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 1u, 15466u), ~(~vec3<u32>(u_input.a, u_input.a, 57365u))), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 54405u, 1u), reverseBits(vec3<u32>(1u, 0u, u_input.a)), firstLeadingBit(vec3<u32>(u_input.d.x, 0u, u_input.d.x))), ~(vec3<u32>(u_input.d.x, 4294967295u, 85562u) ^ vec3<u32>(1u, 79898u, 9934u)), true)), _wgslsmith_sub_u32(~19029u, 36270u));
    var var_1 = ~((firstTrailingBit(-vec3<i32>(2147483647i, 17775i, 1i)) >> ((abs(vec3<u32>(var_0.x, var_0.x, 5723u)) >> (var_0.xww % vec3<u32>(32u))) % vec3<u32>(32u))) & ~(-(~vec3<i32>(-1i, u_input.b, 2147483647i))));
    var_0 = ~(vec4<u32>(u_input.a, 1u << (select(u_input.d.x, u_input.a, true) % 32u), 25066u, 0u) | min(vec4<u32>(firstTrailingBit(95145u), 13231u, _wgslsmith_mod_u32(34818u, 30141u), ~4294967295u), vec4<u32>(func_2(false, Struct_2(-1532f, u_input.d, u_input.b, false, vec2<u32>(41228u, 0u)), vec3<i32>(19855i, 12243i, var_1.x)), firstTrailingBit(58768u), abs(4294967295u), 1u)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f))), ~_wgslsmith_add_vec2_u32(u_input.d, var_0.zz >> (var_0.yz % vec2<u32>(32u))), _wgslsmith_mod_i32(-60581i, _wgslsmith_div_i32(func_4(Struct_1(1u, vec4<f32>(-988f, -1902f, -508f, -808f), vec3<i32>(2147483647i, u_input.c.x, u_input.b)), vec3<bool>(true, true, true), Struct_1(80063u, vec4<f32>(-591f, 2052f, 556f, 581f), vec3<i32>(var_1.x, -15047i, var_1.x)), func_3()), _wgslsmith_sub_i32(~(-2147483647i), 1i))), all(vec4<bool>(true, true, true, true)), vec2<u32>(31771u ^ (0u | var_0.x), u_input.d.x) << (vec2<u32>(var_0.x, ~1u) % vec2<u32>(32u)));
    var var_3 = vec2<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.c.x, 2147483647i), ~vec4<i32>(var_1.x, 2147483647i, -11690i, 1i)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c, 2147483647i, var_2.c), ~vec3<i32>(u_input.b, u_input.c.x, 1i))), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(1218i, u_input.c.x, 2147483647i, var_1.x), vec4<i32>(1i, -1i, -38007i, -2147483647i))) & firstTrailingBit(vec4<i32>(var_2.c, var_2.c, u_input.c.x, var_1.x)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(-1i, -1i, var_2.c, -1i), vec4<i32>(u_input.c.x, 2147483647i, -1i, var_2.c)) >> (select(vec4<u32>(var_0.x, 63737u, var_2.b.x, 4294967295u), vec4<u32>(var_2.e.x, var_2.e.x, var_2.e.x, u_input.a), vec4<bool>(var_2.d, var_2.d, true, false)) % vec4<u32>(32u)), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -5980i, var_2.c), vec3<i32>(20969i, var_2.c, var_1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.c.x, -3404i, 1i), vec4<i32>(-24212i, 27863i, 0i, -28819i)), 1i))));
    var var_4 = var_2.d & !(!(!any(vec3<bool>(var_2.d, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(621f, 1241f, vec2<u32>(~(_wgslsmith_sub_u32(60265u, u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 23712u), var_0.xzx) % 32u)), var_2.b.x));
}

