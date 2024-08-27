struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = min(~vec3<u32>(4294967295u, 4294967295u, arg_0.a.a.x ^ arg_0.a.e.x), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.e.x, arg_0.a.e.x, arg_0.a.a.x), vec3<u32>(4294967295u, arg_0.a.e.x, 48073u)))) << (((abs(abs(vec3<u32>(arg_0.a.a.x, arg_0.a.e.x, 4294967295u))) ^ vec3<u32>(arg_0.a.a.x & arg_0.a.a.x, reverseBits(arg_0.a.e.x), ~35305u)) & vec3<u32>(_wgslsmith_mult_u32(select(arg_0.a.a.x, arg_0.a.e.x, arg_0.a.c.x), ~1u), _wgslsmith_mod_u32(0u, ~62684u), 52964u)) % vec3<u32>(32u));
    var var_1 = Struct_1(arg_0.a.a, ~firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(arg_0.a.d, -942i, u_input.b)) & _wgslsmith_clamp_vec3_i32(arg_0.a.b, vec3<i32>(1i, -19961i, arg_0.a.b.x), arg_0.a.b)), arg_0.a.c, reverseBits(24072i), countOneBits(vec2<u32>(~arg_0.a.e.x, ~20334u)));
    var_0 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 0u, 28631u), _wgslsmith_mult_vec3_u32(vec3<u32>(40589u, var_1.e.x, arg_0.a.a.x), vec3<u32>(var_1.e.x, 84229u, 25424u)))) | (vec3<u32>(_wgslsmith_mod_u32(var_1.a.x, select(arg_0.a.a.x, 4294967295u, var_1.c.x)), ~(~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.x, 47374u, 81385u, 113121u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.a.x, var_1.e.x, 4326u, 30080u), vec4<u32>(var_0.x, 4294967295u, var_0.x, 4294967295u)))) ^ ~(~(vec3<u32>(0u, 0u, 5083u) >> (vec3<u32>(arg_0.a.a.x, 0u, 1u) % vec3<u32>(32u)))));
    var_0 = vec3<u32>(select(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.a.x, abs(0u)), firstTrailingBit(_wgslsmith_mod_u32(42372u, arg_0.a.a.x))), firstTrailingBit(4294967295u), firstLeadingBit(arg_0.a.a.x << (25157u % 32u)) >= var_1.e.x), ~var_1.a.x, 9044u);
    var_0 = firstTrailingBit(select(reverseBits(abs(~vec3<u32>(0u, var_1.a.x, var_0.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0.a.a.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_1.a.x), vec3<u32>(arg_0.a.a.x, var_0.x, var_0.x)), max(vec3<u32>(var_1.e.x, 15188u, arg_0.a.a.x), vec3<u32>(arg_0.a.e.x, arg_0.a.a.x, var_1.a.x))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(27675u, 21462u, 84687u), vec3<u32>(0u, var_1.a.x, var_1.a.x)) % vec3<u32>(32u)), vec3<bool>(arg_0.a.c.x, var_1.c.x, true)));
    return vec4<bool>(true, var_1.c.x == arg_0.a.c.x, all(!vec4<bool>(all(var_1.c.xy), false, true, var_1.c.x)), !(!(!arg_0.a.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1251f)), -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -467f) + _wgslsmith_f_op_f32(363f + 149f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1000f))));
    let var_1 = !func_3(Struct_2(arg_0.a, _wgslsmith_clamp_vec2_i32(arg_0.b, arg_0.b, arg_0.b))).yz;
    let var_2 = arg_0.a.e;
    let var_3 = arg_0.a;
    let var_4 = Struct_2(arg_0.a, min(_wgslsmith_sub_vec2_i32(-arg_0.b, vec2<i32>(7556i, var_3.d)), reverseBits(~vec2<i32>(110929i, -4816i))) << (countOneBits(var_3.e) % vec2<u32>(32u)));
    return -var_4.a.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(~min(select(arg_0.a.x, 31705u, false), select(63876u, arg_2, true)), arg_0.a.x), _wgslsmith_mult_vec3_i32(arg_0.b | -max(vec3<i32>(-2147483647i, arg_0.b.x, arg_0.b.x), vec3<i32>(arg_0.d, arg_1.x, arg_3.b.x)), ~func_4(Struct_2(Struct_1(arg_0.a, vec3<i32>(-21451i, arg_1.x, u_input.a), arg_0.c, arg_1.x, vec2<u32>(arg_0.a.x, 0u)), vec2<i32>(21293i, arg_0.d)), func_3(Struct_2(Struct_1(vec2<u32>(arg_0.a.x, arg_2), vec3<i32>(-36374i, u_input.b, 17397i), arg_0.c, -2147483647i, arg_0.e), vec2<i32>(u_input.b, 2147483647i))), arg_3)), !vec3<bool>(true, any(!vec3<bool>(arg_0.c.x, true, arg_0.c.x)), !(!arg_3.c)), -min(~arg_3.b.x, -1i), min(~(~(~vec2<u32>(7619u, arg_0.a.x))), vec2<u32>(~(58088u << (arg_2 % 32u)), 33100u)));
    var_0 = arg_0;
    var_0 = Struct_1(arg_0.e, arg_3.a | var_0.b, vec3<bool>(arg_0.c.x, select(~(-2353i) <= arg_3.b.x, true, any(!arg_0.c)), true), u_input.a, arg_0.a);
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-1393f - 2941f) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(562f - -148f))))));
    return Struct_1(~(firstLeadingBit(abs(arg_0.e)) & (_wgslsmith_add_vec2_u32(vec2<u32>(87108u, arg_2), arg_0.a) ^ vec2<u32>(var_0.e.x, arg_2))), vec3<i32>(u_input.b, countOneBits(reverseBits(_wgslsmith_dot_vec2_i32(arg_1.yy, vec2<i32>(u_input.a, -19465i)))), 27213i), vec3<bool>(false, ~0u >= firstTrailingBit(var_0.e.x), all(vec3<bool>(true, all(vec4<bool>(var_0.c.x, false, arg_3.c, arg_3.c)), !arg_0.c.x))), -(~(_wgslsmith_dot_vec3_i32(arg_0.b, arg_1.zxx) >> (39018u % 32u))), _wgslsmith_clamp_vec2_u32(abs(~(~var_0.e)), var_0.e, abs(~(~vec2<u32>(arg_2, 9381u)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    var var_0 = arg_2.b.x;
    var_0 = ~(~19254i);
    let var_1 = vec3<u32>(arg_2.e.x, arg_2.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(12310u, arg_2.e.x, 0u, arg_2.e.x), abs(vec4<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.e.x)))) & _wgslsmith_add_vec3_u32(select(vec3<u32>(71940u, arg_2.a.x, arg_2.e.x) << ((vec3<u32>(arg_2.e.x, arg_2.a.x, arg_2.a.x) ^ vec3<u32>(arg_2.a.x, arg_2.e.x, arg_2.e.x)) % vec3<u32>(32u)), ~vec3<u32>(4640u, arg_2.a.x, arg_2.a.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(113568u, arg_2.e.x, 0u), vec3<u32>(71412u, arg_2.a.x, 0u)) % vec3<u32>(32u)), select(vec3<bool>(arg_2.c.x, arg_2.c.x, true), vec3<bool>(true, false, arg_2.c.x), !arg_2.c)), ~(~vec3<u32>(4294967295u, arg_2.a.x, arg_2.e.x) ^ firstLeadingBit(vec3<u32>(4294967295u, arg_2.e.x, arg_2.a.x))));
    var_0 = _wgslsmith_dot_vec2_i32(arg_2.b.yx ^ func_4(Struct_2(arg_2, ~vec2<i32>(-2147483647i, u_input.a)), vec4<bool>(!arg_2.c.x, arg_2.c.x, arg_0.x, arg_0.x), Struct_3(arg_2.b, vec2<i32>(10590i, 29958i), !arg_0.x)).yx, ~abs(~vec2<i32>(arg_2.d, 2147483647i)));
    var_0 = abs(_wgslsmith_add_i32(~arg_2.d, -1i));
    return ~(~(~select(vec2<u32>(0u, arg_2.a.x), var_1.zz & arg_2.e, true)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = vec2<bool>(select(all(!vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_1.c)), select(~0i == arg_0.b.x, !arg_0.c.x, arg_1.c), arg_3), false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(577f - arg_2.x))));
    var_0 = !select(vec2<bool>(true, (-1i < u_input.b) | true), !select(vec2<bool>(var_0.x, false), select(vec2<bool>(arg_1.c, var_0.x), arg_0.c.xy, vec2<bool>(arg_3, arg_0.c.x)), vec2<bool>(arg_0.c.x, arg_3)), !select(vec2<bool>(arg_3, arg_1.c), !arg_0.c.yx, vec2<bool>(arg_1.c, true)));
    var var_2 = Struct_2(arg_0, arg_0.b.xx);
    var_2 = Struct_2(Struct_1(~vec2<u32>(~0u, 50977u), arg_0.b, var_2.a.c, max(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.b.x, -2147483647i), -10184i << (arg_0.a.x % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, u_input.a, -2926i), vec4<i32>(-7647i, u_input.b, -7133i, u_input.b))), func_5(select(vec4<bool>(false, false, false, arg_3), vec4<bool>(true, var_0.x, var_2.a.c.x, arg_1.c), vec4<bool>(var_0.x, true, arg_0.c.x, arg_1.c)), arg_1.b.x, func_2(arg_0, vec4<i32>(var_2.a.b.x, -2147483647i, 23282i, -1i), arg_0.a.x, arg_1), _wgslsmith_f_op_f32(-arg_2.x)) << ((reverseBits(vec2<u32>(var_2.a.a.x, var_2.a.a.x)) | (vec2<u32>(arg_0.e.x, 9844u) ^ arg_0.a)) % vec2<u32>(32u))), -_wgslsmith_div_vec2_i32(arg_0.b.yx, vec2<i32>(func_4(Struct_2(var_2.a, arg_1.b), vec4<bool>(false, var_2.a.c.x, false, arg_1.c), Struct_3(arg_1.a, vec2<i32>(u_input.a, arg_1.a.x), true)).x, u_input.a)));
    return Struct_1(~countOneBits(vec2<u32>(_wgslsmith_clamp_u32(1u, 6967u, 25919u), ~0u)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(i32(-1i) * -8943i, _wgslsmith_mod_i32(arg_0.b.x, arg_0.d)), 0i), max(_wgslsmith_mult_i32(-13959i, var_2.b.x), arg_0.d | var_2.b.x) << (func_2(Struct_1(arg_0.e, vec3<i32>(-2147483647i, -66014i, u_input.a), var_2.a.c, 2147483647i, arg_0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, 2147483647i, u_input.a, arg_1.a.x), vec4<i32>(var_2.b.x, u_input.b, var_2.a.b.x, -1i)), _wgslsmith_sub_u32(0u, arg_0.e.x), arg_1).e.x % 32u), 5440i), vec3<bool>(any(!vec4<bool>(arg_1.c, false, true, arg_1.c)), !var_2.a.c.x, true), _wgslsmith_div_i32(~max(-65460i, ~(-1i)), arg_1.b.x), vec2<u32>(1u, 16978u) | var_2.a.e);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_add_i32(firstTrailingBit(u_input.b), ~u_input.b);
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(1u, firstLeadingBit(_wgslsmith_mod_u32(33452u, arg_1.a.a.x))), ~(_wgslsmith_mult_u32(0u, 2769u) << (arg_1.a.a.x % 32u))), ~vec3<i32>(_wgslsmith_div_i32(0i | u_input.a, ~(-2147483647i)), 1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_1.b, vec2<i32>(arg_1.b.x, 5052i)), _wgslsmith_add_i32(37761i, 1i))), func_2(func_1(arg_1.a, Struct_3(_wgslsmith_mod_vec3_i32(arg_1.a.b, vec3<i32>(-39634i, -20085i, arg_1.b.x)), arg_1.a.b.yx, false), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(587f, -197f) - vec2<f32>(177f, 1249f)))), func_2(func_1(Struct_1(vec2<u32>(1u, 37952u), arg_1.a.b, vec3<bool>(true, arg_1.a.c.x, arg_0.x), -1i, vec2<u32>(63069u, 0u)), Struct_3(vec3<i32>(u_input.a, arg_1.b.x, u_input.a), arg_1.a.b.zy, true), vec2<f32>(-1101f, 106f), arg_0.x), ~vec4<i32>(arg_1.a.b.x, u_input.a, arg_1.a.d, arg_1.a.b.x), 4294967295u, Struct_3(vec3<i32>(-2147483647i, 1i, u_input.a), vec2<i32>(arg_1.a.b.x, u_input.b), arg_1.a.c.x)).c.x), max(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.d, 0i, arg_1.a.b.x, 1i) & vec4<i32>(arg_1.b.x, -64980i, u_input.b, -1i), vec4<i32>(-9085i, arg_1.a.d, 7942i, -2147483647i)), vec4<i32>(~1i, -77105i, 0i, u_input.a)), arg_1.a.e.x, Struct_3(vec3<i32>(_wgslsmith_sub_i32(56088i, -1i), ~(-2147483647i), 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -2147483647i), ~vec2<i32>(u_input.b, -2147483647i)), any(func_3(Struct_2(Struct_1(arg_1.a.e, vec3<i32>(u_input.b, u_input.a, 7922i), arg_1.a.c, arg_1.b.x, arg_1.a.a), arg_1.a.b.yy))))).c, ~(-u_input.a), select(arg_1.a.a, arg_1.a.e, vec2<bool>(false, !arg_0.x)) ^ (firstTrailingBit(~vec2<u32>(7398u, 5339u)) >> (func_1(arg_1.a, Struct_3(arg_1.a.b, vec2<i32>(29871i, -54867i), true), vec2<f32>(-1415f, -1065f), arg_1.a.c.x).a % vec2<u32>(32u))));
    var var_2 = func_3(Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.e.x, arg_1.a.e.x), var_1.a), var_1.b, !var_1.c, 24134i, var_1.a), arg_1.a.b.xz)).wyx;
    let var_3 = arg_1;
    var_2 = var_1.c;
    return Struct_3(firstTrailingBit(var_3.a.b) >> (~select(vec3<u32>(4294967295u, var_3.a.a.x, var_3.a.a.x), ~vec3<u32>(123431u, arg_1.a.a.x, arg_1.a.e.x), vec3<bool>(arg_1.a.c.x, true, true)) % vec3<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, func_1(Struct_1(var_1.a, var_1.b, arg_1.a.c, -2147483647i, vec2<u32>(var_3.a.a.x, var_1.e.x)), Struct_3(vec3<i32>(-1i, 1i, -59118i), vec2<i32>(0i, 0i), var_1.c.x), vec2<f32>(-1118f, -1196f), arg_1.a.c.x).b.x), vec2<i32>(~(-arg_1.b.x), func_4(Struct_2(Struct_1(vec2<u32>(10315u, var_1.e.x), vec3<i32>(var_1.d, 2147483647i, -61010i), vec3<bool>(var_1.c.x, true, arg_1.a.c.x), 56276i, var_1.a), vec2<i32>(-1i, arg_1.b.x)), vec4<bool>(false, var_3.a.c.x, arg_1.a.c.x, true), Struct_3(var_1.b, arg_1.a.b.xz, arg_0.x)).x)), var_3.b.x == -7783i);
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~abs(vec2<u32>(0u, 57966u)), ~vec2<u32>(1u, 1u)), min(func_1(func_1(Struct_1(vec2<u32>(4002u, 0u), arg_1.a, vec3<bool>(false, arg_1.c, arg_1.c), arg_2, vec2<u32>(0u, 1u)), arg_1, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1160f, 1000f), vec2<f32>(-776f, 1000f))), all(vec4<bool>(false, true, arg_1.c, arg_0.x))), Struct_3(reverseBits(arg_1.a), arg_1.b, all(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-134f, -1000f), vec2<f32>(1000f, -716f))), true).b, arg_1.a), vec3<bool>(true, arg_0.x, select(arg_1.c, !arg_1.c, true)), -(~min(u_input.b, 47690i)), min(~vec2<u32>(1u, 1u), vec2<u32>(16193u, 4294967295u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) | func_1(Struct_1(min(vec2<u32>(36004u, 4294967295u), vec2<u32>(28785u, 1u)), -vec3<i32>(66042i, u_input.a, arg_2), !vec3<bool>(arg_1.c, arg_1.c, true), u_input.a ^ u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(20294u, 1u), vec2<u32>(4294967295u, 1u))), func_6(vec2<bool>(true, true), Struct_2(Struct_1(vec2<u32>(2482u, 24585u), vec3<i32>(16132i, arg_2, arg_1.a.x), vec3<bool>(true, false, arg_1.c), u_input.a, vec2<u32>(6164u, 78032u)), vec2<i32>(arg_1.b.x, arg_1.b.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-237f, 1401f))), _wgslsmith_div_vec2_f32(vec2<f32>(480f, -1929f), vec2<f32>(-390f, 669f)))), true).e);
    var var_1 = Struct_2(func_1(var_0, Struct_3(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1.a, arg_1.a, var_0.b), vec3<i32>(15847i, -1799i, var_0.d) << (vec3<u32>(76621u, var_0.a.x, 1u) % vec3<u32>(32u))), func_2(func_1(Struct_1(var_0.e, vec3<i32>(arg_2, arg_2, 2147483647i), vec3<bool>(true, false, false), 62247i, vec2<u32>(4294967295u, var_0.e.x)), Struct_3(var_0.b, var_0.b.xy, false), vec2<f32>(-179f, 826f), arg_1.c), vec4<i32>(21346i, var_0.d, -2147483647i, arg_1.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(53694u, var_0.e.x, 20826u, var_0.e.x), vec4<u32>(var_0.a.x, var_0.e.x, 47520u, var_0.a.x)), arg_1).b.yy, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1272f, 1481f), vec2<f32>(-598f, _wgslsmith_f_op_f32(f32(-1f) * -608f)), !(arg_0.x || arg_0.x))), arg_1.c), arg_1.a.xz);
    var var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(959f, 2195f, 1724f, 1071f))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(834f + -216f))), _wgslsmith_f_op_f32(min(-1655f, _wgslsmith_f_op_f32(floor(-327f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1373f * -391f)), -593f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1268f, -268f)), _wgslsmith_div_f32(197f, 1032f), _wgslsmith_f_op_f32(f32(-1f) * -810f), _wgslsmith_f_op_f32(f32(-1f) * -107f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(912f, 115f, -719f, -1297f) - vec4<f32>(1087f, -1000f, -1111f, -1519f))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(-673f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-742f - 608f)), 257f, 1f))));
    var var_4 = var_3.x;
    return func_1(var_1.a, arg_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.wx, var_3.zz, vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, 560f), var_3.xx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 930f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.x, -213f))) * vec2<f32>(857f, var_3.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_3.xw, vec2<f32>(1000f, var_3.x))) - var_3.yy))), func_3(Struct_2(var_1.a, var_1.b)).x);
}

