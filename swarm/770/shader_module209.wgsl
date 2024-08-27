struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = vec4<bool>(true, !(true & any(vec3<bool>(true, true, true))), true, select(all(vec2<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(false, true)))), true | (~(-23850i) > max(arg_0.x, 0i)), ~u_input.e.x == u_input.a.x));
    let var_1 = Struct_1(~20352u);
    var var_2 = ~1u;
    var_2 = _wgslsmith_dot_vec2_u32(~u_input.a.xz, vec2<u32>(~(~max(var_1.a, u_input.a.x)), ~((21596u & var_1.a) << ((u_input.a.x << (28465u % 32u)) % 32u))));
    var_2 = reverseBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(~var_1.a, var_1.a), _wgslsmith_div_u32(1u, u_input.e.x)) << (~abs(u_input.a.x ^ var_1.a) % 32u));
    return !(!var_0.xy);
}

fn func_2() -> i32 {
    var var_0 = select(!(!select(vec2<bool>(false, true), func_3(vec4<i32>(-38881i, u_input.c, u_input.b, u_input.d.x)), vec2<bool>(true, true))), select(vec2<bool>(!(0u < u_input.a.x), func_3(vec4<i32>(-1i, 32415i, u_input.d.x, -52993i)).x), vec2<bool>(true, true), true), false);
    let var_1 = -1i;
    var_0 = !vec2<bool>(var_0.x, !var_0.x);
    let var_2 = Struct_1(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.e.wx, u_input.e.yx, ~u_input.e.ww), vec2<u32>(~u_input.e.x, ~16002u))));
    var var_3 = ~vec4<u32>(countOneBits(~countOneBits(var_2.a)), ~(~(~u_input.e.x)), u_input.e.x, 45016u);
    return _wgslsmith_dot_vec2_i32(u_input.d, ~_wgslsmith_mod_vec2_i32(u_input.d, reverseBits(u_input.d) >> (countOneBits(u_input.a.yz) % vec2<u32>(32u))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_2() > select(u_input.b, u_input.d.x, false);
    var_0 = true;
    var_0 = 4294967295u > max(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, ~(u_input.e.www & vec3<u32>(4294967295u, 24719u, u_input.a.x))));
    var var_1 = ~u_input.e.zxz;
    var_1 = u_input.e.xww;
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(u_input.e.xwy >> (u_input.a % vec3<u32>(32u)), vec3<u32>(u_input.e.x, 48108u, 29239u) ^ vec3<u32>(4294967295u, u_input.a.x, u_input.e.x), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(u_input.e.ywy, vec3<u32>(24858u, 50052u, var_1.x))), 16437u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = all(arg_1);
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-268f))));
    var var_2 = ~(~(_wgslsmith_div_u32(_wgslsmith_add_u32(27071u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_3.a, 24254u, var_1.a), u_input.e)) & 1u));
    var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -161f))))));
    let var_3 = 1f;
    return Struct_1(58178u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(func_1(_wgslsmith_f_op_f32(-327f * -1054f)).a, _wgslsmith_div_u32(abs(1u), u_input.e.x)) >= 26152u;
    var var_1 = _wgslsmith_add_i32(~(_wgslsmith_add_i32(1i, -46023i) & max(u_input.c << (4294967295u % 32u), -u_input.c)), _wgslsmith_mult_i32(u_input.c & _wgslsmith_dot_vec2_i32(u_input.d, u_input.d), -5491i));
    var_1 = ~(-2147483647i >> (u_input.e.x % 32u));
    var var_2 = _wgslsmith_dot_vec3_i32((~(~vec3<i32>(u_input.b, 30642i, -77530i)) | -_wgslsmith_mod_vec3_i32(vec3<i32>(1585i, u_input.d.x, -40018i), vec3<i32>(-2147483647i, -14258i, u_input.d.x))) << (vec3<u32>(arg_2, 0u & arg_1.a, firstLeadingBit(_wgslsmith_clamp_u32(0u, arg_1.a, 4294967295u))) % vec3<u32>(32u)), vec3<i32>(0i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(select(-2147483647i, 0i, var_0), u_input.b), -1i, u_input.d.x | select(-19334i, u_input.d.x, var_0)), u_input.d.x));
    var_2 = 10406i;
    return Struct_1(0u | ~_wgslsmith_mod_u32(0u, u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = ~0u;
    var var_2 = Struct_1(u_input.a.x);
    var var_3 = Struct_1(u_input.a.x << (1u % 32u));
    var_3 = Struct_1(4294967295u ^ var_2.a);
    var_3 = func_5(func_4(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false)), vec3<bool>(true || all(vec4<bool>(true, true, true, false)), true, true), true, func_1(-419f)), func_4(!vec3<bool>(true, func_3(vec4<i32>(-32020i, -76239i, -1i, 26907i)).x, all(vec3<bool>(false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true, Struct_1(4294967295u)), _wgslsmith_div_u32(~var_3.a, 4294967295u), firstLeadingBit(4294967295u));
    let var_4 = -_wgslsmith_sub_vec3_i32(vec3<i32>(abs(reverseBits(u_input.d.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, -1i, var_0), vec4<i32>(-1i, -55788i, -2147483647i, 26978i)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.d.x, -1i, 2147483647i), vec3<i32>(7070i, 49883i, u_input.b)), min(vec3<i32>(0i, u_input.d.x, -2147483647i), vec3<i32>(-3329i, -1i, 1i)))), ~vec3<i32>(~1i, ~(-9749i), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(378f, -1049f, false)), 633f, _wgslsmith_f_op_f32(1200f * -663f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1163f, _wgslsmith_f_op_f32(f32(-1f) * -265f), 1f)))), _wgslsmith_f_op_f32(-762f * -430f), _wgslsmith_mult_vec3_i32(reverseBits(var_4), -var_4), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(108f, 319f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1648f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-477f)), 1303f)));
}

