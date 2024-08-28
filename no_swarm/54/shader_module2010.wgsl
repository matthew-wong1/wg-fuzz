struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = arg_1.x;
    var var_1 = vec3<i32>(countOneBits(min(21080i, -1i)), -_wgslsmith_sub_i32(1i, min(select(arg_0, arg_0, arg_1.x), firstTrailingBit(38773i))), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -15865i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, arg_0))) >> (1u % 32u));
    var_1 = abs(-(~(-vec3<i32>(var_1.x, arg_0, -25912i) ^ select(vec3<i32>(-20901i, 0i, arg_0), vec3<i32>(8216i, -2147483647i, 14099i), vec3<bool>(true, arg_1.x, true)))));
    let var_2 = arg_1.wz;
    let var_3 = vec2<bool>(true, true);
    return ~(~(~(~u_input.b.zz)) >> (u_input.b.xx % vec2<u32>(32u)));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_3(~abs(3027i), Struct_1(min(select(vec2<u32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(u_input.b.x, u_input.a)), true), _wgslsmith_clamp_vec2_u32(func_3(1i, vec4<bool>(true, arg_0, arg_0, arg_0)), vec2<u32>(30487u, u_input.a), ~u_input.b.zx)), u_input.b), -vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, 20552i, -1i), vec4<i32>(-15411i, 31997i, 27048i, 0i)), ~1i, 41082i, -1i), Struct_2(~firstTrailingBit(vec3<i32>(15011i, -2147483647i, 2147483647i)) << (~(u_input.b >> (vec3<u32>(u_input.a, 1u, 82742u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, -1000f, -2274f, -265f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1126f, -1136f, -1000f, -1141f))) - vec4<f32>(-1878f, _wgslsmith_f_op_f32(444f - -2077f), _wgslsmith_f_op_f32(1785f + 970f), 279f)), true, _wgslsmith_div_vec2_i32(min(vec2<i32>(7041i, -1i) >> (u_input.b.zz % vec2<u32>(32u)), ~vec2<i32>(-21083i, 1i)), vec2<i32>(-1i, ~1i))));
    let var_1 = vec3<i32>(-var_0.d.d.x, -(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.d.d.x, var_0.c.x, var_0.a, 12155i), vec4<i32>(59854i, -59156i, var_0.d.a.x, -13880i), true), var_0.c >> (vec4<u32>(var_0.b.b.x, 42931u, var_0.b.b.x, var_0.b.a.x) % vec4<u32>(32u)))), min(var_0.d.d.x, firstLeadingBit(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, var_0.c.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1471f)));
    var var_3 = var_0;
    var var_4 = Struct_3(var_1.x, Struct_1(min(_wgslsmith_add_vec2_u32(abs(vec2<u32>(var_0.b.a.x, var_3.b.b.x)), _wgslsmith_sub_vec2_u32(var_0.b.a, var_0.b.a)), countOneBits(u_input.b.yy)), u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -countOneBits(-101087i), ~1i, _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, var_1.x), ~var_1.x)), var_0.c, vec4<i32>(_wgslsmith_sub_i32(1i, 5681i), 0i, firstLeadingBit(var_1.x), 1i) & vec4<i32>(firstLeadingBit(var_0.c.x), i32(-1i) * -2147483647i, ~8856i, var_0.d.a.x)), Struct_2(vec3<i32>(_wgslsmith_add_i32(var_0.a, _wgslsmith_mult_i32(var_0.d.d.x, var_3.d.d.x)), max(var_0.c.x, var_0.a), var_0.a), _wgslsmith_f_op_vec4_f32(floor(var_0.d.b)), true, -(~(-var_3.d.d))));
    return var_3.d.b.x;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(140f, -1729f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(false)), _wgslsmith_f_op_f32(-1753f * 210f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, -490f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1365f, 975f), vec2<f32>(1000f, 611f))))))));
    var var_1 = abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_mult_u32(22574u, 6545u)) | _wgslsmith_clamp_u32(~52291u, 1u, u_input.b.x | 1u), _wgslsmith_dot_vec2_u32(u_input.b.zx, max(u_input.b.zx, u_input.b.xz))));
    var_1 = ~(~abs(u_input.a));
    var_1 = 18371u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1074f - _wgslsmith_f_op_f32(-var_0.x))));
    return Struct_1(~vec2<u32>(1u, u_input.b.x), countOneBits(min(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(0u, u_input.a, 0u)), u_input.b, select(vec3<u32>(46681u, 52878u, u_input.a), vec3<u32>(0u, 1u, u_input.a), vec3<bool>(true, true, false))), u_input.b)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_i32(~(-34570i << (arg_0.b.x % 32u)), _wgslsmith_sub_i32(~_wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(34363i, -14893i)), abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 2147483647i, 78079i, -4577i), _wgslsmith_clamp_vec4_i32(vec4<i32>(24738i, -47567i, 25635i, -31351i), vec4<i32>(-8813i, 22270i, -1i, 0i), vec4<i32>(-9147i, -2147483647i, -38891i, 34222i))))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -994f), -855f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-449f, _wgslsmith_f_op_f32(max(825f, 1087f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2521f, -106f))))))));
    let var_2 = Struct_2(~vec3<i32>(_wgslsmith_div_i32(var_0, var_0), var_0, countOneBits(2147483647i & var_0)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -405f, 410f, var_1.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -192f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1454f, -250f))))))), false, max(~min(-vec2<i32>(var_0, var_0), _wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0))), ~countOneBits(vec2<i32>(var_0, var_0) >> (vec2<u32>(0u, 43257u) % vec2<u32>(32u)))));
    var var_3 = Struct_1(arg_0.a, u_input.b);
    var var_4 = _wgslsmith_f_op_f32(exp2(var_1.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2199f, 536f))))), -1189f)) != _wgslsmith_f_op_f32(func_4(func_1(), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.b.xz), _wgslsmith_div_vec3_u32(u_input.b, u_input.b)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(350f)) + 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-487f, 103f))) - -1560f) + _wgslsmith_f_op_f32(f32(-1f) * -1190f)));
    let var_2 = _wgslsmith_sub_vec2_i32(~countOneBits(~vec2<i32>(0i, -87356i)), max(-vec2<i32>(-13430i, min(2147483647i, 4239i)), vec2<i32>(-1311i, 1i)));
    var_0 = !(_wgslsmith_add_u32(35157u, 1u) != u_input.b.x);
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1256f + 393f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(400f)))))));
    var_1 = 468f;
    var var_3 = Struct_1(u_input.b.yx >> (~reverseBits(abs(vec2<u32>(4294967295u, u_input.b.x))) % vec2<u32>(32u)), u_input.b);
    var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(true, select(false, false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), false)));
    let var_4 = vec4<u32>(12187u, ~u_input.a << (reverseBits(func_3(2147483647i, vec4<bool>(true, true, true, true)).x) % 32u), ~firstTrailingBit(26447u), ~(1u >> (~u_input.b.x % 32u))) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(0u, u_input.a, var_3.a.x, var_3.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, 7775u, 4294967295u) & vec4<u32>(0u, 4294967295u, 65582u, u_input.a), vec4<u32>(4294967295u, var_3.a.x, u_input.a, 8902u), vec4<u32>(92633u, 1u, var_3.a.x, 63649u))), ~(vec4<u32>(var_3.a.x, u_input.a, 0u, 5016u) ^ select(vec4<u32>(u_input.b.x, u_input.a, 1u, 0u), vec4<u32>(var_3.b.x, var_3.b.x, u_input.b.x, 30305u), vec4<bool>(false, false, false, true)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~35784u, 0u, ~(-_wgslsmith_mod_i32(var_2.x, var_2.x)) & (var_2.x >> (var_4.x % 32u)), 0i, ~((~vec4<i32>(-2147483647i, var_2.x, 44970i, 24808i) | countOneBits(vec4<i32>(-2147483647i, var_2.x, -15873i, var_2.x))) << (var_4 % vec4<u32>(32u))));
}

