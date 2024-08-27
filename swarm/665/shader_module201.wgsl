struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-270f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -386f), 2008f))))), 14648u, _wgslsmith_mult_vec3_u32(u_input.b, ~_wgslsmith_sub_vec3_u32(u_input.d, ~vec3<u32>(u_input.b.x, 19523u, 36865u))));
    let var_1 = vec4<bool>(false, select(true, true, true), !(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), -firstTrailingBit(-u_input.e.x) < min((u_input.e.x >> (42034u % 32u)) & -2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e.x, arg_0, arg_0, 5657i), vec4<i32>(-101948i, u_input.e.x, u_input.e.x, -30054i))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-395f + var_0.a) + -719f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(248f, var_0.a)), -985f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -506f))))), u_input.c.x, vec3<u32>(u_input.d.x, abs(~1u), ~_wgslsmith_div_u32(1u, 30779u >> (u_input.a.x % 32u))));
    var var_2 = vec4<u32>(~_wgslsmith_div_u32(reverseBits(~u_input.d.x), 4294967295u), u_input.d.x, 40502u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 66227u, 1u), vec3<u32>(1u, 61448u, var_0.b) << (vec3<u32>(4294967295u, u_input.b.x, 0u) % vec3<u32>(32u))) & ((_wgslsmith_mod_u32(var_0.c.x, 31160u) | ~u_input.b.x) & var_0.b));
    return _wgslsmith_div_i32(-38501i, _wgslsmith_clamp_i32(0i, -1i, reverseBits(~_wgslsmith_div_i32(arg_0, -2147483647i))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(733f)) - 588f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f) + 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -816f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1113f + 2309f))))), 1058f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-752f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(800f + 967f), -801f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(max(443f, var_0.x)), var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1061f, _wgslsmith_f_op_f32(var_0.x - 270f), _wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    var var_1 = _wgslsmith_f_op_f32(floor(var_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1168f, 736f, -230f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 260f, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 536f, 1070f) + vec3<f32>(-208f, 1823f, var_0.x))))), select(vec3<bool>(arg_1.a.a.x, any(vec4<bool>(false, arg_1.a.a.x, arg_1.a.a.x, arg_3.a.a.x)), true & arg_3.a.a.x), select(!vec3<bool>(arg_3.a.a.x, arg_1.a.a.x, arg_2.x), vec3<bool>(true, arg_1.a.a.x, false), !vec3<bool>(false, false, arg_1.a.a.x)), select(select(vec3<bool>(false, arg_1.a.a.x, arg_1.a.a.x), vec3<bool>(false, arg_1.a.a.x, true), arg_0.a.x), !vec3<bool>(true, false, arg_2.x), vec3<bool>(true, true, true))))) * vec3<f32>(-943f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - -428f)))), _wgslsmith_f_op_f32(f32(-1f) * -522f)));
    var var_2 = arg_1;
    return u_input.e;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = -(~u_input.e.x);
    var var_1 = vec4<i32>(-1i, _wgslsmith_mult_i32(-var_0, func_2(u_input.e.x)), firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, -2147483647i, var_0)), min(u_input.e.xyy, u_input.e.www)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-19434i, -1i, -1i), u_input.e.wxy))), -42628i);
    var_1 = func_3(Struct_3(select(arg_2.yy, vec2<bool>(false, true), !arg_2.zx)), Struct_4(Struct_3(select(arg_2.yy, vec2<bool>(true, false), true))), !vec2<bool>(!arg_2.x, arg_2.x | true), Struct_4(Struct_3(vec2<bool>(arg_2.x, arg_2.x)))) >> (~firstLeadingBit(~(~vec4<u32>(75013u, arg_1.c.x, arg_1.c.x, u_input.b.x))) % vec4<u32>(32u));
    var_1 = vec4<i32>(firstLeadingBit(~max(-var_0, _wgslsmith_div_i32(var_1.x, -89578i))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.xzx, vec3<i32>(abs(var_1.x), var_0, -u_input.e.x)), ~u_input.e.zwx), var_1.x, ~2792i >> (arg_1.b % 32u));
    var var_2 = 151f;
    return Struct_3(vec2<bool>(!(!arg_2.x), !(_wgslsmith_div_f32(arg_1.a, -230f) < _wgslsmith_f_op_f32(round(arg_0.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_mod_i32(~func_2(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(u_input.e.zy, vec2<i32>(-61896i, u_input.e.x)))), arg_0.d.x ^ _wgslsmith_dot_vec2_i32(arg_0.d.xy, var_0.d.yy));
    let var_2 = 1f;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-119f, var_2) + vec2<f32>(-1196f, var_2)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, 1462f), vec2<f32>(187f, 2281f))) + vec2<f32>(-183f, -2600f)))), arg_0.c.xx))));
    var var_4 = func_1(Struct_2(_wgslsmith_f_op_f32(ceil(455f)), firstLeadingBit(~u_input.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(13761u, u_input.c.x), u_input.c.x ^ 4294967295u, ~17000u), ~(~vec3<u32>(74185u, arg_0.b.x, 1u)))), Struct_2(408f, var_0.b.x, _wgslsmith_div_vec3_u32(var_0.e, vec3<u32>(~arg_3.x, 0u, _wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(arg_3.x, var_0.a, arg_3.x, arg_0.e.x))))), select(select(vec3<bool>(true, var_0.c.x, !arg_0.c.x), arg_0.c, u_input.e.x > abs(2147483647i)), select(!arg_0.c, vec3<bool>(func_1(Struct_2(arg_2, 87498u, var_0.e), Struct_2(var_2, 20680u, arg_0.b), arg_0.c).a.x, any(vec3<bool>(true, arg_1.a.x, false)), select(arg_1.a.x, true, false)), false), vec3<bool>(!(!arg_0.c.x), var_0.c.x, !(!arg_0.c.x))));
    return select(arg_0.c, arg_0.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(44922i), -firstLeadingBit(u_input.e.x), ~(55305i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(13395u, 1u), u_input.c.zz) % 32u))), select(u_input.e.zww, ~(~vec3<i32>(2147483647i, 0i, -30232i)), select(vec3<bool>(u_input.b.x != u_input.a.x, select(true, false, true), true), func_4(Struct_1(u_input.c.x, u_input.d, vec3<bool>(true, false, true), u_input.e.zzw, vec3<u32>(11770u, u_input.d.x, u_input.c.x)), func_1(Struct_2(-1000f, u_input.b.x, vec3<u32>(u_input.d.x, 27457u, u_input.a.x)), Struct_2(-1000f, 0u, vec3<u32>(71761u, 4294967295u, u_input.d.x)), vec3<bool>(false, true, false)), -196f, ~vec4<u32>(47234u, 4294967295u, u_input.d.x, 4294967295u)), vec3<bool>(true, false, true))), vec3<i32>(func_3(func_1(Struct_2(-1571f, u_input.c.x, u_input.b), Struct_2(-1383f, 4294967295u, vec3<u32>(1u, u_input.a.x, u_input.a.x)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), Struct_4(Struct_3(vec2<bool>(true, false))), select(vec2<bool>(false, true), vec2<bool>(true, true), true), Struct_4(Struct_3(vec2<bool>(true, false)))).x, -func_2(i32(-1i) * -2147483647i), u_input.e.x));
    let var_1 = 254f;
    var var_2 = vec4<u32>(firstLeadingBit(~select(~87867u, reverseBits(1u), true)), _wgslsmith_mult_u32(u_input.c.x, 1u), 43309u, u_input.a.x);
    var var_3 = vec2<bool>(var_1 >= _wgslsmith_f_op_f32(round(-311f)), !func_1(Struct_2(-1094f, ~189556u, var_2.zyw), Struct_2(_wgslsmith_f_op_f32(step(var_1, -194f)), 0u, vec3<u32>(var_2.x, u_input.d.x, 0u)), select(vec3<bool>(false, true, false), func_4(Struct_1(1u, vec3<u32>(0u, 3095u, 4294967295u), vec3<bool>(false, true, true), vec3<i32>(40452i, var_0.x, u_input.e.x), var_2.www), Struct_3(vec2<bool>(true, false)), var_1, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), vec3<bool>(false, false, true))).a.x);
    var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(~1u, ~21878u, u_input.c.x, firstLeadingBit(30321u)), firstTrailingBit(~(~vec4<u32>(var_2.x, var_2.x, 0u, 554u)))), vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, 19417u), vec4<u32>(0u, u_input.d.x, 4294967295u, var_2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.b.x, var_2.x), vec4<u32>(var_2.x, u_input.c.x, var_2.x, 1u)))), 0u, var_2.x >> (u_input.b.x % 32u), 4294967295u | ~(u_input.d.x | 33215u)));
    var_3 = func_4(Struct_1(_wgslsmith_clamp_u32(var_2.x << (0u % 32u), abs(4294967295u), ~4294967295u) & ~u_input.d.x, var_2.wzz, select(vec3<bool>(var_3.x, !var_3.x, !var_3.x), !(!vec3<bool>(var_3.x, false, true)), !vec3<bool>(var_3.x, var_3.x, var_3.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.e, u_input.e), -vec4<i32>(3736i, var_0.x, u_input.e.x, u_input.e.x)), 0i, ~28335i), abs(vec3<u32>(~3939u, _wgslsmith_mult_u32(1u, var_2.x), 65626u))), func_1(Struct_2(-1556f, 0u, vec3<u32>(~u_input.a.x, 57817u | u_input.a.x, 4294967295u | u_input.a.x)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-309f + 1027f)), ~33729u | ~u_input.a.x, firstLeadingBit(vec3<u32>(1u, u_input.a.x, 0u))), func_4(Struct_1(countOneBits(u_input.c.x), vec3<u32>(86057u, var_2.x, 2955u), select(vec3<bool>(true, var_3.x, true), vec3<bool>(var_3.x, var_3.x, var_3.x), false), ~var_0, var_2.yyz << (var_2.wzx % vec3<u32>(32u))), Struct_3(func_4(Struct_1(var_2.x, vec3<u32>(4294967295u, 8937u, u_input.d.x), vec3<bool>(true, var_3.x, true), u_input.e.xzx, vec3<u32>(17962u, 0u, u_input.b.x)), Struct_3(vec2<bool>(var_3.x, var_3.x)), var_1, vec4<u32>(var_2.x, var_2.x, 25109u, var_2.x)).yy), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1315f)), -284f)), max(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, u_input.d.x), vec4<u32>(34280u, u_input.b.x, 18728u, u_input.d.x)), vec4<u32>(var_2.x, 32658u, 12502u, u_input.b.x)))), var_1, ~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 36108u, 10083u, 1u), vec4<u32>(var_2.x, u_input.d.x, 84751u, 23179u)) >> (~vec4<u32>(var_2.x, u_input.b.x, 4294967295u, u_input.a.x) % vec4<u32>(32u)))).yy;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~(~(~vec3<u32>(4294967295u, u_input.d.x, u_input.a.x))), ~firstTrailingBit(max(0u, u_input.c.x) >> (reverseBits(u_input.b.x) % 32u)));
}

