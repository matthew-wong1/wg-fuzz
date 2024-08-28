struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 39559u);

var<private> global1: Struct_2 = Struct_2(52118i, true, vec3<bool>(true, true, true));

var<private> global2: Struct_2 = Struct_2(i32(-2147483648), true, vec3<bool>(true, false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global2 = Struct_2(select(firstTrailingBit(-2147483647i), i32(-1i) * -2147483647i, true), arg_0, vec3<bool>(!any(global2.c.xz), !(!global2.b | global1.b), !global1.c.x && !(u_input.b.x == 0i)));
    global2 = Struct_2(-48890i, global1.b, !select(select(vec3<bool>(global1.c.x, false, true), global1.c, vec3<bool>(false, true, global2.c.x)), vec3<bool>(u_input.b.x >= global1.a, all(vec2<bool>(global2.c.x, false)), false), -1i != max(u_input.b.x, global1.a)));
    let var_0 = Struct_1(u_input.c.xy, u_input.b.yyx, u_input.c, _wgslsmith_div_f32(-765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-162f + -1149f) + 1457f))));
    global2 = Struct_2(_wgslsmith_add_i32(1i, -2147483647i), true, vec3<bool>(all(vec4<bool>(all(vec3<bool>(global2.b, true, false)), false, select(false, true, false), any(global1.c.xx))), true, true));
    global2 = Struct_2(9193i, arg_0, global1.c);
    return u_input.b.yy;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = !(!global2.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_1.xy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 1000f) * vec2<f32>(arg_1.x, arg_1.x))))))));
    var var_2 = ~_wgslsmith_add_u32(u_input.c.x, 1u) < 1u;
    let var_3 = firstTrailingBit(_wgslsmith_mult_i32(min(global2.a, min(1i, max(arg_0.x, 1i))), ~(global2.a >> (arg_2.x % 32u))));
    let var_4 = Struct_1(arg_2.xx, -u_input.b.yxw, firstTrailingBit(_wgslsmith_add_vec4_u32(abs(u_input.c), u_input.c)), _wgslsmith_f_op_f32(trunc(-1000f)));
    return ~u_input.b.ww;
}

