struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

var<private> global1: bool = false;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = array<Struct_3, 6>();
    var var_0 = all(select(vec2<bool>(arg_0.b.x, min(u_input.b, 21121u) <= min(1u, 4294967295u)), arg_0.b.yx, any(arg_0.b)));
    var_0 = false;
    let var_1 = Struct_3(arg_0.b.xz, select(!arg_0.c, select(vec3<bool>(false, arg_0.c.x, true), select(!arg_0.b, !arg_0.b, false), !arg_0.c.x), all(!(!arg_0.c))), !select(arg_0.b, !vec3<bool>(true, arg_0.c.x, false), all(!vec4<bool>(arg_0.c.x, arg_0.b.x, arg_0.a.x, arg_0.b.x))), 50378u);
    var_0 = true & (_wgslsmith_f_op_f32(abs(1104f)) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 566f))))));
    return 1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: i32) -> Struct_3 {
    let var_0 = ~_wgslsmith_clamp_u32(0u, u_input.b, _wgslsmith_sub_u32(select(u_input.b, u_input.b, arg_1), abs(u_input.b)));
    var var_1 = ~((u_input.a >> (u_input.b % 32u)) & (~_wgslsmith_mod_i32(-1i, u_input.a) >> (~var_0 % 32u)));
    global1 = true;
    let var_2 = true;
    var var_3 = select(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(-21930i, u_input.a, arg_2)), select(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(2147483647i, arg_2, u_input.a), arg_0)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(3801i, 38450i, -16021i), vec3<i32>(-31874i, 18519i, arg_2), vec3<i32>(42836i, 0i, arg_2))), vec3<i32>(_wgslsmith_clamp_i32(u_input.a, func_3(Struct_3(arg_0.xy, vec3<bool>(arg_0.x, arg_0.x, true), arg_0, var_0)), ~50182i), abs(-1i), 34181i), vec3<bool>(select(any(vec4<bool>(var_2, arg_1, arg_0.x, true)), all(vec4<bool>(false, var_2, var_2, arg_0.x)), true), true, true)) | ~(-vec3<i32>(arg_2, _wgslsmith_add_i32(arg_2, arg_2), -1i));
    return Struct_3(arg_0.zz, !select(select(!arg_0, select(arg_0, vec3<bool>(arg_0.x, var_2, var_2), false), any(vec4<bool>(true, false, false, arg_0.x))), !vec3<bool>(false, arg_0.x, arg_0.x), select(false, arg_1, arg_0.x) & all(arg_0)), select(arg_0, arg_0, !select(select(arg_0, vec3<bool>(arg_1, var_2, true), var_2), !vec3<bool>(arg_0.x, true, false), !vec3<bool>(var_2, var_2, arg_0.x))), reverseBits(var_0));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    let var_0 = func_2(arg_1.b, arg_1.c.x, u_input.a).d;
    var var_1 = Struct_1(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(firstTrailingBit(9709i), abs(u_input.a), 0i)), ~(-vec3<i32>(u_input.a, u_input.a, -16570i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1181f), vec2<f32>(1079f, arg_2))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, arg_2))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1456f, -1385f))))), -_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, 1i)), countOneBits(vec3<i32>(u_input.a, u_input.a, -2147483647i)), vec3<i32>(2147483647i, u_input.a, -2147483647i)), firstLeadingBit(vec3<i32>(-50942i, u_input.a, 0i))));
    var var_2 = func_2(arg_1.b, !any(!select(vec4<bool>(arg_0, arg_1.b.x, false, false), vec4<bool>(arg_1.a.x, false, false, arg_1.b.x), true)), _wgslsmith_clamp_i32(var_1.c.x, ~_wgslsmith_clamp_i32(var_1.a.x << (9327u % 32u), var_1.c.x >> (119871u % 32u), _wgslsmith_mod_i32(0i, -43464i)), ~abs(~14522i)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.b, var_1.b)) + var_1.b)))), vec3<i32>(1i, u_input.a, -_wgslsmith_dot_vec2_i32(var_1.a.xx, vec2<i32>(-51236i, var_1.c.x))));
    let var_3 = var_1.b.x;
    return arg_2;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> vec3<bool> {
    global0 = array<Struct_3, 6>();
    global1 = arg_0.a;
    global1 = false;
    let var_0 = vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(1764f * _wgslsmith_f_op_f32(arg_1.b + 1551f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(true, func_2(vec3<bool>(false, false, arg_0.a), arg_0.a, -24897i), arg_1.b, vec3<u32>(arg_0.c, arg_0.e, u_input.b) << (vec3<u32>(4294967295u, 31997u, arg_0.c) % vec3<u32>(32u)))))))));
    global1 = select(arg_0.a, false, !(!(!(!arg_0.a))));
    return !arg_1.a.xzw;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>) -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 6u)];
    let var_1 = Struct_1(countOneBits(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -10951i, 12810i)), vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -861f)), vec3<i32>(i32(-1i) * -u_input.a, 1i, reverseBits(-(u_input.a & u_input.a))));
    var var_2 = var_1;
    let var_3 = Struct_4(any(!vec2<bool>(arg_1.x, false)) & any(var_0.b), Struct_1(vec3<i32>(1i, -37884i, ~_wgslsmith_mult_i32(var_2.a.x, var_1.a.x)), _wgslsmith_f_op_vec2_f32(select(var_1.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b.x, var_2.b.x))), !(var_0.d < u_input.b))), reverseBits(_wgslsmith_div_vec3_i32(var_1.c, vec3<i32>(10637i, var_1.a.x, -2147483647i)))), u_input.b, Struct_1(reverseBits(countOneBits(firstLeadingBit(var_2.c))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b)))), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, var_1.a.x, var_2.c.x), var_1.a ^ ~vec3<i32>(var_2.c.x, 1i, 38678i))), 1u);
    var var_4 = Struct_2(select(!vec4<bool>(var_0.a.x != arg_1.x, var_3.d.a.x != 1i, any(var_0.c.zy), false), select(vec4<bool>(var_3.a, all(vec3<bool>(false, arg_1.x, arg_1.x)), false, select(arg_1.x, arg_1.x, false)), select(vec4<bool>(false, arg_1.x, var_3.a, var_3.a), vec4<bool>(false, var_0.c.x, true, true), !vec4<bool>(true, var_0.c.x, var_3.a, var_3.a)), all(!vec3<bool>(arg_1.x, false, true))), vec4<bool>(true, 5797u != firstLeadingBit(u_input.b), var_3.a, var_0.c.x)), arg_0, firstTrailingBit(var_3.c));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = !select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), vec2<bool>(true, true), true), vec2<bool>(true, any(vec4<bool>(true, false, false, true))), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, false, false, false))));
    var var_2 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -743f), select(vec2<bool>(true, true), vec2<bool>(select(u_input.a, 10934i, true) <= ~1i, all(func_1(Struct_4(true, Struct_1(vec3<i32>(u_input.a, 1i, u_input.a), vec2<f32>(-734f, -1859f), vec3<i32>(10207i, -28926i, 20986i)), 13462u, Struct_1(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec2<f32>(140f, 1085f), vec3<i32>(u_input.a, u_input.a, u_input.a)), 0u), Struct_2(vec4<bool>(var_1.x, var_1.x, true, var_1.x), -769f, u_input.b)))), false));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.b.x), 1757f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.b.b, vec2<f32>(var_2.d.b.x, 1000f))) - vec2<f32>(_wgslsmith_f_op_f32(859f + _wgslsmith_f_op_f32(var_2.b.b.x * -1058f)), 1000f))));
    var_2 = Struct_4(true, func_5(var_2.d.b.x, select(select(var_1, select(var_1, vec2<bool>(true, var_1.x), vec2<bool>(false, false)), var_1), select(var_1, !var_1, select(var_1, var_1, false)), func_1(func_5(var_3.x, var_1), Struct_2(vec4<bool>(true, false, true, var_1.x), -1477f, var_2.e)).xx)).b, ~17250u, func_5(var_2.b.b.x, func_2(func_1(Struct_4(false, var_2.d, 4294967295u, var_2.d, 4294967295u), Struct_2(vec4<bool>(var_1.x, true, true, var_2.a), var_3.x, 4294967295u)), all(!vec2<bool>(var_2.a, false)), 0i).b.yz).d, ~18290u);
    var var_4 = func_2(!select(func_2(!vec3<bool>(true, var_2.a, false), false, _wgslsmith_mod_i32(-10022i, u_input.a)).b, select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_2.a, false, true), var_1.x), !vec3<bool>(var_2.a, true, false), select(vec3<bool>(var_2.a, var_1.x, var_2.a), vec3<bool>(var_1.x, var_2.a, true), var_2.a)), false), var_2.a, -max(_wgslsmith_sub_i32(var_2.d.a.x | 0i, _wgslsmith_clamp_i32(u_input.a, var_2.b.c.x, -1i)), 56184i));
    var var_5 = vec4<i32>(-1i) * -vec4<i32>(~(-u_input.a), reverseBits(-var_2.b.c.x), var_2.d.a.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(24154u, u_input.b, 18454u, u_input.b), vec4<u32>(49943u, 0u, var_4.d, 1u)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.d, 39329u), ~vec2<u32>(u_input.b, var_2.c)), var_2.c), _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.e, var_2.e, 1u, var_2.e), vec4<u32>(var_4.d, var_4.d, var_2.c, 4294967295u)), countOneBits(vec4<u32>(var_4.d, 85490u, 4294967295u, u_input.b)))), vec4<i32>(12241i, -41718i, var_5.x, 0i), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1083f + -2100f) - _wgslsmith_f_op_f32(f32(-1f) * -482f)), select(var_1, vec2<bool>(!var_1.x, true), vec2<bool>(true, false))).e, abs(~vec3<i32>(_wgslsmith_mult_i32(u_input.a, 2147483647i), -1i, -2147483647i)));
}

