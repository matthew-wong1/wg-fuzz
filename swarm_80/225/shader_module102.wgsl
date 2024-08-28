struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = any(select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true)), select(vec4<bool>(true, all(vec2<bool>(false, false)), any(vec3<bool>(true, true, false)), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, any(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, false, false)))), vec4<bool>(true, true, true, true)));
    var var_1 = vec4<bool>(true, !var_0, var_0, all(select(select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(true, var_0, var_0, var_0), false), !vec4<bool>(false, false, var_0, var_0), true)) || !var_0);
    var_1 = select(vec4<bool>(true, true, _wgslsmith_sub_u32(arg_0.a.a, u_input.b.x << (4294967295u % 32u)) >= 0u, true), !select(vec4<bool>(true, any(var_1.zy), var_1.x, -75301i == u_input.d), !select(vec4<bool>(true, true, false, var_0), vec4<bool>(var_0, var_1.x, true, true), vec4<bool>(var_0, true, false, var_1.x)), var_0), !select(!(!vec4<bool>(false, var_1.x, var_0, false)), vec4<bool>(var_1.x, false, true, all(var_1.zz)), var_0 || true));
    var_1 = !vec4<bool>(!(arg_0.a.d >= -800f) & var_0, var_0, !var_1.x, u_input.a >= u_input.a);
    return ~38844u << (firstLeadingBit(firstLeadingBit(arg_0.a.a >> (countOneBits(arg_0.a.a) % 32u))) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = select(max(abs(vec3<i32>(u_input.a, reverseBits(arg_0.c), arg_0.c & u_input.c)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b.x, -u_input.d, ~arg_0.e), vec3<i32>(-2147483647i, arg_0.b.x, -23939i))), select(-vec3<i32>(_wgslsmith_mod_i32(arg_0.b.x, u_input.a), max(arg_0.b.x, u_input.c), 29401i), ~(-vec3<i32>(33366i, -2147483647i, 0i)) >> (vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2.c.x, 23873u), arg_2.c), _wgslsmith_add_u32(1u, arg_0.a)) % vec3<u32>(32u)), !(!select(vec3<bool>(arg_2.a, arg_1, arg_1), vec3<bool>(false, arg_2.a, arg_1), false))), !(u_input.e.x > arg_0.c));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1967f)));
    var var_2 = ~var_0;
    var_2 = select(-vec3<i32>(u_input.e.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.c, var_2.x), 16531i << (0u % 32u)), countOneBits(u_input.c << (0u % 32u))), ~var_0, true);
    var_2 = abs(var_0);
    return -min(-vec4<i32>(~u_input.e.x, var_2.x, 4862i, -12755i ^ var_2.x), vec4<i32>(arg_0.b.x, min(arg_0.e ^ 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 2147483647i, u_input.d, arg_0.e), vec4<i32>(var_2.x, arg_0.b.x, var_2.x, -2147483647i))), -2147483647i, -abs(u_input.a)));
}