fn func_8(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = func_7(func_7(vec2<bool>(false, arg_0.c.x), func_6(arg_0.c.yz, Struct_2(arg_0, _wgslsmith_sub_vec2_i32(arg_2.xz, arg_0.b.yx))), ~_wgslsmith_sub_i32(-22412i, -49382i << (arg_3 % 32u))).c.xz, func_6(!vec2<bool>(all(arg_0.c.yz), arg_0.c.x), Struct_2(func_1(arg_0, func_6(arg_0.c.yz, Struct_2(arg_0, arg_2.yz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-150f, 630f) + vec2<f32>(438f, -1317f)), func_2(Struct_1(vec2<u32>(arg_1, arg_1), vec3<i32>(0i, -57534i, arg_2.x), arg_0.c, arg_0.d, arg_0.e), vec4<i32>(arg_0.b.x, u_input.a, arg_0.b.x, arg_0.b.x), 19545u, Struct_3(vec3<i32>(u_input.a, 62181i, arg_2.x), vec2<i32>(arg_0.b.x, arg_2.x), true)).c.x), ~(-vec2<i32>(2147483647i, 2147483647i)))), arg_0.b.x);
    let var_1 = func_3(Struct_2(arg_0, arg_2.xx));
    var var_2 = arg_0.c.xy;
    let var_3 = arg_0.a.x;
    var_0 = func_7(arg_0.c.yx, Struct_3(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, -1i, var_0.b.x), max(arg_0.b, vec3<i32>(u_input.b, 1i, -8089i)), vec3<i32>(-27538i, arg_2.x, -9042i)), func_6(select(vec2<bool>(arg_0.c.x, false), vec2<bool>(true, true), !var_1.yy), Struct_2(func_7(vec2<bool>(arg_0.c.x, arg_0.c.x), Struct_3(vec3<i32>(arg_2.x, -1i, var_0.d), arg_0.b.yy, true), arg_2.x), _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.x, -1i), vec2<i32>(-2147483647i, 49065i)))).b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-228f, 178f), _wgslsmith_f_op_f32(ceil(283f)), !var_1.x)) != 365f), arg_2.x);
    return func_7(func_3(Struct_2(Struct_1(~var_0.e, arg_0.b, !vec3<bool>(true, arg_0.c.x, var_1.x), var_0.b.x, arg_0.a), func_4(Struct_2(arg_0, var_0.b.yy), !vec4<bool>(true, false, true, var_2.x), func_6(var_1.wz, Struct_2(arg_0, vec2<i32>(arg_0.b.x, arg_2.x)))).zy)).yw, Struct_3(func_4(Struct_2(func_2(Struct_1(vec2<u32>(var_0.e.x, 0u), vec3<i32>(2147483647i, -7605i, var_0.d), var_0.c, arg_2.x, var_0.a), vec4<i32>(arg_2.x, arg_2.x, arg_0.d, -1i), 1u, Struct_3(arg_0.b, vec2<i32>(var_0.d, u_input.b), arg_0.c.x)), var_0.b.yx >> (vec2<u32>(arg_1, 4294967295u) % vec2<u32>(32u))), var_1, func_6(arg_0.c.xy, Struct_2(Struct_1(vec2<u32>(arg_0.e.x, 1u), arg_2, vec3<bool>(false, var_0.c.x, false), -6277i, vec2<u32>(var_3, 9147u)), vec2<i32>(1i, arg_2.x)))), arg_2.yz, !var_2.x), _wgslsmith_dot_vec2_i32(func_2(arg_0, ~min(vec4<i32>(var_0.b.x, -1i, 1i, var_0.b.x), vec4<i32>(-55126i, var_0.b.x, u_input.a, var_0.d)), 15538u, func_6(!vec2<bool>(var_1.x, arg_0.c.x), Struct_2(arg_0, arg_2.yz))).b.zy, ~vec2<i32>(-2147483647i, ~arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec4<bool>(true, true, true, true)) && !(_wgslsmith_f_op_f32(select(-194f, _wgslsmith_div_f32(-440f, 691f), true)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1136f * -1613f), -1126f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1338f)) - -1232f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(606f, 768f)), _wgslsmith_f_op_f32(-571f + -1006f), var_0)))));
    let var_2 = ~u_input.a;
    let var_3 = func_8(func_7(vec2<bool>(true, !var_0), func_6(vec2<bool>(true, true), Struct_2(func_1(Struct_1(vec2<u32>(4294967295u, 87670u), vec3<i32>(u_input.b, u_input.a, -45421i), vec3<bool>(var_0, false, var_0), -15451i, vec2<u32>(1u, 52440u)), Struct_3(vec3<i32>(0i, u_input.b, u_input.b), vec2<i32>(u_input.a, -1i), false), vec2<f32>(-1917f, 238f), var_0), _wgslsmith_mod_vec2_i32(vec2<i32>(-47900i, -11251i), vec2<i32>(-1i, var_2)))), firstLeadingBit(-2147483647i)), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(1u, 0u), _wgslsmith_div_u32(_wgslsmith_mod_u32(~37231u, ~52888u), ~select(1u, 3535u, false))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~(-vec3<i32>(-28949i, 1i, -6856i)), vec3<i32>(func_7(vec2<bool>(false, true), Struct_3(vec3<i32>(u_input.b, var_2, var_2), vec2<i32>(2147483647i, u_input.b), true), 86214i).b.x, u_input.b, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 1i, 29895i), vec3<i32>(~u_input.a, var_2, -35772i), _wgslsmith_div_vec3_i32(min(vec3<i32>(307i, 11757i, 1i), vec3<i32>(u_input.b, -23899i, u_input.b)), _wgslsmith_div_vec3_i32(vec3<i32>(-6531i, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)))), max(-(~vec3<i32>(0i, 2147483647i, var_2)), vec3<i32>(8398i, var_2, var_2) ^ vec3<i32>(-60550i, 2147483647i, 0i))), 40706u);
    var var_4 = Struct_2(Struct_1(min(var_3.a, vec2<u32>(_wgslsmith_sub_u32(1u, var_3.e.x), 64184u)), var_3.b, !func_2(var_3, max(vec4<i32>(var_3.d, 62824i, var_3.b.x, var_3.b.x), vec4<i32>(66906i, var_3.d, u_input.a, u_input.b)), abs(var_3.a.x), func_6(var_3.c.yx, Struct_2(Struct_1(vec2<u32>(var_3.e.x, var_3.a.x), var_3.b, var_3.c, u_input.a, vec2<u32>(var_3.e.x, 0u)), vec2<i32>(28933i, u_input.a)))).c, func_8(var_3, 4294967295u, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.d, u_input.b, 33979i) << (vec3<u32>(1u, 50328u, 44041u) % vec3<u32>(32u)), func_6(vec2<bool>(true, false), Struct_2(Struct_1(var_3.a, vec3<i32>(var_2, var_3.d, var_3.d), var_3.c, u_input.a, vec2<u32>(45055u, var_3.e.x)), var_3.b.zz)).a, -vec3<i32>(0i, var_3.d, var_2)), _wgslsmith_add_u32(1u, var_3.a.x) << (var_3.a.x % 32u)).b.x, ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.a.x, 1u), vec2<u32>(382u, var_3.a.x))), vec2<i32>(_wgslsmith_mod_i32(var_3.b.x, -var_2 | (i32(-1i) * -17291i)), 0i));
    let var_5 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(min(~(-14850i), _wgslsmith_clamp_i32(var_2, -19204i, var_3.d)), _wgslsmith_div_i32(~var_4.b.x, -46058i)), _wgslsmith_div_i32(2147483647i, -var_4.a.d), min(var_4.a.b.x, ~(-var_2))), var_2, ~(countOneBits(_wgslsmith_clamp_i32(60083i, 55465i, 1i)) ^ _wgslsmith_div_i32(-1i, _wgslsmith_add_i32(1i, 4149i))));
    var_4 = Struct_2(var_3, abs(vec2<i32>(1i, ~func_8(Struct_1(vec2<u32>(6732u, var_4.a.a.x), vec3<i32>(var_2, var_5, 5201i), vec3<bool>(false, var_0, false), var_4.a.d, vec2<u32>(var_3.a.x, 7228u)), 8462u, var_4.a.b, var_3.a.x).d)));
    var_1 = 1263f;
    var var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f)), 225f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1065f) + 373f), 1557f), func_8(Struct_1(_wgslsmith_mod_vec2_u32(var_6.a, var_6.a), vec3<i32>(-1i, 0i, -2147483647i), var_4.a.c, -u_input.b, func_5(vec4<bool>(false, var_3.c.x, true, var_6.c.x), var_3.b.x, var_4.a, 154f)), 28017u, vec3<i32>(-var_3.d, 11631i, _wgslsmith_mult_i32(u_input.b, var_2)), ~61961u).c.x)), vec4<u32>(var_6.a.x, _wgslsmith_mult_u32(firstTrailingBit(func_1(var_4.a, Struct_3(vec3<i32>(-2147483647i, u_input.a, -2147483647i), vec2<i32>(var_5, 0i), true), vec2<f32>(738f, -106f), var_0).a.x), 61457u), 1u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.e.x, var_3.e.x, 60566u, var_4.a.e.x), ~vec4<u32>(33991u, var_4.a.e.x, var_4.a.e.x, 0u)), var_4.a.a.x ^ var_4.a.a.x)));
}

