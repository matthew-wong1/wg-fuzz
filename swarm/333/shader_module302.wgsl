struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1450u, u_input.c.x, u_input.c.x, u_input.c.x), ~vec4<u32>(7920u, u_input.c.x, 0u, 3828u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(17825u, 0u, u_input.c.x, 19833u), vec4<u32>(4294967295u, 42455u, 21709u, 69260u)), firstTrailingBit(vec4<u32>(u_input.c.x, 57251u, u_input.c.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, 71050u, u_input.c.x)))), abs(1u), 7579u, 0u), abs(vec4<u32>(max(~56938u, u_input.c.x), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x), ~u_input.c.x), 24483u, 1u))), 18u)];
    var var_1 = reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(351i, _wgslsmith_add_i32(-1i, global0[_wgslsmith_index_u32(u_input.c.x, 18u)] ^ u_input.b)), ~(countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(12943u, 18u)], u_input.b)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(32355u, 18u)]), vec2<i32>(-38795i, -1i)))));
    var var_2 = Struct_1(u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(abs(-1027f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(354f + -661f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 4294967295u, vec2<i32>(~(~0i) | countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], u_input.b, -2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec4<i32>(var_1.x, 34499i, var_1.x, -2147483647i))), var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-581f)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -206f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(871f, 813f, -296f))))));
    var var_3 = ~(var_2.a & 35548u);
    var_0 = var_1.x;
    return firstLeadingBit(u_input.c.x | 29115u);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<i32, 18>();
    let var_1 = vec2<u32>(~(~(_wgslsmith_add_u32(9884u, u_input.c.x) & (0u ^ u_input.c.x))), u_input.c.x);
    let var_2 = ~_wgslsmith_clamp_u32(arg_0.a.a, func_3(), 1u);
    global0 = array<i32, 18>();
    return var_0.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec2<bool> {
    global0 = array<i32, 18>();
    let var_0 = arg_0.x;
    var var_1 = func_2(arg_1);
    let var_2 = arg_1;
    global0 = array<i32, 18>();
    return vec2<bool>(select(true == (all(vec3<bool>(false, true, false)) | true), !any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), true), !all(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: vec2<bool>) -> vec2<i32> {
    global0 = array<i32, 18>();
    var var_0 = (((~(-39203i) << (firstTrailingBit(u_input.c.x) % 32u)) | func_2(Struct_2(Struct_1(17969u, vec3<f32>(1128f, -795f, 1000f), u_input.c.x, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 0i), vec3<f32>(-1000f, 316f, 1604f)))).d.x) << (_wgslsmith_dot_vec3_u32(~u_input.c, ~(vec3<u32>(1u, u_input.c.x, 4294967295u) & vec3<u32>(0u, u_input.c.x, u_input.c.x))) % 32u)) > ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, ~(~17182u)), 18u)];
    global0 = array<i32, 18>();
    let var_1 = _wgslsmith_mult_u32(u_input.c.x, u_input.c.x >> (54366u % 32u));
    var var_2 = abs(select(~vec3<u32>(max(u_input.c.x, var_1), 24301u, 4294967295u), ~u_input.c, ~u_input.b > 28625i));
    return _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -1i << (u_input.c.x % 32u)) & firstLeadingBit(vec2<i32>(13269i, global0[_wgslsmith_index_u32(63669u, 18u)])), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_1, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 18u)]) << (~vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(~vec2<i32>(0i, -55895i), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 18u)], u_input.b), vec2<i32>(u_input.d, u_input.d))))), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-3264i, ~29691i)), vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(), _wgslsmith_mod_u32(u_input.c.x, var_1)), 18u)], _wgslsmith_mult_i32(-u_input.b, -global0[_wgslsmith_index_u32(var_1, 18u)])), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, 0i) ^ vec2<i32>(global0[_wgslsmith_index_u32(var_2.x, 18u)], global0[_wgslsmith_index_u32(43526u, 18u)]), -vec2<i32>(u_input.a, 1i), ~vec2<i32>(19637i, u_input.a)), -vec2<i32>(-13900i, u_input.d))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    global0 = array<i32, 18>();
    var var_0 = true;
    var var_1 = arg_1;
    let var_2 = Struct_1(~(~6481u), _wgslsmith_f_op_vec3_f32(round(arg_3.a.e)), 4294967295u, vec2<i32>(-1i) * -(firstLeadingBit(vec2<i32>(1i, arg_3.a.d.x)) >> (abs(vec2<u32>(u_input.c.x, arg_2.a.a)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(arg_1.a.e * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1910f, -1000f, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(-arg_3.a.b))))));
    var_0 = true;
    return min(vec2<u32>(var_2.a, ~arg_2.a.a), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(4294967295u), u_input.c.x), u_input.c.yz, vec2<u32>(4294967295u, ~var_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_0 = max(vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) >> (_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) % 32u), 72740u, ~_wgslsmith_mod_u32(0u, 4294967295u)), abs(firstLeadingBit(vec3<u32>(u_input.c.x, 14239u, u_input.c.x)))) >> (~u_input.c % vec3<u32>(32u));
    var var_1 = func_5(Struct_1(abs(u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-260f, -1389f, 313f) - vec3<f32>(214f, -549f, -426f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1512f, 563f, 231f) - vec3<f32>(-228f, 1839f, -343f))))), 51004u, func_4(select(func_1(vec4<f32>(-881f, 1514f, -118f, -1510f), Struct_2(Struct_1(var_0.x, vec3<f32>(-698f, -349f, -1062f), 0u, vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(43176u, 18u)]), vec3<f32>(-1083f, 1351f, 314f))), var_0, vec4<u32>(var_0.x, var_0.x, u_input.c.x, u_input.c.x)), vec2<bool>(false, true), vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1248f, -1323f, 445f) * vec3<f32>(130f, -1434f, 542f))) - vec3<f32>(430f, _wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(select(-383f, 1101f, true))))), Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(1u, vec3<f32>(121f, 182f, 481f), u_input.c.x, vec2<i32>(u_input.b, 13261i), vec3<f32>(1000f, -619f, 596f))))))), Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(8310u, vec3<f32>(-1257f, -412f, 1000f), 64449u, vec2<i32>(u_input.b, -59235i), vec3<f32>(-1000f, -554f, -115f))))))), Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1327f, -245f, 275f) * vec3<f32>(608f, -1000f, -181f))), _wgslsmith_mod_u32(var_0.x, 56711u), _wgslsmith_div_vec2_i32(vec2<i32>(49331i, -16537i), _wgslsmith_clamp_vec2_i32(vec2<i32>(12650i, u_input.d), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(u_input.a, u_input.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(534f, 281f, -948f) + vec3<f32>(1000f, 862f, -987f)))));
    var var_2 = 26896u;
    var var_3 = _wgslsmith_mult_vec4_i32(max(max(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], u_input.a, u_input.a, u_input.d), vec4<i32>(u_input.a, 10704i, global0[_wgslsmith_index_u32(var_1.x, 18u)], -2147483647i)), vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 52546i)) ^ countOneBits(max(vec4<i32>(global0[_wgslsmith_index_u32(34790u, 18u)], -31739i, global0[_wgslsmith_index_u32(25517u, 18u)], u_input.d), vec4<i32>(-4553i, 1i, u_input.d, -1i))), -(vec4<i32>(29993i, u_input.b, -47264i, 16628i) >> (vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u) % vec4<u32>(32u))) ^ firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(45375i, 2147483647i, -1i, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<i32>(2147483647i, -40765i, 1i, 1i)))) | (~vec4<i32>(-u_input.d, ~8751i, ~u_input.b, -2147483647i) | firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(65326u, 18u)], u_input.a, u_input.b), ~vec4<i32>(global0[_wgslsmith_index_u32(80500u, 18u)], global0[_wgslsmith_index_u32(25286u, 18u)], -9774i, u_input.a))));
    var var_4 = firstLeadingBit(u_input.c.x);
    var var_5 = Struct_2(func_2(Struct_2(Struct_1(max(111406u, u_input.c.x), vec3<f32>(358f, -1442f, -144f), func_3(), ~vec2<i32>(var_3.x, global0[_wgslsmith_index_u32(9038u, 18u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1561f, 1261f, -283f) - vec3<f32>(1218f, -321f, 912f))))));
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i ^ _wgslsmith_clamp_i32(-1i, -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_5.a.a, 18u)], global0[_wgslsmith_index_u32(var_1.x, 18u)]), func_2(Struct_2(var_5.a)).d.x), abs(_wgslsmith_add_vec2_i32(abs(var_5.a.d), max(_wgslsmith_add_vec2_i32(vec2<i32>(var_3.x, 43892i), vec2<i32>(10203i, u_input.a)), var_5.a.d))), ~(~4294967295u), var_5.a.e.x, ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.x, u_input.d, var_3.x, 47849i), ~vec4<i32>(16699i, var_3.x, u_input.a, var_3.x)), vec4<i32>(~(-1i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.zx), 18u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_6.x, var_1.x), 18u)], var_3.x)));
}

