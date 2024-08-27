struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = 1948f;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32((u_input.a ^ ~27340u) | ~u_input.a, u_input.a), 4294967295u);
    var var_2 = !(!(!arg_0));
    var var_3 = (~firstTrailingBit(1u ^ var_1) ^ ~(firstLeadingBit(var_1) & ~var_1)) >> (_wgslsmith_sub_u32(16284u, u_input.a) % 32u);
    var var_4 = u_input.a;
    return -2147483647i;
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = true;
    var var_1 = ~99820u ^ _wgslsmith_dot_vec3_u32(arg_3.yyy, arg_3.xwy);
    var var_2 = !select(arg_2.xyx, vec3<bool>(arg_2.x, (false & arg_2.x) || true, arg_2.x), arg_2.xxz);
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.c.x, 0u), arg_3.zyz), arg_0.c.x)) ^ ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), ~arg_3.wz), _wgslsmith_mult_vec2_u32(arg_0.c.zy, vec2<u32>(countOneBits(u_input.a), ~4147u) | abs(arg_3.zw)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, arg_1), vec3<i32>(arg_1, arg_1, arg_1)), ~vec3<i32>(1i, arg_1, -10529i)) & (-vec3<i32>(arg_1, arg_1, arg_1) | -vec3<i32>(-17772i, 61968i, 2181i))), !(!arg_0.b.x), Struct_1(-(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 14642i, arg_1))), Struct_1(~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_1, -8031i), vec3<i32>(-2147483647i, 2147483647i, -8732i)) & ((vec3<i32>(-2147483647i, arg_1, arg_1) >> (vec3<u32>(arg_3.x, u_input.a, arg_3.x) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_0.c.x), arg_3.wwy) % vec3<u32>(32u)))), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_1, arg_1 << (u_input.a % 32u)), arg_1, abs(_wgslsmith_clamp_i32(arg_1, arg_1, arg_1)))));
    return Struct_4(arg_0.a, select(select(arg_2, arg_0.b, arg_0.b), select(vec4<bool>(false, var_2.x, arg_2.x, true), vec4<bool>(!arg_2.x, arg_0.b.x, true, true), select(arg_0.b, vec4<bool>(true, arg_2.x, true, true), !var_2.x)), !arg_2), vec4<u32>(select(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_div_u32(57847u, arg_0.c.x)), _wgslsmith_dot_vec3_u32(arg_3.wyy, ~arg_0.c.yzz), !var_2.x), ~arg_0.c.x, ~(~69974u), 4294967295u));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-862f, -1434f)), _wgslsmith_f_op_vec2_f32(-func_3(func_3(Struct_4(vec3<f32>(arg_0.a.x, arg_0.a.x, -449f), vec4<bool>(arg_0.b.x, arg_2.b.b, arg_2.a.b, true), arg_0.c), arg_2.a.d.a.x, vec4<bool>(arg_3.x, arg_0.b.x, false, arg_0.b.x), arg_0.c), ~arg_2.b.a.a.x, vec4<bool>(false, true, true, true), ~arg_0.c).a.zz))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(round(275f))))));
    var var_1 = arg_2.a;
    let var_2 = func_3(Struct_4(_wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(-var_0.x), -1165f)), select(vec4<bool>(!arg_2.b.b, arg_3.x != false, all(vec4<bool>(false, arg_2.a.b, arg_3.x, true)), arg_2.a.b), !arg_0.b, !select(true, false, arg_2.a.b)), vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(u_input.a, u_input.a), arg_1 >> (0u % 32u)), firstLeadingBit(u_input.a), arg_1 & (arg_1 >> (474u % 32u)), min(~arg_1, arg_1))), 32423i, arg_0.b, ~vec4<u32>(min(1u, arg_1 >> (u_input.a % 32u)), ~u_input.a, 9544u, 4002u));
    var var_3 = _wgslsmith_mult_i32(27153i, -(~var_1.e.a.x));
    var var_4 = arg_2.b.e;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(func_2(!arg_3.x & (arg_3.x || true), var_1.a, -21506i), firstTrailingBit(_wgslsmith_div_i32(-20630i, firstTrailingBit(var_4.a.x))), _wgslsmith_clamp_i32(1i, 3165i, ~func_2(var_2.b.x, var_1.c, 52910i)), -arg_2.a.d.a.x), vec4<i32>(-arg_2.c.a.x, countOneBits(2147483647i), ~_wgslsmith_div_i32(12926i, firstLeadingBit(var_1.e.a.x)), ~(-1i)));
}

