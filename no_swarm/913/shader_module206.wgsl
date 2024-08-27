struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)), 0i, countOneBits(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) - 1196f)), -firstTrailingBit(vec4<i32>(~(-12793i), 24026i, ~24386i, -93758i)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d, 219f, var_0.a, -1182f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(175f, -565f, var_0.d, 435f))) + vec4<f32>(-455f, _wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(var_0.d + -1428f), _wgslsmith_f_op_f32(exp2(var_0.a)))), ~(~countOneBits(u_input.a)), !vec2<bool>(true, u_input.a.x > 36603u), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), false))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(select(u_input.b.zx, _wgslsmith_div_vec2_u32(vec2<u32>(42983u, 4294967295u), u_input.b.zz), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(u_input.b.yy, u_input.b.xy)), vec2<u32>(u_input.b.x, u_input.b.x)), var_0.e.x);
    var_1 = Struct_3(var_1.a, vec2<u32>(~234u, 97474u), -abs(_wgslsmith_div_i32(1i, ~(-19851i))));
    var_1 = Struct_3(var_1.a, ~(~firstLeadingBit(vec2<u32>(var_1.b.x, var_1.b.x))), _wgslsmith_dot_vec2_i32(~vec2<i32>(~var_1.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.c, -2147483647i), vec3<i32>(var_1.c, -2147483647i, 29406i))), ~vec2<i32>(_wgslsmith_div_i32(var_1.c, var_0.c), var_1.c)));
    var_1 = Struct_3(Struct_2(var_1.a.a, u_input.a, vec2<bool>(true & (var_0.b != -48452i), all(!vec4<bool>(var_1.a.c.x, var_1.a.c.x, true, var_1.a.c.x))), Struct_1(vec3<bool>(false, var_1.a.d.b.x, true), var_1.a.d.a.xx)), ~u_input.a.zz, -7717i);
    return max(-(~reverseBits(vec2<i32>(0i, var_1.c))), vec2<i32>(var_0.b, ~abs(var_0.c)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_2) -> f32 {
    let var_0 = select(arg_1.a.d.a.yz, select(select(vec2<bool>(false, arg_0.d.b.x), !select(vec2<bool>(true, arg_1.a.d.b.x), vec2<bool>(false, arg_3.d.a.x), true), select(vec2<bool>(false, true), !vec2<bool>(arg_3.c.x, false), select(arg_1.a.c, vec2<bool>(false, true), true))), !arg_1.a.c, arg_0.c.x), any(vec3<bool>((arg_1.c ^ arg_1.c) > 1i, arg_0.d.a.x, any(vec3<bool>(arg_1.a.c.x, true, false)))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1742f * _wgslsmith_f_op_f32(arg_3.a.x + 356f)), _wgslsmith_f_op_f32(-980f + _wgslsmith_f_op_f32(arg_0.a.x - arg_1.a.a.x)))))), 956f));
    var var_2 = Struct_1(vec3<bool>(var_0.x, false, -_wgslsmith_clamp_i32(1i, 1i, arg_1.c) >= _wgslsmith_dot_vec2_i32(vec2<i32>(7190i, arg_1.c), vec2<i32>(30184i, -3196i))), vec2<bool>(true, true));
    let var_3 = arg_1;
    var_2 = Struct_1(var_2.a, !select(var_3.a.d.a.xy, arg_0.d.a.zy, !var_2.b.x));
    return 1564f;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~max(vec2<i32>(-38324i, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-17523i, 1i), vec2<i32>(-14878i, 0i), vec2<i32>(-40762i, -68383i))), select(~vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(22696i, -1i) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(21200i, -11305i), vec2<i32>(2147483647i, -26574i))), _wgslsmith_clamp_i32(0i, 1i, -1i) > firstTrailingBit(33663i))), vec2<i32>(1i, 1i) ^ abs(func_2() << ((u_input.b.zz ^ vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u))));
    var var_1 = -1000f;
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_dot_vec3_u32(~(min(u_input.a, vec3<u32>(0u, 39102u, 70413u)) & (u_input.b | u_input.a)) ^ vec3<u32>(_wgslsmith_mod_u32(max(35189u, u_input.b.x), 1u), reverseBits(0u), 14049u), vec3<u32>(u_input.b.x, 21545u, u_input.b.x));
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(-1318f, _wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(-107f, -767f, 676f, -299f), u_input.b, vec2<bool>(true, false), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true))), Struct_3(Struct_2(vec4<f32>(337f, -1167f, 101f, 997f), u_input.b, vec2<bool>(true, false), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false))), u_input.b.xz, 2147483647i), Struct_4(1330f, var_0.x, var_0.x, -710f, vec4<i32>(21835i, var_0.x, var_0.x, var_0.x)), Struct_2(vec4<f32>(-496f, 596f, -999f, 141f), vec3<u32>(49026u, u_input.a.x, 1344u), vec2<bool>(false, false), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false))))), _wgslsmith_div_f32(1268f, -711f))), _wgslsmith_div_vec3_u32(~(vec3<u32>(0u, 1u, 22301u) & u_input.a), u_input.b), vec2<bool>(true, true), Struct_1(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), any(vec2<bool>(true, false))), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))), u_input.b.yz, _wgslsmith_add_i32(var_0.x, ~(-34046i)));
    return Struct_3(var_4.a, ~reverseBits(u_input.b.xz) | var_4.b, ~(-(var_0.x ^ var_4.c) ^ firstLeadingBit(countOneBits(-712i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(var_0.a, ~u_input.b.yz, -1i);
    let var_1 = Struct_1(vec3<bool>(any(!(!var_0.a.d.a)), var_0.a.c.x, var_0.a.d.a.x), select(func_1().a.d.b, var_0.a.d.b, vec2<bool>(true, true)));
    var var_2 = Struct_4(var_0.a.a.x, firstLeadingBit(var_0.c), var_0.c, _wgslsmith_f_op_f32(-var_0.a.a.x), -countOneBits(vec4<i32>(-3169i, -52959i, -1i, 1i)));
    var_0 = func_1();
    let var_3 = !(!select(vec2<bool>(true, var_0.a.c.x), !var_0.a.d.b, select(!vec2<bool>(var_0.a.c.x, var_0.a.d.b.x), var_0.a.c, true | var_0.a.c.x)));
    var var_4 = func_1().a;
    var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1706f) + var_0.a.a.x)), var_0.a.a.x), -5779i, firstLeadingBit(_wgslsmith_mod_i32(26134i, ~var_2.b)), var_2.a, vec4<i32>(~(-10497i), abs(var_2.e.x) << (~var_4.b.x % 32u), min(func_2().x, 1i), _wgslsmith_sub_i32(-var_2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e.x, -2147483647i, var_0.c), ~var_2.e.wxz))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.a.b.x, var_4.b.x, u_input.a.x, 12950u)), vec4<u32>(~var_0.b.x, _wgslsmith_add_u32(var_4.b.x, 0u), ~u_input.b.x, _wgslsmith_add_u32(1u, var_0.a.b.x))), max(7481u, _wgslsmith_add_u32(_wgslsmith_div_u32(var_4.b.x, 0u), 1u)), ~34940u, ~var_4.b.x), ~0u);
}

