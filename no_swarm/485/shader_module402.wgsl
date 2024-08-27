struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = ~0u;
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(146f - -1750f), _wgslsmith_f_op_f32(round(1658f)), _wgslsmith_f_op_f32(min(1001f, 760f)), _wgslsmith_f_op_f32(abs(1172f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(360f, 805f, 1630f, -575f)))))), max(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, arg_0.x), vec4<i32>(-8397i, u_input.b, 2147483647i, 0i)), ~vec4<i32>(u_input.b, 14815i, -1i, u_input.b)), _wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b, 7114i, -36577i, 2147483647i), vec4<i32>(u_input.b, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, false, true)), vec4<i32>(-1i, arg_0.x, 0i, u_input.b) ^ vec4<i32>(arg_0.x, -2799i, arg_0.x, 1i)))), firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x, min(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 12492u, 4294967295u, u_input.d), u_input.c)))), Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), 1u, 1u);
    let var_2 = (1i >= ~u_input.b) | !all(vec2<bool>(true, true));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a.a), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.x), vec2<i32>(u_input.b, var_1.a.b.x)) >> (~var_1.e % 32u), -50624i, ~(-1i) << (var_1.e % 32u), u_input.b)), ~4294967295u, Struct_2(var_2), 1u, 1u);
    var var_4 = var_3.c.a;
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(~0i, _wgslsmith_sub_i32(9254i, 38997i), select(_wgslsmith_clamp_i32(u_input.b, 2147483647i, var_3.a.b.x), u_input.b, !var_3.c.a)), firstTrailingBit(vec3<i32>(-43776i, -2147483647i, ~2147483647i)));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = -35792i;
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1767f, 1755f, -528f, -575f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2072f, 1224f, -1000f, -113f))), vec4<f32>(_wgslsmith_f_op_f32(-123f - 615f), 428f, -1015f, 353f)), ~vec4<i32>(34062i, func_3(vec3<i32>(var_0, u_input.b, u_input.b)), ~(-33407i), -42103i)), _wgslsmith_clamp_u32(1u, max(~firstLeadingBit(u_input.d), ~u_input.d), 0u), Struct_2(arg_0), u_input.a, min(~min(1u, u_input.d), ~_wgslsmith_add_u32(66899u << (u_input.d % 32u), _wgslsmith_sub_u32(u_input.a, 1u))));
    var_1 = Struct_3(Struct_1(vec4<f32>(1008f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.a.x)) * var_1.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f + var_1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f))), var_1.a.b), _wgslsmith_sub_u32(u_input.a, 0u) | (_wgslsmith_div_u32(34104u, var_1.e) >> (u_input.c.x % 32u)), var_1.c, _wgslsmith_dot_vec2_u32(select(vec2<u32>(countOneBits(4294967295u), ~0u), max(vec2<u32>(16684u, u_input.c.x) ^ vec2<u32>(0u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_1.b), vec2<u32>(var_1.b, u_input.d))), vec2<bool>(true, true)), abs(~u_input.e.zz)), 37854u);
    let var_2 = ~_wgslsmith_mod_vec3_u32(max(u_input.e, countOneBits(abs(vec3<u32>(u_input.c.x, 37943u, 29387u)))), ~_wgslsmith_add_vec3_u32(firstTrailingBit(u_input.e), vec3<u32>(1211u, var_1.d, u_input.d)));
    var var_3 = var_1.c;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(346f)), 603f)))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_2(!arg_0));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.a.wxy)))));
    let var_2 = arg_1;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 902f, 990f) - _wgslsmith_f_op_vec3_f32(-var_2.a.ywy)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, -883f, var_0)), var_2.a.xwx))) + vec3<f32>(arg_1.a.x, 253f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, var_1.x)), _wgslsmith_f_op_f32(-var_2.a.x)))))));
    let var_3 = u_input.c.xy >> (((~u_input.e.zz >> (select(u_input.c.xw, _wgslsmith_mod_vec2_u32(u_input.e.xz, vec2<u32>(u_input.a, u_input.a)), arg_0) % vec2<u32>(32u))) >> (u_input.e.zy % vec2<u32>(32u))) % vec2<u32>(32u));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-178f)), _wgslsmith_f_op_f32(-802f * 568f))) + _wgslsmith_f_op_f32(func_1(true, Struct_1(vec4<f32>(1000f, -1142f, 540f, -1349f), vec4<i32>(u_input.b, u_input.b, -3262i, 0i))))), _wgslsmith_f_op_f32(func_1(u_input.d == u_input.e.x, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(463f, -652f, 1017f, -1218f), vec4<f32>(1246f, 265f, -897f, -1000f), true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-8535i, 44600i, u_input.b, u_input.b), vec4<i32>(38170i, 2147483647i, 16536i, 0i), vec4<i32>(u_input.b, u_input.b, 2147483647i, 2610i)))))) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(428f, 886f))), 502f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-477f + 961f)))))));
    let var_1 = abs(vec3<i32>(~u_input.b, _wgslsmith_div_i32(u_input.b, -(~(-21826i))), 60080i));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(1840f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f))), var_0.x, 595f), -vec4<i32>(_wgslsmith_mod_i32(u_input.b ^ -1i, -46239i | var_1.x), u_input.b, u_input.b, ~firstTrailingBit(-32656i)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1152f, _wgslsmith_f_op_f32(select(-1000f, var_0.x, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)));
    let var_4 = vec3<i32>(-var_1.x, _wgslsmith_mult_i32(-var_2.b.x, var_2.b.x), abs(-14461i ^ -(var_2.b.x >> (4294967295u % 32u))));
    var var_5 = Struct_3(Struct_1(vec4<f32>(var_3, 242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1565f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3 * -1384f), _wgslsmith_f_op_f32(-var_3), false))), -var_2.b << (max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 4294967295u, 0u), vec4<u32>(6669u, 4294967295u, 23948u, 160507u)), vec4<u32>(u_input.e.x, 1u, 69544u, 51833u)) % vec4<u32>(32u))), 1u, Struct_2(true), _wgslsmith_dot_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 15887u, 1u, u_input.d), vec4<u32>(4294967295u, 39385u, 1u, u_input.c.x)) << (u_input.c % vec4<u32>(32u))), firstTrailingBit(u_input.c)), 0u | (u_input.a ^ u_input.c.x));
    let var_6 = vec3<bool>(all(vec3<bool>(select(false, var_5.c.a, any(vec4<bool>(var_5.c.a, var_5.c.a, var_5.c.a, var_5.c.a))), true, true)), !(var_5.c.a && all(vec2<bool>(var_5.c.a, var_5.c.a))), all(!vec3<bool>(var_5.c.a, all(vec2<bool>(var_5.c.a, var_5.c.a)), !var_5.c.a)));
    var var_7 = Struct_2(var_5.c.a);
    var var_8 = _wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(u_input.e.x, u_input.c.x) >> (1u % 32u)), u_input.d, firstTrailingBit(firstLeadingBit(min(~var_5.d, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(4899i, reverseBits(-_wgslsmith_mult_i32(var_4.x | var_4.x, var_1.x)), ~38027u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(903f)))) * 1f), _wgslsmith_f_op_f32(f32(-1f) * -1638f))), ~u_input.e.zz);
}

