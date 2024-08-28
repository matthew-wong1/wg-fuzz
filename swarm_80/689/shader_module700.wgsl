struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(arg_0);
    let var_1 = u_input.a;
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_f32(149f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(273f - 134f) - _wgslsmith_f_op_f32(ceil(1602f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(785f)) + -1000f))));
    let var_4 = arg_0;
    return var_0;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-813f + _wgslsmith_f_op_f32(-393f + 1043f)), _wgslsmith_div_f32(643f, -747f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 945f)) + _wgslsmith_f_op_f32(1494f - 1221f)))));
    var var_1 = any(vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -570f)) >= 660f, false == !any(vec3<bool>(false, false, true))));
    let var_2 = vec2<i32>(-32614i, countOneBits(_wgslsmith_sub_i32(u_input.b.x, 2549i)));
    var_1 = true;
    let var_3 = Struct_1(firstTrailingBit(reverseBits(u_input.b)));
    return max(var_2.x, u_input.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, -431f)))))) + vec2<f32>(1f, _wgslsmith_f_op_f32(-590f + -2284f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(-1839f, 168f)), -1708f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -387f)))));
    let var_2 = max(arg_0.a.a, countOneBits(select(vec3<i32>(arg_1, -54164i, arg_0.a.a.x), countOneBits(vec3<i32>(arg_0.a.a.x, -2147483647i, arg_0.a.a.x)), vec3<bool>(true, true, true)))) | firstLeadingBit(_wgslsmith_mod_vec3_i32(max(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(arg_1, 0i, -40322i)), vec3<i32>(0i, 12841i, arg_1)), abs(vec3<i32>(-23463i, -2147483647i, 6593i))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-393f)), var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(367f))) * var_1.x))), -538f);
    let var_4 = Struct_2(arg_0.a);
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-481f)) + _wgslsmith_f_op_f32(func_4(arg_0, (_wgslsmith_dot_vec2_i32(arg_0.a.a.xz, vec2<i32>(2147483647i, arg_0.a.a.x)) & func_3(arg_0.a.a.yy, arg_0, Struct_2(arg_0.a))) & u_input.b.x)));
    return vec2<u32>(u_input.a.x, u_input.a.x);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<f32>) -> StorageBuffer {
    var var_0 = arg_1.x;
    let var_1 = vec4<bool>(!(193f != arg_1.x), !select(arg_0.x <= (25196u ^ arg_0.x), all(vec4<bool>(false, true, false, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), !((_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.wz) & _wgslsmith_div_u32(27954u, u_input.a.x)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 46342u), vec2<u32>(arg_0.x, arg_0.x))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(18783i, u_input.b.x), u_input.b.x), func_1(Struct_1(u_input.b)).a.a.x, ~u_input.b.x) >= -2147483647i);
    let var_2 = !(!any(var_1.www) && var_1.x);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x * -990f), _wgslsmith_f_op_f32(arg_1.x + arg_1.x)));
    let var_3 = -1i;
    return StorageBuffer(u_input.a, u_input.a.xyz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, true, !any(vec4<bool>(true, false, false, true))), vec3<bool>(any(vec2<bool>(true, true)), !any(vec2<bool>(false, false)), 1u <= u_input.a.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_1 = u_input.a.x;
    let var_2 = u_input.b;
    var var_3 = Struct_1(~(vec3<i32>(var_2.x, firstLeadingBit(0i), 2147483647i) ^ vec3<i32>(firstTrailingBit(var_2.x), var_2.x, u_input.b.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_5 = var_0.x;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_clamp_vec2_u32(min(func_2(func_1(Struct_1(var_3.a))), vec2<u32>(~u_input.a.x, 1u)), ~_wgslsmith_mult_vec2_u32(func_2(Struct_2(Struct_1(u_input.b))), countOneBits(vec2<u32>(u_input.a.x, 98362u))), _wgslsmith_mod_vec2_u32(~firstTrailingBit(u_input.a.yw), _wgslsmith_add_vec2_u32(~vec2<u32>(12619u, 1u), u_input.a.wx))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(-1174f, _wgslsmith_f_op_f32(-1210f + var_4.x))), _wgslsmith_f_op_f32(-var_4.x)))));
}

