struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 4294967295u, 54726u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_1, arg_1);
    global0 = ~select(vec3<u32>(4294967295u | abs(arg_1.b), u_input.a.x | u_input.a.x, 103023u), ~firstLeadingBit(abs(u_input.b.zzz)), !vec3<bool>(any(vec2<bool>(false, false)), select(false, true, false), true));
    let var_1 = Struct_2(var_0.a, arg_1);
    var var_2 = _wgslsmith_f_op_f32(select(var_0.a.a.x, var_0.a.a.x, false || any(vec2<bool>(true, true))));
    global0 = vec3<u32>(max(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(var_1.b.b, u_input.a.x)), u_input.a.x) << (~arg_1.c % 32u), _wgslsmith_div_u32(~(firstLeadingBit(u_input.b.x) >> (~arg_1.c % 32u)), countOneBits(global0.x)), reverseBits(87395u));
    return 1840f;
}

fn func_2() -> vec4<f32> {
    global0 = u_input.a.zwz;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1000f, 322f, -1642f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1155f, 1399f, 1172f, -1163f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-732f, -868f, 932f, -1000f)))))), 4294967295u, u_input.b.x);
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(990f, 204f))), _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, true)), _wgslsmith_f_op_f32(-var_0.a.x)), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 12477u), vec4<u32>(global0.x, global0.x, u_input.b.x, 1u))), ~firstTrailingBit(20817u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1314f)), _wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(floor(1222f)), _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.d.x, u_input.d.x, -18593i, 41628i), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, 226f, -281f), global0.x, u_input.b.x))))), u_input.b.x, ~38203u));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)))), select(var_0.b, 4294967295u, all(vec3<bool>(u_input.d.x < u_input.d.x, true, true))), _wgslsmith_sub_u32(38503u, abs(var_1.b.c)));
    let var_2 = vec3<u32>(~(4294967295u >> (select(1u, 0u, true) % 32u)), firstTrailingBit(22264u), _wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(4294967295u, abs(57587u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.b), var_1.b.c)));
    return var_1.b.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    global0 = abs(vec3<u32>(~global0.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_3.b.b, u_input.b.x), ~u_input.b.x), countOneBits(62032u))) & ~u_input.b.zzx;
    global0 = ~(~reverseBits(reverseBits(vec3<u32>(38196u, global0.x, arg_3.b.c) | u_input.a.yxx)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -1196f)), _wgslsmith_f_op_f32(f32(-1f) * -227f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.a.x, arg_0.b.a.x, arg_0.a.a.x, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b.a.x), _wgslsmith_f_op_f32(sign(arg_0.b.a.x)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -335f))), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1), vec4<bool>(false, arg_1, true, false), true))), _wgslsmith_dot_vec4_u32(u_input.b & u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.a.c, arg_3.a.c, arg_3.b.b, global0.x), vec4<u32>(9997u, 4294967295u, arg_3.a.c, global0.x)))), 4294967295u);
    var var_1 = vec2<u32>(4294967295u, abs(countOneBits(~(var_0.c & 1u))));
    let var_2 = !select(!(!vec4<bool>(arg_1, arg_1, false, true)), vec4<bool>(_wgslsmith_f_op_f32(select(-266f, 118f, arg_1)) <= _wgslsmith_f_op_f32(-var_0.a.x), arg_1, _wgslsmith_clamp_u32(64586u, 78149u, 4294967295u) <= 35757u, arg_1), !vec4<bool>(all(vec2<bool>(true, false)), arg_1, all(vec3<bool>(arg_1, arg_1, arg_1)), arg_1 & false));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(var_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1215f, arg_0.b.a.x, arg_2.x, arg_0.b.a.x), vec4<f32>(var_0.a.x, arg_0.a.a.x, 410f, -207f), arg_1)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -629f, 792f, var_0.a.x), arg_0.b.a)), vec4<bool>(var_2.x, arg_1, false, !arg_1)))), _wgslsmith_dot_vec2_u32(~(~(~global0.xy)), select(vec2<u32>(arg_3.b.c, ~80659u), max(vec2<u32>(9814u, var_0.c), u_input.b.zx), arg_1)), 1u);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = u_input.c;
    global0 = u_input.b.ywz;
    let var_1 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), global0.x, arg_0.x), arg_1), false, _wgslsmith_f_op_vec3_f32(arg_1.a.zyx * vec3<f32>(_wgslsmith_f_op_f32(abs(-1610f)), -1059f, _wgslsmith_f_op_f32(-arg_2.a.x))), Struct_2(Struct_1(arg_2.a, 0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, u_input.b.x)), vec3<u32>(1u, 1u, 1u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 159f, -437f, arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_1.a.x, 437f, 365f))), ~global0.x >> (19774u % 32u), ~_wgslsmith_mult_u32(4294967295u, u_input.b.x))));
    global0 = u_input.b.wwz;
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_2.a);
    return -343f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(~vec2<u32>(5511u, u_input.b.x), Struct_1(vec4<f32>(1000f, 1000f, 1720f, 1883f), u_input.b.x, 1u), Struct_1(vec4<f32>(1478f, -1000f, 1000f, -1500f), 5087u, global0.x), ~u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.b.zx, Struct_1(vec4<f32>(-1000f, -1000f, 1256f, -229f), 53180u, 4294967295u), Struct_1(vec4<f32>(-1010f, 980f, 441f, 625f), u_input.a.x, 0u), 10197u)), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1062f - -1242f), 409f)) + -622f), _wgslsmith_f_op_f32(floor(-2168f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2460f)) - _wgslsmith_f_op_f32(2003f + -1415f)), _wgslsmith_f_op_vec4_f32(func_2()).x)), ~global0.x, global0.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(1987f, 1000f), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))), firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), u_input.b | u_input.a)), _wgslsmith_div_u32(var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 4294967295u, u_input.b.x, u_input.a.x), u_input.b))), func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a), global0.x >> (global0.x % 32u), ~var_0.b), func_4(Struct_2(var_0, var_0), false, vec3<f32>(var_0.a.x, -1000f, -1062f), Struct_2(Struct_1(vec4<f32>(841f, var_0.a.x, 573f, -725f), global0.x, 37811u), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -353f, var_0.a.x), 1u, 4294967295u)))), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, -169f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.a.x, var_0.a.x) - _wgslsmith_f_op_vec3_f32(-var_0.a.xww))), Struct_2(var_0, var_0)));
    let var_2 = !(var_0.a.x <= _wgslsmith_f_op_vec4_f32(func_2()).x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.d.x, min(-32103i, u_input.c.x), u_input.c.x >> (u_input.b.x % 32u), _wgslsmith_div_i32(-2147483647i, -2147483647i)), Struct_1(vec4<f32>(var_0.a.x, -1017f, -466f, var_1.a.a.x), _wgslsmith_mod_u32(var_1.b.c, var_0.b), 57808u)))) + -1182f);
    let var_4 = u_input.c;
    let var_5 = vec3<i32>(-1i) * -vec3<i32>(-44140i, ~u_input.c.x & _wgslsmith_clamp_i32(0i, u_input.c.x, var_4.x), 1i);
    var var_6 = select(!vec3<bool>(select(true, var_1.a.a.x > -1869f, true), !var_2, true), select(vec3<bool>((var_5.x & -5501i) <= -2147483647i, false, false), !vec3<bool>(true, 4294967295u == u_input.b.x, !var_2), select(select(!vec3<bool>(false, var_2, true), vec3<bool>(false, var_2, var_2), true), !vec3<bool>(false, var_2, var_2), !select(true, var_2, false))), !select(select(select(vec3<bool>(var_2, true, true), vec3<bool>(true, true, true), var_2), !vec3<bool>(var_2, false, true), vec3<bool>(false, var_2, var_2)), !select(vec3<bool>(var_2, true, var_2), vec3<bool>(false, var_2, var_2), false), vec3<bool>(all(vec4<bool>(var_2, true, true, true)), true, !var_2)));
    var var_7 = max(abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_4.x), ~_wgslsmith_sub_i32(var_5.x, -2147483647i))), min(u_input.c.x, ~abs(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x)))), _wgslsmith_f_op_f32(trunc(630f)), global0.x, 3040u);
}

