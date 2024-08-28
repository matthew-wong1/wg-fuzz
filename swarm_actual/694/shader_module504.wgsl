struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_3,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = vec2<u32>(arg_0.c, ~(~arg_0.c));
    let var_1 = _wgslsmith_dot_vec4_u32(~(reverseBits(vec4<u32>(var_0.x, arg_0.c, 1u, arg_0.c)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c, 1u, var_0.x, arg_0.c), vec4<u32>(var_0.x, 19276u, 1u, arg_0.c), vec4<u32>(1u, 4294967295u, arg_0.c, 4294967295u)) % vec4<u32>(32u))) ^ abs(vec4<u32>(10132u, ~38725u, ~1u, select(arg_0.c, 1u, false))), ~_wgslsmith_div_vec4_u32(max(vec4<u32>(1u, arg_0.c, 0u, arg_0.c) | vec4<u32>(var_0.x, 0u, 54830u, 7062u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 14345u, 1u, arg_0.c), vec4<u32>(arg_0.c, 14671u, arg_0.c, arg_0.c), vec4<u32>(var_0.x, arg_0.c, arg_0.c, 1u))), ~vec4<u32>(1u, 0u, 31807u, 4294967295u) << (~vec4<u32>(var_0.x, 4294967295u, 26682u, 8570u) % vec4<u32>(32u))));
    let var_2 = vec2<f32>(1584f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1641f, _wgslsmith_f_op_f32(f32(-1f) * -1316f)))));
    let var_3 = vec2<u32>(~(~18644u), var_0.x);
    return var_2.x;
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<i32>(-18627i, 2147483647i), u_input.a.x, 1u))), _wgslsmith_f_op_f32(floor(-1349f)), _wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.yz, u_input.c.x, 10990u))), _wgslsmith_f_op_f32(f32(-1f) * -1513f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(278f * 520f) - _wgslsmith_f_op_f32(max(1000f, 502f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -514f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-2228f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-839f + -215f) + _wgslsmith_f_op_f32(-970f + -1223f))))));
    var var_1 = ~_wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(69427u, 0u, 78003u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u))), 0u), 1u);
    var_1 = firstTrailingBit(0u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1634f * _wgslsmith_div_f32(var_0.a.x, -1587f)), var_0.a.x, _wgslsmith_f_op_f32(1f * 452f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.ywy - vec3<f32>(-746f, -1107f, var_0.a.x)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-255f, 972f, var_0.a.x))))), select(vec3<bool>(var_0.a.x < -317f, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)))));
    let var_3 = u_input.b.x;
    return Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -909f))), -1000f, var_0.a.x, -899f));
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> i32 {
    var var_0 = Struct_3(-u_input.b.x);
    var var_1 = 2147483647i;
    var var_2 = ~_wgslsmith_add_vec2_u32(~(~(~vec2<u32>(1u, 1u))), vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(1u, 0u, 1u)), 0u));
    var_2 = _wgslsmith_add_vec2_u32(~(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_2.x), vec2<u32>(var_2.x, var_2.x)), max(vec2<u32>(88941u, var_2.x), vec2<u32>(13678u, var_2.x)))), ~(~reverseBits(vec2<u32>(1u, 1u))));
    let var_3 = Struct_2(vec2<i32>(u_input.c.x, select(0i, 0i, true)), u_input.a.x, _wgslsmith_sub_u32(10099u, _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(countOneBits(var_2.x), firstLeadingBit(var_2.x)))));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(~var_3.a), _wgslsmith_mult_vec2_i32(-select(vec2<i32>(27130i, var_3.a.x), vec2<i32>(var_0.a, u_input.c.x), vec2<bool>(true, false)), abs(vec2<i32>(-58216i, 11442i)))), _wgslsmith_clamp_vec2_i32(~min(_wgslsmith_add_vec2_i32(var_3.a, var_3.a), firstLeadingBit(vec2<i32>(-2147483647i, -16802i))), select(~var_3.a, ~var_3.a, vec2<bool>(true, true)), vec2<i32>(-54936i, ~1i)));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = countOneBits(_wgslsmith_add_i32(max(1i, func_4(-189f, func_2())), u_input.b.x));
    var var_1 = Struct_2(u_input.c, func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(225f)))), func_2()) << (32379u % 32u), 1u);
    var var_2 = Struct_2(vec2<i32>(1i, var_1.b), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_1.a.x | _wgslsmith_dot_vec4_i32(u_input.b, ~u_input.b)), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.c >> (5809u % 32u), abs(firstLeadingBit(var_1.c))), 16990u));
    var_1 = Struct_2(~var_1.a, arg_0, ~_wgslsmith_dot_vec3_u32(vec3<u32>(~35197u, max(0u, var_1.c), ~0u), ~vec3<u32>(0u, var_2.c, var_2.c)));
    let var_3 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, !(-529i >= u_input.a.x))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-1030f)), _wgslsmith_f_op_f32(max(1000f, 703f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1061f, 294f, 368f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1429f, _wgslsmith_f_op_f32(f32(-1f) * -2476f), -1214f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(f32(-1f) * -839f)))), select(~0u, ~1u, var_3), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(463f, 1338f)), func_2().a.x, _wgslsmith_f_op_f32(f32(-1f) * -883f)))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c, 1u, var_2.c, 43992u), ~vec4<u32>(81086u, 54573u, var_2.c, 0u)), var_2.c, 96252u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(77805u, var_1.c, 4294967295u)), vec3<u32>(var_2.c, 1u, 44619u) | vec3<u32>(var_1.c, 4294967295u, 1u))), -vec2<i32>(65318i, _wgslsmith_mult_i32(1i << (var_1.c % 32u), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(select(~select(vec3<u32>(11712u, 23113u, 8546u), ~vec3<u32>(1u, 4294967295u, 0u), true), vec3<u32>(firstLeadingBit(_wgslsmith_div_u32(10428u, 4294967295u)), 36765u, ~0u), true));
    var var_1 = !(!(select(true, any(vec3<bool>(false, false, false)), any(vec2<bool>(true, true))) || !any(vec2<bool>(false, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1654f, -2710f))))) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-886f, 200f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1132f, -445f), vec2<f32>(190f, -1489f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1325f + 179f))) - _wgslsmith_f_op_f32(-909f - 844f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1246f)) + 801f)));
    let var_3 = !(any(vec4<bool>(true, true, true, all(vec3<bool>(true, true, true)))) || any(vec4<bool>(true, true, true, true)));
    var var_4 = _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let x = u_input.a;
    s_output = func_1(1i);
}

