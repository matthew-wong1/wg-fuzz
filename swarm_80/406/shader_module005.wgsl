struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<i32>(-27756i, 57916i), i32(-2147483648), 52683u), Struct_2(vec2<i32>(-29767i, 1i), -2673i, 0u), Struct_2(vec2<i32>(2147483647i, -24950i), 22960i, 29192u), Struct_2(vec2<i32>(-19994i, -1i), 8713i, 1u), Struct_2(vec2<i32>(i32(-2147483648), -1i), 18510i, 50746u), Struct_2(vec2<i32>(1i, -65096i), 128i, 27259u), Struct_2(vec2<i32>(i32(-2147483648), 60319i), 2147483647i, 4294967295u), Struct_2(vec2<i32>(-20321i, 3204i), 33460i, 75481u), Struct_2(vec2<i32>(-1i, -1i), 51727i, 1u), Struct_2(vec2<i32>(1i, -40853i), 1i, 4294967295u), Struct_2(vec2<i32>(2147483647i, -1i), 17500i, 9196u), Struct_2(vec2<i32>(2147483647i, 39548i), 0i, 0u), Struct_2(vec2<i32>(-34059i, -1i), -18120i, 0u), Struct_2(vec2<i32>(1i, 31677i), -23027i, 82405u), Struct_2(vec2<i32>(2147483647i, 1i), 52178i, 0u), Struct_2(vec2<i32>(5873i, 2147483647i), 23696i, 38460u));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(-1i, -9296i, i32(-2147483648)), vec2<bool>(true, false), vec2<bool>(true, true), false), Struct_1(vec3<i32>(-8286i, -1i, -14823i), vec2<bool>(false, false), vec2<bool>(false, true), true), Struct_1(vec3<i32>(-48314i, i32(-2147483648), -42958i), vec2<bool>(true, false), vec2<bool>(false, false), true), Struct_1(vec3<i32>(-4748i, -1i, 32104i), vec2<bool>(true, true), vec2<bool>(false, true), true), Struct_1(vec3<i32>(-30523i, 1i, i32(-2147483648)), vec2<bool>(true, false), vec2<bool>(false, false), false), Struct_1(vec3<i32>(-2169i, -12591i, i32(-2147483648)), vec2<bool>(true, true), vec2<bool>(true, false), false), Struct_1(vec3<i32>(i32(-2147483648), -17471i, 51780i), vec2<bool>(false, false), vec2<bool>(true, true), false), Struct_1(vec3<i32>(1i, -9987i, 4487i), vec2<bool>(false, false), vec2<bool>(true, true), false));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec2<f32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(52627u, 75332u) << (arg_0 % 32u), 8u)];
    let var_1 = Struct_2(~(-vec2<i32>(-56735i, 11155i)) ^ var_0.a.zz, var_0.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    let var_2 = Struct_2(vec2<i32>(-1i) * -max(_wgslsmith_clamp_vec2_i32(var_0.a.zy, var_1.a, var_0.a.xz), vec2<i32>(-42366i, 1i)), _wgslsmith_sub_i32(67524i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-8497i, var_1.b), abs(max(var_1.b, 2147483647i)))), var_1.c);
    global0 = array<vec3<i32>, 13>();
    global1 = array<Struct_2, 16>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-637f, -1915f), vec2<f32>(-882f, -912f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(582f, 1032f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-572f, -527f) + vec2<f32>(-442f, 815f))))))));
}

