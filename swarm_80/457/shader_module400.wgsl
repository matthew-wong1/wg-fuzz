struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-2656i, -1i), vec2<i32>(0i, -41798i), vec2<i32>(2147483647i, -25737i), vec2<i32>(30745i, 2147483647i), vec2<i32>(7926i, -19535i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-24937i, i32(-2147483648)), vec2<i32>(-1i, 57826i), vec2<i32>(-49957i, 46757i), vec2<i32>(20989i, 15558i), vec2<i32>(2147483647i, -1i), vec2<i32>(1674i, 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(30492i, 2030i), vec2<i32>(-15581i, -1i), vec2<i32>(-24375i, 2147483647i), vec2<i32>(46051i, -11807i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), -32804i), vec2<i32>(6738i, 50716i), vec2<i32>(0i, -58354i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-34475i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(1i, -59228i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -18297i), vec2<i32>(-1i, 9253i), vec2<i32>(i32(-2147483648), 66259i), vec2<i32>(0i, 2736i), vec2<i32>(0i, 2147483647i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = u_input.a;
    let var_1 = Struct_3(select(vec4<bool>(true, any(vec2<bool>(true, true)), true, true != (u_input.a != 1u)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true)), true), !select(vec2<bool>(false, var_0 <= 4294967295u), !select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), Struct_1(-(vec3<i32>(-1i) * -vec3<i32>(20221i, u_input.c.x, 28375i)), ~(-90162i), vec4<u32>(~abs(1u), _wgslsmith_add_u32(u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, var_0, 0u)), 1u, abs(4294967295u)), abs(~(35765i << (1u % 32u)))));
    global0 = array<vec2<i32>, 31>();
    let var_2 = _wgslsmith_div_u32(abs(1u), var_0);
    return all(var_1.a);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_4 {
    global0 = array<vec2<i32>, 31>();
    let var_0 = select(!select(vec2<bool>(true, all(vec4<bool>(true, false, false, false))), vec2<bool>(true, func_3()), vec2<bool>(true, true)), vec2<bool>(!(!any(vec4<bool>(false, true, false, true))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)))), select(vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(false, false, false, true)), !select(false, false, true)), select(vec2<bool>(arg_0 > 4294967295u, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = Struct_2(Struct_1(-(~vec3<i32>(0i, -2147483647i, u_input.c.x)), firstTrailingBit(u_input.c.x), firstTrailingBit(countOneBits(~vec4<u32>(arg_1, arg_1, 0u, arg_0))), ~u_input.b), Struct_1(vec3<i32>(u_input.b & 11624i, _wgslsmith_sub_i32(2147483647i, u_input.b), 0i) << (~vec3<u32>(u_input.d.x, arg_0, 55426u) % vec3<u32>(32u)), countOneBits(u_input.c.x), max(~_wgslsmith_add_vec4_u32(vec4<u32>(57885u, arg_0, u_input.d.x, 56380u), vec4<u32>(21641u, 3099u, 9622u, arg_0)), ~max(vec4<u32>(1u, arg_1, 74248u, u_input.a), vec4<u32>(4294967295u, u_input.a, 0u, arg_0))), _wgslsmith_mod_i32(73703i, -(u_input.b ^ 2147483647i))), -653f, Struct_1(~(-vec3<i32>(u_input.b, u_input.c.x, -1167i) | ~vec3<i32>(1i, u_input.b, 9583i)), u_input.c.x, vec4<u32>(~u_input.a, 0u | (arg_0 & 4294967295u), arg_1, 0u), i32(-1i) * -1i), Struct_1(min(abs(vec3<i32>(-17007i, u_input.c.x, u_input.b)) & vec3<i32>(u_input.b, u_input.b, u_input.b), ~vec3<i32>(u_input.b, -7214i, 0i) | vec3<i32>(30078i, 2147483647i, 1i)), 13940i, ~(~vec4<u32>(57212u, 14712u, 1u, arg_1)) | vec4<u32>(1u, 1u, arg_0, 24322u), _wgslsmith_mult_i32(select(u_input.b, u_input.c.x, true), firstTrailingBit(-15321i) << (firstLeadingBit(arg_1) % 32u))));
    let var_2 = Struct_3(select(!select(vec4<bool>(false, var_0.x, true, false), !vec4<bool>(true, var_0.x, var_0.x, false), var_0.x), !(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, false, true), false)), any(vec4<bool>(var_0.x, var_0.x, false, var_0.x))), vec2<bool>(var_0.x, true), Struct_1(~((var_1.a.a & vec3<i32>(-3947i, 79315i, u_input.c.x)) << (var_1.b.c.wzz % vec3<u32>(32u))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, u_input.c.x, 7971i), var_1.b.a), -1518i), var_1.e.c, 12349i));
    var var_3 = Struct_1(-var_2.c.a & ~_wgslsmith_clamp_vec3_i32(var_2.c.a, countOneBits(vec3<i32>(-1i, u_input.c.x, var_2.c.a.x)), ~var_1.d.a), -12647i, var_1.e.c, -var_1.e.a.x << (var_1.a.c.x % 32u));
    return Struct_4(var_1.e);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> f32 {
    let var_0 = countOneBits(min(min(firstLeadingBit(vec4<i32>(arg_2.a.b, -2147483647i, 0i, arg_1.a.b) | vec4<i32>(-1i, 17224i, arg_1.a.a.x, arg_2.a.a.x)), firstTrailingBit(vec4<i32>(1i, u_input.b, u_input.c.x, -2147483647i)) & ~vec4<i32>(1854i, -63845i, arg_2.a.a.x, -21425i)), ~(~(~vec4<i32>(arg_1.a.d, 0i, -24045i, arg_1.a.a.x)))));
    var var_1 = func_2(arg_1.a.c.x, 4294967295u);
    var_1 = arg_2;
    var var_2 = Struct_3(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), any(vec2<bool>(true, false))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), select(true, true, false))), vec2<bool>(true, true), var_1.a);
    var_2 = Struct_3(var_2.a, vec2<bool>(all(var_2.a), -max(var_0.x, var_0.x) >= var_1.a.d), func_2(~u_input.d.x >> (~_wgslsmith_add_u32(arg_2.a.c.x, arg_0) % 32u), _wgslsmith_clamp_u32(firstLeadingBit(~42524u), arg_1.a.c.x, 14590u)).a);
    return _wgslsmith_f_op_f32(-2663f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-675f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-817f, -2720f))))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1413f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-221f, -650f))))), _wgslsmith_f_op_f32(max(-1776f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(35398u, func_2(4294967295u, 23049u), func_2(30382u, u_input.a)))))), 323f);
    var var_1 = 0u;
    var var_2 = vec4<u32>(4294967295u, u_input.a, 28699u, firstLeadingBit(0u));
    let var_3 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, u_input.a > u_input.a, true, false), true), select(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), all(vec3<bool>(true, true, false))), vec4<bool>(any(vec3<bool>(false, false, true)), true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true))), select(vec4<bool>(func_3(), firstTrailingBit(u_input.d.x) >= var_2.x, true, select(false, any(vec2<bool>(false, false)), all(vec3<bool>(false, true, true)))), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, false), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true))));
    let var_4 = Struct_1(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(select(21899i, u_input.b, var_3.x), ~13149i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.c.x, -12388i), vec4<i32>(0i, u_input.b, 70255i, 2147483647i)))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.c.x, u_input.c.x, 1i), vec3<i32>(17480i, u_input.c.x, -1i), var_3.x) | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, 1487i, 0i), vec3<i32>(30320i, u_input.c.x, -22779i), vec3<i32>(u_input.b, 57119i, -70372i)), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.b, u_input.c.x, u_input.b)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 1i), vec3<i32>(-18694i, 2147483647i, u_input.b)), ~vec3<i32>(1i, u_input.c.x, 2147483647i)))), u_input.c.x, ~max(_wgslsmith_add_vec4_u32(vec4<u32>(7254u, 0u, var_2.x, 24944u) ^ vec4<u32>(var_2.x, var_2.x, 70095u, 0u), vec4<u32>(26811u, var_2.x, var_2.x, 1u)), firstTrailingBit(vec4<u32>(21266u, 7621u, 1u, 4294967295u)) & min(vec4<u32>(0u, 16751u, 4294967295u, 26261u), vec4<u32>(u_input.a, var_2.x, var_2.x, 30283u))), _wgslsmith_mod_i32(-11725i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, -2147483647i, u_input.c.x, -53602i)), vec4<i32>(reverseBits(1i), u_input.c.x, 33778i, u_input.c.x))));
    return select(select(var_3.yz, select(var_3.wx, !var_3.wx, var_3.x), false), select(var_3.wx, var_3.xx, all(vec2<bool>(492f == var_0.x, all(vec3<bool>(var_3.x, true, true))))), !var_3.yw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((u_input.d.x & min(u_input.d.x, 4294967295u)) >= 0u);
    var var_1 = Struct_3(vec4<bool>(~(~u_input.a) < 1u, -22951i > u_input.b, var_0, false), func_1(), func_2(4294967295u, 0u).a);
    var var_2 = Struct_3(var_1.a, select(vec2<bool>(any(var_1.a.wwz), true), !select(vec2<bool>(true, true), vec2<bool>(var_1.a.x, true), u_input.a < u_input.a), func_1()), func_2(abs(1u), 1u).a);
    global0 = array<vec2<i32>, 31>();
    let var_3 = Struct_4(Struct_1(-var_2.c.a, firstLeadingBit(-u_input.c.x) | 33292i, var_1.c.c, func_2(~0u, ~1u).a.b));
    global0 = array<vec2<i32>, 31>();
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1439f, -641f, 275f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(286f, -1000f, -383f), vec3<f32>(888f, 314f, -807f))) + vec3<f32>(-870f, 752f, -174f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-613f * -3030f), -164f, _wgslsmith_f_op_f32(846f - 861f)))));
    var var_5 = Struct_3(var_2.a, var_2.b, Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_3.a.a, vec3<i32>(-9136i, 11231i, var_3.a.a.x)), vec3<i32>(7591i, 2147483647i, -2147483647i)), var_1.c.a), -46824i, vec4<u32>(~(~28830u), var_2.c.c.x, 9764u, var_3.a.c.x), _wgslsmith_dot_vec2_i32(~var_1.c.a.zx, select(~vec2<i32>(u_input.b, u_input.c.x), var_2.c.a.xz, vec2<bool>(var_0, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(select(-466f, var_4.x, var_1.b.x))), u_input.b, min(28843i, reverseBits(abs(_wgslsmith_sub_i32(-1i, 10414i)))));
}

