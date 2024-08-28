struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = -max((_wgslsmith_add_vec4_i32(vec4<i32>(57135i, -51775i, arg_2.c.x, u_input.a.x), vec4<i32>(u_input.a.x, 1i, arg_3, -1i)) & max(vec4<i32>(arg_0.e, arg_2.c.x, arg_0.c.x, arg_3), vec4<i32>(2147483647i, 18874i, -1i, arg_2.e))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, arg_1, 13469u), vec4<u32>(arg_2.a.b, 4294967295u, arg_1, arg_2.a.b) >> (vec4<u32>(1u, 23898u, arg_1, arg_1) % vec4<u32>(32u)), ~vec4<u32>(arg_0.d.c, 7815u, 0u, arg_0.d.b)) % vec4<u32>(32u)), vec4<i32>(~82268i, 4117i, arg_2.e, arg_3));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_1, arg_2.d.b)), vec2<u32>(1u, arg_2.a.b) | select(vec2<u32>(arg_0.d.b, arg_1), vec2<u32>(1u, arg_2.d.b), true)), 44755u) > arg_1;
    var_1 = any(select(select(vec4<bool>(true, arg_0.d.d, arg_2.d.d, true), vec4<bool>(true != arg_0.a.d, true, arg_0.d.d && false, !arg_0.a.d), vec4<bool>(arg_2.a.a.x == arg_2.d.a.x, true, !arg_2.d.d, var_0.x == 12162i)), select(select(select(vec4<bool>(false, arg_0.d.d, false, arg_2.a.d), vec4<bool>(arg_2.d.d, true, arg_2.a.d, true), vec4<bool>(arg_2.a.d, arg_2.d.d, arg_2.d.d, arg_2.a.d)), select(vec4<bool>(true, true, true, arg_0.a.d), vec4<bool>(arg_0.a.d, true, false, arg_2.d.d), vec4<bool>(true, arg_2.a.d, false, true)), arg_2.d.d != arg_2.d.d), !select(vec4<bool>(arg_0.d.d, false, true, arg_0.a.d), vec4<bool>(false, false, false, false), true), arg_2.d.d), !select(vec4<bool>(arg_0.d.d, true, arg_0.d.d, arg_0.d.d), vec4<bool>(arg_0.d.d, false, arg_0.a.d, false), select(vec4<bool>(false, arg_0.d.d, true, arg_0.d.d), vec4<bool>(true, true, arg_2.d.d, arg_2.a.d), arg_0.a.d))));
    let var_2 = Struct_3(Struct_2(arg_0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.b))))), arg_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.a.a))), ~1u, ~firstLeadingBit(arg_1), true), ~(-var_0.x)));
    let var_3 = ~firstLeadingBit(_wgslsmith_mod_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(26773u, var_2.a.a.c, var_2.a.d.c), vec3<u32>(4294967295u, 101147u, 25039u)), ~vec3<u32>(arg_2.a.b, 0u, 4294967295u)), vec3<u32>(arg_2.d.c, abs(0u), ~512u)));
    return arg_2.d.a.x;
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<f32>(1871f, -149f, -1440f), ~70316u, 442u, all(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1238f, -1991f, -152f) + vec3<f32>(1162f, 463f, 272f)), vec3<i32>(0i, 15318i, -25580i), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(273f, -1000f, 1783f) - vec3<f32>(1296f, 1012f, 470f)), firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 0u)), false), u_input.a.x), _wgslsmith_mod_u32(0u, ~108794u), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-446f, -1000f, 157f)), select(22826u, 66886u, true), ~4360u, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(184f, 249f, 590f) * vec3<f32>(535f, -424f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-392f, -2118f, -368f))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(-19597i, -2147483647i, -1i)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(0i, 19994i, 1i), ~vec3<i32>(-24580i, 64399i, -1477i)), Struct_1(vec3<f32>(395f, 1007f, 466f), ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 37281u), vec3<u32>(57060u, 7548u, 1u)), true), -39780i), u_input.a.x)));
    var var_1 = -5795i;
    var_0 = -191f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-274f, -325f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-984f, -717f, 455f) * vec3<f32>(-168f, 738f, 1208f)), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(993f, 701f, 531f))), 1u, ~(~reverseBits(36859u)), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-615f, 2359f, -620f), vec3<f32>(-781f, -384f, 1469f), true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(369f, -2137f, 731f), vec3<f32>(-972f, -934f, 248f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1555f, -1466f, -103f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1237f, -1583f, -181f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2094f, 135f, 622f)), true))))), vec3<i32>(-35297i, 2763i, ~(-40721i)) << (countOneBits(firstLeadingBit(~vec3<u32>(4294967295u, 52158u, 4294967295u))) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(770f, -1490f, 1083f), _wgslsmith_div_vec3_f32(vec3<f32>(-652f, -1000f, -1340f), vec3<f32>(901f, -980f, 964f)))), ~reverseBits(select(4294967295u, 21600u, true)), ~min(_wgslsmith_mult_u32(42931u, 0u), 0u), !any(vec4<bool>(true, true, true, true))), firstLeadingBit(~(~0i)));
    var_1 = reverseBits(~_wgslsmith_sub_i32(-2147483647i, select(var_2.c.x, var_2.e, var_2.a.d))) ^ _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_2.c.x, abs(-8333i), ~(-2147483647i)) << (1u % 32u), firstTrailingBit(-25396i));
    return vec4<bool>(var_2.d.d, !(any(vec2<bool>(true, false)) && !all(vec2<bool>(var_2.d.d, var_2.a.d))), true, !(any(select(vec4<bool>(false, var_2.a.d, false, false), vec4<bool>(var_2.a.d, var_2.d.d, var_2.a.d, true), var_2.a.d)) | !var_2.d.d));
}

