struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_add_u32(14305u, 0u);
    var var_1 = ~(~(~(~(~6551u))));
    var_1 = 1u;
    var var_2 = arg_0.a;
    let var_3 = (vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.x, 9908i, var_2.x), arg_0.a), -vec3<i32>(-12812i, -9981i, arg_0.a.x))) & vec3<i32>(var_2.x, 1i | ~var_2.x, 0i | select(arg_0.a.x, ~var_2.x, !arg_0.b.c.x));
    return vec2<u32>(93970u, u_input.a) & ~arg_0.c.wy;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-select(8254i, -80530i, arg_0.c.x), -2147483647i, -abs(45288i)), firstLeadingBit(vec3<i32>(3731i, 1i, 1i))), arg_0, vec4<u32>(firstTrailingBit(max(u_input.a, u_input.a)), _wgslsmith_clamp_u32(~u_input.a & u_input.a, reverseBits(1u), (12037u << (u_input.a % 32u)) >> ((4294967295u >> (1u % 32u)) % 32u)), u_input.a, _wgslsmith_div_u32(4294967295u, abs(_wgslsmith_div_u32(4294967295u, u_input.a)))));
    var_0 = Struct_2(_wgslsmith_sub_vec3_i32(~firstTrailingBit(var_0.a), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, min(var_0.a.x, -1i), 2147483647i), vec3<i32>(~30253i, abs(var_0.a.x), abs(var_0.a.x)))), Struct_1(512f, vec4<f32>(_wgslsmith_f_op_f32(sign(-164f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.x))), -2136f, 170f), select(vec4<bool>(arg_0.c.x != var_0.b.c.x, false, var_0.c.x == 20106u, any(vec4<bool>(true, true, arg_0.c.x, false))), arg_0.c, var_0.b.c)), firstTrailingBit(~vec4<u32>(_wgslsmith_mult_u32(var_0.c.x, 63703u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 39706u), var_0.c.zz), _wgslsmith_sub_u32(15455u, var_0.c.x), _wgslsmith_mult_u32(u_input.a, 21160u))));
    var_0 = Struct_2(~vec3<i32>(0i, -(~var_0.a.x), 0i), arg_0, max(vec4<u32>(~u_input.a, ~_wgslsmith_add_u32(var_0.c.x, var_0.c.x), ~(~u_input.a), (4294967295u >> (var_0.c.x % 32u)) & max(1u, var_0.c.x)), select(vec4<u32>(~48252u, 1u, u_input.a, 113953u << (0u % 32u)), ~abs(vec4<u32>(var_0.c.x, u_input.a, var_0.c.x, 0u)), true)));
    let var_1 = Struct_1(arg_0.b.x, var_0.b.b, var_0.b.c);
    var var_2 = arg_0.c;
    return 29021u;
}

