struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1394f, Struct_1(1i, vec4<f32>(352f, -673f, -571f, 662f), 31329u, false, vec4<bool>(true, false, false, true)), vec4<i32>(56890i, 1i, -29794i, -1i), vec2<bool>(false, true), vec3<f32>(-108f, 584f, -1218f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> vec2<bool> {
    global0 = Struct_2(global0.b.b.x, arg_3.b, vec4<i32>(u_input.a.x, ~5859i, 53451i | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, arg_3.b.a, arg_3.c.x), ~arg_3.c), ~(-(i32(-1i) * -2147483647i))), !arg_3.b.e.xy, vec3<f32>(-822f, arg_3.b.b.x, 466f));
    let var_0 = Struct_1(firstTrailingBit(-7815i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.e.x, global0.e.x, 1000f, 1533f))) - _wgslsmith_f_op_vec4_f32(arg_0.c.b * vec4<f32>(arg_0.c.b.x, global0.b.b.x, 752f, arg_3.b.b.x))))), global0.b.c, global0.b.d, vec4<bool>(true, true, true, true));
    var var_1 = vec2<bool>(all(!vec4<bool>(false, false, true, arg_3.d.x)) | (!(!arg_0.c.d) || arg_0.d.d.x), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(arg_0.a, global0.b.c), 4294967295u) < ~(~abs(arg_3.b.c)));
    global0 = arg_3;
    return select(select(vec2<bool>(all(!arg_3.b.e.xw), var_0.d), global0.d, vec2<bool>(all(var_0.e.xy), !global0.d.x & (1491f != arg_3.a))), vec2<bool>(true, arg_3.d.x), true);
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-1824f + arg_0))))))), global0.b, ~global0.c >> ((vec4<u32>(global0.b.c, _wgslsmith_sub_u32(5247u, global0.b.c), select(27948u, global0.b.c, global0.d.x), 4294967295u >> (global0.b.c % 32u)) << (vec4<u32>(~0u, global0.b.c >> (global0.b.c % 32u), _wgslsmith_div_u32(global0.b.c, global0.b.c), global0.b.c) % vec4<u32>(32u))) % vec4<u32>(32u)), select(!func_3(Struct_3(43271u, global0.c.x, Struct_1(u_input.a.x, global0.b.b, global0.b.c, global0.d.x, vec4<bool>(global0.d.x, global0.b.d, global0.b.d, true)), Struct_2(global0.a, global0.b, global0.c, global0.b.e.zx, global0.e), u_input.a), firstLeadingBit(vec2<u32>(global0.b.c, 4294967295u)), vec4<u32>(11437u, global0.b.c, 4294967295u, 42077u), Struct_2(268f, Struct_1(0i, vec4<f32>(-1000f, -938f, -495f, arg_0), global0.b.c, false, vec4<bool>(global0.b.d, global0.d.x, global0.b.e.x, global0.b.e.x)), vec4<i32>(global0.c.x, -2147483647i, global0.c.x, 1i), vec2<bool>(false, global0.d.x), vec3<f32>(arg_0, global0.e.x, 1312f))), vec2<bool>(_wgslsmith_div_f32(arg_0, arg_0) == _wgslsmith_f_op_f32(162f * global0.a), true), any(select(select(vec4<bool>(false, true, global0.d.x, false), vec4<bool>(global0.b.e.x, true, global0.d.x, global0.d.x), global0.b.e), !global0.b.e, false))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-776f + 2403f))), 534f, _wgslsmith_div_f32(1312f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(min(global0.a, arg_0))))));
    return Struct_2(619f, var_0.b, vec4<i32>(_wgslsmith_dot_vec4_i32(~global0.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -13111i, u_input.b.x, global0.c.x), -global0.c, var_0.c)), 1434i, -(global0.c.x >> (~5633u % 32u)), _wgslsmith_dot_vec2_i32(u_input.a.zy, firstTrailingBit(vec2<i32>(var_0.c.x, 2147483647i)) << (~vec2<u32>(4294967295u, 42422u) % vec2<u32>(32u)))), func_3(Struct_3(0u, -1i, global0.b, Struct_2(401f, global0.b, firstLeadingBit(var_0.c), global0.b.e.yx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, -294f, arg_0))), var_0.c.zxx), vec2<u32>(firstTrailingBit(var_0.b.c), _wgslsmith_mult_u32(0u >> (0u % 32u), 0u)), ~abs(~vec4<u32>(var_0.b.c, var_0.b.c, global0.b.c, global0.b.c)), var_0), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1528f, global0.a, global0.e.x)))))));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    global0 = func_2(global0.e.x);
    var var_0 = Struct_3(85503u, ~(~_wgslsmith_clamp_i32(-29952i, ~u_input.a.x, 0i)), global0.b, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.e.x)), 405f)), global0.b, global0.c, !(!global0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, arg_0, arg_0)))), global0.c.xxy | vec3<i32>(~1i, 2147483647i, ~24841i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_0.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1657f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1428f - 1023f), _wgslsmith_div_f32(arg_0, -574f))))));
    var_0 = Struct_3(~(~var_0.a), 15221i, func_2(_wgslsmith_f_op_f32(-global0.a)).b, var_0.d, vec3<i32>(_wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec3_i32(u_input.b, var_0.d.c.yyw)), ~u_input.b.x), ~(var_0.c.a & 15776i), 2147483647i));
    var_0 = Struct_3(~(global0.b.c | (~5617u >> (~var_0.d.b.c % 32u))), -1i, func_2(var_0.c.b.x).b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(938f + 606f))), Struct_1(-func_2(global0.b.b.x).c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.e.x, arg_0, var_1.x, 489f)), firstTrailingBit(var_0.a), false, select(func_2(var_0.d.a).b.e, !global0.b.e, var_0.d.b.e)), _wgslsmith_mult_vec4_i32(var_0.d.c, ~select(global0.c, global0.c, global0.d.x)), vec2<bool>(global0.d.x, all(func_2(562f).b.e)), _wgslsmith_f_op_vec3_f32(step(var_0.d.e, global0.b.b.zzw))), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(4118i, u_input.a.x, u_input.b.x)), vec3<i32>(3410i, _wgslsmith_sub_i32(37285i, -66696i), 0i), abs(~vec3<i32>(1i, u_input.a.x, 19236i))), global0.c.xxz));
    return select(_wgslsmith_mod_vec2_i32(abs(-vec2<i32>(global0.c.x, -2147483647i)), firstLeadingBit(vec2<i32>(2147483647i, 0i) | firstLeadingBit(u_input.a.zz))), vec2<i32>(i32(-1i) * -2147483647i, ~u_input.b.x), true);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    var var_0 = -abs(arg_1.c);
    var var_1 = arg_2.d.c;
    return arg_2.c.b.x;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_3(35503u, -(func_2(global0.a).b.a & -6195i), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).b, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.e.x, -1356f)))), Struct_1(reverseBits(27042i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b.b + vec4<f32>(-855f, -369f, 236f, 547f))), _wgslsmith_sub_u32(0u, firstTrailingBit(global0.b.c)), func_3(Struct_3(15224u, -2147483647i, global0.b, Struct_2(arg_2, global0.b, global0.c, vec2<bool>(false, true), global0.e), u_input.b), firstTrailingBit(vec2<u32>(8306u, global0.b.c)), abs(vec4<u32>(global0.b.c, 1u, global0.b.c, 25194u)), func_2(1274f)).x, select(vec4<bool>(false, global0.d.x, true, false), global0.b.e, true)), min(_wgslsmith_sub_vec4_i32(global0.c, global0.c), reverseBits(global0.c)) & (global0.c | global0.c), global0.b.e.zz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1445f, 902f, 554f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, 863f, arg_1))))), func_2(_wgslsmith_f_op_f32(-global0.a)).b.e.yzw))), u_input.b);
    let var_1 = max(~(~((vec4<u32>(0u, 41658u, global0.b.c, 25150u) >> (vec4<u32>(100998u, 1u, 20341u, 60404u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.c, global0.b.c, global0.b.c, var_0.a), vec4<u32>(global0.b.c, global0.b.c, global0.b.c, global0.b.c)))), ~vec4<u32>(~28980u, ~1u, 66275u, var_0.c.c) & firstLeadingBit(~max(vec4<u32>(global0.b.c, var_0.c.c, 1u, 51384u), vec4<u32>(4294967295u, 47738u, 4294967295u, global0.b.c))));
    global0 = var_0.d;
    var var_2 = Struct_1(_wgslsmith_mod_i32(90985i, _wgslsmith_div_i32(var_0.d.c.x ^ 0i, -1i)) & ~(-u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(687f, var_0.d.a, global0.d.x)) - 1468f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2122f - _wgslsmith_f_op_f32(max(-1273f, 255f)))), _wgslsmith_f_op_f32(max(var_0.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2284f)) * -1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))))), var_1.x, select(!select(!global0.b.d, any(global0.b.e.yz), func_3(var_0, var_1.zz, var_1, var_0.d).x), true, any(global0.b.e.xzx)), global0.b.e);
    let var_3 = true;
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1162f), var_0.d.b, firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.e.xz, vec2<i32>(-2147483647i, global0.c.x)), _wgslsmith_mod_i32(var_0.d.c.x, arg_0), arg_0), 1i, global0.c.x, -2147483647i)), vec2<bool>((true && all(global0.b.e)) & true, !global0.d.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(global0.b.b.wyw)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(-2147483647i & countOneBits(_wgslsmith_add_i32(-58384i, _wgslsmith_mult_i32(global0.b.a, -50555i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * 1821f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(344f, -1617f)), _wgslsmith_f_op_f32(-global0.b.b.x))) - _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.c.x), func_1(-842f)), func_2(_wgslsmith_f_op_f32(round(global0.b.b.x))), Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(21923u, global0.b.c, global0.b.c, 25784u), vec4<u32>(0u, global0.b.c, 4294967295u, 92720u)), ~u_input.b.x, func_2(global0.e.x).b, func_2(global0.e.x), vec3<i32>(-38811i, u_input.a.x, global0.b.a) >> (vec3<u32>(global0.b.c, 4294967295u, 130858u) % vec3<u32>(32u)))))), global0.b.b.x);
    var var_0 = 1u;
    var_0 = global0.b.c;
    var_0 = global0.b.c;
    var var_1 = Struct_1(_wgslsmith_clamp_i32(34612i, u_input.a.x, _wgslsmith_sub_i32(1i << (countOneBits(global0.b.c) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(30543i, -1i, u_input.a.x), u_input.b) | u_input.b.x)), global0.b.b, reverseBits(global0.b.c), false, select(vec4<bool>(_wgslsmith_f_op_f32(step(global0.e.x, global0.e.x)) < 225f, false, func_5(0i, -1018f, global0.b.b.x).d.x && true, true), global0.b.e, global0.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(global0.b.c, 12624u, global0.b.c)), reverseBits(vec3<u32>(4294967295u, 13104u, 0u)))), global0.b.c);
}

