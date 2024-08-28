struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: bool = false;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = arg_1;
    let var_1 = vec4<i32>(0i, ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(max(u_input.b.yz, vec2<i32>(-1i, -2147483647i)), u_input.b.yx ^ u_input.b.yz), ~(-var_0.b.x)), min(0i, firstTrailingBit(-2147483647i)), -4293i);
    let var_2 = var_1.x << (abs(~(~31971u ^ ~u_input.c.x)) % 32u);
    let var_3 = firstTrailingBit(abs(firstTrailingBit(21332u)));
    global1 = var_0.e.x;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = any(global0.yz);
    let var_1 = arg_0;
    let var_2 = arg_0.d.x;
    let var_3 = !select(global0.yz, arg_0.e.yx, !vec2<bool>(func_3(var_1.d.x, Struct_1(1i, vec2<i32>(u_input.a.x, u_input.a.x), u_input.b.x, arg_0.d, arg_0.e), u_input.d), !arg_0.e.x));
    let var_4 = !select(vec2<bool>(true, true), vec2<bool>(true, var_3.x), true);
    return Struct_1(abs(select(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-64160i, var_1.c), 1i), _wgslsmith_clamp_i32(-62208i, abs(u_input.b.x), u_input.a.x ^ -5696i), !arg_0.e.x)), _wgslsmith_mult_vec2_i32(arg_0.b, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zx, vec2<i32>(u_input.a.x, -1i), arg_0.b) | -vec2<i32>(var_1.a, 1i), ~vec2<i32>(var_1.b.x, arg_0.c))), -2147483647i, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(433f * 420f))), 575f, any(select(arg_0.e, var_1.e, true)))), var_2), arg_0.e);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(-(~_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.x, 1i), arg_1.b))), select(u_input.b.zz, arg_1.b, false), 59004i, arg_1.d, !arg_1.e);
    global0 = !arg_1.e;
    global1 = var_0.e.x;
    global1 = true;
    global0 = select(!select(select(var_0.e, vec3<bool>(false, false, global0.x), vec3<bool>(var_0.e.x, true, true)), var_0.e, vec3<bool>(arg_1.e.x, !global0.x, func_3(arg_0.x, arg_1, 75792u))), !func_2(arg_1, var_0.e.x).e, !select(reverseBits(u_input.b.x) >= (u_input.a.x | 64912i), arg_1.c == _wgslsmith_clamp_i32(-13117i, 48238i, arg_1.a), !arg_1.e.x == arg_1.e.x));
    return Struct_1(1i, vec2<i32>(abs(~max(-2147483647i, u_input.b.x)), -2147483647i), var_0.b.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-835f, var_0.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -296f))), -1000f))), var_0.e);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mult_vec4_i32(select(max(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-53041i, u_input.a.x, u_input.a.x, u_input.b.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, -9520i))), vec4<i32>(1i, -5890i, u_input.a.x, 62773i)), -(~vec4<i32>(54084i, u_input.a.x, -20654i, u_input.b.x) >> (~vec4<u32>(1953u, u_input.c.x, 4294967295u, u_input.d) % vec4<u32>(32u))), true), ~vec4<i32>(-_wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.yx), (0i | u_input.a.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x)), u_input.b.x, _wgslsmith_sub_i32(-1i, -6789i >> (1u % 32u))));
    let var_1 = 204f;
    var var_2 = func_4(vec4<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_div_f32(662f, _wgslsmith_f_op_f32(1894f * var_1))), _wgslsmith_f_op_f32(1026f - var_1), _wgslsmith_f_op_f32(-1520f + _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))))), func_2(Struct_1(-_wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.a), vec2<i32>(-1i, -56184i), var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -1000f), vec2<f32>(var_1, var_1)))), vec3<bool>(true, var_1 <= var_1, !global0.x)), true & (firstTrailingBit(59003u) != ~1u)));
    let var_3 = Struct_1(-72276i, var_0.zx << (vec2<u32>(u_input.d, u_input.c.x) % vec2<u32>(32u)), 2147483647i, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(var_1, 849f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.d.x, var_2.d.x)) * -463f)), var_2.d.x), func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1030f, 776f, 1860f, 239f)))))), func_2(func_2(func_4(vec4<f32>(-1000f, 371f, var_2.d.x, 616f), Struct_1(-1i, vec2<i32>(var_2.a, -5630i), u_input.a.x, var_2.d, var_2.e)), !global0.x), false)).e);
    global1 = !(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, 1166f, var_1), vec4<f32>(var_1, 1613f, 1436f, var_1))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, -915f, var_3.d.x, -787f))), func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(831f, 564f, -199f, 125f))), var_3)).d.x >= _wgslsmith_f_op_f32(ceil(func_2(var_3, global0.x).d.x)));
    return ~var_0.x;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = select(select(global0.yx, select(vec2<bool>(u_input.d > 17227u, arg_2.e.x), vec2<bool>(true && arg_2.e.x, false), func_2(func_2(Struct_1(arg_1, vec2<i32>(-57637i, arg_1), arg_2.b.x, arg_2.d, arg_2.e), true), !arg_0).e.zx), !arg_2.e.x), !select(!global0.yz, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, -169f, 162f, 521f) + vec4<f32>(arg_2.d.x, -886f, 577f, 1003f)), arg_2).e.xz, true), arg_2.e.x);
    var var_1 = arg_2;
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, arg_2.d.x, 751f, arg_2.d.x))))))), func_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 2147483647i, arg_3, -37190i), countOneBits(vec4<i32>(-2147483647i, -88713i, 0i, arg_2.b.x))), func_4(vec4<f32>(-755f, var_1.d.x, var_1.d.x, arg_2.d.x), Struct_1(-9915i, arg_2.b, 2147483647i, vec2<f32>(-519f, arg_2.d.x), var_1.e)).b, _wgslsmith_mult_i32(8108i, arg_3) & func_4(vec4<f32>(arg_2.d.x, arg_2.d.x, var_1.d.x, arg_2.d.x), Struct_1(-97743i, vec2<i32>(arg_1, 2147483647i), var_1.c, arg_2.d, var_1.e)).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.d) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.d.x, -958f), vec2<f32>(-298f, var_1.d.x), arg_2.e.xy))), func_2(func_2(Struct_1(19046i, var_1.b, 2147483647i, vec2<f32>(arg_2.d.x, var_1.d.x), var_1.e), var_0.x), any(vec2<bool>(false, false))).e), true));
    let var_3 = func_2(arg_2, all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, var_1.e.x, false, false), vec4<bool>(true, var_2.e.x, arg_0, true), true), select(vec4<bool>(var_2.e.x, var_0.x, var_0.x, true), vec4<bool>(global0.x, var_0.x, var_1.e.x, true), true))));
    var_2 = Struct_1(27153i, var_2.b, (_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_3.b.x, -41965i, 1i, -2147483647i)), select(vec4<i32>(var_3.b.x, -2147483647i, var_3.c, 4179i), vec4<i32>(arg_3, arg_1, arg_1, 80480i), var_1.e.x)) << (abs(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.d, 4294967295u))) % 32u)) >> (u_input.d % 32u), vec2<f32>(_wgslsmith_f_op_f32(select(2449f, _wgslsmith_f_op_f32(f32(-1f) * -680f), global0.x)), var_2.d.x), !func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1434f, 871f, var_1.d.x, 1000f))), Struct_1(var_2.b.x, var_2.b, var_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1798f, 1000f)), !vec3<bool>(false, arg_2.e.x, true))).e);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b.x, u_input.a, u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, -1632f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-825f, -1565f), vec2<f32>(375f, 606f), global0.x))), vec2<f32>(_wgslsmith_f_op_f32(min(-929f, 1035f)), _wgslsmith_f_op_f32(f32(-1f) * -433f)))), select(vec3<bool>(~u_input.a.x > min(-17435i, u_input.b.x), func_5(any(vec2<bool>(true, global0.x)), func_1(), Struct_1(42844i, vec2<i32>(0i, u_input.b.x), u_input.b.x, vec2<f32>(186f, 408f), vec3<bool>(true, true, global0.x)), _wgslsmith_mod_i32(u_input.b.x, 75637i)), global0.x), select(vec3<bool>(func_5(global0.x, u_input.b.x, Struct_1(2147483647i, u_input.a, u_input.b.x, vec2<f32>(866f, 417f), vec3<bool>(global0.x, false, false)), u_input.b.x), global0.x, true), vec3<bool>(4294967295u > u_input.d, true, true), vec3<bool>(true, true, global0.x)), true));
    var var_1 = vec3<u32>(~max(~1u, u_input.c.x), 38466u, u_input.d);
    global0 = var_0.e;
    var var_2 = func_2(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-838f, var_0.d.x, 159f, var_0.d.x), vec4<f32>(-2193f, 1716f, 382f, var_0.d.x))), func_2(Struct_1(firstLeadingBit(var_0.b.x), func_2(Struct_1(-1i, var_0.b, 0i, var_0.d, vec3<bool>(true, true, true)), false).b, u_input.b.x, _wgslsmith_f_op_vec2_f32(-var_0.d), var_0.e), true)), global0.x);
    var_2 = func_2(func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1119f, var_0.d.x, -683f, var_0.d.x))))))), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.d.x, var_0.d.x, var_2.d.x, 1024f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1120f, -1000f, 386f, var_0.d.x))), func_2(func_4(vec4<f32>(var_0.d.x, 1143f, var_2.d.x, 513f), Struct_1(2147483647i, var_0.b, u_input.b.x, var_0.d, var_0.e)), select(var_0.e.x, true, var_0.e.x)))), select(func_5(!var_0.e.x, -74173i, Struct_1(u_input.b.x, var_0.b, u_input.a.x, var_0.d, vec3<bool>(true, true, global0.x)), 2147483647i), true, true) | true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.d, 4294967295u, 54038u, 24971u)), vec4<u32>(~u_input.c.x, ~var_1.x, _wgslsmith_add_u32(0u, 1u), u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_1(-65819i, vec2<i32>(2147483647i, var_0.a), u_input.a.x, vec2<f32>(var_0.d.x, 479f), var_2.e), true).d.x))), ~vec3<u32>(31662u, (1u & var_1.x) | _wgslsmith_div_u32(var_1.x, 3464u), _wgslsmith_mod_u32(1u, var_1.x) | var_1.x), u_input.b, _wgslsmith_dot_vec2_u32(reverseBits(abs(countOneBits(var_1.yz))), var_1.xx));
}

