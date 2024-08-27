struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_mult_u32(4196u, 19779u);
    var_0 = 0u;
    let var_1 = abs(-firstTrailingBit(vec4<i32>(global0.a, abs(-1i), 1i, u_input.a >> (u_input.b % 32u))));
    let var_2 = !any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true), true));
    let var_3 = ~select(32977u, firstLeadingBit(9108u), var_2);
    return vec4<i32>(-1i, var_1.x, 2147483647i, _wgslsmith_mod_i32(0i, select(-(var_1.x ^ 30824i), 23976i, true && all(vec4<bool>(false, var_2, var_2, var_2)))));
}

fn func_2(arg_0: vec2<bool>) -> vec4<bool> {
    global0 = Struct_1(abs(global0.a), 1149f);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(138f, -1459f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-166f, global0.b) - vec2<f32>(-1000f, global0.b)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-133f, global0.b)))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global0.b)))));
    var var_1 = vec4<i32>(~u_input.a, abs(0i), ((global0.a | -17845i) | countOneBits(-u_input.a)) ^ global0.a, -_wgslsmith_div_i32(-32251i, global0.a));
    var var_2 = false;
    var_1 = ~_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(global0.a), global0.a, firstLeadingBit(global0.a), -32658i), vec4<i32>(-12025i, abs(var_1.x), u_input.a, 1i)) ^ func_3();
    return vec4<bool>(all(select(arg_0, !vec2<bool>(arg_0.x, false), !arg_0)), arg_0.x, !(select(arg_0.x, !arg_0.x, var_0.x == -1000f) | (countOneBits(u_input.b) < _wgslsmith_add_u32(u_input.b, u_input.b))), !arg_0.x);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = !vec3<bool>(true, false && arg_0.a.x, any(vec4<bool>(arg_0.a.x, all(vec2<bool>(arg_0.a.x, true)), all(vec4<bool>(arg_0.a.x, true, false, arg_0.a.x)), arg_0.a.x)));
    global0 = Struct_1(abs(-22872i) >> (reverseBits(u_input.b) % 32u), arg_0.b);
    var_0 = select(!arg_0.a.wwz, !select(arg_0.a.wxz, arg_0.a.xwz, arg_0.a.xyx), !any(vec2<bool>(global0.b == global0.b, true)));
    var var_1 = 645f;
    global0 = Struct_1((u_input.a >> (12487u % 32u)) & _wgslsmith_clamp_i32(u_input.a, -global0.a ^ -1i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f))))));
    return Struct_2(select(arg_0.a, !(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x), arg_0.b, reverseBits(-17850i), firstTrailingBit(7787u), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(abs(select(vec3<u32>(0u, 46286u, 36528u), arg_0.e, vec3<bool>(arg_0.a.x, arg_0.a.x, true))), (vec3<u32>(39921u, arg_0.e.x, 4294967295u) ^ arg_0.e) | arg_0.e), ~abs(arg_0.e) >> (arg_0.e % vec3<u32>(32u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = func_4(Struct_2(func_2(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)), global0.b, arg_0.x, 1u, select(_wgslsmith_mult_vec3_u32(vec3<u32>(19160u, u_input.b, u_input.b), vec3<u32>(13760u, 1575u, 4294967295u) ^ vec3<u32>(u_input.b, 68918u, arg_3.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(3988u, arg_3.x, u_input.b), vec3<u32>(1u, u_input.b, u_input.b)), true)));
    var var_1 = var_0;
    global0 = Struct_1(~(~1i), _wgslsmith_f_op_f32(f32(-1f) * -1464f));
    return u_input.a;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(max(1774f, 337f)));
    let var_1 = arg_3;
    global0 = arg_2;
    let var_2 = ~vec2<i32>(24085i, arg_2.a) << (_wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.b, 55871u) << (select(vec2<u32>(25136u, u_input.b), vec2<u32>(4294967295u, 28558u), arg_3.x) % vec2<u32>(32u))), vec2<u32>(~reverseBits(6606u), 4294967295u >> (~u_input.b % 32u))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(arg_2.b * arg_2.b);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_dot_vec4_i32(select(vec4<i32>(~(-1i), abs(u_input.a), ~global0.a, -2147483647i), ~abs(vec4<i32>(u_input.a, -35132i, global0.a, -1i)), true), vec4<i32>(global0.a, (1i ^ global0.a) >> (1u % 32u), _wgslsmith_mult_i32(global0.a ^ -2147483647i, func_1(vec3<i32>(-1i, global0.a, 8345i), vec2<f32>(182f, 1215f), vec2<i32>(0i, u_input.a), vec2<u32>(4294967295u, u_input.b))), -(~(-2147483647i)))), -56717i, Struct_1(~(~global0.a) >> (u_input.b % 32u), global0.b), !vec3<bool>(!all(vec4<bool>(true, false, false, true)), false, true));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1652f + global0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.b, global0.b, false)), 1037f) * -632f), global0.b, global0.b);
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -809f, -291f, 1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(539f, -124f, 718f, -1898f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 621f, 1291f, -445f)), func_4(Struct_2(vec4<bool>(true, false, false, false), 316f, global0.a, u_input.b, vec3<u32>(8281u, u_input.b, u_input.b))).a)), func_2(vec2<bool>(true, true)))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global0.b)), global0.b, global0.b))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(global0.b + -378f)));
    global0 = func_5(~1i, -_wgslsmith_sub_i32(4434i, func_1(vec3<i32>(-1i, global0.a, -40987i), vec2<f32>(-1199f, -181f), max(vec2<i32>(global0.a, u_input.a), vec2<i32>(global0.a, -90297i)), vec2<u32>(u_input.b, u_input.b))), Struct_1(~(-2147483647i) >> (0u % 32u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1355f, _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 195f), -1108f))), vec3<bool>(true == !(var_0.x <= -390f), all(func_2(vec2<bool>(false, true)).yz), ~u_input.b == 1u));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1390f), var_0.x)), _wgslsmith_f_op_f32(ceil(-821f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_div_f32(func_5(global0.a, u_input.a, Struct_1(global0.a, 755f), vec3<bool>(false, false, false)).b, var_0.x))));
    var var_1 = ~(-firstTrailingBit(vec3<i32>(global0.a, -1i, _wgslsmith_mod_i32(26430i, u_input.a))));
    var var_2 = Struct_2(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), func_2(vec2<bool>(false, true)))), 1000f, _wgslsmith_clamp_i32(-1i, countOneBits(5703i), ~13425i), u_input.b, vec3<u32>(~(~44376u), 4294967295u, 1314u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.b))))), ~(-(-global0.a ^ func_5(var_1.x, -21032i, Struct_1(global0.a, var_0.x), var_2.a.wxw).a)), ~select(vec2<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, -21514i, u_input.a), vec3<i32>(15321i, -15370i, -1i))), vec2<i32>(_wgslsmith_mod_i32(var_1.x, 2049i), 2147483647i << (var_2.d % 32u)), !vec2<bool>(true, var_2.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, -604f, -224f, global0.b) * vec4<f32>(var_0.x, var_0.x, var_2.b, global0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_0.x, var_2.b, var_0.x) - vec4<f32>(global0.b, global0.b, var_0.x, var_2.b))))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(490f, 536f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(global0.b)))))));
}

