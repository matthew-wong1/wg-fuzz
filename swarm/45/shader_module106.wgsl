struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: bool = true;

var<private> global2: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> bool {
    var var_0 = i32(-1i) * -(40130i | (global2.c.x << (~0u % 32u)));
    global2 = Struct_2(global2.a | reverseBits(global2.a), global2.b, global2.c);
    let var_1 = min(~(~global2.a), _wgslsmith_sub_u32(max(~(~17170u), global2.a >> (u_input.b.x % 32u)), ~_wgslsmith_add_u32(global2.a, global2.a)));
    let var_2 = Struct_1(~(-2147483647i) | max(_wgslsmith_add_i32(31445i, -15738i) ^ ~u_input.c, -(~(-2147483647i))), ~6435u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1392f)))), -1450f));
    return all(select(arg_1, arg_1, global2.a < (_wgslsmith_dot_vec3_u32(u_input.d.wxz, vec3<u32>(u_input.b.x, 0u, 4294967295u)) ^ (var_1 ^ global2.a))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = global2.c;
    let var_1 = ~(~(~select(countOneBits(vec3<i32>(1i, 40998i, 522i)), select(vec3<i32>(2147483647i, -1i, u_input.c), vec3<i32>(34994i, -10337i, var_0.x), arg_1.yzy), !vec3<bool>(arg_1.x, true, global0.x))));
    let var_2 = Struct_1(29917i, ~_wgslsmith_sub_u32(arg_0.x, _wgslsmith_dot_vec3_u32(u_input.d.yyz | u_input.d.zww, vec3<u32>(4294967295u, 4294967295u, u_input.d.x))));
    let var_3 = -(-firstTrailingBit(firstLeadingBit(var_1.x)) >> ((~_wgslsmith_mod_u32(18773u, var_2.b) >> (~u_input.a.x % 32u)) % 32u));
    let var_4 = ~_wgslsmith_sub_u32(arg_0.x, arg_0.x);
    return Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12345u, 0u, 24223u, 0u) >> (arg_0 % vec4<u32>(32u)), vec4<u32>(global2.a, var_4, var_4, var_2.b)), arg_0.x >> (~u_input.a.x % 32u), var_2.b) << (54196u % 32u), !vec4<bool>((0u | arg_0.x) > global2.a, true, true, arg_1.x), vec2<i32>((u_input.c >> (arg_0.x % 32u)) << ((9843u & (var_4 | u_input.b.x)) % 32u), ~reverseBits(10234i)));
}

fn func_1() -> Struct_1 {
    global1 = !all(select(global2.b, global2.b, global2.b.x));
    global2 = func_3(_wgslsmith_div_vec4_u32(~(~vec4<u32>(global2.a, 4294967295u, global2.a, global2.a)), u_input.a) ^ firstLeadingBit(vec4<u32>(global2.a, ~1123u, 56550u, u_input.b.x)), select(global2.b, !vec4<bool>(func_2(-740f, global2.b.wz), global2.b.x && true, true, true), vec4<bool>(global0.x, true, global0.x, _wgslsmith_f_op_f32(-197f - -640f) >= _wgslsmith_f_op_f32(ceil(-1030f)))));
    global1 = true;
    var var_0 = (~(_wgslsmith_mod_vec4_u32(vec4<u32>(920u, u_input.d.x, u_input.d.x, 49045u), u_input.d) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, global2.a, 0u), u_input.d)) | _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 563u, u_input.a.x, 39944u), u_input.a, vec4<u32>(u_input.d.x, 62984u, u_input.b.x, global2.a)), u_input.d)) & u_input.a;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-417f, 428f)), vec2<f32>(610f, -1585f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-463f, -1000f), vec2<f32>(_wgslsmith_f_op_f32(-391f - 1364f), 204f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -720f), 213f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-186f, 1000f), vec2<f32>(1000f, 1058f), true)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(554f, 118f))), true)), global2.b.x & global2.b.x)))));
    return Struct_1(firstTrailingBit(_wgslsmith_mod_i32(-u_input.c, u_input.c) & reverseBits(_wgslsmith_add_i32(1i, u_input.c))), abs(0u));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec3<i32>) -> vec3<f32> {
    global2 = func_3(reverseBits(u_input.d), global2.b);
    global0 = global2.b.zw;
    let var_0 = vec4<bool>(-1i < (arg_0 >> (1u % 32u)), global2.b.x, global0.x, true && global0.x);
    global1 = any(global2.b.yy);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1203f, -126f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b, -509f), 288f), _wgslsmith_f_op_f32(-arg_1.b)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, -769f, var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_i32(i32(-1i) * -1i, 12320i), Struct_5(reverseBits(~0u), -2421f, func_1()), ~vec3<i32>(func_3(u_input.d, vec4<bool>(global2.b.x, true, global2.b.x, global0.x)).c.x, _wgslsmith_mod_i32(-4601i, 1i), ~u_input.c))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(538f, 548f), 1f, -1000f) - vec3<f32>(1000f, -1252f, 313f)) + vec3<f32>(-130f, 2002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1507f, 849f))))));
    var var_1 = func_1().a;
    var var_2 = !vec2<bool>(global2.b.x, true);
    var var_3 = global2.b.x;
    let var_4 = Struct_3(Struct_1(_wgslsmith_sub_i32(i32(-1i) * -28965i, -9271i), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(444f)), _wgslsmith_f_op_f32(min(1672f, 152f))))) <= var_0.x);
    var_2 = select(select(vec2<bool>(var_4.b, var_4.a.b <= _wgslsmith_mult_u32(92396u, 21091u)), global2.b.xx, vec2<bool>(!any(vec2<bool>(false, var_2.x)), global0.x)), !global2.b.xz, global2.b.xx);
    let var_5 = abs(vec2<u32>(_wgslsmith_mult_u32(~var_4.a.b, ~4294967295u), ~51014u));
    var_1 = var_4.a.a;
    var var_6 = (-u_input.c >= -min(-2147483647i, ~9393i)) & global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global2.a, u_input.b.x), 44863u, u_input.b.x, 4294967295u), ~abs(vec4<u32>(var_5.x, u_input.b.x, 9809u, global2.a))) & vec4<u32>(~(u_input.d.x & global2.a), var_4.a.b, var_5.x, u_input.d.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-753f + var_0.x), 413f, 1206f, _wgslsmith_f_op_f32(-var_0.x)) - vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -166f), -504f, var_0.x, _wgslsmith_f_op_f32(-var_0.x))), vec4<f32>(-666f, _wgslsmith_f_op_vec3_f32(func_4(0i, Struct_5(global2.a, 596f, var_4.a), select(vec3<i32>(25873i, u_input.c, global2.c.x), vec3<i32>(var_4.a.a, 2147483647i, 0i), global2.b.yyx))).x, _wgslsmith_f_op_f32(-var_0.x), var_0.x))));
}

