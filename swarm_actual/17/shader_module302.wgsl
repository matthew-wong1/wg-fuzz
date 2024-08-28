struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(1i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(1i, -8664i, 1i, 1i), vec4<i32>(-40095i, -28815i, 2147483647i, 1i), vec4<i32>(-1i, 0i, 2147483647i, -1i), vec4<i32>(2147483647i, -18866i, i32(-2147483648), -23677i), vec4<i32>(-12494i, 40596i, 0i, -2736i), vec4<i32>(1i, i32(-2147483648), -28009i, 10489i), vec4<i32>(1i, 0i, -1i, 39417i), vec4<i32>(1397i, 2147483647i, -1i, 2147483647i), vec4<i32>(56433i, -1i, i32(-2147483648), -6221i), vec4<i32>(27261i, i32(-2147483648), 19887i, 2147483647i), vec4<i32>(1i, -41973i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), 29435i, 0i, -3895i), vec4<i32>(-1i, -68000i, -29194i, -1i), vec4<i32>(70521i, 0i, 0i, 73882i), vec4<i32>(1i, -6685i, -1i, -33034i), vec4<i32>(-344i, 36408i, -73279i, -1i), vec4<i32>(20276i, 2147483647i, 1i, 1i), vec4<i32>(-1362i, 58387i, 3122i, 7780i), vec4<i32>(2690i, 17697i, 7076i, -38567i), vec4<i32>(1i, 1i, 1i, i32(-2147483648)), vec4<i32>(0i, -2115i, 0i, 16097i), vec4<i32>(48208i, -25687i, -41015i, 0i), vec4<i32>(58928i, 23274i, 2147483647i, i32(-2147483648)), vec4<i32>(21615i, i32(-2147483648), 1i, 62969i), vec4<i32>(-5531i, i32(-2147483648), i32(-2147483648), 42463i), vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, -55725i, 9008i), vec4<i32>(0i, 4497i, 2147483647i, 2147483647i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = ~global0[_wgslsmith_index_u32(select(1u | u_input.d.x, 0u, max(countOneBits(var_0.a), ~1i) <= var_0.a), 29u)];
    var var_2 = select(vec3<bool>(!all(vec2<bool>(false, true)), true, true), !(!vec3<bool>(true, true, select(false, false, false))), vec3<bool>(true, true, true));
    var var_3 = _wgslsmith_f_op_f32(abs(-1368f));
    var var_4 = arg_1;
    return ~var_1.zwx;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = ~(-func_3(countOneBits(~arg_0), Struct_1(_wgslsmith_sub_i32(u_input.c, -33948i)), firstLeadingBit(vec2<i32>(0i, arg_0))));
    global0 = array<vec4<i32>, 29>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-766f, -1000f, -848f, -884f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-591f, -1031f, -202f, -544f) * vec4<f32>(944f, -659f, -719f, 340f)))))));
    var var_2 = firstLeadingBit(u_input.d.x);
    var var_3 = _wgslsmith_mod_u32(abs(u_input.d.x), 27672u);
    return ~1u;
}

fn func_4(arg_0: u32, arg_1: i32) -> i32 {
    let var_0 = vec2<bool>(true, (88677i << (u_input.b % 32u)) > -2147483647i);
    var var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, u_input.b), 29u)], _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(89485u, 29u)]), ~global0[_wgslsmith_index_u32(0u, 29u)])), firstLeadingBit(u_input.a)));
    var var_2 = Struct_1(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(2127i, var_1.a) & reverseBits(u_input.c), -(~u_input.c)));
    return min(-2147483647i, i32(-1i) * -30523i);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_1(-2147483647i);
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    global0 = array<vec4<i32>, 29>();
    let var_2 = var_0;
    var var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a, -2147483647i, _wgslsmith_clamp_i32(var_0.a, 22300i, ~u_input.c), -2147483647i), -_wgslsmith_clamp_vec4_i32(~global0[_wgslsmith_index_u32(arg_2.x, 29u)], vec4<i32>(-25916i, 36577i, var_2.a, var_2.a), -global0[_wgslsmith_index_u32(u_input.e, 29u)])), global0[_wgslsmith_index_u32(arg_2.x, 29u)]);
    return func_4(select(arg_1, ~func_2(var_2.a), select(false, true, true)) << ((countOneBits(~arg_2.x) ^ (11942u & _wgslsmith_dot_vec2_u32(vec2<u32>(8524u, 48800u), vec2<u32>(arg_1, 42499u)))) % 32u), reverseBits(_wgslsmith_mod_i32(var_2.a, _wgslsmith_mult_i32(firstLeadingBit(var_0.a), 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~reverseBits(min(~0i, 1i)), ~u_input.c, u_input.c, u_input.c ^ abs(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, u_input.c), 2147483647i)));
    let var_1 = Struct_1(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(139f, 317f, 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(425f, 1000f, 2370f))), 1u, ~_wgslsmith_add_vec3_u32(u_input.d, u_input.d)) & max(~u_input.a << (abs(u_input.d.x) % 32u), ~(-1i)));
    var var_2 = var_0.wzz;
    var var_3 = vec4<bool>(true | all(vec3<bool>(all(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, false, true)))), true & !(!(var_1.a > var_1.a)), true, (_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x)) >= _wgslsmith_clamp_u32(~0u, u_input.d.x, firstTrailingBit(u_input.b))) & false);
    var_2 = -var_0.wxz;
    let var_4 = Struct_1(~(-1222i) >> (u_input.d.x % 32u));
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 658f)))), 429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-224f)))), _wgslsmith_f_op_f32(abs(-582f))));
    let var_6 = reverseBits(~(-var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, abs(u_input.b), 4294967295u << (u_input.e % 32u)), ~u_input.d), _wgslsmith_dot_vec3_i32(var_0.zxx, ~vec3<i32>(reverseBits(var_1.a), _wgslsmith_div_i32(var_2.x, -6235i), 1i)), _wgslsmith_f_op_f32(sign(var_5.x)), var_5.x);
}