fn func_2() -> vec4<f32> {
    global2 = Struct_2(_wgslsmith_mult_i32(-(~global1.a) ^ global2.a, -7526i), global1.b, !global2.c);
    var var_0 = Struct_1(firstLeadingBit(vec2<u32>(~(~0u), ~0u)), vec3<i32>(-1i) * -vec3<i32>(max(-1i, -1i), u_input.b.x, global1.a), ~(~(~(u_input.c << (u_input.c % vec4<u32>(32u))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1741f, 1333f)) - -748f)))));
    let var_1 = firstLeadingBit(global2.a);
    let var_2 = Struct_2(~_wgslsmith_dot_vec2_i32(func_4(func_3(global2.c.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_0.d, var_0.d, var_0.d))), ~vec3<u32>(global0.x, 0u, 26236u)), var_0.b.zx), false, global2.c);
    var var_3 = Struct_1(~(~u_input.c.zw), vec3<i32>(abs(u_input.b.x), 1i, firstTrailingBit(-global2.a)), reverseBits(u_input.c) & abs(vec4<u32>(53975u, 14335u, 35314u, var_0.a.x) >> (vec4<u32>(3309u, 0u, 4294967295u, 16100u) % vec4<u32>(32u))), -272f);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.d, var_0.d, -1000f, -1924f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-760f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(930f - var_0.d) - 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 222f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = ~(~arg_2.c.yz);
    var var_0 = Struct_2(_wgslsmith_mult_i32(arg_1 ^ -12117i, _wgslsmith_div_i32(~(-u_input.b.x), _wgslsmith_mod_i32(17956i, -arg_2.b.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-13762i, firstLeadingBit(-61096i), arg_1), u_input.b.zzx) <= (1i ^ select(~global2.a, 0i, false)), global1.c);
    var_0 = Struct_2(countOneBits(-9271i), true, select(!select(select(global1.c, vec3<bool>(global2.b, var_0.b, global2.b), global1.b), select(vec3<bool>(false, var_0.c.x, var_0.c.x), vec3<bool>(false, true, true), global1.c), global2.c.x), var_0.c, !(!global2.c)));
    let var_1 = ~abs(max(2147483647i >> (arg_2.a.x % 32u), 28615i));
    var var_2 = arg_2.a;
    return Struct_1(vec2<u32>(var_2.x, min(_wgslsmith_sub_u32(0u, ~global0.x), ~countOneBits(47873u))), u_input.b.wxz, vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 7168u, u_input.c.x, var_2.x)), ~(~vec4<u32>(0u, var_2.x, var_2.x, 4294967295u))), 61897u, ~1u, ~global0.x), arg_2.d);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global2 = Struct_2(arg_2.b.x, true, select(!(!global1.c), vec3<bool>(global1.b, global2.c.x, false & global2.b), !global1.c));
    global1 = Struct_2(~arg_2.b.x, global2.b, select(global2.c, global1.c, select(select(!vec3<bool>(true, global2.c.x, global1.b), select(vec3<bool>(global1.b, false, false), vec3<bool>(true, global2.c.x, global2.b), global2.c), vec3<bool>(true, global2.c.x, global2.b)), vec3<bool>(global2.c.x, all(vec2<bool>(false, global2.b)), false), !global2.b)));
    global1 = Struct_2(_wgslsmith_dot_vec3_i32(min(~vec3<i32>(-6099i, -2147483647i, global2.a), abs(u_input.b.yzx)), vec3<i32>(abs(arg_1), 9981i, global1.a)), global2.c.x, global2.c);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-601f, arg_2.d, arg_0.d, 741f) * vec4<f32>(-255f, -1000f, 655f, arg_2.d)))))));
    var var_1 = -arg_0.b.x >> (~abs(arg_2.a.x) % 32u);
    return Struct_2(firstLeadingBit(-22991i), global1.b, !select(select(global2.c, !global2.c, all(vec4<bool>(global1.b, true, true, global1.b))), vec3<bool>(true, select(global2.b, false, global1.c.x), any(vec4<bool>(global1.b, false, true, false))), true));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = func_6(Struct_1(u_input.c.yw, ~abs(~vec3<i32>(global1.a, -2147483647i, 1i)), ~abs(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f)))), -_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, u_input.b.x), u_input.b.xz), 1i), func_5(_wgslsmith_f_op_vec4_f32(func_2()), arg_0.a, Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(global0.x, u_input.a))), select(vec3<i32>(arg_0.a, arg_0.a, global2.a), -u_input.b.wxx, true), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1475f)))), _wgslsmith_mult_i32(func_3(false).x, ~arg_0.a & global2.a));
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -781f), -692f, 871f, 1381f), vec4<f32>(-563f, 1650f, -897f, _wgslsmith_f_op_f32(f32(-1f) * -126f)), select(vec4<bool>(global2.c.x, false, true, true), !vec4<bool>(arg_0.c.x, true, global2.b, global1.b), vec4<bool>(var_0.b, true, false, false))))), global1.a, Struct_1(~vec2<u32>(u_input.c.x, 34752u) << (vec2<u32>(abs(u_input.a), ~9928u) % vec2<u32>(32u)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, -1i), _wgslsmith_div_i32(var_0.a, 0i)), global1.a, func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1339f, 194f, -238f, 199f), vec4<f32>(-674f, -817f, -984f, -1184f), false)), min(2147483647i, var_0.a), Struct_1(vec2<u32>(1u, global0.x), vec3<i32>(global2.a, 2147483647i, u_input.b.x), vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.c.x), -1005f)).b.x), abs(u_input.c), -421f));
    let var_2 = u_input.c.zzy;
    global2 = func_6(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-481f, _wgslsmith_f_op_f32(min(var_1.d, var_1.d)), _wgslsmith_f_op_f32(trunc(1843f)), -1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1603f, 689f, var_1.d, var_1.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 889f, -1440f, var_1.d)))), global2.a, Struct_1(abs(var_2.xx), var_1.b, u_input.c, _wgslsmith_f_op_f32(floor(var_1.d)))), _wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.wx, u_input.b.xy), var_1.b.zy), global2.a), var_1, -1i | global2.a);
    global2 = Struct_2(arg_0.a, !(!(!arg_0.c.x) != global2.c.x), vec3<bool>(!(45781u >= ~global0.x), true, any(vec4<bool>(var_1.d == var_1.d, arg_0.a == 0i, false, var_0.c.x & false))));
    return Struct_2(global2.a, all(select(!global1.c, vec3<bool>(arg_0.c.x | global2.b, func_6(Struct_1(vec2<u32>(1u, var_1.a.x), var_1.b, var_1.c, -158f), var_0.a, Struct_1(var_2.yz, var_1.b, u_input.c, -654f), -27530i).b, arg_0.b && var_0.b), false)), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(reverseBits(u_input.b.x), all(!vec3<bool>(global2.b, global1.c.x || global1.c.x, false)), !global1.c);
    global1 = Struct_2(-_wgslsmith_add_i32(global2.a, -7128i), true | global2.b, !vec3<bool>(var_0.b, true, false));
    let var_1 = vec2<bool>(false, global1.c.x);
    global1 = func_1(Struct_2(_wgslsmith_add_i32(abs(u_input.b.x), var_0.a), true, !select(select(global2.c, vec3<bool>(global2.c.x, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, global2.b, true), vec3<bool>(global1.b, global1.c.x, global2.b))));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-279f, -555f, 528f, -723f))))))), 1i, func_5(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), 1046f, 956f, _wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(trunc(-1368f)))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b.x, ~0i, _wgslsmith_div_i32(global1.a, -2147483647i)), _wgslsmith_clamp_i32(func_3(true).x, global2.a, 1i)), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, global0.x) ^ vec2<u32>(2361u, 18088u), firstLeadingBit(u_input.c.zw), vec2<u32>(44534u, global0.x)), -(~vec3<i32>(global2.a, -41514i, var_0.a)), ~vec4<u32>(0u, 1382u, 1u, global0.x), -551f)));
    global0 = vec2<u32>(var_2.c.x, ~(reverseBits(var_2.c.x) >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, 18150u), _wgslsmith_dot_vec4_u32(vec4<u32>(45743u, 1700u, 102832u, var_2.c.x), vec4<u32>(0u, 22460u, 0u, 30065u))) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.c));
}

