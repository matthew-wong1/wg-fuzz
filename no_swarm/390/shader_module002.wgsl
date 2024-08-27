struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    let var_0 = ~((-vec3<i32>(0i, arg_2.c, 2147483647i) & arg_2.b) >> (vec3<u32>(_wgslsmith_mod_u32(25699u, u_input.a) | 1u, ~_wgslsmith_clamp_u32(98244u, 21832u, u_input.a), 1u) % vec3<u32>(32u)));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(4294967295u, arg_1.a.x)), ~countOneBits(vec2<u32>(1u, countOneBits(arg_1.a.x))));
    var var_3 = Struct_1(vec3<u32>(55452u, abs(~u_input.a), ~_wgslsmith_mod_u32(57418u & arg_1.a.x, ~var_2.x)), vec2<f32>(766f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)) + -536f)), 1f);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) + _wgslsmith_f_op_f32(arg_1.b.x * arg_1.c))))));
    return any(select(vec3<bool>(arg_2.a, arg_3.x, false), arg_3.zwy, arg_3.wzz));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    let var_0 = select(select(vec2<bool>(arg_0 && true, arg_0), !select(vec2<bool>(true, false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), true), vec2<bool>(false, arg_0)), vec2<bool>(any(!vec3<bool>(arg_0, arg_0, arg_0)), (u_input.a != arg_2.x) || true)), vec2<bool>(any(vec3<bool>(arg_1 <= 4294967295u, false, func_3(true, Struct_1(vec3<u32>(u_input.a, arg_1, arg_2.x), vec2<f32>(-1205f, 1544f), -120f), Struct_2(false, vec3<i32>(-2147483647i, 1i, -1i), -2147483647i, -1019f, vec2<bool>(arg_0, true)), vec4<bool>(arg_0, false, arg_0, arg_0)))), true), any(select(vec4<bool>(arg_0 || arg_0, true, !arg_0, true), vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0, false, false))));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(1i), firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-72482i, -415i, 7858i, 0i), vec4<i32>(0i, -2147483647i, -41913i, -12559i)), _wgslsmith_mult_i32(23920i, 22124i)))), firstLeadingBit(vec2<i32>(0i, ~1i)));
    var_1 = -8681i;
    var var_2 = Struct_2(select(false, var_0.x && any(vec2<bool>(arg_0, true)), var_0.x), abs(vec3<i32>(1i, 1i, 1i)), -1i, 182f, select(select(var_0, var_0, !(!var_0)), select(select(var_0, vec2<bool>(arg_0, var_0.x), !var_0), vec2<bool>(false || arg_0, all(vec4<bool>(false, var_0.x, arg_0, arg_0))), func_3(!arg_0, Struct_1(vec3<u32>(4294967295u, arg_2.x, u_input.a), vec2<f32>(-786f, 143f), -165f), Struct_2(arg_0, vec3<i32>(-25250i, 0i, -55624i), -7117i, 292f, var_0), vec4<bool>(arg_0, var_0.x, false, false))), all(select(!vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false)))));
    var var_3 = Struct_2(!any(!select(vec3<bool>(arg_0, var_0.x, false), vec3<bool>(arg_0, arg_0, true), false)), vec3<i32>(~_wgslsmith_dot_vec3_i32(var_2.b, var_2.b) ^ var_2.c, var_2.b.x, var_2.b.x), -12048i, var_2.d, select(vec2<bool>(var_2.e.x, any(vec4<bool>(arg_0, var_0.x, arg_0, arg_0))), var_2.e, _wgslsmith_div_f32(var_2.d, var_2.d) > _wgslsmith_f_op_f32(ceil(1639f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -642f))));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = !(arg_0 <= (arg_0 << (_wgslsmith_mod_u32(~45712u, 47126u) % 32u)));
    var var_1 = Struct_2(-617f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(false, u_input.a, ~vec3<u32>(0u, 7963u, u_input.a))))), -_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 1i, 2147483647i), vec3<i32>(arg_0, 2147483647i, arg_0)), firstTrailingBit(vec3<i32>(-1i, arg_0, -31427i)) | -vec3<i32>(11017i, arg_0, 16049i)), arg_0, -301f, vec2<bool>(all(vec2<bool>(arg_0 == 1i, 4294967295u == u_input.a)), all(select(select(vec2<bool>(false, false), vec2<bool>(var_0, false), vec2<bool>(var_0, true)), select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), false), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), var_0)))));
    let var_2 = ~(~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.a, u_input.a, 1u, 0u)), vec4<u32>(57447u, u_input.a, 49020u, u_input.a) << (min(vec4<u32>(1u, 31301u, u_input.a, u_input.a), vec4<u32>(u_input.a, 83081u, u_input.a, u_input.a)) % vec4<u32>(32u)), vec4<u32>(~u_input.a, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_mod_u32(u_input.a, u_input.a))));
    var_1 = Struct_2(true, var_1.b, abs(arg_0), -641f, vec2<bool>(true, var_0));
    var var_3 = Struct_2(var_1.e.x, var_1.b, var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), var_1.d) - -1907f)), vec2<bool>(true | (countOneBits(var_1.c) > min(-23418i, -9622i)), all(select(vec3<bool>(var_1.a, var_0, var_1.a), vec3<bool>(var_0, var_1.a, var_0), vec3<bool>(true, false, true))) && all(select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_1.e.x, var_1.a), vec3<bool>(var_0, false, true)))));
    return _wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(arg_0, -2147483647i)), -2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<u32>(36774u, 1u) & ~vec2<u32>(1u & ~u_input.a, 41864u);
    var_0 = ~vec2<u32>(0u, _wgslsmith_sub_u32(var_0.x, u_input.a));
    var var_1 = _wgslsmith_add_u32(var_0.x, max(reverseBits(var_0.x), min(var_0.x, countOneBits(var_0.x))));
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, 83000u, 1u), vec4<u32>(1u, var_0.x, u_input.a, 71160u)) & (vec4<u32>(1u, 0u, var_0.x, 22638u) | vec4<u32>(1u, var_0.x, 2762u, var_0.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(54912u, 4294967295u), vec2<u32>(0u, 40636u)), var_0.x, 7561u, ~22832u), ~vec4<u32>(4294967295u, u_input.a, var_0.x, 1u))), firstTrailingBit(vec4<u32>(~0u | ~u_input.a, u_input.a, ~var_0.x, ~1u)));
    var_1 = var_2.x;
    return Struct_2(select(true, !(!(!arg_1.a)), any(arg_3.e)), vec3<i32>(arg_0.c, _wgslsmith_sub_i32(arg_3.c, -arg_2.b.x), arg_2.b.x), -1i, arg_1.d, !select(!vec2<bool>(false, arg_2.e.x), arg_3.e, arg_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(true, vec3<i32>(1i, 1i, 1i) >> (~(~vec3<u32>(u_input.a, 84703u, 10294u)) % vec3<u32>(32u)), func_1(firstLeadingBit(1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1259f - 1394f) * _wgslsmith_f_op_f32(f32(-1f) * -1335f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1048f), -669f, false))), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))))), Struct_2(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))), vec3<i32>(1i, 2147483647i, reverseBits(1i)), -55353i, 1f, vec2<bool>(true, all(vec2<bool>(true, true)))), Struct_2(true, ~countOneBits(vec3<i32>(-1i, 31702i, -2147483647i)), -1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1724f - _wgslsmith_f_op_f32(f32(-1f) * -494f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, false, false))), true)), Struct_2((min(u_input.a, u_input.a) | ~u_input.a) >= ~_wgslsmith_dot_vec2_u32(vec2<u32>(33835u, u_input.a), vec2<u32>(1u, 35383u)), _wgslsmith_add_vec3_i32(-firstTrailingBit(vec3<i32>(0i, -2147483647i, 2147483647i)), vec3<i32>(_wgslsmith_mult_i32(0i, -1i), i32(-1i) * -44279i, _wgslsmith_add_i32(10490i, -1i))), ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(26265i, -7220i)), select(vec2<i32>(-1i, -3492i), vec2<i32>(-42925i, -2728i), vec2<bool>(true, true))), 1f, vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 521f, var_0.d)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-654f, -1000f, -605f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1119f, 463f, -579f) + vec3<f32>(var_0.d, var_0.d, var_0.d))))) * vec3<f32>(_wgslsmith_f_op_f32(-func_4(Struct_2(var_0.e.x, var_0.b, var_0.b.x, var_0.d, vec2<bool>(var_0.a, false)), Struct_2(true, vec3<i32>(var_0.b.x, 20121i, -2147483647i), 1i, var_0.d, var_0.e), Struct_2(var_0.a, var_0.b, -57686i, var_0.d, vec2<bool>(true, var_0.a)), Struct_2(var_0.a, vec3<i32>(var_0.b.x, var_0.c, -7392i), var_0.c, var_0.d, vec2<bool>(true, false))).d), _wgslsmith_f_op_f32(floor(var_0.d)), 964f))));
    let var_2 = func_4(Struct_2(var_0.e.x, countOneBits(countOneBits(-var_0.b)), 1i, var_0.d, vec2<bool>(false, func_4(func_4(Struct_2(var_0.e.x, vec3<i32>(var_0.c, var_0.b.x, 32702i), var_0.b.x, var_1.x, vec2<bool>(var_0.e.x, var_0.a)), Struct_2(false, vec3<i32>(var_0.b.x, var_0.c, var_0.c), var_0.c, var_1.x, var_0.e), Struct_2(var_0.a, var_0.b, var_0.c, 902f, vec2<bool>(var_0.e.x, true)), Struct_2(false, vec3<i32>(var_0.c, 1i, var_0.c), 1i, var_1.x, var_0.e)), func_4(Struct_2(false, var_0.b, -2147483647i, var_0.d, var_0.e), Struct_2(var_0.e.x, var_0.b, -27238i, var_0.d, vec2<bool>(var_0.e.x, var_0.a)), Struct_2(var_0.e.x, vec3<i32>(var_0.b.x, -1i, 0i), var_0.c, var_0.d, vec2<bool>(true, var_0.a)), Struct_2(false, vec3<i32>(18758i, 1i, var_0.b.x), var_0.b.x, -393f, vec2<bool>(var_0.e.x, true))), func_4(Struct_2(true, var_0.b, var_0.c, -118f, var_0.e), Struct_2(false, vec3<i32>(var_0.b.x, -52858i, var_0.c), -10116i, var_0.d, vec2<bool>(true, true)), Struct_2(var_0.a, var_0.b, 2147483647i, var_0.d, var_0.e), Struct_2(false, vec3<i32>(0i, 1i, var_0.c), var_0.b.x, 1000f, vec2<bool>(false, var_0.e.x))), Struct_2(var_0.a, var_0.b, var_0.b.x, var_1.x, var_0.e)).a)), Struct_2(any(!vec3<bool>(var_0.a, var_0.a, var_0.a)), -(~(~vec3<i32>(1i, var_0.b.x, var_0.b.x))), 1i, -2663f, vec2<bool>(var_0.b.x > (i32(-1i) * -1i), true)), func_4(Struct_2(!var_0.a & (var_0.c >= 35625i), -var_0.b, _wgslsmith_mult_i32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1246f, var_0.d)) - var_0.d), func_4(Struct_2(var_0.e.x, vec3<i32>(-5833i, -10019i, -5343i), var_0.b.x, var_0.d, var_0.e), Struct_2(var_0.e.x, var_0.b, var_0.b.x, var_0.d, vec2<bool>(true, var_0.a)), func_4(Struct_2(var_0.e.x, var_0.b, var_0.b.x, var_0.d, var_0.e), Struct_2(true, vec3<i32>(var_0.c, -2147483647i, -2147483647i), 26859i, var_0.d, var_0.e), Struct_2(false, var_0.b, var_0.b.x, -884f, vec2<bool>(false, var_0.a)), Struct_2(true, var_0.b, var_0.b.x, var_0.d, vec2<bool>(false, var_0.e.x))), func_4(Struct_2(true, vec3<i32>(0i, var_0.c, var_0.c), -1i, 581f, var_0.e), Struct_2(var_0.a, var_0.b, var_0.c, var_1.x, var_0.e), Struct_2(var_0.a, var_0.b, var_0.b.x, -774f, var_0.e), Struct_2(true, vec3<i32>(var_0.c, var_0.c, var_0.c), var_0.b.x, 1578f, var_0.e))).e), Struct_2(_wgslsmith_add_u32(u_input.a, 1u) == ~u_input.a, vec3<i32>(-1i, 0i, 54161i) | (vec3<i32>(63239i, var_0.b.x, -2147483647i) & var_0.b), var_0.c, _wgslsmith_f_op_f32(floor(var_0.d)), var_0.e), func_4(Struct_2(false, vec3<i32>(2147483647i, var_0.c, 8183i), -1i, _wgslsmith_div_f32(267f, -144f), !vec2<bool>(var_0.e.x, true)), Struct_2(true, -var_0.b, i32(-1i) * -35117i, var_0.d, select(vec2<bool>(var_0.e.x, false), var_0.e, var_0.e.x)), func_4(func_4(Struct_2(false, vec3<i32>(2147483647i, 30490i, var_0.c), 2147483647i, var_1.x, var_0.e), Struct_2(var_0.e.x, vec3<i32>(var_0.b.x, 1i, 2147483647i), 2147483647i, -959f, var_0.e), Struct_2(var_0.a, var_0.b, var_0.b.x, var_0.d, vec2<bool>(true, false)), Struct_2(var_0.a, var_0.b, var_0.b.x, var_1.x, vec2<bool>(var_0.e.x, true))), func_4(Struct_2(false, vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x, -910f, var_0.e), Struct_2(var_0.a, var_0.b, 12210i, var_0.d, vec2<bool>(false, var_0.e.x)), Struct_2(true, var_0.b, -45629i, 690f, var_0.e), Struct_2(var_0.e.x, var_0.b, 22107i, 139f, vec2<bool>(var_0.e.x, var_0.e.x))), func_4(Struct_2(true, vec3<i32>(2147483647i, -30650i, var_0.b.x), var_0.c, var_1.x, vec2<bool>(false, var_0.e.x)), Struct_2(var_0.a, var_0.b, var_0.b.x, 1188f, var_0.e), Struct_2(true, var_0.b, -13301i, 1650f, vec2<bool>(var_0.e.x, true)), Struct_2(false, vec3<i32>(1i, -1i, 0i), var_0.b.x, 1099f, vec2<bool>(false, false))), Struct_2(true, vec3<i32>(-2147483647i, var_0.c, 1i), var_0.b.x, 760f, vec2<bool>(var_0.e.x, true))), func_4(func_4(Struct_2(var_0.e.x, vec3<i32>(var_0.c, var_0.b.x, 2147483647i), var_0.c, var_0.d, var_0.e), Struct_2(var_0.a, vec3<i32>(-1i, var_0.c, -33238i), var_0.c, -1037f, vec2<bool>(false, var_0.e.x)), Struct_2(true, var_0.b, 46034i, 565f, vec2<bool>(false, false)), Struct_2(var_0.e.x, vec3<i32>(-64833i, var_0.c, var_0.c), var_0.c, var_0.d, var_0.e)), func_4(Struct_2(false, vec3<i32>(2147483647i, 39968i, var_0.b.x), 28979i, var_1.x, vec2<bool>(var_0.e.x, true)), Struct_2(false, var_0.b, var_0.c, var_1.x, vec2<bool>(false, false)), Struct_2(false, var_0.b, var_0.c, var_1.x, var_0.e), Struct_2(false, var_0.b, var_0.b.x, 509f, vec2<bool>(var_0.e.x, true))), Struct_2(var_0.a, vec3<i32>(var_0.b.x, var_0.c, var_0.b.x), -60506i, var_0.d, vec2<bool>(false, var_0.a)), func_4(Struct_2(var_0.a, vec3<i32>(var_0.b.x, 2147483647i, var_0.b.x), var_0.b.x, var_0.d, vec2<bool>(var_0.a, false)), Struct_2(var_0.a, vec3<i32>(var_0.c, var_0.b.x, var_0.c), -29805i, var_1.x, vec2<bool>(false, var_0.e.x)), Struct_2(var_0.a, var_0.b, var_0.c, var_1.x, var_0.e), Struct_2(false, var_0.b, var_0.c, var_1.x, vec2<bool>(var_0.e.x, false))))), Struct_2(var_0.e.x, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-12466i, var_0.c, var_0.b.x), vec3<i32>(var_0.b.x, var_0.c, var_0.c)), ~var_0.b), ~(-16033i), _wgslsmith_f_op_f32(-375f + var_0.d), !var_0.e)), Struct_2(true, var_0.b, -5048i, var_0.d, vec2<bool>(var_0.a, all(select(vec3<bool>(true, var_0.e.x, true), vec3<bool>(true, var_0.e.x, false), var_0.a)))));
    var_0 = Struct_2(false, _wgslsmith_div_vec3_i32(var_0.b, ~func_4(func_4(Struct_2(true, var_0.b, 13652i, var_1.x, vec2<bool>(var_0.a, true)), Struct_2(false, var_2.b, var_2.c, 1370f, var_0.e), Struct_2(false, vec3<i32>(var_2.c, var_2.b.x, 1i), -58766i, 201f, var_2.e), var_2), Struct_2(var_2.a, vec3<i32>(2147483647i, 1i, var_2.c), var_2.c, -1568f, var_2.e), func_4(Struct_2(true, var_2.b, -14831i, var_0.d, var_2.e), var_2, var_2, Struct_2(true, var_0.b, var_2.b.x, -1000f, var_2.e)), func_4(Struct_2(var_0.e.x, var_0.b, var_0.b.x, var_2.d, var_2.e), var_2, Struct_2(var_2.e.x, vec3<i32>(var_2.c, 2887i, var_2.c), var_2.c, 134f, var_0.e), var_2)).b), _wgslsmith_add_i32(var_2.b.x, var_2.c), _wgslsmith_f_op_f32(-var_0.d), select(var_0.e, func_4(Struct_2(false, vec3<i32>(1i, 4841i, 26028i), max(var_0.b.x, -13412i), var_0.d, func_4(Struct_2(var_0.a, var_2.b, var_0.b.x, var_2.d, var_0.e), Struct_2(var_2.e.x, vec3<i32>(0i, -8214i, 6095i), 17321i, var_0.d, var_0.e), Struct_2(false, vec3<i32>(var_2.b.x, var_0.c, 2147483647i), -18197i, var_1.x, vec2<bool>(false, var_2.a)), Struct_2(true, var_2.b, -1i, var_1.x, var_2.e)).e), func_4(Struct_2(var_0.a, vec3<i32>(-2147483647i, var_0.b.x, -48849i), -1i, 372f, vec2<bool>(true, var_0.e.x)), var_2, var_2, Struct_2(var_0.a, var_0.b, var_2.b.x, 210f, var_2.e)), func_4(Struct_2(var_2.a, vec3<i32>(-36524i, 1i, var_2.b.x), 35119i, var_2.d, vec2<bool>(var_0.a, false)), func_4(var_2, var_2, var_2, Struct_2(var_0.a, var_2.b, 0i, var_1.x, var_0.e)), func_4(var_2, Struct_2(true, var_2.b, 0i, -1603f, vec2<bool>(true, true)), var_2, var_2), var_2), func_4(var_2, Struct_2(false, vec3<i32>(-1i, var_2.c, 5256i), var_0.b.x, var_0.d, vec2<bool>(var_2.e.x, true)), var_2, Struct_2(false, var_2.b, var_0.c, 1000f, vec2<bool>(false, false)))).e, !(var_0.d == -277f) & all(!var_0.e)));
    var var_3 = vec3<u32>(u_input.a, 41020u, abs(_wgslsmith_add_u32(u_input.a << (36721u % 32u), max(u_input.a, u_input.a)))) | min(~(~_wgslsmith_add_vec3_u32(vec3<u32>(89707u, 1u, 4294967295u), vec3<u32>(u_input.a, 4294967295u, 54412u))), ~(vec3<u32>(u_input.a, 24450u, u_input.a) & vec3<u32>(u_input.a, u_input.a, 9269u)) << (~(vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(19118u, ~(~(~(~4294967295u))));
}

