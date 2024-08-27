struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, true, false, true, true, true, true, false, true, false, true, false, true, true, false, false, false, true, false, false, false, true, true, true, true, true, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) + _wgslsmith_f_op_f32(sign(-572f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-865f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(1821f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(630f)))))));
    return -1082f;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_1(~arg_3.c.a, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_3.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_3.d.x, 31618i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0i, arg_1))), _wgslsmith_f_op_f32(-1123f + -1107f), _wgslsmith_f_op_f32(-arg_3.c.e.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1368f, -1851f, 881f, -831f)) - vec4<f32>(arg_2, -515f, arg_2, -1094f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.c.c, arg_3.c.c, arg_2, 1082f))), _wgslsmith_f_op_vec4_f32(-arg_3.c.e))))), -22725i >= min(_wgslsmith_dot_vec3_i32(arg_3.c.a, vec3<i32>(21870i, arg_3.b, arg_3.b)), 1i))));
    let var_1 = 15960u << (arg_3.a % 32u);
    var_0 = arg_3.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1512f + -2051f), _wgslsmith_f_op_f32(-arg_3.c.c))), arg_3.c.e.yz)));
    var_0 = arg_3.c;
    return ~arg_3.c.d;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec2<i32>) -> vec4<u32> {
    global0 = array<bool, 28>();
    var var_0 = 69311u;
    let var_1 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, ~92932u), 4294967295u) & reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(37586u, 88825u)), firstLeadingBit(89119u))), 28u)], !global0[_wgslsmith_index_u32(abs(select(firstTrailingBit(1u), _wgslsmith_add_u32(51145u, 1u), select(false, global0[_wgslsmith_index_u32(72126u, 28u)], false))), 28u)], true, all(vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(15707u, 28u)], global0[_wgslsmith_index_u32(72526u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], true)), _wgslsmith_mult_i32(arg_1, -12026i) > u_input.a, !(global0[_wgslsmith_index_u32(4294967295u, 28u)] | true), _wgslsmith_dot_vec4_u32(vec4<u32>(49155u, 0u, 4294967295u, 117273u), vec4<u32>(4294967295u, 18784u, 0u, 21833u)) >= ~1u)));
    var var_2 = Struct_1(min(_wgslsmith_sub_vec3_i32(select(vec3<i32>(arg_1, arg_1, -34880i) ^ vec3<i32>(-2147483647i, arg_2.x, arg_1), vec3<i32>(arg_2.x, 0i, 26116i), true), vec3<i32>(2147483647i, _wgslsmith_clamp_i32(1i, -19275i, 2147483647i), arg_2.x)), vec3<i32>(-(~(-1i)), -1i, arg_1)), !vec4<bool>(_wgslsmith_div_f32(314f, arg_0) > _wgslsmith_f_op_f32(round(arg_0)), any(!var_1.ww), !all(vec4<bool>(var_1.x, true, true, true)), -561f <= _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_mult_i32(0i, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(592f, arg_0, 1123f, 1000f) + vec4<f32>(-180f, 1019f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(881f, arg_0, -614f, -808f))))))));
    let var_3 = Struct_2(~min(_wgslsmith_dot_vec2_u32(vec2<u32>(63550u, 40599u), abs(vec2<u32>(1u, 38436u))), 1u), arg_2.x, Struct_1(vec3<i32>(-1i) * -var_2.a, var_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(-var_2.c)))), arg_2.x, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 * var_2.e.x), _wgslsmith_f_op_f32(-var_2.e.x))), -1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, -1000f), _wgslsmith_f_op_f32(max(arg_0, 247f))), -826f)));
    return select(_wgslsmith_div_vec4_u32(abs(vec4<u32>(countOneBits(1u), ~0u, 51766u, _wgslsmith_clamp_u32(var_3.a, var_3.a, 1u))), abs(firstLeadingBit(vec4<u32>(85584u, var_3.a, 13339u, 0u))) << (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_3.a, 4294967295u, 0u, 0u)), vec4<u32>(var_3.a, 28784u, var_3.a, var_3.a)) % vec4<u32>(32u))), vec4<u32>(var_3.a, var_3.a, 1506u, abs(1u)), !select(vec4<bool>(true, var_2.b.x, false, true), !(!var_3.c.b), vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec4_u32(~func_4(_wgslsmith_div_f32(403f, _wgslsmith_f_op_f32(floor(-2178f))), func_2(select(vec4<bool>(arg_3, false, global0[_wgslsmith_index_u32(0u, 28u)], true), vec4<bool>(arg_3, true, true, global0[_wgslsmith_index_u32(1u, 28u)]), global0[_wgslsmith_index_u32(arg_0, 28u)]), _wgslsmith_mod_i32(-17132i, 1i), _wgslsmith_f_op_f32(-458f - 689f), Struct_3(35834u, 0i, Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0, 28u)], false, arg_3), 584f, 4546i, vec4<f32>(305f, 441f, 398f, -1639f)), arg_2, vec3<bool>(false, true, true))), arg_2), vec4<u32>(func_4(_wgslsmith_f_op_f32(func_3(1i, ~u_input.a)), firstTrailingBit(1i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_2.x, arg_1, 1961i), vec4<i32>(-13070i, 32892i, 1i, arg_1)), reverseBits(arg_2.x))).x, ~1u, arg_0, 5039u));
    let var_1 = Struct_2(arg_0, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 22301i, -2147483647i, 1i), vec4<i32>(u_input.a, 0i, -16666i, arg_2.x))) & -reverseBits(1i), Struct_1(max(reverseBits(abs(vec3<i32>(-2147483647i, arg_1, arg_1))), firstTrailingBit(vec3<i32>(arg_1, 0i, 1i))), !(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_0, 28u)], arg_3)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1066f)), _wgslsmith_div_f32(-1000f, -1152f)) - -401f), select(u_input.a, u_input.a, true), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(196f * 190f), -326f, !global0[_wgslsmith_index_u32(var_0.x, 28u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) - _wgslsmith_f_op_f32(231f - -1000f)), 1065f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 120f)))));
    var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(arg_0, var_0.x, arg_0)), 4294967295u, 1u, countOneBits(1u)), vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(11474u, var_1.a, var_1.a, 0u), vec4<u32>(var_1.a, arg_0, 0u, 73994u), var_1.c.b.x), ~vec4<u32>(1u, 4294967295u, var_0.x, 68u)), (1u << (var_1.a % 32u)) >> (~var_0.x % 32u), var_0.x << (1u % 32u), ~45939u));
    var var_2 = var_1.a;
    var_0 = firstTrailingBit(vec4<u32>(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x, var_1.a), 39967u, abs(4738u)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, var_1.a)), vec2<u32>(8103u, _wgslsmith_mod_u32(arg_0, var_0.x))), _wgslsmith_dot_vec2_u32(var_0.zw, min(~var_0.wz, vec2<u32>(1u, 28255u))), 1u));
    return var_1.c.b;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    var var_0 = Struct_3(53887u, countOneBits(777i), Struct_1(vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), 10511i, abs(0i)), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -2185f), countOneBits(-23675i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(239f, arg_0.x, 1049f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), ~(~firstTrailingBit(~vec2<i32>(u_input.a, 1i))), arg_2.xxx);
    var_0 = Struct_3((select(arg_1.x, firstTrailingBit(arg_1.x), var_0.c.b.x) << (min(~15485u, ~arg_1.x) % 32u)) >> (min(firstTrailingBit(var_0.a), 4849u) % 32u), ~firstLeadingBit(-u_input.a), Struct_1(_wgslsmith_add_vec3_i32(var_0.c.a, ~var_0.c.a), !(!vec4<bool>(true, true, true, arg_3)), arg_0.x, var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1413f, var_0.c.c, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, -368f, -2549f, arg_0.x)))))), select(~vec2<i32>(u_input.a, 1i) ^ vec2<i32>(1i, -14428i), var_0.c.a.xy, true), var_0.c.b.wyy);
    global0 = array<bool, 28>();
    var var_1 = arg_0.x;
    var var_2 = var_0.c.a.xx & vec2<i32>(~(var_0.b | max(-61859i, var_0.d.x)), -(~(-31695i)));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, ~(~1u), abs(abs(firstLeadingBit(vec3<u32>(38011u, 35622u, 1u)))), ~_wgslsmith_clamp_u32(func_5(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1537f, -286f))), vec4<u32>(1u, 1u, 1u, 1u), func_1(12531u, 44680i, vec2<i32>(u_input.a, u_input.a), true), true), ~109226u, ~25803u), -111f);
}

