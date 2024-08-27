struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    let var_0 = Struct_2(arg_2.a, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(f32(-1f) * -1042f))))), arg_2.e);
    var var_1 = select(vec4<bool>(select(var_0.e, _wgslsmith_f_op_f32(arg_0.a.x + 776f) == _wgslsmith_f_op_f32(128f * -263f), 2011f >= arg_0.a.x), false, true & !(!var_0.e), false), !select(!vec4<bool>(false, arg_2.e, true, false), !vec4<bool>(var_0.e, false, true, arg_2.e), arg_2.e), !(!select(!vec4<bool>(true, arg_2.e, arg_2.e, true), !vec4<bool>(true, true, arg_2.e, true), select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.e, var_0.e, false, true), vec4<bool>(false, false, var_0.e, true)))));
    var var_2 = _wgslsmith_sub_i32(-3485i, -min(~reverseBits(10008i), arg_2.b));
    var_2 = firstTrailingBit(var_0.b | _wgslsmith_dot_vec4_i32(~(vec4<i32>(arg_2.b, 0i, arg_1.x, 2147483647i) | arg_1), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.b, var_0.b, arg_3, arg_3), max(arg_1, vec4<i32>(arg_2.b, 1i, -15256i, u_input.a)))));
    let var_3 = Struct_2(Struct_1(~(~abs(143u))), -var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_f32(-arg_0.a.x)))), ((0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 17133u), vec2<u32>(var_0.a.a, 4294967295u))) == ~(~arg_0.d.x)) & true);
    return select(!(!vec4<bool>(any(vec2<bool>(true, arg_2.e)), var_0.a.a == 67809u, var_3.e, !var_1.x)), vec4<bool>(var_0.e, true, any(select(select(var_1.xxx, var_1.ywx, true), select(var_1.zzz, vec3<bool>(false, false, var_3.e), true), all(var_1.yw))), !arg_2.e), var_0.b < _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b, -20274i, 4529i) ^ firstLeadingBit(arg_1.yzw), ~(~vec3<i32>(-33968i, -1i, arg_2.b))));
}

