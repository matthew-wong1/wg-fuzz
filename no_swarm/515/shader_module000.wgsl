struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<i32> {
    let var_0 = ~vec2<i32>(abs(-(~u_input.b)), ~max(1i, min(-24628i, u_input.b)));
    let var_1 = 95501u;
    let var_2 = u_input.d;
    var var_3 = ~(~(~vec2<u32>(select(66373u, u_input.d.x, false), 33726u)));
    var var_4 = Struct_1(-549f, firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(-72688i, var_0.x)), var_0.x, _wgslsmith_add_i32(var_0.x, 21172i))) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 53342u), vec3<u32>(var_3.x, 4294967295u, 77275u) ^ u_input.d, _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(var_3.x, var_1, 1u))), vec3<u32>(u_input.c, abs(1u), var_1 ^ 22686u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-137f * 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2698f, _wgslsmith_f_op_f32(578f * 293f))))), vec4<u32>(var_3.x, _wgslsmith_dot_vec3_u32(countOneBits(~u_input.d), _wgslsmith_add_vec3_u32(~var_2, _wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(var_1, 79296u, u_input.c)))), u_input.a & 29331u, ~var_2.x));
    return ~(-_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_0.x) & vec2<i32>(var_0.x, u_input.b), vec2<i32>(1i, 2147483647i)), select(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 1723i), var_4.b.xy), _wgslsmith_mult_vec2_i32(var_4.b.xx, vec2<i32>(var_0.x, u_input.b)), false)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1f), 1276f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1139f, -212f))))) - -598f), -449f);
    let var_1 = Struct_2(false);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xzx - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.wxy) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1195f, 1066f) * vec3<f32>(var_0.x, var_0.x, var_0.x)))));
    let var_3 = arg_0.x & !arg_0.x;
    let var_4 = -2147483647i;
    return abs(85257u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: f32) -> bool {
    let var_0 = arg_2.b.e.x;
    var var_1 = vec3<i32>(max(arg_2.b.b.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, arg_2.b.b.x, u_input.e), max(arg_2.b.b, vec3<i32>(u_input.b, u_input.b, 2147483647i)), arg_1.x < 74103u), arg_2.b.b)), (-_wgslsmith_dot_vec3_i32(vec3<i32>(-2681i, 1i, arg_2.a.x), vec3<i32>(u_input.b, -68323i, -1i)) & 2147483647i) >> (func_3(vec3<bool>(true, true, true), -1i >= (-5730i & u_input.b)) % 32u), arg_2.b.b.x);
    var var_2 = Struct_3(arg_2.b.b.zy, Struct_1(arg_0.x, -_wgslsmith_mod_vec3_i32(vec3<i32>(60068i, -14284i, arg_2.b.b.x) >> (vec3<u32>(var_0, 36815u, arg_1.x) % vec3<u32>(32u)), vec3<i32>(u_input.b, arg_2.b.b.x, u_input.b) >> (arg_2.b.e.yww % vec3<u32>(32u))), 2096f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(647f * -770f), 481f)), select(_wgslsmith_add_vec4_u32(arg_2.b.e << (vec4<u32>(1u, arg_1.x, 59842u, 29000u) % vec4<u32>(32u)), arg_2.b.e), arg_2.b.e, vec4<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, false)), select(true, false, false), false))));
    var_1 = select(-vec3<i32>(2147483647i, _wgslsmith_mod_i32(1i, arg_2.b.b.x), var_2.a.x), _wgslsmith_div_vec3_i32(select(vec3<i32>(var_1.x, ~12946i, var_1.x), _wgslsmith_sub_vec3_i32(min(vec3<i32>(0i, var_2.b.b.x, 32813i), vec3<i32>(u_input.e, arg_2.a.x, u_input.b)), countOneBits(arg_2.b.b)), vec3<bool>(true, true, true)), select(abs(vec3<i32>(u_input.e, 10192i, 26449i)), vec3<i32>(arg_2.b.b.x, var_2.a.x, arg_2.a.x), vec3<bool>(true, false, true)) >> (_wgslsmith_div_vec3_u32(min(arg_2.b.e.zzz, u_input.d), firstLeadingBit(vec3<u32>(1u, var_2.b.e.x, 71547u))) % vec3<u32>(32u))), vec3<bool>(_wgslsmith_clamp_i32(1i, -1i, var_2.b.b.x) > -2147483647i, any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), false));
    var var_3 = Struct_2(select(false, all(vec2<bool>(true, true)), true) & true);
    return all(!(!select(vec2<bool>(true, true), select(vec2<bool>(var_3.a, true), vec2<bool>(false, var_3.a), var_3.a), !vec2<bool>(true, var_3.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = select(!(!vec3<bool>(!arg_0.a, arg_3 || arg_1.a, arg_0.a | true)), !(!select(!vec3<bool>(arg_0.a, true, arg_3), !vec3<bool>(false, true, arg_3), !vec3<bool>(arg_3, arg_1.a, false))), select(vec3<bool>(arg_1.a, any(select(vec2<bool>(true, arg_3), vec2<bool>(arg_3, false), vec2<bool>(arg_0.a, true))), (u_input.e >> (u_input.a % 32u)) < abs(0i)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), !vec3<bool>(arg_0.a, arg_3, arg_1.a), !vec3<bool>(true, true, arg_1.a)), vec3<bool>(true, any(vec2<bool>(arg_3, true)), true), !select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_1.a, true, arg_3))), !arg_0.a));
    var_0 = !select(select(vec3<bool>(arg_3, !arg_1.a, !arg_0.a), vec3<bool>(arg_0.a, true, !arg_3), true), select(select(vec3<bool>(var_0.x, true, arg_1.a), select(vec3<bool>(arg_1.a, arg_0.a, false), vec3<bool>(arg_1.a, true, arg_0.a), vec3<bool>(arg_3, false, false)), !vec3<bool>(true, false, arg_0.a)), vec3<bool>(arg_3 || arg_0.a, u_input.e != u_input.b, true && arg_1.a), !(!vec3<bool>(arg_1.a, arg_0.a, false))), func_2(arg_2.yz, _wgslsmith_div_vec2_u32(~vec2<u32>(118427u, u_input.a), countOneBits(u_input.d.zx)), Struct_3(vec2<i32>(u_input.b, u_input.b) & vec2<i32>(1i, u_input.e), Struct_1(arg_2.x, vec3<i32>(u_input.b, u_input.e, 2147483647i), arg_2.x, arg_2.x, vec4<u32>(42136u, 1u, u_input.d.x, 0u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x * arg_2.x), -1000f))));
    let var_1 = arg_2.yz;
    var var_2 = Struct_2(var_0.x & all(vec4<bool>(true, arg_0.a, true || var_0.x, true)));
    return Struct_1(var_1.x, firstLeadingBit(firstTrailingBit(-(~vec3<i32>(u_input.b, 0i, -64731i)))), _wgslsmith_f_op_f32(f32(-1f) * -2090f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f + -240f) + _wgslsmith_f_op_f32(-arg_2.x))), reverseBits(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 74464u, u_input.d.x), vec4<u32>(1u, 1u, 446u, 15928u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))), Struct_2(true && (true && all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2014f, -1000f, 1328f, 2152f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1387f, 580f, -763f, -1286f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -195f), -200f, _wgslsmith_f_op_f32(-307f + 1375f), _wgslsmith_f_op_f32(761f + -541f)))), func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-811f, -554f)))), u_input.d.zy, Struct_3(_wgslsmith_sub_vec2_i32(vec2<i32>(-830i, u_input.b) | vec2<i32>(-53774i, u_input.b), func_1()), Struct_1(-2524f, vec3<i32>(10070i, u_input.e, u_input.e) << (u_input.d % vec3<u32>(32u)), -210f, _wgslsmith_div_f32(781f, -201f), select(vec4<u32>(u_input.d.x, u_input.a, u_input.a, 79174u), vec4<u32>(u_input.c, 7143u, 0u, u_input.d.x), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(762f - _wgslsmith_f_op_f32(min(839f, _wgslsmith_f_op_f32(min(-1559f, 989f)))))));
    var_0 = Struct_1(431f, _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.b, abs(firstLeadingBit(1i))), var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f)), _wgslsmith_f_op_f32(select(var_0.a, 1576f, true)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.e.x, u_input.c, 4294967295u), var_0.e), vec4<u32>(~var_0.e.x, var_0.e.x >> (u_input.d.x % 32u), max(var_0.e.x, 37824u), reverseBits(25324u))), ~vec4<u32>(_wgslsmith_mod_u32(u_input.c, 1u), var_0.e.x, firstTrailingBit(0u), ~u_input.a)));
    var var_1 = Struct_2(all(!vec3<bool>(true, true, any(vec4<bool>(true, true, false, false)))));
    var_1 = Struct_2(!var_1.a);
    var var_2 = var_0.e.x;
    var var_3 = Struct_3(select(-_wgslsmith_mod_vec2_i32(vec2<i32>(-6591i, -2147483647i), var_0.b.zy) ^ var_0.b.zx, vec2<i32>(var_0.b.x, var_0.b.x), vec2<bool>(all(vec2<bool>(var_1.a, var_1.a)), false)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 782f)), -vec3<i32>(-13163i, 1i, -var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * var_0.a) - _wgslsmith_f_op_f32(sign(886f))) + var_0.a), vec4<u32>(~1u, select(~var_0.e.x, min(var_0.e.x, u_input.d.x), false), var_0.e.x, 44664u)));
    var var_4 = Struct_3(~var_0.b.zy, func_4(Struct_2(var_1.a), Struct_2(var_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.d, var_0.c, -475f, var_3.b.c) - vec4<f32>(var_0.c, var_3.b.c, 317f, var_3.b.c)) + vec4<f32>(var_0.d, -494f, 489f, -758f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(726f, -529f, var_0.c, 234f)))), var_1.a & true));
    let var_5 = Struct_2(true);
    var var_6 = Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.b.b.x, -41937i), vec2<i32>(var_4.a.x, -24009i << (u_input.d.x % 32u))) << (~(~select(vec2<u32>(1u, var_4.b.e.x), vec2<u32>(u_input.a, var_3.b.e.x), vec2<bool>(var_5.a, var_5.a))) % vec2<u32>(32u)), Struct_1(var_3.b.d, vec3<i32>(2382i, var_3.a.x, -21086i) << (_wgslsmith_mult_vec3_u32(~var_0.e.zxw, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_4.b.e.x, 41658u, var_4.b.e.x), var_4.b.e.xyz, var_3.b.e.www)) % vec3<u32>(32u)), var_4.b.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-566f, 1679f)), _wgslsmith_f_op_f32(-var_3.b.a))), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_4.b.e.x, 1858u, 1u), vec4<u32>(_wgslsmith_mod_u32(var_0.e.x, 32700u), var_0.e.x, _wgslsmith_mult_u32(var_3.b.e.x, 4294967295u), 25832u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_0.e.x, var_0.e.x), u_input.d), ~var_6.b.e.yzw)), firstTrailingBit(1u), ~(~abs(0u))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(-2197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.d) - _wgslsmith_f_op_f32(exp2(var_6.b.c))))), var_3.b.a), 1u);
}