fn func_1() -> vec4<bool> {
    let var_0 = -func_4(func_3(Struct_4(vec3<f32>(-1297f, -216f, 2165f), vec4<bool>(true, false, true, true), vec4<u32>(u_input.a, 55632u, u_input.a, u_input.a)), func_2(true, Struct_1(vec3<i32>(-33572i, 1i, -56683i)), -2147483647i), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 6195u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1615u, u_input.a, 40375u))), u_input.a, Struct_3(Struct_2(Struct_1(vec3<i32>(-17702i, 39160i, -1i)), true, Struct_1(vec3<i32>(-1i, -2147483647i, -2147483647i)), Struct_1(vec3<i32>(79432i, 2147483647i, -12930i)), Struct_1(vec3<i32>(-2400i, 11398i, 0i))), Struct_2(Struct_1(vec3<i32>(-25381i, 1i, 2147483647i)), true, Struct_1(vec3<i32>(-2147483647i, 1i, 1i)), Struct_1(vec3<i32>(-1i, 2147483647i, -10411i)), Struct_1(vec3<i32>(-2147483647i, 1i, -2313i))), Struct_1(firstLeadingBit(vec3<i32>(-2147483647i, -2147483647i, 924i)))), vec2<bool>(true, true));
    var var_1 = -1i;
    let var_2 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(46162i, _wgslsmith_add_i32(var_0, select(2147483647i, 0i, false))), (reverseBits(var_0) & min(22045i, var_0)) << (~u_input.a % 32u), firstLeadingBit(_wgslsmith_mod_i32(var_0, abs(var_0)))));
    var_1 = _wgslsmith_clamp_i32(min(var_2.a.x, _wgslsmith_mod_i32(var_2.a.x, countOneBits(~var_0))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, var_2.a.x), _wgslsmith_div_vec2_i32(-var_2.a.xy, ~var_2.a.yy)), select(-min(~var_0, var_0), _wgslsmith_div_i32(var_0, -2147483647i), true));
    let var_3 = false;
    return func_3(Struct_4(vec3<f32>(-1120f, _wgslsmith_f_op_f32(-748f - _wgslsmith_f_op_f32(874f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(815f + -243f) - _wgslsmith_f_op_f32(f32(-1f) * -385f))), vec4<bool>(false, true, true, var_3), ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 59715u, u_input.a, 0u)))), var_2.a.x, vec4<bool>(false, all(select(vec2<bool>(true, var_3), vec2<bool>(var_3, var_3), vec2<bool>(false, var_3))), all(vec4<bool>(true, !var_3, u_input.a >= u_input.a, false)), true), ~func_3(func_3(func_3(Struct_4(vec3<f32>(1020f, 903f, -941f), vec4<bool>(var_3, var_3, var_3, false), vec4<u32>(0u, 6228u, 47231u, 7416u)), var_0, vec4<bool>(var_3, var_3, false, var_3), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), -var_2.a.x, select(vec4<bool>(true, false, false, true), vec4<bool>(var_3, false, false, var_3), var_3), ~vec4<u32>(u_input.a, u_input.a, 15210u, u_input.a)), _wgslsmith_sub_i32(24733i, -24601i), !vec4<bool>(false, true, var_3, var_3), vec4<u32>(u_input.a << (4294967295u % 32u), 4294967295u, u_input.a, min(1u, 964u))).c).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(false, true, true, true), select(!func_1(), vec4<bool>(u_input.a < u_input.a, true, true, all(vec3<bool>(true, true, true))), all(vec2<bool>(true, true))), abs(_wgslsmith_div_u32(u_input.a, 22717u)) <= _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, u_input.a), abs(29236u)));
    var_0 = select(func_1(), func_1(), select(!(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), !func_3(func_3(Struct_4(vec3<f32>(-784f, -1912f, -1000f), vec4<bool>(var_0.x, true, false, false), vec4<u32>(u_input.a, 1u, 42789u, 1u)), -2147483647i, vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<u32>(1u, 100043u, u_input.a, 1u)), -33727i, !vec4<bool>(false, var_0.x, var_0.x, false), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 21624u, 4294967295u, 1u) % vec4<u32>(32u))).b, any(select(var_0.zw, func_3(Struct_4(vec3<f32>(-895f, 830f, 345f), vec4<bool>(var_0.x, false, var_0.x, true), vec4<u32>(23828u, u_input.a, 1u, 94340u)), -50536i, vec4<bool>(false, var_0.x, var_0.x, false), vec4<u32>(9892u, 1u, 29568u, u_input.a)).b.zz, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-848f, 1000f) * vec2<f32>(-2151f, 990f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2011f, -1000f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-958f, -1300f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-372f, -1000f) - vec2<f32>(1628f, 424f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-150f, 707f, 877f, -1960f))) * vec4<f32>(-1000f, -985f, 1000f, -1762f)))));
}

