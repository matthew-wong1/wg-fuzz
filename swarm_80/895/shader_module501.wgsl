struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> bool {
    return false;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.b.x;
    let var_1 = !(26269u > arg_1);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(422f + 667f)))) >= -1456f, arg_2.b, vec2<u32>(1u, ~u_input.c));
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = select(!vec4<bool>(!var_0.x, all(!vec4<bool>(var_0.x, var_0.x, false, true)), false, any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.yxz, false))), vec4<bool>(var_0.x, var_0.x, any(var_0.xyx), true), vec4<bool>(all(var_0.wzx) || true, var_0.x, arg_0.x != ~u_input.b.x, all(var_0.wxy)));
    var_0 = vec4<bool>(any(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, false, u_input.c <= 10509u, !var_0.x), vec4<bool>(true, false, var_0.x, false & var_0.x))), true, true, var_0.x);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)), 719f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(279f)))))), Struct_1(false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(422f, 1000f, 779f))) - vec3<f32>(1032f, -1110f, -810f)), vec3<f32>(_wgslsmith_f_op_f32(1000f + -1153f), _wgslsmith_f_op_f32(1558f + 802f), _wgslsmith_f_op_f32(abs(-622f)))), vec2<u32>(firstLeadingBit(~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 1u) | vec4<u32>(1u, 0u, 35637u, u_input.a), ~vec4<u32>(1u, u_input.c, 33113u, 0u)))), i32(-1i) * -u_input.d.x, Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-936f, -578f, 208f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1710f, -815f, 1000f) - vec3<f32>(1125f, 1000f, 554f)), var_0.yyz))), ~vec2<u32>(1u, ~4294967295u)), func_3(!(!func_2()), firstTrailingBit(firstLeadingBit(0u) | select(1u, u_input.c, var_0.x)), Struct_1(true | var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1882f, 1460f, 1269f)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 3086u)), abs(u_input.a)))));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.b.b.zz))) - vec2<f32>(_wgslsmith_div_f32(-1776f, var_1.a.x), -860f)) + var_1.a), Struct_1(any(select(select(vec2<bool>(true, var_0.x), var_0.xy, var_1.d.a), vec2<bool>(var_0.x, var_1.b.a), !vec2<bool>(false, var_1.d.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.b.x, _wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(exp2(var_1.a.x)))), ~(~_wgslsmith_mult_vec2_u32(var_1.b.c, vec2<u32>(u_input.c, var_1.b.c.x)))), abs(abs(min(arg_0.x, 2147483647i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.b.c.x), vec2<u32>(4294967295u, 57310u)) % 32u))), func_3(true, u_input.a, func_3(all(select(var_0.ywz, vec3<bool>(false, true, var_1.b.a), var_1.b.a)), ~var_1.b.c.x, var_1.b)), func_3(-205f == var_1.a.x, firstLeadingBit(var_1.e.c.x), Struct_1(!all(var_0.wxy), vec3<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(select(495f, 1222f, false)), _wgslsmith_f_op_f32(-var_1.e.b.x)), var_1.d.c)));
    return Struct_4(arg_0.x, select(vec2<u32>(~1u, u_input.c), vec2<u32>(u_input.a, max(9138u, u_input.c)) & vec2<u32>(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(31129u, 0u), var_1.e.c)), !var_0.xx), func_3(true, u_input.c ^ ~(~5524u), Struct_1(true, _wgslsmith_f_op_vec3_f32(ceil(var_1.d.b)), vec2<u32>(~u_input.a, 0u))).b.x, Struct_2(_wgslsmith_f_op_vec2_f32(trunc(var_1.d.b.xx)), var_1.e, abs(u_input.d.x), func_3(any(vec3<bool>(true, var_0.x, var_0.x)), var_1.e.c.x, var_1.e), var_1.e), ~(~var_1.e.c));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_4) -> u32 {
    let var_0 = -21652i;
    return abs(~4678u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(u_input.d.x | -u_input.b.x, -2147483647i, u_input.b.x, _wgslsmith_mult_i32(i32(-1i) * -u_input.b.x, 0i));
    var var_1 = (u_input.d.xx << (vec2<u32>(10262u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 36978u, u_input.a, u_input.c), vec4<u32>(u_input.a, u_input.a, 11384u, 0u)), u_input.c ^ u_input.a)) % vec2<u32>(32u))) ^ var_0.yx;
    var_0 = ~vec4<i32>(-2147483647i, ~var_0.x, -var_0.x, var_0.x);
    var var_2 = func_4(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1451f * 272f)), -1345f)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, u_input.a), u_input.c), _wgslsmith_clamp_u32(u_input.a, abs(u_input.c), 4294967295u), u_input.a, _wgslsmith_sub_u32(firstLeadingBit(4294967295u), u_input.a)), func_1(~(~u_input.b))) == 1u;
    let var_3 = Struct_1(!(~u_input.a != _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(20063u, u_input.c, u_input.a, 4294967295u), vec4<u32>(u_input.c, u_input.c, 29022u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.c), vec4<u32>(80512u, 4294967295u, 12704u, 53908u), vec4<u32>(392u, 0u, u_input.c, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1347f, _wgslsmith_div_f32(792f, -246f), _wgslsmith_f_op_f32(f32(-1f) * -926f))))), func_1(var_0.xyz).d.e.c);
    var var_4 = func_1(vec3<i32>(63548i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(var_1.x, var_1.x, -68676i, -11601i)), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x) | vec4<i32>(var_0.x, 0i, -39008i, 44379i)), -vec4<i32>(2147483647i, -37574i, 2147483647i, u_input.b.x)), 2147483647i)).d;
    let var_5 = var_3.a;
    var var_6 = _wgslsmith_div_vec3_u32(vec3<u32>(3499u, ~u_input.c, max(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_3.c.x, 4294967295u), ~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(11627u, 22862u, 0u) & vec3<u32>(22772u, u_input.a, 28160u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 1u, var_4.b.c.x), vec3<u32>(1u, 0u, var_4.b.c.x))))), abs(vec3<u32>(firstTrailingBit(59789u) << (~60701u % 32u), reverseBits(58581u), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx << (~(~(vec2<u32>(25533u, var_4.b.c.x) & var_6.xx)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(-2147483647i), firstTrailingBit(2147483647i)), vec2<i32>(-(~var_0.x), u_input.b.x)), var_4.d.b);
}

