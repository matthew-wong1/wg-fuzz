struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_5) -> vec2<u32> {
    let var_0 = Struct_4(Struct_2(vec4<bool>(false, any(vec2<bool>(true, true)), false, arg_0.x >= 655f), -firstTrailingBit(-arg_2.a.a), Struct_1(-53939i)));
    var var_1 = Struct_3(var_0.a.c, countOneBits(vec4<u32>(23163u, 1u, _wgslsmith_mod_u32(~4294967295u, _wgslsmith_sub_u32(25006u, 0u)), firstTrailingBit(4294967295u) ^ 1u)));
    var_1 = Struct_3(arg_2.a, select(vec4<u32>(~(~1105u), 10580u, _wgslsmith_dot_vec3_u32(~vec3<u32>(37929u, var_1.b.x, 2349u), vec3<u32>(4294967295u, 0u, var_1.b.x)), countOneBits(~7939u)), vec4<u32>(_wgslsmith_sub_u32(~14089u, ~22198u), 1u, 0u, var_1.b.x), var_0.a.a));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1589f))));
    return vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_add_u32(var_1.b.x, var_1.b.x), ~_wgslsmith_add_u32(var_1.b.x, 5135u) << (var_1.b.x % 32u)), 4454u);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, arg_1.a.a) << (arg_1.b.yzy % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_1.a.a, -46629i), u_input.a.zwx)), ~u_input.a.zwy), u_input.b) << ((func_3(vec3<f32>(-1468f, _wgslsmith_div_f32(2218f, -801f), -1000f), _wgslsmith_f_op_f32(ceil(-274f)), Struct_5(Struct_1(0i), vec3<f32>(-318f, -578f, -776f))) ^ arg_1.b.zy) % vec2<u32>(32u));
    var_0 = vec2<i32>(_wgslsmith_add_i32(~abs(56758i), firstTrailingBit(_wgslsmith_sub_i32(0i, var_0.x) & _wgslsmith_mult_i32(u_input.a.x, arg_0.a.b))), 1i);
    var_0 = vec2<i32>(u_input.b, abs(var_0.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)));
    var var_2 = ~reverseBits(u_input.a.xx);
    return arg_0.a.a.x;
}

fn func_1() -> i32 {
    let var_0 = select(select(vec4<bool>(true, select(func_2(Struct_4(Struct_2(vec4<bool>(false, false, false, true), u_input.b, Struct_1(u_input.a.x))), Struct_3(Struct_1(18746i), vec4<u32>(0u, 30211u, 4294967295u, 2878u))), true, all(vec4<bool>(false, false, true, true))), true, true), vec4<bool>(true, true, true, true), u_input.a.x >= _wgslsmith_dot_vec2_i32(vec2<i32>(20285i, -2147483647i), firstTrailingBit(vec2<i32>(u_input.a.x, 4618i)))), select(vec4<bool>(true, true, true, true), !vec4<bool>(func_2(Struct_4(Struct_2(vec4<bool>(false, false, false, true), -2147483647i, Struct_1(u_input.a.x))), Struct_3(Struct_1(u_input.a.x), vec4<u32>(55830u, 22107u, 50198u, 92966u))), u_input.b >= -2147483647i, true, true), !((-22809i < u_input.a.x) || false)), vec4<bool>(false, true, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(all(vec2<bool>(true, false)), true, true))));
    var var_1 = Struct_5(Struct_1(1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1702f, -2458f, -209f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1393f, -212f, 1090f) + vec3<f32>(-210f, 254f, 2320f)), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.xyw))))));
    var_1 = Struct_5(var_1.a, var_1.b);
    let var_2 = Struct_4(Struct_2(!select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(var_0, var_0, false), select(vec4<bool>(true, var_0.x, var_0.x, false), var_0, true)), 1i, var_1.a));
    return ~var_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(u_input.a.x, 0i);
    var_0 = _wgslsmith_div_i32(u_input.b, reverseBits(~func_1()) << (~reverseBits(1u) % 32u));
    let var_1 = Struct_3(Struct_1(reverseBits((u_input.a.x & -2147483647i) << (4294967295u % 32u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(32842u, abs(1u), ~46073u, _wgslsmith_dot_vec3_u32(vec3<u32>(46361u, 19472u, 44013u), vec3<u32>(1u, 1u, 4294967295u))), vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 42234u)), ~vec2<u32>(11153u, 4294967295u)), _wgslsmith_div_u32(4294967295u, func_3(vec3<f32>(-244f, -343f, 871f), -345f, Struct_5(Struct_1(2147483647i), vec3<f32>(640f, -1000f, -214f))).x), ~11340u, 20762u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -189f), 2180f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1082f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(715f)))))));
    let var_3 = vec4<bool>(!(0u == var_1.b.x), true, all(vec2<bool>(true, select(true, true, false))), true);
    var var_4 = !select(!var_3.zx, var_3.ww, select(!select(vec2<bool>(var_3.x, false), vec2<bool>(var_3.x, false), var_3.x), var_3.yy, !var_3.xy));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(463f * var_2.x)), 351f, _wgslsmith_f_op_f32(f32(-1f) * -460f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-165f * var_2.x), -2268f, _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, 1036f, -1007f))), vec3<f32>(1059f, 935f, 148f), select(var_3.xzz, vec3<bool>(true, true, var_3.x), var_4.x)))))));
    let var_6 = countOneBits(~(~1u));
    let var_7 = vec4<i32>(-7819i, _wgslsmith_clamp_i32(var_1.a.a, -20612i, -_wgslsmith_div_i32(u_input.b, var_1.a.a | var_1.a.a)), u_input.a.x, firstLeadingBit(var_1.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
}

