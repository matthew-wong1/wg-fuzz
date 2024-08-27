struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> vec2<u32> {
    var var_0 = u_input.c;
    let var_1 = true;
    var var_2 = arg_2;
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 33894u, 4294967295u), abs(_wgslsmith_add_vec3_u32(~abs(vec3<u32>(0u, 20895u, 14540u)), select(vec3<u32>(u_input.c, 16035u, 0u), vec3<u32>(u_input.b, arg_1.c, u_input.b), u_input.c == arg_1.a.a.x))));
    var_2 = 1212f;
    return vec2<u32>(u_input.c, var_3);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = Struct_4(Struct_1(func_3(true && all(vec2<bool>(false, false)), Struct_2(Struct_1(vec2<u32>(30422u, 1u), false), ~vec2<i32>(15988i, 11880i), select(4294967295u, u_input.b, false), _wgslsmith_dot_vec3_i32(vec3<i32>(-10267i, u_input.d.x, u_input.a.x), vec3<i32>(44i, 22315i, u_input.d.x))), -1860f), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1016f, 1330f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1810f, 241f))), false))))), vec4<bool>(select(select(true, any(vec2<bool>(false, true)), false), false, all(vec3<bool>(true, true, true))), false, _wgslsmith_f_op_f32(floor(-104f)) != _wgslsmith_f_op_f32(floor(-521f)), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), true))));
    var var_2 = abs(reverseBits(1u));
    let var_3 = -515f;
    var_0 = -1714f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_4(Struct_1(vec2<u32>(u_input.c, firstLeadingBit(_wgslsmith_add_u32(arg_2.x, arg_2.x))), select(any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), any(vec3<bool>(false, false, false)), true)), vec2<f32>(795f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(arg_1.x, -1544f)))), select(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)), select(vec4<bool>(arg_2.x <= arg_2.x, true, true, true), vec4<bool>(true, true, true, true), select(true, true, any(vec3<bool>(false, true, false)))), all(vec2<bool>(true, true)) != true));
    let var_1 = Struct_4(Struct_1(_wgslsmith_mult_vec2_u32(~arg_2.yy >> (reverseBits(var_0.a.a) % vec2<u32>(32u)), ~min(vec2<u32>(var_0.a.a.x, 0u), vec2<u32>(u_input.c, u_input.b))), (all(var_0.c.ywx) & any(vec2<bool>(var_0.c.x, true))) | true), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(159f * var_0.b.x))))), var_0.b.x), select(!(!vec4<bool>(var_0.c.x, false, var_0.c.x, true)), !select(!var_0.c, !var_0.c, var_0.c), select(u_input.d.x > u_input.a.x, false, var_0.c.x)));
    var var_2 = _wgslsmith_mult_vec4_i32((select(vec4<i32>(2478i, 22238i, arg_0.x, 13957i) >> (vec4<u32>(0u, 11718u, 36234u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-44122i, -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(-1i, arg_0.x, -2147483647i, -41569i)), !var_0.c) ^ _wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.x, arg_0.x, -26389i, 0i), ~vec4<i32>(-1i, -30460i, -1i, arg_0.x))) << (~(~(~vec4<u32>(66750u, 0u, 104782u, arg_2.x))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-countOneBits(select(vec4<i32>(u_input.a.x, u_input.d.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.d.x, u_input.d.x, arg_0.x), var_0.c)), (~vec4<i32>(-2147483647i, 2147483647i, arg_0.x, arg_0.x) << (min(vec4<u32>(u_input.c, arg_2.x, 0u, 0u), vec4<u32>(55027u, var_1.a.a.x, 73126u, 10242u)) % vec4<u32>(32u))) | reverseBits(vec4<i32>(arg_0.x, -28793i, 10489i, 77684i))));
    var_2 = select(-select(~vec4<i32>(-16444i, 0i, 1i, u_input.a.x), vec4<i32>(24904i, var_2.x, u_input.d.x, arg_0.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.a.x, arg_2.x, 31748u, u_input.c), vec4<u32>(23201u, var_0.a.a.x, var_1.a.a.x, var_0.a.a.x), vec4<u32>(0u, var_0.a.a.x, 4294967295u, 30004u)) % vec4<u32>(32u)), var_1.c), ~(vec4<i32>(-1i) * -vec4<i32>(var_2.x, 0i, -2147483647i, -1i)), var_1.c.x);
    let var_3 = firstTrailingBit(~0u);
    return Struct_3(vec4<u32>(~u_input.c, arg_2.x | max(var_0.a.a.x, var_1.a.a.x), arg_2.x, abs(var_3) ^ 19616u) >> ((vec4<u32>(~var_0.a.a.x, arg_2.x, 9080u >> (var_0.a.a.x % 32u), 0u << (u_input.b % 32u)) << (vec4<u32>(_wgslsmith_div_u32(0u, var_0.a.a.x), 55616u & var_1.a.a.x, firstTrailingBit(4294967295u), 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_2(var_1.a, arg_0 | _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, u_input.d.x), vec2<i32>(17045i, -23889i)), -vec2<i32>(u_input.a.x, var_2.x)), ~(firstTrailingBit(arg_2.x) | var_3), _wgslsmith_sub_i32(-firstLeadingBit(96699i), arg_0.x)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<u32>) -> u32 {
    var var_0 = func_4(~vec2<i32>(_wgslsmith_sub_i32(~arg_1, _wgslsmith_div_i32(arg_1, arg_1)), -arg_1 ^ u_input.d.x), vec4<f32>(-957f, -916f, -594f, _wgslsmith_f_op_f32(func_2(~_wgslsmith_mod_u32(1u, u_input.b)))), min(~(~vec3<u32>(3136u, 34154u, 35989u)), ~(~vec3<u32>(arg_2.x, u_input.c, arg_2.x))) << (_wgslsmith_mod_vec3_u32(select(firstTrailingBit(vec3<u32>(0u, 0u, u_input.b)), vec3<u32>(u_input.b, arg_2.x, 50532u), true), vec3<u32>(1u, _wgslsmith_div_u32(arg_2.x, 0u), ~4294967295u)) % vec3<u32>(32u)));
    var_0 = Struct_3(func_4(vec2<i32>(0i, -2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-812f)), _wgslsmith_f_op_f32(-1000f * 2009f), _wgslsmith_div_f32(246f, 117f), _wgslsmith_f_op_f32(min(809f, -568f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -643f, -408f, 764f) * vec4<f32>(-1000f, -2146f, -261f, 1863f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1217f, 1314f, -1000f, -1568f))))), ~(~abs(vec3<u32>(var_0.a.x, 7500u, 41587u)))).a, Struct_2(Struct_1(arg_2, 52859u < _wgslsmith_clamp_u32(32737u, u_input.b, arg_2.x)), -u_input.a << (~abs(var_0.a.xw) % vec2<u32>(32u)), u_input.c, ~var_0.b.b.x << (_wgslsmith_mult_u32(~var_0.a.x, 70865u << (var_0.b.a.a.x % 32u)) % 32u)));
    var_0 = Struct_3(var_0.a, func_4(u_input.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -328f), -1066f, 1115f, 1773f))), vec3<u32>(59783u, 15030u, 4294967295u)).b);
    let var_1 = arg_2.x;
    var var_2 = !(!vec3<bool>(true, arg_0, true));
    return countOneBits(min(_wgslsmith_div_u32(countOneBits(~0u), ~arg_2.x << (max(4294967295u, var_1) % 32u)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_i32(u_input.a.x, 1i);
    var_0 = 0i;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d.x, _wgslsmith_add_i32(u_input.d.x, abs(0i))) << (func_1(true, u_input.a.x, _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(1u, u_input.c)), abs(vec2<u32>(4294967295u, 65137u)))) % 32u), -1i);
    var var_2 = vec3<i32>(-37578i, u_input.a.x, 2147483647i);
    var var_3 = true;
    var_2 = _wgslsmith_mod_vec3_i32(~countOneBits(-_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -2147483647i), vec3<i32>(var_2.x, var_2.x, 1i), vec3<i32>(var_2.x, u_input.d.x, 0i))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-9103i, 21343i), vec2<i32>(-69299i, 44914i)), var_1, _wgslsmith_div_i32(-21525i, -249i)), ~firstTrailingBit(vec3<i32>(u_input.d.x, var_1, var_1))), ~_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 0i, 1i), vec3<i32>(var_1, u_input.a.x, var_2.x)), -vec3<i32>(1i, u_input.d.x, u_input.d.x))));
    var var_4 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(-u_input.a.x & var_1, var_2.x, -10818i), ~vec3<i32>(-15548i, 0i, -1i) >> (vec3<u32>(49298u, u_input.b, firstLeadingBit(_wgslsmith_div_u32(u_input.c, u_input.b))) % vec3<u32>(32u)), ~(~(-vec3<i32>(var_1, 1i, 1i)) & vec3<i32>(var_2.x, -1i, -18428i)));
    var_4 = max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(2147483647i, var_1), -1i, -var_4.x), firstTrailingBit(vec3<i32>(7098i, var_2.x, abs(2147483647i))), ~firstTrailingBit(-vec3<i32>(var_1, 1i, -35934i))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 13019i, 81638i), i32(-1i) * -6463i, var_4.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_4.x, -12720i, var_1), select(vec3<i32>(10815i, u_input.d.x, var_1), vec3<i32>(63451i, 74177i, u_input.a.x), vec3<bool>(false, true, false)))), ~abs(~vec3<i32>(u_input.d.x, u_input.d.x, -4169i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -228f), -288f, _wgslsmith_f_op_f32(749f - 300f), -1113f)))));
}