fn func_2() -> bool {
    var var_0 = vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(all(vec4<bool>(false, true, false, false)), true, all(vec3<bool>(true, true, false)), false), !func_3(Struct_3(vec4<f32>(-503f, -444f, 286f, 1000f), 49988u, 0u, vec3<u32>(4370u, 0u, 1u)), vec4<i32>(11690i, -1i, 2147483647i, u_input.a), Struct_2(Struct_1(0u), -12439i, -1000f, 1374f, false), -6974i))), (u_input.b.x > _wgslsmith_div_i32(-u_input.b.x, 1i)) && true);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(306f, 1000f, 1064f, -228f)))) * vec4<f32>(-319f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-931f))), _wgslsmith_f_op_f32(f32(-1f) * -269f)))));
    let var_2 = Struct_1(_wgslsmith_mult_u32(~(_wgslsmith_clamp_u32(391u, 23173u, 130071u) ^ _wgslsmith_div_u32(9580u, 1u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(31603u, 1u, 1u, 9088u), vec4<u32>(1u, 0u, 53318u, 1u)))));
    var var_3 = ~abs(~abs(100003u));
    var var_4 = Struct_4(var_2.a < _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_2.a, 4294967295u, 4294967295u) | select(vec4<u32>(1u, var_2.a, var_2.a, 28812u), vec4<u32>(var_2.a, var_2.a, 24545u, 1u), var_0.x), ~vec4<u32>(54981u, var_2.a, 1u, 0u)), -13173i, Struct_2(var_2, 48640i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(152f, var_1.x)))), 715f), -794f, var_0.x), min(vec3<u32>(max(4294967295u, 49181u), ~var_2.a, _wgslsmith_mod_u32(4294967295u, var_2.a)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(var_2.a, 0u, var_2.a), vec3<u32>(284u, 0u, 4294967295u), vec3<bool>(var_0.x, false, true)), vec3<u32>(1u, 1u, 1u))) ^ vec3<u32>(1u, 0u, var_2.a), select(select(vec4<bool>(var_2.a <= 0u, var_0.x, true, all(vec4<bool>(true, var_0.x, var_0.x, var_0.x))), vec4<bool>(true, var_0.x, any(vec4<bool>(true, var_0.x, false, true)), false), !vec4<bool>(false, true, var_0.x, true)), vec4<bool>(true, true, -342f == _wgslsmith_f_op_f32(step(309f, var_1.x)), all(!vec2<bool>(var_0.x, var_0.x))), vec4<bool>(true, true, any(func_3(Struct_3(vec4<f32>(var_1.x, -689f, -106f, var_1.x), var_2.a, 83975u, vec3<u32>(1u, 8315u, var_2.a)), vec4<i32>(u_input.a, -46649i, u_input.b.x, -1i), Struct_2(Struct_1(4294967295u), u_input.b.x, var_1.x, var_1.x, false), u_input.a)), var_0.x)));
    return any(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_1, vec4<f32>(1681f, -1796f, var_1.x, -673f))), var_1, !vec4<bool>(var_0.x, var_4.a, true, false))), var_4.c.a.a, 51100u, ~select(var_4.d, vec3<u32>(var_4.c.a.a, 1u, 0u), vec3<bool>(var_0.x, true, var_0.x))), abs(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i), vec4<i32>(-1i, 1i, 12833i, u_input.a)), 27102i << (var_2.a % 32u), var_4.c.b & 16069i)), var_4.c, -5494i));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0.x;
    var_0 = func_2();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4247u), vec2<u32>(9632u, 8317u)), ~25131u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~0u, ~68823u), firstLeadingBit(vec3<u32>(1u, 1u, 0u)))), 5605u);
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(341f, -373f, -934f, 1000f) + vec4<f32>(1513f, 611f, 1000f, 117f))), vec4<f32>(_wgslsmith_f_op_f32(floor(1026f)), -396f, 1673f, 1687f))), ~(~_wgslsmith_clamp_u32(max(102083u, 22940u), abs(1u), ~4294967295u)), ~reverseBits(1u), firstLeadingBit(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(103000u, 57340u, 60842u)), vec3<u32>(~1u, 1u, 1u), max(vec3<u32>(7500u, 4294967295u, 1u), select(vec3<u32>(56351u, 0u, 124980u), vec3<u32>(33390u, 4294967295u, 65523u), arg_0)))));
    let var_3 = vec3<u32>(~(~1u), var_2.c, _wgslsmith_sub_u32(~(16437u >> (var_2.b % 32u)) >> (abs(reverseBits(var_2.c)) % 32u), var_2.c));
    return Struct_2(Struct_1(~229u), firstLeadingBit(-(firstLeadingBit(20014i) & max(2147483647i, u_input.a))), 301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(abs(var_2.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + -2527f))), all(!(!select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), arg_0.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = u_input.b;
    var var_1 = Struct_4(true, -55829i, func_1(vec3<bool>(true, false, arg_1.e)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.a.a, 48203u, 20975u), vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_1.a.a, arg_0), vec4<u32>(16810u, 64228u, 15696u, arg_1.a.a)), arg_1.a.a ^ 48851u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_1.a.a, arg_1.a.a) << (vec3<u32>(arg_0, arg_0, 41350u) % vec3<u32>(32u)), vec3<u32>(arg_0, arg_1.a.a, 55503u))) ^ countOneBits(select(abs(vec3<u32>(arg_0, 4889u, 39433u)), vec3<u32>(arg_1.a.a, arg_0, 3062u) >> (vec3<u32>(0u, arg_0, arg_1.a.a) % vec3<u32>(32u)), any(vec4<bool>(arg_1.e, arg_1.e, false, arg_1.e)))), vec4<bool>(any(vec4<bool>(arg_1.d != 1457f, arg_1.c == 706f, func_3(Struct_3(vec4<f32>(arg_1.d, -492f, -1042f, -1315f), 0u, arg_0, vec3<u32>(arg_0, 1u, arg_0)), vec4<i32>(u_input.a, -28221i, -2147483647i, var_0.x), Struct_2(Struct_1(arg_0), 38870i, 532f, 131f, arg_1.e), u_input.a).x, true)), false, !(_wgslsmith_div_i32(14817i, 1i) != (-48510i >> (arg_0 % 32u))), (arg_0 >= firstLeadingBit(46257u)) & (~(-1i) >= -u_input.a)));
    var var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1005f - 235f));
    let var_4 = var_1.c.c;
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(var_3)), _wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)), var_3), 129037u, 4294967295u, vec3<u32>(65688u, reverseBits(~arg_1.a.a) & ~_wgslsmith_sub_u32(0u, arg_0), ~var_2.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(447f * 499f), _wgslsmith_f_op_f32(-1f));
    let var_1 = arg_1.c.a;
    let var_2 = vec3<i32>(~(-1i ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_1.c.b, -1896i), -u_input.a)), abs(arg_1.c.b), u_input.b.x);
    let var_3 = Struct_4(!select(all(vec4<bool>(true, arg_1.a, arg_1.a, false)), !arg_1.e.x, !arg_1.a) | (true | any(!arg_1.e.xw)), arg_1.c.b, Struct_2(Struct_1(arg_1.d.x), _wgslsmith_div_i32(min(max(arg_1.b, 1i), -arg_1.b), arg_1.c.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(max(347f, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -1120f)) - -424f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2304f - arg_0.a.x) * 1449f)), arg_1.a), vec3<u32>(arg_2.x, ~_wgslsmith_sub_u32(func_1(arg_1.e.wxx).a.a, ~4294967295u), _wgslsmith_div_u32(arg_0.d.x, _wgslsmith_dot_vec2_u32(arg_0.d.xx, vec2<u32>(arg_1.d.x, var_1.a)))), vec4<bool>(true, all(arg_1.e.yyz), false, true));
    let var_4 = select(!select(!(!vec3<bool>(false, false, var_3.c.e)), vec3<bool>(arg_1.e.x, !arg_1.c.e, arg_1.c.e), vec3<bool>(var_3.a || arg_1.e.x, true, var_3.d.x == 0u)), var_3.e.zzw, select(vec3<bool>(false, true, true), !select(select(arg_1.e.xxx, arg_1.e.xyx, false), arg_1.e.xwz, vec3<bool>(false, false, arg_1.e.x)), !arg_1.e.xwx));
    return Struct_2(Struct_1(~(~var_1.a)), -(_wgslsmith_sub_i32(func_1(var_3.e.zwx).b, arg_1.b | -2147483647i) << (~abs(arg_2.x) % 32u)), var_0.x, _wgslsmith_f_op_f32(max(1266f, arg_1.c.c)), all(var_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(~19683u, func_1(vec3<bool>(any(vec3<bool>(false, true, false)), true, all(vec4<bool>(true, false, true, true))))), Struct_4(true, u_input.a, func_1(vec3<bool>(true, true, true)), ~vec3<u32>(reverseBits(125u), ~0u, ~1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(func_4(20778u, Struct_2(Struct_1(15336u), 858i, -827f, 1464f, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a), vec4<i32>(24920i, 2147483647i, u_input.a, -2147483647i)), Struct_2(Struct_1(61323u), 7804i, 178f, -1196f, false), 2844i))), min(~(~(~vec4<u32>(62115u, 30034u, 4294967295u, 499u))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 35964u), vec2<u32>(0u, 40056u)), vec2<u32>(1u, 1u)), 1u, max(0u, 1u), _wgslsmith_mod_u32(min(0u, 0u), 11252u))));
    var var_1 = false;
    var_1 = false;
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(90516i, -(~var_0.b), 46356i, -12517i), vec4<i32>(-11292i, min(var_0.b, var_0.b) & func_5(func_4(var_0.a.a, var_0), Struct_4(var_0.e, u_input.b.x, Struct_2(var_0.a, 1i, -518f, var_0.c, var_0.e), vec3<u32>(var_0.a.a, var_0.a.a, var_0.a.a), vec4<bool>(false, false, false, var_0.e)), firstTrailingBit(vec4<u32>(9412u, var_0.a.a, var_0.a.a, var_0.a.a))).b, select(_wgslsmith_clamp_i32(0i, select(1i, u_input.a, true), u_input.b.x), -1i, var_0.e), i32(-1i) * -u_input.a));
    var var_3 = func_5(func_4(_wgslsmith_add_u32(47641u, var_0.a.a), func_1(func_3(func_4(var_0.a.a, var_0), -vec4<i32>(0i, 96312i, -16384i, u_input.a), Struct_2(Struct_1(4354u), var_0.b, var_0.d, 543f, var_0.e), func_1(vec3<bool>(false, var_0.e, var_0.e)).b).xyy)), Struct_4(4055u != (var_0.a.a ^ (4294967295u << (var_0.a.a % 32u))), select(-1i, -1i, !(-451f != var_0.d)), func_5(func_4(min(1u, var_0.a.a), func_1(vec3<bool>(false, var_0.e, true))), Struct_4(true, countOneBits(52187i), Struct_2(var_0.a, u_input.b.x, var_0.c, -753f, var_0.e), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, var_0.a.a), vec3<u32>(var_0.a.a, 100552u, 0u)), !vec4<bool>(var_0.e, var_0.e, var_0.e, true)), vec4<u32>(1u, countOneBits(var_0.a.a), firstTrailingBit(var_0.a.a), 4294967295u)), countOneBits(abs(vec3<u32>(var_0.a.a, 0u, var_0.a.a))), !vec4<bool>(var_0.e, all(vec2<bool>(false, var_0.e)), var_0.e && var_0.e, func_3(Struct_3(vec4<f32>(348f, var_0.d, var_0.c, var_0.d), 1u, var_0.a.a, vec3<u32>(24415u, var_0.a.a, 0u)), vec4<i32>(u_input.a, 21002i, var_2.x, var_2.x), Struct_2(Struct_1(var_0.a.a), var_0.b, 1241f, var_0.c, true), var_2.x).x)), ~(~(~(~vec4<u32>(var_0.a.a, 45662u, 1u, 1u)))));
    var var_4 = ~vec2<i32>(abs(abs(-61164i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.a.a, 4294967295u), vec3<u32>(50375u, var_3.a.a, var_0.a.a)) % 32u)), var_0.b);
    var var_5 = Struct_2(Struct_1(_wgslsmith_clamp_u32(func_1(!vec3<bool>(false, var_0.e, true)).a.a, ~4294967295u, 11909u)), reverseBits(-66299i), var_3.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1010f - -1369f))), var_0.e);
    let var_6 = var_0.c;
    var var_7 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1019f * 1686f) + -1763f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(613f))))), var_3.d, var_5.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.a.a, 0u), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.b, var_3.b, -32128i) ^ vec4<i32>(25248i, -2147483647i, var_5.b, 1i), vec4<i32>(21345i, var_5.b, -34721i, var_5.b)), countOneBits(vec4<i32>(u_input.a, var_4.x, var_5.b, var_4.x) & vec4<i32>(-2147483647i, 26952i, var_3.b, 2147483647i))), vec4<i32>(-13345i, reverseBits(_wgslsmith_div_i32(var_5.b, var_2.x)), -28962i, _wgslsmith_div_i32(-8782i, ~1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_7.wxw))), _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.a, var_3.a.a, var_3.a.a), vec3<u32>(25082u, var_5.a.a, 4294967295u)), max(vec3<u32>(var_0.a.a, 4294967295u, 77814u), vec3<u32>(39966u, 1u, 0u))), max(min(vec3<u32>(var_5.a.a, 1335u, 66492u) >> (vec3<u32>(1u, var_0.a.a, var_3.a.a) % vec3<u32>(32u)), vec3<u32>(var_0.a.a, var_0.a.a, var_3.a.a)), ~abs(vec3<u32>(0u, 12981u, 4294967295u)))));
}