fn func_2() -> vec3<i32> {
    let var_0 = !(!(!all(vec4<bool>(false, true, true, false)))) | true;
    let var_1 = ~u_input.e;
    var var_2 = (~(u_input.b.xz >> (_wgslsmith_div_vec2_u32(u_input.b.xz, u_input.b.xy) % vec2<u32>(32u))) | u_input.b.yy) << (vec2<u32>(u_input.b.x, 1u | min(_wgslsmith_mult_u32(0u, u_input.b.x), u_input.b.x)) % vec2<u32>(32u));
    var var_3 = func_4(Struct_1(~reverseBits(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -12591i, u_input.e.x), vec3<i32>(-2147483647i, u_input.a, u_input.e.x)) | 18326i, _wgslsmith_mod_i32(~54437i, u_input.d)), -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-964f)), _wgslsmith_f_op_f32(f32(-1f) * -106f)), -2147483647i), !(0u != ~firstTrailingBit(var_2.x)), Struct_3(func_3(Struct_2(Struct_1(0u, var_1, -2147483647i, -227f, 17594i))) > _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(45946u, 1u, 56140u, 4294967295u), vec4<u32>(1u, var_2.x, 0u, var_2.x)), countOneBits(vec4<u32>(4294967295u, var_2.x, 40411u, 4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -249f), max(select(vec3<u32>(var_2.x, var_2.x, 1u), u_input.b, vec3<bool>(var_0, true, var_0)), u_input.b) | _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(var_2.x, u_input.b.x, 0u)), ~vec3<u32>(var_2.x, 0u, 0u))));
    var_3 = -countOneBits(select(vec4<i32>(_wgslsmith_dot_vec3_i32(var_3.wwy, vec3<i32>(var_1.x, var_1.x, 11850i)), var_3.x >> (55601u % 32u), func_4(Struct_1(33576u, vec2<i32>(1i, -2147483647i), var_3.x, -1535f, 53912i), var_0, Struct_3(var_0, 1288f, vec3<u32>(u_input.b.x, 1u, 1u))).x, 2147483647i), ~(vec4<i32>(-1i, var_1.x, -1i, var_1.x) & vec4<i32>(var_3.x, 2147483647i, -7281i, -2147483647i)), vec4<bool>(var_0, u_input.e.x <= var_1.x, false | var_0, true)));
    return var_3.wxx;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> vec4<i32> {
    var var_0 = func_2() << (u_input.b % vec3<u32>(32u));
    var_0 = countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, _wgslsmith_dot_vec2_i32(arg_0.zx, arg_0.xy << (vec2<u32>(34685u, u_input.b.x) % vec2<u32>(32u))), max(arg_0.x, -arg_0.x)), countOneBits(~(~vec3<i32>(-2147483647i, -2147483647i, 1i)))));
    var var_1 = var_0.x;
    var_1 = firstLeadingBit(_wgslsmith_clamp_i32(select(func_2().x, ~arg_1.x, true), 20499i, 1i) ^ u_input.a);
    var_0 = arg_0;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(~0i, -64431i, arg_0.x, -51569i), -func_4(Struct_1(13665u, -vec2<i32>(arg_1.x, 11626i), -1i, -611f, ~0i), !all(vec4<bool>(false, true, false, true)), Struct_3(true, 398f, _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(4294967295u, 46038u, u_input.b.x)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, 347f, arg_3.d, arg_3.d)), _wgslsmith_div_vec4_f32(vec4<f32>(-518f, -1211f, 2231f, arg_3.d), vec4<f32>(arg_3.d, -1145f, arg_3.d, arg_1.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, arg_1.d, arg_1.d, arg_3.d) - vec4<f32>(1000f, -467f, -1503f, arg_1.d)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2651f, arg_3.d, arg_3.d, -704f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.d, -2012f, arg_1.d, -808f)))))));
    let var_1 = Struct_1(~arg_1.a, vec2<i32>(u_input.d ^ u_input.e.x, _wgslsmith_mod_i32(firstLeadingBit(i32(-1i) * -1i), -countOneBits(78353i))), select(firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.b.x, 0i, arg_0.x), firstTrailingBit(vec3<i32>(arg_3.e, -1i, arg_3.c)))), firstLeadingBit(firstLeadingBit(arg_2)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(398f, 209f) + _wgslsmith_f_op_f32(-2865f * -1308f))), 1829f), select(arg_0.x, -29477i, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)))));
    var var_2 = arg_1.a >> (arg_1.a % 32u);
    let var_3 = all(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, false))), vec2<bool>(true, true), _wgslsmith_sub_u32(54860u, arg_1.a) > (arg_1.a ^ var_1.a)));
    let var_4 = var_1.d;
    return StorageBuffer(vec2<i32>(reverseBits(-func_1(arg_0.xyy, vec2<i32>(-2147483647i, arg_3.c)).x), _wgslsmith_sub_i32(~arg_1.e, i32(-1i) * -28679i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u, vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -2147483647i) | vec2<i32>(0i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.a), u_input.e)), reverseBits(min(vec2<i32>(-25634i, 2147483647i), vec2<i32>(2147483647i, u_input.d)))), max(_wgslsmith_dot_vec2_i32(abs(u_input.e), u_input.e), -min(u_input.a, u_input.d))), _wgslsmith_div_i32(u_input.c, -17396i), 1149f, u_input.a);
    let var_1 = Struct_2(var_0);
    let x = u_input.a;
    s_output = func_5(~func_1(~firstLeadingBit(vec3<i32>(-45746i, -2147483647i, u_input.e.x)), firstTrailingBit(-var_1.a.b)), Struct_1(~(~_wgslsmith_mult_u32(var_0.a, u_input.b.x)), var_1.a.b, reverseBits(var_0.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2114f, var_1.a.d)) * _wgslsmith_f_op_f32(var_0.d * -594f)), var_0.d)), ~(u_input.a & func_4(Struct_1(var_1.a.a, var_0.b, u_input.a, -2011f, var_0.c), false, Struct_3(false, var_1.a.d, vec3<u32>(var_0.a, 10907u, var_1.a.a))).x)), -2147483647i, Struct_1(reverseBits(max(1u, 1u)), _wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, 48918i), u_input.e), var_1.a.c, _wgslsmith_f_op_f32(f32(-1f) * -595f), 20728i));
}

