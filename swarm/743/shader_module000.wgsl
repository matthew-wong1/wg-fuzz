struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = Struct_1(40131u, abs(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.e.x, u_input.a.x, u_input.b, -68697i), ~u_input.a) >> (countOneBits(vec4<u32>(0u, 1u, u_input.c, u_input.c)) % vec4<u32>(32u))), u_input.e.x <= _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(u_input.a.yw, u_input.e.xz, true), _wgslsmith_div_vec2_i32(u_input.e.yy, u_input.e.zx)), vec2<i32>(select(2147483647i, -1i, false), u_input.a.x)), -abs(_wgslsmith_add_vec2_i32(vec2<i32>(-44886i, -1i), vec2<i32>(62851i, u_input.a.x))) ^ ~vec2<i32>(-u_input.b, u_input.e.x));
    let var_1 = arg_0.x;
    let var_2 = ~0u;
    var var_3 = var_0;
    var_3 = var_0;
    return reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-var_0.b.x, _wgslsmith_dot_vec2_i32(var_0.d, u_input.e.yx), min(-2147483647i, -39332i)), var_3.b.xzx) >> ((firstTrailingBit(~vec3<u32>(var_3.a, 80638u, u_input.c)) << (~vec3<u32>(4294967295u, var_3.a, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_vec3_i32(u_input.e, _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.d, 24479i, u_input.a.x), func_3(vec2<f32>(733f, -606f)))) & ~select(vec3<i32>(countOneBits(u_input.a.x), select(-29068i, -14727i, false), 16586i), _wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, u_input.a.x, u_input.b), _wgslsmith_div_vec3_i32(u_input.a.yzx, u_input.e)), vec3<bool>(false, !arg_0.x, true));
    var var_1 = Struct_2(vec3<f32>(1269f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-917f, 1427f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(531f, _wgslsmith_f_op_f32(f32(-1f) * -673f)) + -1327f)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)));
    let var_3 = _wgslsmith_f_op_f32(-var_2.a.x);
    var var_4 = 529f;
    return Struct_1(u_input.c, u_input.a, !(true || arg_0.x), select(var_0.zz >> (vec2<u32>(_wgslsmith_add_u32(u_input.c, 4294967295u), ~u_input.c) % vec2<u32>(32u)), vec2<i32>(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, 25973i, var_0.x) & u_input.a, select(u_input.a, u_input.a, arg_0.x))), !(!(var_3 <= 995f))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1981f, 1095f, 1377f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-375f, -711f, -946f), vec3<f32>(-918f, -910f, 1295f), vec3<bool>(arg_2.c, false, false)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(122f, 1049f, 336f), vec3<f32>(-1219f, -443f, 1904f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1408f, 215f, 330f), vec3<f32>(-1378f, 1000f, 848f)))) - vec3<f32>(_wgslsmith_f_op_f32(-1000f + 1046f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1938f * -221f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-789f + 814f))))));
    let var_1 = ~(~select(~(~vec2<u32>(u_input.c, u_input.c)), ~firstLeadingBit(vec2<u32>(arg_1.a, 64619u)), select(vec2<bool>(arg_1.c, arg_1.c), select(vec2<bool>(arg_1.c, false), vec2<bool>(arg_2.c, false), true), vec2<bool>(arg_1.c, true))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_f_op_f32(sign(-250f)), _wgslsmith_f_op_f32(step(-573f, _wgslsmith_div_f32(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1242f, 1116f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 286f, var_0.a.x))))));
    let var_3 = func_2(vec3<bool>(true, true, any(!select(vec4<bool>(false, arg_2.c, arg_2.c, false), vec4<bool>(false, arg_1.c, true, arg_2.c), arg_1.c))));
    let var_4 = func_2(select(!vec3<bool>(arg_1.c, true, arg_1.b.x == arg_0.x), vec3<bool>(!arg_2.c, select(all(vec2<bool>(false, arg_2.c)), select(arg_2.c, false, true), var_3.c), var_3.c), vec3<bool>(true, true, var_3.c))).b;
    return var_2;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(vec2<i32>(2147483647i, 0i), Struct_1(_wgslsmith_add_u32(~5979u, ~reverseBits(u_input.c)), ~(~u_input.a) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(11514u, u_input.c, 1u, u_input.c), vec4<u32>(u_input.c, 0u, 1u, 58532u)) % vec4<u32>(32u)), true, -vec2<i32>(u_input.b & u_input.d, reverseBits(-1i))), func_2(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), _wgslsmith_sub_vec4_i32(u_input.a, -vec4<i32>(u_input.a.x & -25061i, i32(-1i) * -1i, 1i, func_3(vec2<f32>(-1523f, -126f)).x)));
    var var_1 = u_input.a;
    var var_2 = var_0.a.yz;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.zx * _wgslsmith_f_op_vec2_f32(-var_0.a.xx)) + vec2<f32>(351f, var_0.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, 134f), var_0.a.yy), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, 1000f), vec2<f32>(var_2.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(-var_0.a.zz))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.zz * _wgslsmith_f_op_vec2_f32(select(var_0.a.xy, vec2<f32>(497f, -348f), vec2<bool>(true, false)))) * vec2<f32>(_wgslsmith_f_op_f32(695f + var_0.a.x), _wgslsmith_f_op_f32(var_2.x * -454f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_2.x, -672f), _wgslsmith_f_op_f32(-var_2.x)) + var_0.a.zz) * var_0.a.yz));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(countOneBits(74418u), u_input.c), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(100530u, u_input.c)), ~(~vec2<u32>(u_input.c, u_input.c))) | (u_input.c >> (u_input.c % 32u)));
    let var_2 = _wgslsmith_mod_u32(~1u, firstLeadingBit(u_input.c));
    let var_3 = func_1();
    var var_4 = func_2(select(vec3<bool>(true, _wgslsmith_f_op_f32(var_3.a.x - var_3.a.x) != var_0.a.x, true), !vec3<bool>(any(vec4<bool>(true, false, false, true)), true, any(vec4<bool>(true, false, false, true))), select(_wgslsmith_dot_vec2_i32(u_input.a.wz, u_input.e.zx) < max(u_input.d, u_input.b), all(vec2<bool>(true, true)), 507f > _wgslsmith_f_op_f32(-var_0.a.x))));
    var var_5 = func_2(vec3<bool>(var_4.c, false, true));
    var_1 = _wgslsmith_div_vec2_u32(max(vec2<u32>(52122u, var_2), (vec2<u32>(var_2, 15818u) | vec2<u32>(22422u, 49921u)) | (vec2<u32>(var_1.x, var_2) | ~vec2<u32>(42305u, var_2))), min(vec2<u32>(var_5.a, firstTrailingBit(var_1.x) | reverseBits(1u)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 47072u) & _wgslsmith_sub_vec2_u32(vec2<u32>(var_2, 0u), vec2<u32>(32295u, var_5.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.c) ^ vec2<u32>(u_input.c, 56558u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_5.a, var_4.a), vec2<u32>(0u, 12156u))))));
    let var_6 = select(max(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_5.a, var_4.a), ~vec3<u32>(var_5.a, 117478u, 53739u)) ^ (~vec3<u32>(var_2, 1u, 0u) & ~vec3<u32>(1u, var_2, var_1.x)), firstTrailingBit(~(~vec3<u32>(49535u, var_2, 33315u)))), ~select(min(firstLeadingBit(vec3<u32>(110967u, var_1.x, var_2)), select(vec3<u32>(var_2, 18097u, 9050u), vec3<u32>(8761u, var_4.a, 642u), var_4.c)), vec3<u32>(firstTrailingBit(var_2), max(var_5.a, var_2), u_input.c), select(vec3<bool>(var_5.c, true, var_4.c), vec3<bool>(false, var_4.c, var_5.c), true && var_4.c)), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-403f)) + _wgslsmith_f_op_f32(1074f + var_0.a.x)) == var_0.a.x) && false);
    var var_7 = ~var_6;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(reverseBits(0i), (var_5.d.x << ((0u & var_1.x) % 32u)) & -2003i), var_5.a, vec3<f32>(282f, _wgslsmith_f_op_f32(794f * func_1().a.x), _wgslsmith_f_op_f32(-var_0.a.x)), ~(var_4.b.x << (~0u % 32u)));
}