fn func_3() -> u32 {
    global2 = array<Struct_1, 8>();
    let var_0 = Struct_3(vec2<f32>(1f, 1242f));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(select(_wgslsmith_clamp_u32(u_input.a.x, 59649u, 0u), 1u, any(vec2<bool>(false, false))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(17418u, u_input.a.x, 4294967295u, 1u), vec4<u32>(u_input.a.x, 6499u, 21117u, 42982u)), u_input.a.x)) ^ ~_wgslsmith_mult_u32(abs(u_input.a.x), ~u_input.a.x), 1u), 16u)];
    let var_2 = Struct_2(-vec2<i32>(-reverseBits(var_1.a.x), var_1.a.x), var_1.b, abs(reverseBits(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.c, 4430u), vec3<u32>(27917u, u_input.a.x, 4294967295u)), u_input.a.x))));
    var var_3 = vec4<u32>(30284u ^ ~(u_input.a.x | 73630u), ~var_1.c, _wgslsmith_add_u32(8901u, 0u), _wgslsmith_dot_vec2_u32(~u_input.a.xz ^ vec2<u32>(~1u, 0u & var_2.c), select(u_input.a.xy, ~(u_input.a.xz | vec2<u32>(0u, 4294967295u)), vec2<bool>(true, true))));
    return max(var_2.c, 5109u);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: i32) -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(u_input.a.x, vec4<bool>(false, true, true, true)))) + vec2<f32>(_wgslsmith_f_op_f32(-514f - -438f), 268f))));
    var var_1 = vec2<u32>(func_3(), _wgslsmith_add_u32(44029u, firstTrailingBit(_wgslsmith_dot_vec2_u32(~u_input.a.zz, u_input.a.xz))));
    global1 = array<Struct_2, 16>();
    var var_2 = !(!(!vec2<bool>(all(vec2<bool>(true, false)), true)));
    var var_3 = max(vec3<u32>(4661u, ~u_input.a.x, 28126u), u_input.a);
    return u_input.a.yy;
}

fn func_4(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -354f) + 609f);
    var var_1 = 50944u;
    global0 = array<vec3<i32>, 13>();
    global2 = array<Struct_1, 8>();
    global1 = array<Struct_2, 16>();
    return ~u_input.a.x & u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.a.x, u_input.a.x, (i32(-1i) * -22222i) != countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-76345i, 0i), ~vec2<i32>(2147483647i, 50103i))));
    var_0 = u_input.a.x << (func_4(~func_1(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 78798u), 16u)], ~vec2<i32>(1i, -1i), firstLeadingBit(vec4<i32>(39984i, 38299i, -17295i, 1i)), 6084i)) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2(~41531u, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)))).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-815f, 1000f)))), -986f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -127f, var_1.x, 1115f), vec4<f32>(var_1.x, var_1.x, var_1.x, 816f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -307f, -296f, 1014f) + vec4<f32>(var_1.x, var_1.x, -1302f, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1173f, var_1.x, -1000f, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(760f, var_1.x, var_1.x, var_1.x))) * vec4<f32>(548f, _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(var_1.x * 197f), _wgslsmith_div_f32(var_1.x, 783f)))))));
    var var_3 = reverseBits(_wgslsmith_mod_i32(~_wgslsmith_mult_i32(-20803i, -19962i), -2147483647i)) >> (~_wgslsmith_mod_u32((u_input.a.x ^ 9735u) >> (56597u % 32u), u_input.a.x) % 32u);
    let var_4 = vec4<i32>(-1i, -_wgslsmith_clamp_i32(1i, -1i, ~min(-2147483647i, -1i)), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, 1i)) << (max(4294967295u, max(u_input.a.x, u_input.a.x)) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-25937i, 71732i), vec2<i32>(0i, -1i)), vec2<i32>(34252i, 1i)), min(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -1i), global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, -14883i), 1i), 63056i), -vec4<i32>(1i, 1i, 1i, 1i)));
    let var_5 = global2[_wgslsmith_index_u32(select(max(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.zz), min(u_input.a.yz, vec2<u32>(4693u, u_input.a.x))), ~u_input.a.zx), 4327u), ~26698u, select(true, var_1.x > _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, 1140f))), true)), 8u)];
    global1 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, var_5.a.x, var_4.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_5.a.x, i32(-1i) * -31734i, var_4.x), var_4.xyx, ~firstTrailingBit(_wgslsmith_mult_vec3_i32(var_4.zwz, vec3<i32>(-3608i, -23889i, 52446i)))), var_2.x, firstLeadingBit(var_5.a.xy), u_input.a.x);
}

