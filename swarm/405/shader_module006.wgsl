struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_2(~vec4<u32>(46931u, 1u, ~14844u, ~(~1u)), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-101f, -837f))), -120f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1641f, 1135f, -340f, 457f), vec4<f32>(238f, 1016f, 352f, 526f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(364f, -681f, 202f, -420f), vec4<f32>(949f, 751f, -491f, 1417f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(967f, 883f, -703f, -1000f), vec4<f32>(487f, 1000f, 276f, -1755f))))), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1288f)) - -608f)))));
    var_0 = Struct_2(countOneBits(vec4<u32>(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 0u, 58715u, var_0.a.x), var_0.a) % 32u), _wgslsmith_clamp_u32(var_0.a.x << (u_input.a % 32u), ~0u, var_0.a.x), firstLeadingBit(~u_input.a), firstLeadingBit(9682u << (1u % 32u)))), var_0.b);
    var_0 = Struct_2(~var_0.a, var_0.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b.b.yyz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.b.b.wzx * _wgslsmith_f_op_vec3_f32(ceil(var_0.b.b.wzy))), vec3<f32>(_wgslsmith_f_op_f32(1485f * -470f), 753f, _wgslsmith_div_f32(var_0.b.a, -1929f)), !vec3<bool>(true, true, var_0.b.c)))));
    var var_2 = ~4294967295u;
    return true;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 77625u, u_input.a), ~vec4<u32>(u_input.a, 32830u, u_input.a, 33517u)) & vec4<u32>(~1u ^ ~u_input.a, 1u, 40834u, 1u >> (countOneBits(u_input.a) % 32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(select(812f, -206f, false))))), vec4<f32>(1f, 1f, 1f, 1f), false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1233f) - _wgslsmith_f_op_f32(f32(-1f) * -1465f))))));
    var_0 = Struct_2(firstTrailingBit(var_0.a), var_0.b);
    let var_1 = -42933i;
    var_0 = Struct_2(~vec4<u32>(~_wgslsmith_add_u32(1411u, 72950u), var_0.a.x, 4294967295u, 15737u), var_0.b);
    var var_2 = Struct_2(_wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(var_0.a.x & u_input.a, 23246u, u_input.a, firstTrailingBit(4294967295u)) >> (~countOneBits(var_0.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(firstLeadingBit(~var_0.a), _wgslsmith_mod_vec4_u32(var_0.a, firstLeadingBit(var_0.a)))), Struct_1(935f, vec4<f32>(var_0.b.a, _wgslsmith_f_op_f32(ceil(var_0.b.d)), -1654f, _wgslsmith_f_op_f32(min(1f, var_0.b.b.x))), func_3(-(vec3<i32>(var_1, -2147483647i, var_1) << (vec3<u32>(var_0.a.x, u_input.a, 4294967295u) % vec3<u32>(32u)))), -290f));
    return var_1;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(-8443i, _wgslsmith_add_i32(-(46013i << (u_input.a % 32u)), func_2()), reverseBits(~1i), ~(-reverseBits(-1i))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(func_2(), firstLeadingBit(-9353i), 1i, -2147483647i), countOneBits(min(vec4<i32>(44485i, -33939i, 0i, 4502i), vec4<i32>(-55234i, -29120i, -2147483647i, 2147483647i))), (vec4<i32>(-1i, 47889i, -1i, -2147483647i) >> (vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -28475i, -2147483647i, -9302i), vec4<i32>(2147483647i, -2147483647i, 2147483647i, 2147483647i))), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(28715i, -12950i, 0i, -1i) << (vec4<u32>(u_input.a, u_input.a, 0u, 0u) % vec4<u32>(32u)), -vec4<i32>(10923i, -8325i, 25718i, -1i), ~vec4<i32>(2147483647i, -1i, 2147483647i, -30038i)), ~min(vec4<i32>(-1i, -25084i, 0i, -15018i), vec4<i32>(-2147483647i, -25038i, 0i, -1i))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    let var_1 = _wgslsmith_div_u32(~(~14903u), u_input.a & u_input.a);
    let var_2 = all(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(-2147483647i, 1i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(-2330f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1584f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(-847f, -1000f)), 1f, 1f, _wgslsmith_f_op_f32(1454f * 167f))))), !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2184f))))));
    let var_2 = !(!(!select(select(vec3<bool>(false, true, var_1.c), vec3<bool>(var_1.c, var_1.c, false), var_1.c), select(vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(var_1.c, var_1.c, var_1.c), true), var_0.x <= 0i)));
    var var_3 = _wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.a, func_1(), ~(~u_input.a)), min(~(vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, u_input.a, 1u)), ~(~vec3<u32>(4294967295u, 1u, 39980u)))), ~min(select(abs(vec3<u32>(2192u, 4294967295u, 93869u)), vec3<u32>(165720u, u_input.a, u_input.a), vec3<bool>(false, var_2.x, var_2.x)), select(vec3<u32>(2027u, 62907u, 1u) & vec3<u32>(u_input.a, 118017u, 4294967295u), vec3<u32>(0u, 4294967295u, 36724u), !var_2)));
    let var_4 = 8611u;
    let var_5 = vec4<i32>(-27934i, 32299i, var_0.x & 0i, ~var_0.x ^ select(-1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.x, var_0.x), var_0.x >> (42117u % 32u)), _wgslsmith_mult_i32(var_0.x, -2147483647i) != var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a), vec3<u32>((var_4 >> (~u_input.a % 32u)) << (~_wgslsmith_sub_u32(65403u, 48493u) % 32u), var_3.x, _wgslsmith_mod_u32(4294967295u, 114238u)), -var_5.x, var_0);
}

