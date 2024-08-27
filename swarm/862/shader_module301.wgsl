struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = Struct_5(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(31594u, 4294967295u, 1u, 1u), select(vec4<u32>(1u, 1u, 0u, 22621u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<bool>(true, true, true, true)) << (~vec4<u32>(28491u, 1892u, 29379u, 0u) % vec4<u32>(32u))), select(vec4<u32>(countOneBits(~33357u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(13905u, 14610u), vec2<u32>(25939u, 1u)), 4294967295u, 68028u), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(9707u, 1u, 0u, 0u))), vec4<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false)), true, true, false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(-1469f, 383f), -717f, _wgslsmith_div_f32(1000f, 1000f), _wgslsmith_f_op_f32(abs(268f))))))), Struct_1(~firstLeadingBit(vec3<u32>(3072u, 1u, 49305u)) ^ vec3<u32>(firstTrailingBit(0u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 63774u), vec4<u32>(4294967295u, 1u, 1u, 4294967295u))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c << (60528u % 32u), -1i, u_input.b, ~2147483647i), vec4<i32>(1i, -1i, -49655i, 1818i)), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1821f, _wgslsmith_f_op_f32(step(110f, -291f)), -310f))), ~(-u_input.a.x));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_div_u32(firstLeadingBit(~var_0.b.x), var_0.b.x), 24246u);
    var_0 = Struct_5(var_0.a, min(~(~(~vec4<u32>(var_0.d.a.x, 0u, var_0.a.x, var_0.d.c))), var_0.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d.d.x)))), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), var_0.c.x), Struct_1(vec3<u32>(abs(1u), var_1 | var_0.d.a.x, 4294967295u) << (~abs(var_0.d.a) % vec3<u32>(32u)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_mult_i32(-2147483647i, -1i), firstTrailingBit(select(u_input.c, var_0.d.b, true))), _wgslsmith_add_u32(var_0.d.c, 24960u), var_0.c.yyz), u_input.a.x);
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-select(36165i, var_0.e, false), ~_wgslsmith_sub_i32(var_0.d.b, 18693i), -16842i << (1u % 32u)), select(~(u_input.a.zzx << (vec3<u32>(66522u, var_1, 8738u) % vec3<u32>(32u))), ~firstLeadingBit(vec3<i32>(-1i, var_0.e, u_input.a.x)), true)), -abs(abs(_wgslsmith_div_i32(-2147483647i, u_input.b))), 6078i, ~(min(_wgslsmith_div_i32(u_input.c, 1i), 1i) | -2147483647i));
    var_0 = Struct_5(~(~vec4<u32>(~var_1, 0u, abs(var_0.a.x), ~var_1)), var_0.a, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.d.x, var_0.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x - 1000f), 588f)))), _wgslsmith_f_op_f32(min(var_0.d.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.c.x)))))), 354f), Struct_1(~(~(var_0.d.a & vec3<u32>(0u, var_1, 4294967295u))), -_wgslsmith_dot_vec2_i32(var_2.ww, vec2<i32>(-3749i, 5500i)), var_1, var_0.d.d), ~(~(-countOneBits(var_0.d.b))));
    return _wgslsmith_sub_u32(~4294967295u, ~max(_wgslsmith_div_u32(1u, var_0.b.x), reverseBits(0u))) ^ _wgslsmith_clamp_u32(var_0.a.x, 53454u, ~max(var_1, 20047u) | _wgslsmith_clamp_u32(var_0.b.x, reverseBits(42117u), 4663u));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_5(~vec4<u32>(4294967295u, 1u, 88713u, _wgslsmith_add_u32(78077u, func_3())), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), countOneBits(min(abs(vec4<u32>(0u, 62341u, 4294967295u, 39121u)), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(0u, abs(1u), ~1u, abs(1364u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1842f, 237f, 1347f, -794f)) - vec4<f32>(_wgslsmith_f_op_f32(round(876f)), 429f, _wgslsmith_f_op_f32(f32(-1f) * -216f), -1948f)), Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(16303u, 1u, 0u, 4294967295u), vec4<u32>(20948u, 37929u, 4294967295u, 0u)), ~firstLeadingBit(56229u), 1u), u_input.c | 73760i, _wgslsmith_clamp_u32(0u, 1u, ~1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(450f, 1330f, 1537f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(515f, 341f, 706f)))))), ~(i32(-1i) * -min(arg_0, -2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f));
    var var_2 = _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(var_0.d.d.x, -1446f, var_0.c.x, var_0.d.d.x)), _wgslsmith_f_op_vec4_f32(abs(var_0.c))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1313f, var_1, var_0.c.x, var_0.c.x), _wgslsmith_f_op_vec4_f32(-var_0.c)))), vec4<f32>(367f, 282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.x))), -1086f)));
    let var_3 = !(!select(vec2<bool>(var_0.d.d.x == var_1, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    let var_4 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1250f, var_0.c.x)) * var_0.d.d.x), _wgslsmith_f_op_f32(953f - -1240f), -930f, var_2.x), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_3.x, var_3.x, false, true), true), select(vec4<bool>(false, false, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), var_3.x), vec4<bool>(true, var_3.x, var_3.x, true))), _wgslsmith_f_op_vec2_f32(-var_0.c.xy), var_0.d, _wgslsmith_dot_vec3_u32(firstLeadingBit(max(vec3<u32>(var_0.d.a.x, var_0.a.x, var_0.a.x), vec3<u32>(0u, 30070u, 12842u))), abs(countOneBits(firstLeadingBit(var_0.b.zxx)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.c)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-614f, var_0.d.d.x, 1460f, 371f)), var_0.c))))));
    return select(var_3, !vec2<bool>(u_input.a.x < arg_0, false), !var_4.a.b.yw);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = -249f;
    var var_2 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1531f * var_0))))));
    var var_3 = !(!func_2(_wgslsmith_div_i32(-u_input.b, ~u_input.c)));
    var var_4 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(select(_wgslsmith_clamp_u32(1u, 4181u, 32153u), abs(0u), all(vec4<bool>(true, var_3.x, var_3.x, var_3.x))), 7362u, 28764u ^ select(4294967295u, 31635u, false)), ~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(8502u, 9655u, 1u))), firstTrailingBit(vec3<u32>(1u, 1u, 1u))), -_wgslsmith_div_i32(max(u_input.c, _wgslsmith_div_i32(47290i, -11517i)), abs(u_input.b)), ~(~reverseBits(~33074u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, arg_0), vec3<f32>(434f, arg_0, 1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 603f, var_0), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-177f, -1031f, arg_0))), var_3.x)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1249f, var_0, arg_0, -2413f), vec4<f32>(var_4.d.x, arg_0, var_4.d.x, -158f), vec4<bool>(false, var_3.x, var_3.x, true))), _wgslsmith_div_vec4_f32(vec4<f32>(638f, -218f, 705f, arg_0), vec4<f32>(var_0, 878f, -711f, arg_0))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, var_4.d.x, -840f, var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1164f, arg_0, arg_0))))), !vec4<bool>(!var_3.x, true, all(vec3<bool>(true, false, true)), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1306f);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(1104f, var_0.a.x, 1206f, var_0.a.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) - _wgslsmith_f_op_vec4_f32(var_0.a + var_0.a))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a))))), select(!select(var_0.b, select(var_0.b, var_0.b, var_0.b), true), !func_1(_wgslsmith_f_op_f32(f32(-1f) * -522f)).b, _wgslsmith_div_f32(var_0.a.x, var_0.a.x) > var_0.a.x));
    let var_2 = Struct_4(Struct_1(firstTrailingBit(~vec3<u32>(0u, 38437u, 4294967295u)), countOneBits(-11279i), 4294967295u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.a.zww * var_0.a.wzz)))));
    let var_3 = Struct_1(var_2.a.a, ~10949i, ~(~(~1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.a.xzx)))));
    let var_4 = var_0.b.x;
    let var_5 = var_1.b.x;
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1338f, var_2.a.d.x, func_1(var_3.d.x).a.x, var_0.a.x)))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-141f, _wgslsmith_f_op_f32(var_2.a.d.x + 219f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.d.x - var_2.a.d.x)) * var_1.a.x)), countOneBits(abs(_wgslsmith_clamp_vec3_u32(var_2.a.a, var_2.a.a << (var_3.a % vec3<u32>(32u)), vec3<u32>(45085u, 5461u, 7535u)))), 653f, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(min(var_3.d.x, var_3.d.x)))), vec4<u32>(~5380u, _wgslsmith_sub_u32(4294967295u, var_2.a.a.x) & _wgslsmith_sub_u32(~var_3.c, ~61692u), _wgslsmith_div_u32(~_wgslsmith_add_u32(77132u, var_3.c), var_3.c << (_wgslsmith_mult_u32(4294967295u, 1u) % 32u)), var_3.c));
}

