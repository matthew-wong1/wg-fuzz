struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(arg_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a.x)) * _wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a.x, arg_1.c.x, arg_2.c.x))) + vec3<f32>(arg_2.c.x, _wgslsmith_f_op_f32(select(120f, arg_2.a.x, false)), -1092f)), select(vec3<bool>(arg_2.b.x, arg_2.b.x, select(false, arg_1.b.x, arg_1.b.x)), select(vec3<bool>(false, arg_2.b.x, true), arg_1.b, arg_2.c.x != 1269f), arg_2.b))), u_input.a, ~_wgslsmith_mod_vec2_u32(~(~arg_1.e), arg_1.e), arg_1);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_1.a.x, arg_1.a.x, -1290f)))))));
    return var_0.a.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(reverseBits(49478u), Struct_1(vec2<f32>(-1236f, 1000f), vec3<bool>(false, false, false), vec2<f32>(-330f, -1060f), u_input.a, vec2<u32>(11001u, 89354u)), Struct_1(vec2<f32>(521f, -766f), vec3<bool>(false, false, false), vec2<f32>(-388f, 246f), 10972i, vec2<u32>(0u, 0u)), vec2<i32>(u_input.a, 24543i))), -1168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-901f, _wgslsmith_f_op_f32(min(-346f, -406f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3125f + -716f) - _wgslsmith_f_op_f32(-1000f * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1000f, 1498f)))))), i32(-1i) * -62345i, vec2<u32>(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2382u, 1u, 1u), vec4<u32>(60142u, 1u, 0u, 59411u))), max(abs(15829u), abs(1u))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, -865f)))))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(454f, _wgslsmith_f_op_f32(f32(-1f) * -752f)))), u_input.a, ~vec2<u32>(1u, 1u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1401f) + _wgslsmith_f_op_f32(max(-1860f, var_0.a.x))), _wgslsmith_f_op_f32(abs(-1000f)))));
    let var_2 = max(_wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(var_0.b, 2147483647i)), -var_0.d.d), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, 34143i), _wgslsmith_sub_i32(u_input.a, -2147483647i), _wgslsmith_add_i32(-38508i, 1i)), firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), vec4<i32>(~(-1i), _wgslsmith_add_i32(21768i, u_input.a), u_input.a << (49672u % 32u), var_0.b)), countOneBits(vec4<i32>(var_0.b, 17159i, u_input.a, 2147483647i) | ~vec4<i32>(var_0.d.d, -39701i, u_input.a, u_input.a))));
    return 4294967295u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: bool) -> vec2<u32> {
    let var_0 = max(vec4<u32>(func_2(), 1u, _wgslsmith_div_u32(1u, 4294967295u), 1u), _wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 1u, 14641u, _wgslsmith_mod_u32(0u, 5027u))), countOneBits(max(~vec4<u32>(28256u, 0u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(408f, -1977f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-645f, -819f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -795f), vec2<f32>(-1438f, -286f), vec2<bool>(true, arg_2))), vec2<f32>(211f, -541f)), false)))), !vec3<bool>(false, arg_2, all(vec2<bool>(arg_2, arg_2)) | true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1356f)), _wgslsmith_f_op_f32(round(567f))) + -963f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-915f * -537f))), arg_1.x, vec2<u32>(~max(_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x), 4294967295u), 4294967295u));
    var_1 = Struct_1(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))) * 1267f)), var_1.b, _wgslsmith_f_op_vec2_f32(-var_1.c), abs(arg_1.x), vec2<u32>(_wgslsmith_add_u32(~(~var_0.x), _wgslsmith_sub_u32(var_1.e.x, var_0.x | 0u)), 1u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(var_1.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) * vec2<f32>(108f, 651f)))), !(!var_1.b.x))))), select(select(var_1.b, var_1.b, !(!vec3<bool>(true, var_1.b.x, false))), vec3<bool>(select(var_1.e.x < var_1.e.x, !arg_2, any(vec2<bool>(false, var_1.b.x))), false, true), false), vec2<f32>(-269f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(491f * var_1.c.x), -589f)))), _wgslsmith_add_i32(~arg_0.x, abs(2147483647i)), var_0.xw);
    let var_3 = arg_2;
    return var_0.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(false, false), true)), vec2<bool>(true, true), true);
    let var_1 = vec2<bool>(true, any(vec2<bool>(any(!vec4<bool>(true, true, true, var_0.x)), true)));
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(120f - -281f), _wgslsmith_f_op_f32(f32(-1f) * -401f), 1750f) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(707f, 960f, -631f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2501f, 568f, 182f) - vec3<f32>(-531f, 1198f, -244f)))))), u_input.a, ~(~(~vec2<u32>(31078u, 4294967295u)) >> (func_1(vec2<i32>(21751i, u_input.a), -vec3<i32>(u_input.a, u_input.a, 1i), !var_1.x) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-635f, -665f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-412f, 253f), vec2<f32>(-899f, -678f), var_0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-465f, 1334f))), select(select(vec3<bool>(true, var_1.x, var_0.x), select(vec3<bool>(var_1.x, var_0.x, var_1.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true), !vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), any(vec2<bool>(true, var_0.x)), var_0.x != false), select(!vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, true, true), var_1.x), var_0.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1749f, 1626f), vec2<f32>(777f, 1742f))) + vec2<f32>(-1000f, -357f)), vec2<f32>(_wgslsmith_f_op_f32(-2193f * 296f), _wgslsmith_f_op_f32(max(1000f, 988f))))), ~(-1i), firstTrailingBit(vec2<u32>(reverseBits(17464u), 59111u))));
    var_2 = Struct_2(var_2.a, firstLeadingBit(firstTrailingBit(u_input.a)), _wgslsmith_add_vec2_u32(var_2.c, select(select(~var_2.d.e, countOneBits(vec2<u32>(0u, var_2.d.e.x)), var_2.d.b.x), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.d.e.x, var_2.c.x), vec2<u32>(var_2.d.e.x, 25329u))), false)), var_2.d);
    var var_3 = max(2147483647i, 39643i);
    var_0 = select(select(vec2<bool>(any(select(var_2.d.b, var_2.d.b, vec3<bool>(false, true, false))), var_1.x), select(var_1, var_2.d.b.zx, any(vec3<bool>(var_1.x, true, true))), (u_input.a < reverseBits(var_2.d.d)) & !select(var_2.d.b.x, false, true)), !var_2.d.b.yz, var_2.d.b.zx);
    var var_4 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_2.b, 13402i), min(10446i, 17974i)), 3280i, u_input.a, ~1i), ~max(vec4<i32>(var_2.d.d, u_input.a, var_2.d.d, -43744i), ~vec4<i32>(-2147483647i, u_input.a, 78430i, u_input.a))), vec4<i32>(~1i, u_input.a, 1i, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 12328i, 26519i, u_input.a), vec4<i32>(u_input.a, -1263i, u_input.a, var_2.d.d))), vec4<i32>(u_input.a & (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(11737i, -16869i)) ^ (u_input.a << (var_2.c.x % 32u))), _wgslsmith_mod_i32(-(u_input.a & 17746i), 6059i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -19302i) & vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), 8360i), 0i));
    var_0 = !select(vec2<bool>(false, var_0.x), select(!select(vec2<bool>(var_2.d.b.x, false), vec2<bool>(true, true), var_1), select(var_1, vec2<bool>(true, true), false), vec2<bool>(true, 1346i != u_input.a)), var_2.d.b.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_2.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.a.x, var_2.d.a.x, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(var_2.d.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(var_2.d.a.x, var_2.a.x))), var_2.d.c.x, _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(var_2.d.c.x - -241f)), var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-558f, -1541f)));
}