fn func_1() -> f32 {
    let var_0 = ~vec4<u32>(~min(~4294967295u, _wgslsmith_div_u32(19356u, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), func_2())), ~(~55170u), abs(~4641u));
    let var_1 = _wgslsmith_div_i32(u_input.a.x ^ 40958i, ~u_input.a.x);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<f32>(-432f, -1047f, -1102f), var_0.x, var_0.x, false), vec3<f32>(-336f, -1032f, 333f), vec3<i32>(6728i, var_1, -2147483647i), Struct_1(vec3<f32>(1286f, 784f, 1000f), 53312u, var_0.x, true), u_input.a.x), _wgslsmith_sub_u32(var_0.x, var_0.x), Struct_2(Struct_1(vec3<f32>(-254f, -1620f, -1938f), var_0.x, 5659u, true), vec3<f32>(-103f, 1473f, -341f), vec3<i32>(var_1, -52718i, var_1), Struct_1(vec3<f32>(-1656f, 804f, 319f), 3835u, 54073u, true), 0i), -50669i)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(826f, -447f)))))), -362f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 18626u), vec2<u32>(5539u, 0u)), _wgslsmith_add_u32(1u, 72475u)), 6425u), 105566u, max(~1u, 56548u)), min(~vec3<u32>(~1u, ~50052u, 1u), ~(~vec3<u32>(1u, 1u, 1u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 267f)));
    var_0 = 0u;
    var var_2 = abs(~select(vec2<i32>(1i, -2147483647i), vec2<i32>(-2473i, i32(-1i) * -17004i), true));
    var var_3 = vec2<u32>(max(reverseBits(4294967295u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23468u, 8242u, 4294967295u, 0u), vec4<u32>(90309u, 4294967295u, 29950u, 0u)) | 1u, 1u)), 1u);
    var_2 = reverseBits(~u_input.a);
    var_2 = u_input.a;
    let var_4 = abs(~vec3<i32>(-var_2.x, var_2.x >> (var_3.x % 32u), 1i) & -select(-vec3<i32>(-6531i, 19110i, 79342i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 9382i, u_input.a.x), vec3<i32>(u_input.a.x, -6642i, u_input.a.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-228f);
}

