struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_2;
    return !(~(-_wgslsmith_sub_i32(u_input.a, u_input.a)) == ~u_input.a);
}

fn func_3(arg_0: bool) -> vec2<u32> {
    let var_0 = Struct_1(u_input.c, select(select(select(!vec3<bool>(true, true, arg_0), select(vec3<bool>(arg_0, false, true), vec3<bool>(true, arg_0, false), vec3<bool>(false, arg_0, arg_0)), arg_0), vec3<bool>(arg_0, true, arg_0), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, false), arg_0), vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, false, true), vec3<bool>(true, arg_0, arg_0)))), select(!(!vec3<bool>(false, arg_0, arg_0)), select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(true, true, arg_0), any(vec3<bool>(arg_0, arg_0, arg_0))), vec3<bool>(arg_0 || true, arg_0, 4294967295u <= u_input.c)), arg_0));
    let var_1 = Struct_4(Struct_2(func_2(4261i, firstLeadingBit(u_input.d), var_0)), Struct_2(true), ~firstTrailingBit(~reverseBits(u_input.d.zzy)));
    let var_2 = -(~(-abs(u_input.a))) << (~_wgslsmith_sub_u32(var_0.a, ~abs(var_1.c.x)) % 32u);
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(var_2, var_2))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 1i >> (1u % 32u)), select(-vec2<i32>(-1i, 13925i), -vec2<i32>(-35860i, -12427i), false)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(-1i, 13570i))), -firstLeadingBit(vec2<i32>(var_2, u_input.a)), -(vec2<i32>(-45869i, var_2) >> (u_input.d.ww % vec2<u32>(32u))))), -_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2, -6970i), vec2<i32>(8906i, var_2)), max(vec2<i32>(u_input.a, 18121i), vec2<i32>(var_2, -57368i))), vec2<i32>(var_2, u_input.a)));
    let var_4 = -2147483647i;
    return max(~_wgslsmith_sub_vec2_u32(max(var_1.c.yz, vec2<u32>(11412u, u_input.c)), u_input.d.xy), ~(~vec2<u32>(var_1.c.x, 18256u))) ^ u_input.d.zx;
}

fn func_1() -> f32 {
    let var_0 = select(u_input.d.yy | func_3(func_2(-34192i, vec4<u32>(u_input.c, u_input.b, u_input.c, 35319u), Struct_1(1u, vec3<bool>(false, false, false)))), vec2<u32>(countOneBits(1u) | ~u_input.b, select(_wgslsmith_sub_u32(4294967295u, u_input.b), 0u >> (u_input.b % 32u), all(vec3<bool>(false, false, true)))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), false), !all(vec2<bool>(true, true)))) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), vec2<u32>(~u_input.c, u_input.b));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(1f))));
    var var_2 = Struct_4(Struct_2(false), Struct_2(false), ~vec3<u32>(u_input.c, min(abs(u_input.c), _wgslsmith_add_u32(u_input.b, 12564u)), ~(~100558u)));
    var_2 = Struct_4(Struct_2(!any(vec2<bool>(true, var_2.b.a))), var_2.b, var_2.c);
    var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -534f) != _wgslsmith_f_op_f32(-var_1)), Struct_2(true), firstTrailingBit(~vec3<u32>(u_input.d.x, u_input.b, u_input.b)) ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, var_2.c.x, var_2.c.x), max(vec3<u32>(var_2.c.x, var_0.x, var_0.x), vec3<u32>(4294967295u, 22704u, u_input.d.x))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(13572u, var_2.c.x, var_0.x), u_input.d.xyw, var_2.c), ~(~vec3<u32>(17269u, 52328u, u_input.d.x))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1268f + _wgslsmith_f_op_f32(-636f * var_1)))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = !vec3<bool>(any(!(!vec4<bool>(false, false, arg_1.b.x, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0)))) < -721f, arg_1.b.x);
    let var_1 = _wgslsmith_clamp_i32(u_input.a ^ u_input.a, -reverseBits(-2147483647i), -2147483647i);
    var var_2 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(24335u, 77557u), 1u);
    let var_3 = Struct_3(!select(select(var_0.zx, select(vec2<bool>(false, true), var_0.zy, arg_1.b.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, 4294967295u != arg_1.a), select(!vec2<bool>(arg_1.b.x, true), vec2<bool>(true, true), var_0.xz)), firstTrailingBit(vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(u_input.d.wyz, vec3<u32>(38792u, arg_1.a, 0u))), arg_1.a, 1u, select(1u, u_input.c, !arg_1.b.x))), Struct_1(firstLeadingBit(max(38641u, 10865u)) << (min(~u_input.c, arg_1.a) % 32u), select(vec3<bool>(!arg_1.b.x, !arg_1.b.x, select(true, var_0.x, true)), vec3<bool>(true, true, !arg_1.b.x), vec3<bool>(var_0.x | true, arg_1.b.x == true, true))), ~((vec3<i32>(-1i, -55105i, var_1) ^ vec3<i32>(-1i, u_input.a, u_input.a)) << (u_input.d.zxx % vec3<u32>(32u))), !vec4<bool>(!(arg_0 <= 688f), true, !var_0.x && var_0.x, var_0.x));
    var var_4 = var_3.d.x;
    return Struct_1(u_input.d.x, vec3<bool>(all(!select(var_3.e, vec4<bool>(var_0.x, true, true, true), var_3.a.x)), false, !var_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(func_1()), Struct_1(4294967295u, select(vec3<bool>(select(true, true, true), true, true), vec3<bool>(true, true, true), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(372f, _wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(round(470f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1221f)), _wgslsmith_f_op_f32(-1000f + -611f), 617f) * vec3<f32>(_wgslsmith_f_op_f32(max(404f, 257f)), -791f, -901f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-264f, 1748f, -2199f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(654f, -1018f, 1057f)))))));
    let var_2 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.d.zw), firstTrailingBit(_wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, u_input.c), u_input.d.wx), u_input.d.wy | vec2<u32>(6713u, 47374u))), ~select(min(_wgslsmith_sub_vec2_u32(u_input.d.xz, vec2<u32>(23452u, 0u)), u_input.d.zw), vec2<u32>(~13273u, u_input.d.x), !(var_0.b.x || false)));
    let var_3 = vec3<u32>(~(~_wgslsmith_sub_u32(~60928u, func_4(148f, var_0).a)), var_0.a, 4294967295u);
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2631f * var_1.x), var_1.x)), -2330f, _wgslsmith_div_f32(_wgslsmith_div_f32(-220f, 356f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-1434f - var_1.x)))));
    let var_5 = countOneBits(vec4<u32>(var_3.x, ~1u, 4294967295u, _wgslsmith_dot_vec2_u32(~var_2, func_3(true)) << (abs(~var_0.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f * 985f));
}

