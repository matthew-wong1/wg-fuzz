struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = 1i;
    var var_1 = 1u;
    var var_2 = Struct_1(vec3<u32>(89750u, countOneBits(1u), 43702u), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 59311i, 57763i, -2147483647i), vec4<i32>(0i, u_input.b.x, -9437i, u_input.b.x))), min(vec2<i32>(var_0, u_input.b.x), vec2<i32>(u_input.b.x, var_0)) ^ min(~u_input.a.xy, -u_input.b)));
    var_2 = Struct_1(vec3<u32>(0u, var_2.a.x, var_2.a.x ^ 4294967295u), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(select(var_0, 2147483647i, true), abs(var_2.b), _wgslsmith_sub_i32(2147483647i, 10281i))), u_input.a));
    var var_3 = vec2<i32>(~var_0, abs(var_2.b));
    return reverseBits(var_2.a.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = vec3<u32>(~abs(_wgslsmith_sub_u32(reverseBits(46963u), arg_0.x)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(min(arg_0.x, ~4294967295u), func_3()), 0u), func_3() >> (0u % 32u));
    var var_1 = var_0.x;
    var_1 = var_0.x;
    var_1 = firstLeadingBit(~reverseBits(arg_0.x));
    var_1 = 56970u;
    return Struct_1(vec3<u32>(firstTrailingBit(countOneBits(arg_0.x)), 47760u, 3284u), u_input.b.x);
}

fn func_1() -> Struct_1 {
    let var_0 = -322f;
    var var_1 = func_2(abs(vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = !(!(min(var_1.b, 2147483647i) >= _wgslsmith_sub_i32(-61569i, -2147483647i))) | any(vec4<bool>(any(vec4<bool>(true, true, true, true)), var_1.b == _wgslsmith_mod_i32(u_input.b.x, -2147483647i), -var_1.b > -1i, true));
    var var_3 = func_2(abs(~min(vec4<u32>(4294967295u, 14211u, 20212u, 50371u) ^ vec4<u32>(var_1.a.x, var_1.a.x, 0u, var_1.a.x), select(vec4<u32>(var_1.a.x, 85916u, 4013u, var_1.a.x), vec4<u32>(var_1.a.x, 1u, var_1.a.x, 57796u), vec4<bool>(true, false, true, true)))));
    var_2 = false;
    return func_2(~max(vec4<u32>(~0u, var_1.a.x & 11743u, _wgslsmith_dot_vec2_u32(var_1.a.xy, var_3.a.zx), var_1.a.x), vec4<u32>(55940u << (var_3.a.x % 32u), var_3.a.x, ~0u, 65901u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = arg_0.a.x;
    let var_1 = !(arg_1.x < _wgslsmith_f_op_f32(-arg_1.x)) == ((firstTrailingBit(arg_0.b) < u_input.b.x) && !any(vec3<bool>(true, true, true)));
    let var_2 = select(arg_1.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f) + arg_1.x), var_1, any(vec2<bool>(!(var_0 == 51345u), all(select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), var_1)))));
    let var_3 = arg_0;
    var var_4 = arg_1.x;
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec2<i32> {
    var var_0 = vec2<bool>(((true | any(vec4<bool>(false, true, true, false))) && true) && true, select(all(vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, true)), false, true & any(vec4<bool>(true, true, false, false))));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x ^ arg_1.a.x, ~firstLeadingBit(41266u)), select(func_1().a, reverseBits(arg_1.a), vec3<bool>(false | all(vec4<bool>(var_0.x, false, var_0.x, false)), var_0.x, false)));
    var_0 = !(!select(vec2<bool>(false, false), !select(vec2<bool>(var_0.x, false), vec2<bool>(false, false), var_0.x), vec2<bool>(var_0.x, !var_0.x)));
    var var_2 = func_2(_wgslsmith_div_vec4_u32(select(vec4<u32>(38580u, 1u, ~arg_1.a.x, func_3()), ~max(vec4<u32>(21378u, 18337u, 1u, 0u), vec4<u32>(106912u, 0u, 55342u, arg_1.a.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, false)), (_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.a.x, var_1, var_1), vec4<u32>(1u, 12739u, 1u, 1u)) >> (firstLeadingBit(vec4<u32>(arg_1.a.x, var_1, arg_1.a.x, 1u)) % vec4<u32>(32u))) ^ vec4<u32>(4294967295u, ~arg_1.a.x, _wgslsmith_div_u32(var_1, var_1), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 4294967295u, var_1), vec3<u32>(arg_1.a.x, 4294967295u, var_1)))));
    let var_3 = arg_2;
    return reverseBits(abs(u_input.a.xy)) ^ u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1786f, 534f)) + -999f))), func_4(func_1(), vec3<f32>(-1000f, -1656f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1047f + -1478f) - _wgslsmith_f_op_f32(f32(-1f) * -728f)))), 1000f, -297f);
    let var_1 = vec4<bool>(true, true, true, true);
    var_0 = _wgslsmith_div_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(~u_input.a.yz, u_input.a.yx));
    var_0 = vec2<i32>(select(2147483647i, firstTrailingBit(-u_input.b.x), !var_1.x == true), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-40629i, u_input.b.x, -37906i, var_0.x), vec4<i32>(var_0.x, var_0.x, 6274i, u_input.b.x), vec4<i32>(u_input.a.x, -2147483647i, 18225i, -10107i))), -vec4<i32>(1i, 1i, -2147483647i, -1i)), u_input.a.x));
    var var_2 = select(vec4<bool>(true, true, any(var_1), !any(select(var_1.xx, vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x)))), select(var_1, vec4<bool>(false, true, ~u_input.a.x >= _wgslsmith_mult_i32(23579i, u_input.b.x), var_1.x), var_1), vec4<bool>(any(select(!var_1.wy, select(var_1.xz, var_1.zw, vec2<bool>(var_1.x, true)), true)), (true | all(var_1.zzy)) && any(vec3<bool>(false, var_1.x, var_1.x)), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(67496u, ~(~62366u))));
}

