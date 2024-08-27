struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(4513i, i32(-2147483648)), 1329f), Struct_1(vec2<i32>(0i, i32(-2147483648)), -949f), Struct_1(vec2<i32>(-1i, 1i), 1032f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), -1295f), Struct_1(vec2<i32>(6601i, 0i), 594f), Struct_1(vec2<i32>(-22567i, -52225i), -103f), Struct_1(vec2<i32>(-35945i, -30901i), -1939f), Struct_1(vec2<i32>(43732i, i32(-2147483648)), 2173f), Struct_1(vec2<i32>(15146i, -1i), 867f), Struct_1(vec2<i32>(1i, 21155i), -550f), Struct_1(vec2<i32>(i32(-2147483648), 11331i), 438f), Struct_1(vec2<i32>(0i, i32(-2147483648)), 813f), Struct_1(vec2<i32>(i32(-2147483648), -13975i), 1000f), Struct_1(vec2<i32>(1i, 0i), -882f), Struct_1(vec2<i32>(18322i, 1i), 2546f), Struct_1(vec2<i32>(1i, 36337i), -805f), Struct_1(vec2<i32>(-10890i, 30835i), 1615f), Struct_1(vec2<i32>(-40768i, 1i), 687f), Struct_1(vec2<i32>(-1i, 1i), 596f), Struct_1(vec2<i32>(-1i, -1i), -104f), Struct_1(vec2<i32>(i32(-2147483648), 0i), 1582f), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 1265f), Struct_1(vec2<i32>(10105i, 8261i), 223f), Struct_1(vec2<i32>(1i, i32(-2147483648)), 396f), Struct_1(vec2<i32>(6865i, -33108i), -418f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 2689f), Struct_1(vec2<i32>(-12218i, -1i), 1000f), Struct_1(vec2<i32>(-1i, 0i), -471f), Struct_1(vec2<i32>(-11368i, 2147483647i), -1451f), Struct_1(vec2<i32>(57199i, 729i), 471f), Struct_1(vec2<i32>(i32(-2147483648), 5849i), 1292f), Struct_1(vec2<i32>(42058i, 0i), -469f));

var<private> global1: vec3<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_1(arg_1.yz, -614f);
    var var_1 = Struct_1(-(~(-(arg_1.zz >> (vec2<u32>(24155u, 0u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b)) + _wgslsmith_div_f32(587f, var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.b)), var_0.b))));
    var_0 = global0[_wgslsmith_index_u32(1u, 32u)];
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b)), -573f, 1840f);
    return _wgslsmith_div_u32(41813u, abs(~1u));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-753f, 1236f, -261f) - vec3<f32>(1406f, -134f, 141f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1713f, -913f, 1924f) - vec3<f32>(1633f, -800f, -402f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -445f), _wgslsmith_f_op_f32(max(-998f, -743f)), -662f)))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(94864i, u_input.c), vec2<i32>(-3420i, u_input.c)), u_input.c), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, ~36818i), abs(vec2<i32>(0i, u_input.c)) >> (max(global1.zz, vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u))), -firstTrailingBit(~vec2<i32>(0i, u_input.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(470f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1599f + -1000f) + _wgslsmith_f_op_f32(sign(2261f))))), _wgslsmith_sub_vec2_u32(abs(max(vec2<u32>(1u, global1.x), global1.zz)) >> (vec2<u32>(~u_input.b, 1991u) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_add_u32(global1.x, 57813u), ~53572u)));
    var var_1 = select(1u, ~u_input.b, true || all(vec4<bool>(true, true, true, true)));
    var_1 = ~firstLeadingBit(~firstLeadingBit(1u));
    var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(~_wgslsmith_sub_u32(select(47886u, var_0.d.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 10653u, u_input.a.x))), _wgslsmith_add_u32(0u, var_0.d.x)), ~select(1u, 1u >> (max(u_input.a.x, 4294967295u) % 32u), true));
    global0 = array<Struct_1, 32>();
    return _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, abs(abs(u_input.c) ^ 1i)), -countOneBits(~(vec2<i32>(var_0.b.x, var_0.b.x) >> (var_0.d % vec2<u32>(32u)))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = max(u_input.a.x, 0u);
    global1 = firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~firstTrailingBit(20721u), ~abs(1u)), ~vec3<u32>(1u, 0u, 1u) | vec3<u32>(func_2(70363u, vec3<i32>(arg_1, arg_3.a.x, -1i)), ~u_input.a.x, u_input.a.x >> (1u % 32u))));
    var var_1 = vec3<i32>((u_input.c | u_input.c) ^ -arg_1, countOneBits(1i) | (abs(arg_0 ^ arg_1) & (countOneBits(u_input.c) & -2147483647i)), ~abs(~(~u_input.c)));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(var_1.zx | vec2<i32>(11363i, 2147483647i)), func_3()) & ~_wgslsmith_div_vec2_i32(var_1.zz, var_1.yy), arg_3.b);
    var_1 = vec3<i32>(-(u_input.c << (1u % 32u)), -2147483647i & max(_wgslsmith_sub_i32(u_input.c, arg_0), ~1i), -_wgslsmith_clamp_i32(37596i, 1263i, -(var_2.a.x & -23237i)));
    return all(vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false, all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    global1 = ~(~(~vec3<u32>(~4294967295u, max(global1.x, 2860u), _wgslsmith_add_u32(u_input.b, 1u))));
    global0 = array<Struct_1, 32>();
    var var_0 = select(select(vec4<bool>(true, true, any(vec2<bool>(true, true)), true), select(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, select(true, true, true), any(vec4<bool>(true, true, true, true))), vec4<bool>(all(vec4<bool>(false, true, false, false)), func_1(-2147483647i, u_input.c, 1062f, Struct_1(vec2<i32>(u_input.c, u_input.c), -1341f)), all(vec3<bool>(true, false, false)), true), true), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), false)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, all(vec4<bool>(true, false, true, true)), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), true), true), !any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    global0 = array<Struct_1, 32>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(max(-693f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(f32(-1f) * -446f))))), 588f, 208f), _wgslsmith_mult_vec2_i32(min(func_3(), vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(u_input.c, -7252i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-911f, 1f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-595f, -1317f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(518f, 1000f)))))))), reverseBits(global1.xz));
    let x = u_input.a;
    s_output = StorageBuffer(38585u, -(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.c), vec3<i32>(55102i, -10297i, 53468i)) | _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.b.x, -15859i, u_input.c), firstTrailingBit(vec3<i32>(0i, var_1.b.x, var_1.b.x)), select(vec3<i32>(0i, var_1.b.x, u_input.c), vec3<i32>(var_1.b.x, var_1.b.x, 47068i), vec3<bool>(var_0.x, var_0.x, true)))), vec4<i32>(-min(u_input.c >> (global1.x % 32u), u_input.c), u_input.c, u_input.c, u_input.c), ~vec2<u32>(var_1.d.x, var_1.d.x), reverseBits(firstLeadingBit(vec4<i32>(2147483647i, -1i, var_1.b.x, -2147483647i) >> (vec4<u32>(3826u, 1u, var_1.d.x, var_1.d.x) % vec4<u32>(32u)))));
}

