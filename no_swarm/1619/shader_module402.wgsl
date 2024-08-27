struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1294f, -279f)) + vec2<f32>(arg_0, arg_0)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f - arg_0) * _wgslsmith_f_op_f32(select(arg_0, -1514f, true))), _wgslsmith_f_op_f32(arg_0 + 1000f))));
    return abs(_wgslsmith_div_i32((arg_1.a.x | arg_1.a.x) | -30200i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, arg_1.a.x, -61603i), arg_1.a))));
}

fn func_2() -> bool {
    var var_0 = -reverseBits(~(~vec4<i32>(-6347i, -16400i, -39953i, -1i)));
    let var_1 = Struct_2(~firstTrailingBit(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(func_3(-1000f, Struct_1(vec4<i32>(var_0.x, var_0.x, -2147483647i, 2147483647i))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(1i, var_0.x, var_0.x))), -(~var_0.x)), ~(-var_0.x) << (reverseBits(u_input.a.x) % 32u)), ~1u, Struct_1(-(-vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i) ^ -vec4<i32>(var_0.x, 7703i, -2147483647i, 14132i))));
    let var_2 = 40055i;
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>((i32(-1i) * -30229i) >> (1u % 32u), var_0.x, abs(0i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-24358i, 0i), var_0.xw)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_2, -1i, var_1.b, -1i) & vec4<i32>(var_2, 2377i, var_1.d.a.x, 39520i)), reverseBits(select(vec4<i32>(var_2, 1i, -2147483647i, -57541i), var_1.d.a, vec4<bool>(false, false, false, false))))));
    var_3 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(var_2, 16799i, select(var_2, ~var_1.b, true), var_1.b), var_3.a));
    return all(vec2<bool>(select(true, any(vec4<bool>(false, false, false, false)), !any(vec3<bool>(false, true, false))), false));
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    var_0 = func_2();
    var_0 = !(!(!(!all(vec4<bool>(true, false, false, true)))));
    var_0 = ~(-(reverseBits(2147483647i) << ((u_input.a.x >> (u_input.a.x % 32u)) % 32u))) <= 10683i;
    var_0 = _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(1i, 0i, 1i)))), select(-_wgslsmith_mult_vec3_i32(vec3<i32>(13779i, 0i, 1i), vec3<i32>(-27154i, 0i, 1i)), vec3<i32>(firstLeadingBit(14918i), _wgslsmith_mult_i32(-34031i, 47387i), ~0i), true)) > func_3(_wgslsmith_f_op_f32(floor(386f)), Struct_1(-vec4<i32>(1i, 0i, -49272i, 4702i)));
    return Struct_1(select(-min(vec4<i32>(1i, -1i, 2147483647i, 30397i), vec4<i32>(13951i, 1i, 16003i, 24600i)), ~firstTrailingBit(vec4<i32>(5462i, 2147483647i, -1i, 2147483647i)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true)) << (u_input.a % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-411f, 709f), _wgslsmith_div_vec2_f32(vec2<f32>(1674f, 966f), vec2<f32>(-580f, -936f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-257f, -1330f) + vec2<f32>(1154f, 1638f)) - vec2<f32>(383f, 153f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, -467f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_2 = Struct_2(vec3<u32>(select(u_input.a.x, reverseBits(u_input.a.x), true) & ((29738u | u_input.a.x) << (106034u % 32u)), ~_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x), 1u), 0i, ~(~(13125u << (1u % 32u))), func_1());
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(~vec4<u32>(1u, u_input.a.x, var_2.a.x, var_2.c)), ~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(var_2.a.x), ~var_2.c, 1699u), u_input.a.wwx) >> (var_2.c % 32u));
    var_1 = vec2<f32>(-410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))));
    let var_4 = Struct_2(~u_input.a.xxz | reverseBits(_wgslsmith_sub_vec3_u32(var_2.a, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 52076u), var_2.a))), var_2.d.a.x, ~1u | u_input.a.x, Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.a, var_2.d.a), -var_0.a), _wgslsmith_mult_vec4_i32(var_0.a, -vec4<i32>(-1i, var_0.a.x, var_2.b, var_0.a.x)))));
    let var_5 = var_2.b < (~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(5271i, 1468i, -7597i), var_4.b) ^ _wgslsmith_mod_i32(func_1().a.x, 17234i));
    var var_6 = var_4;
    var var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~(func_3(var_1.x, var_6.d) >> (var_2.c % 32u)), 0i, 0i), select(select(vec2<u32>(34048u, 4294967295u) << (vec2<u32>(var_3, 4294967295u) % vec2<u32>(32u)), u_input.a.zz, !vec2<bool>(var_5, true)), var_7.a.xz, !select(vec2<bool>(true, var_5), vec2<bool>(var_5, var_5), vec2<bool>(false, var_5))) | max(_wgslsmith_clamp_vec2_u32(var_2.a.xx, var_2.a.zy, _wgslsmith_div_vec2_u32(var_2.a.xy, vec2<u32>(32852u, var_4.a.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_6.a.x), var_6.a.xy))), -vec2<i32>(var_0.a.x, countOneBits(var_4.b) ^ -var_6.d.a.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1544f, -557f) * vec2<f32>(610f, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(225f, var_1.x) - vec2<f32>(var_1.x, 536f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, -975f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1245f, var_1.x)))))));
}