fn func_2() -> vec2<u32> {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a ^ func_3(Struct_1(-1402f, vec4<f32>(693f, 251f, -2180f, 1000f), vec4<bool>(true, true, true, true)), vec2<bool>(false, false)), u_input.a, 43841u, _wgslsmith_mod_u32(abs(u_input.a), _wgslsmith_clamp_u32(17459u, 60608u, u_input.a))), vec4<u32>(61897u, ~u_input.a << (u_input.a % 32u), _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(0u, 4294967295u), u_input.a), u_input.a), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 23610u, u_input.a), vec4<u32>(u_input.a, 51446u, 35056u, u_input.a)), firstLeadingBit(abs(vec4<u32>(u_input.a, u_input.a, 0u, 1u))), vec4<u32>(4294967295u, u_input.a, u_input.a, 1u)));
    var var_1 = _wgslsmith_mod_u32(var_0.x, reverseBits(~(~var_0.x))) > var_0.x;
    var var_2 = all(select(vec3<bool>(select(false, true, all(vec3<bool>(true, true, false))), all(vec2<bool>(false, false)), true), select(vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, false)), true)), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true))));
    var_1 = !select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1391f))) < _wgslsmith_f_op_f32(f32(-1f) * -332f), !any(vec4<bool>(true, true, true, true)), true);
    let var_3 = Struct_2(firstTrailingBit(-(~vec3<i32>(0i, 2147483647i, -11292i))) ^ -vec3<i32>(_wgslsmith_sub_i32(39524i, -34727i), -1i, _wgslsmith_div_i32(-62646i, 27730i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(414f * 609f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-758f, 619f, -136f, 2432f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -158f, -803f, -1000f)))), !vec4<bool>(true, false, select(false, false, true), true)), vec4<u32>(0u, 0u, 3538u, 1u));
    return ~(~(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(var_0, var_0)) & var_0.zw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(9880u, 4294967295u);
    var_0 = firstLeadingBit(select(~(~func_1(Struct_2(vec3<i32>(-2147483647i, -19071i, 31025i), Struct_1(-299f, vec4<f32>(-206f, 1000f, 826f, 1157f), vec4<bool>(true, true, false, false)), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)))), select(~func_2(), (vec2<u32>(u_input.a, 4294967295u) | vec2<u32>(0u, u_input.a)) >> (func_2() % vec2<u32>(32u)), true), all(vec2<bool>(true, true))));
    let var_1 = Struct_2(~vec3<i32>(1i, 1i, 1i) ^ abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 2147483647i, 23857i), vec3<i32>(-4233i, -14824i, 7942i))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1601f, 1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(717f, 1000f, -132f, 1927f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2369f, -234f, 1275f, 399f), vec4<f32>(-1641f, -137f, 1000f, 1503f)))), vec4<f32>(_wgslsmith_f_op_f32(117f - -825f), -1000f, _wgslsmith_f_op_f32(min(140f, 1000f)), _wgslsmith_f_op_f32(ceil(-2096f)))), vec4<bool>(true, true, false, !any(vec2<bool>(true, false)))), _wgslsmith_sub_vec4_u32(abs(reverseBits(select(vec4<u32>(u_input.a, u_input.a, 1u, var_0.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 18935u), true))), _wgslsmith_sub_vec4_u32(~min(vec4<u32>(u_input.a, 1u, u_input.a, 0u), vec4<u32>(u_input.a, 61703u, var_0.x, 1u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 87490u, u_input.a, var_0.x)), select(vec4<u32>(u_input.a, 9037u, 13621u, 4294967295u), vec4<u32>(var_0.x, 1u, 137652u, var_0.x), true)))));
    let var_2 = abs(vec2<u32>(~u_input.a, ~0u) & ~_wgslsmith_clamp_vec2_u32(var_1.c.zy, _wgslsmith_mod_vec2_u32(vec2<u32>(64464u, u_input.a), vec2<u32>(58244u, u_input.a)), ~vec2<u32>(var_0.x, var_1.c.x)));
    var var_3 = max(~_wgslsmith_clamp_vec3_u32(var_1.c.yxy, var_1.c.zzy & (var_1.c.ywz >> (vec3<u32>(4294967295u, u_input.a, 4294967295u) % vec3<u32>(32u))), var_1.c.zyx), _wgslsmith_div_vec3_u32(var_1.c.wyw, vec3<u32>(~(~var_2.x), abs(select(78315u, 54683u, var_1.b.c.x)), var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.a.x, var_1.a.x, -2147483647i, 1i), abs(vec4<i32>(0i, var_1.a.x, 1i, 2147483647i))) ^ -_wgslsmith_div_vec4_i32(max(vec4<i32>(var_1.a.x, var_1.a.x, -2147483647i, var_1.a.x), vec4<i32>(var_1.a.x, var_1.a.x, 1i, 14889i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, 2147483647i, 1i), vec4<i32>(1i, -22762i, var_1.a.x, var_1.a.x), vec4<i32>(var_1.a.x, 2147483647i, 1i, -2147483647i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(2193f, var_1.b.b.x), _wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(exp2(var_1.b.b.x))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1.b.b)))), vec4<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-709f + 1962f))), -1468f, _wgslsmith_f_op_f32(-var_1.b.a)))));
}

