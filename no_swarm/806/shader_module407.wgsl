struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_sub_i32(arg_0.a << (firstTrailingBit(~1u) % 32u), -(arg_0.a | 25457i));
    var_0 = _wgslsmith_clamp_i32(~(-15550i), 62182i, ~(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-17666i, u_input.a.x, arg_0.a), vec3<i32>(arg_0.a, u_input.a.x, arg_0.a))));
    let var_1 = vec4<i32>(countOneBits(0i), u_input.c, (_wgslsmith_mult_i32(~(-8237i), _wgslsmith_sub_i32(1i, arg_0.a)) | max(2147483647i, _wgslsmith_sub_i32(-37761i, u_input.c))) >> (max(1u, 1u) % 32u), ~24715i);
    let var_2 = Struct_3(0u, _wgslsmith_sub_vec3_i32(-(var_1.wyz | var_1.ywx), ~var_1.wxz), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.a.b.x), _wgslsmith_f_op_f32(trunc(211f)), true)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(372f, -1557f), arg_0.b.a.b.x))), vec3<bool>(any(!select(vec4<bool>(arg_0.b.a.a, true, arg_0.b.a.a, true), vec4<bool>(arg_0.b.a.a, true, true, true), vec4<bool>(arg_0.b.a.a, false, false, true))), (arg_0.a > abs(-6114i)) & (countOneBits(0u) <= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 13386u), vec2<u32>(1u, 1u))), (all(vec2<bool>(false, false)) && arg_0.b.a.a) && true), arg_0.b.a.b);
    var var_3 = vec4<i32>(var_2.b.x, -(~(-2147483647i)), -arg_0.a, u_input.b.x);
    return ~var_2.a;
}

fn func_4(arg_0: u32, arg_1: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_vec4_u32((_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 22325u, arg_0, 71276u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 9417u), vec4<u32>(4294967295u, arg_0, arg_0, arg_0), vec4<u32>(arg_0, 38209u, arg_0, arg_0)), vec4<u32>(1u, 4294967295u, arg_0, arg_0) & vec4<u32>(arg_0, arg_0, arg_0, arg_0)) & _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 64813u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0, arg_0, arg_0), vec4<u32>(arg_0, arg_0, arg_0, 4294967295u)))) & ~(vec4<u32>(arg_0, 1u, arg_0, arg_0) << (~vec4<u32>(0u, arg_0, arg_0, arg_0) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(39465u, ~firstLeadingBit(arg_0)), 5087u, 914u, arg_0));
    var var_1 = vec3<bool>((_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, -344f)))) > -386f) || false, any(vec3<bool>(true, arg_0 > (arg_0 ^ arg_0), true)), 50904u >= _wgslsmith_dot_vec2_u32(reverseBits(abs(var_0.xx)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(0u, arg_0)), vec2<u32>(4294967295u, var_0.x) << (var_0.xz % vec2<u32>(32u)))));
    var_1 = select(vec3<bool>(any(vec4<bool>(var_1.x, all(vec2<bool>(true, var_1.x)), !var_1.x, true)), all(!(!vec4<bool>(false, var_1.x, false, var_1.x))), false), select(!(!select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, true, false), vec3<bool>(true, true, var_1.x))), select(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, var_1.x, false)), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x), var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false))), !(!vec3<bool>(var_1.x, true, var_1.x)), _wgslsmith_add_i32(-36824i, u_input.a.x) <= arg_1), true), true);
    var_1 = vec3<bool>(var_1.x & var_1.x, !var_1.x, _wgslsmith_clamp_i32(0i, -1i, 1581i) < reverseBits(29703i));
    let var_2 = Struct_1(all(!(!(!vec3<bool>(var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1081f, 144f, 684f, 417f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-666f, -1012f, -311f, -675f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1529f, -1459f, 1000f, 1638f)))), !any(vec3<bool>(true, var_1.x, false)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, 1565f, 467f, 543f))))), var_1.x)));
    return vec4<f32>(_wgslsmith_div_f32(1747f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-640f, _wgslsmith_f_op_f32(f32(-1f) * -1063f))) + -886f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_2.b.x))))), var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -424f));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_4(~abs(u_input.b.x) << (_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(16829u, 1477u, 0u), ~abs(1u)) % 32u), Struct_2(Struct_1(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-arg_0))));
    let var_1 = var_0.a;
    var var_2 = Struct_3(~reverseBits(~_wgslsmith_clamp_u32(38455u, 76534u, 9633u)), vec3<i32>(_wgslsmith_mod_i32(1i, ~(-803i)), _wgslsmith_mult_i32(u_input.a.x, u_input.b.x), 0i), false, !vec3<bool>(any(vec4<bool>(true, true, true, true)), !(!var_0.b.a.a), false), _wgslsmith_f_op_vec4_f32(step(var_0.b.a.b, _wgslsmith_f_op_vec4_f32(func_4(31366u ^ func_3(Struct_4(var_1, var_0.b), vec4<f32>(1704f, 1000f, var_0.b.a.b.x, var_0.b.a.b.x)), var_0.a)))));
    var var_3 = firstTrailingBit(max(firstLeadingBit(-48416i), _wgslsmith_sub_i32(-4363i, countOneBits(var_2.b.x)))) > (1i & _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1, -19034i) & ~6330i, var_1));
    let var_4 = select(!vec4<bool>(false, var_0.b.a.a, var_0.b.a.a, any(select(vec2<bool>(var_0.b.a.a, var_2.d.x), var_2.d.zy, var_2.d.zy))), select(select(!vec4<bool>(var_2.d.x, var_2.d.x, var_2.c, false), vec4<bool>(17100u < var_2.a, !var_2.c, all(vec4<bool>(true, var_0.b.a.a, true, false)), true), true), vec4<bool>(false, true, !var_0.b.a.a, any(!var_2.d)), true), all(!(!(!vec2<bool>(var_0.b.a.a, var_2.d.x)))));
    return var_0.b.a.b.x;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-906f, arg_1, 287f, arg_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.a.b, arg_2.a.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -296f, arg_2.a.b.x)))))));
    var_0 = arg_1;
    let var_1 = Struct_3(reverseBits(~12498u), (countOneBits(countOneBits(vec3<i32>(u_input.c, 16392i, u_input.b.x))) >> (countOneBits(~vec3<u32>(4294967295u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(firstTrailingBit(40329u), 1u, 1u), vec3<u32>(1u, 2025u << (0u % 32u), _wgslsmith_sub_u32(0u, 0u))) % vec3<u32>(32u)), !(~4294967295u > _wgslsmith_dot_vec4_u32(~vec4<u32>(65794u, 8787u, 52367u, 6105u), ~vec4<u32>(2496u, 77417u, 1310u, 1u))), vec3<bool>(arg_2.a.a, true, true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b.x, arg_2.a.b.x, _wgslsmith_f_op_f32(trunc(1059f)), 141f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1290f, -1000f, arg_2.a.b.x, arg_2.a.b.x), arg_2.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b.x, -563f, arg_2.a.b.x, arg_2.a.b.x))))))));
    let var_2 = Struct_2(Struct_1(var_1.b.x > 13163i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.e.x, var_1.e.x, var_1.e.x, -1000f))))));
    return countOneBits(~16482u);
}

fn func_5(arg_0: u32) -> i32 {
    var var_0 = 7682i | (u_input.c >> (_wgslsmith_mult_u32(~firstLeadingBit(42979u), arg_0) % 32u));
    var var_1 = Struct_4(-2147483647i, Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4472u, arg_0, 10918u), vec4<u32>(arg_0, arg_0, 36632u, 0u)) < 0u, vec4<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(769f, 307f, -2573f, -378f))), _wgslsmith_f_op_vec4_f32(func_4(arg_0, 1i)).x, _wgslsmith_f_op_f32(ceil(635f)), -421f))));
    let var_2 = Struct_3(arg_0, vec3<i32>((_wgslsmith_sub_i32(0i, var_1.a) & -14555i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, 0i, var_1.a) | vec3<i32>(var_1.a, u_input.b.x, u_input.a.x), -vec3<i32>(1i, u_input.c, -16175i)), -var_1.a, u_input.a.x), !all(!select(vec3<bool>(var_1.b.a.a, var_1.b.a.a, var_1.b.a.a), vec3<bool>(var_1.b.a.a, true, var_1.b.a.a), vec3<bool>(true, true, false))), !(!vec3<bool>(-400f >= var_1.b.a.b.x, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.a.b.x), var_1.b.a.b.x, _wgslsmith_f_op_f32(-var_1.b.a.b.x), 597f)) + var_1.b.a.b));
    var_1 = Struct_4(var_1.a, var_1.b);
    var_0 = countOneBits(2147483647i);
    return countOneBits(40410i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(u_input.c, max(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -12052i, u_input.c), vec3<i32>(2147483647i, u_input.a.x, u_input.b.x)), 21020i)) << (vec2<u32>(4294967295u ^ _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), 1u), 1u) % vec2<u32>(32u));
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 5296i, u_input.c), vec3<i32>(u_input.a.x, 0i, 15110i)), 31352i), u_input.a.x, u_input.b.x) ^ u_input.a.x, 0i, -var_0.x, (i32(-1i) * -1318i) | -func_5(func_1(false, 1033f, Struct_2(Struct_1(true, vec4<f32>(-1037f, 404f, -1000f, 734f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(698f, -412f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-846f, 2108f))))))));
    let var_3 = vec2<bool>(true, any(vec2<bool>(true, true)));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, var_2.x), vec2<f32>(1000f, -678f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-102f, var_2.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(3059f, -1354f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-721f, 1000f) - _wgslsmith_f_op_vec4_f32(func_4(countOneBits(0u), ~var_0.x)).xw)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 4739u, 4294967295u))), 17660i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_f_op_f32(select(-471f, var_2.x, var_3.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -1059f, -140f))))));
}

