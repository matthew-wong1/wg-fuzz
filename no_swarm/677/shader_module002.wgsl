struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 24958i, 0i);

var<private> global2: i32 = 46804i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = ~(~vec3<u32>(_wgslsmith_sub_u32(abs(arg_1.x), 21207u), arg_0.d.x, ~0u));
    global2 = abs(_wgslsmith_div_i32(arg_0.b.x, 0i) & ~(-arg_0.b.x));
    global2 = 1i;
    var var_1 = Struct_2(arg_0, arg_1, arg_0, Struct_1(global0.e, -max(countOneBits(arg_0.b), _wgslsmith_mod_vec3_i32(arg_0.b, arg_0.b)), ~vec2<u32>(arg_1.x, 4294967295u | arg_1.x), ~firstTrailingBit(select(vec2<u32>(u_input.a, 46632u), vec2<u32>(var_0.x, arg_1.x), true)), var_0.x));
    var var_2 = true == any(!(!vec4<bool>(global0.b, arg_0.a.x, true, true)));
    return vec2<u32>(arg_1.x, ~(~1u));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = global1.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), func_3(Struct_1(global0.e, global0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(49133u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(vec2<u32>(26464u, 1u)), 4294967295u), max(vec4<u32>(u_input.a, u_input.a, arg_0, 20066u) & vec4<u32>(60907u, arg_0, u_input.a, arg_0), ~vec4<u32>(arg_0, 24099u, 23635u, u_input.a)), Struct_4(vec3<bool>(true, true, true), global0.e.zyx, _wgslsmith_f_op_vec3_f32(vec3<f32>(958f, 1000f, 718f) + vec3<f32>(-510f, -819f, -2147f)), -530f, _wgslsmith_f_op_f32(514f * 1000f)))) % 32u);
    var var_1 = Struct_3(Struct_1(select(vec4<bool>(select(global0.e.x, global0.b, global0.b), select(true, global0.e.x, true), true, true), vec4<bool>(global0.e.x, global0.b, true, false), true), global0.a & max(vec3<i32>(-29258i, global0.d, var_0), vec3<i32>(var_0, 2147483647i, global0.d)), ~min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 78395u)) >> (~min(vec2<u32>(u_input.a, arg_0), vec2<u32>(u_input.a, 31216u)) % vec2<u32>(32u)), vec2<u32>(arg_0, 32992u), abs(firstLeadingBit(arg_0 << (arg_0 % 32u)))), i32(-1i) * -26296i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1000f), _wgslsmith_f_op_f32(min(-942f, 1f))));
    return false;
}

fn func_1() -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(f32(-1f) * -1205f), !func_2(u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f - -1000f)))), _wgslsmith_f_op_f32(round(-470f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 21908u, 10937u, 94474u) | vec4<u32>(2608u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 31311u, abs(u_input.a), u_input.a)), _wgslsmith_div_u32(min(15080u, 45421u), 1u), 8809u, 4294967295u) >> (_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(u_input.a, 42080u, u_input.a, u_input.a))), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 62405u) >> (~abs(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_1());
    let var_2 = Struct_2(Struct_1(global0.e, ~vec3<i32>(countOneBits(global1.x), -2147483647i, global1.x), vec2<u32>(u_input.a, ~(~1u)), var_0.wy, u_input.a), var_0, Struct_1(vec4<bool>(func_2(~13673u), global0.e.x, any(select(global0.e.yww, vec3<bool>(global0.e.x, global0.b, global0.b), global0.e.zwy)), global0.e.x), ~vec3<i32>(~2147483647i, global0.c, 36558i), var_0.zw, ~(~firstLeadingBit(var_0.yz)), 4294967295u), Struct_1(global0.e, -(vec3<i32>(global0.d, global0.d, -2147483647i) << (vec3<u32>(var_0.x, u_input.a, 4294967295u) % vec3<u32>(32u))) ^ (abs(vec3<i32>(global0.d, -2147483647i, -22640i)) >> (_wgslsmith_mult_vec3_u32(var_0.xwx, var_0.xwz) % vec3<u32>(32u))), ~var_0.xy ^ (vec2<u32>(u_input.a, var_0.x) ^ ~vec2<u32>(u_input.a, var_0.x)), var_0.xw, u_input.a << (u_input.a % 32u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, var_1.x)))))) * vec2<f32>(1f, _wgslsmith_f_op_vec3_f32(func_1()).x)));
    global0 = Struct_5(vec3<i32>(-28431i, 2147483647i >> (var_2.a.c.x % 32u), ~(-max(global0.a.x, 9313i))), true, ~1i << (_wgslsmith_dot_vec3_u32((vec3<u32>(0u, var_2.c.c.x, var_2.d.d.x) << (var_0.xzy % vec3<u32>(32u))) | abs(var_2.b.www), vec3<u32>(_wgslsmith_mult_u32(55936u, 17857u), 1u, 35971u)) % 32u), _wgslsmith_add_i32(firstTrailingBit(~(-1i)), _wgslsmith_mod_i32(global0.d, ~global1.x)), var_2.a.a);
    let var_4 = false;
    global0 = Struct_5(vec3<i32>(-35620i, global1.x, _wgslsmith_clamp_i32(0i, 1i, -2147483647i)), all(select(var_2.a.a, vec4<bool>(true, global0.b, any(vec3<bool>(global0.e.x, true, false)), 31355u <= var_2.c.c.x), var_4)), var_2.d.b.x, global0.a.x, select(!global0.e, select(global0.e, var_2.d.a, select(true, any(global0.e.wx), false)), true));
    var var_5 = Struct_3(Struct_1(global0.e, vec3<i32>(countOneBits(reverseBits(global1.x)), -13832i, ~firstLeadingBit(-21454i)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1546u), vec2<u32>(~var_0.x, 4294967295u)), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(var_0.yx, var_0.ww), ~vec2<u32>(var_0.x, var_2.b.x)), 1844u), 41698i);
    let var_6 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, var_1.x, var_1.x), var_1, global0.e.zyw)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 769f, var_1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, var_3.x, var_1.x), vec3<f32>(var_1.x, 958f, var_1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-428f, var_1.x, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_6.x)), _wgslsmith_f_op_f32(-1099f + var_6.x)), var_3.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -739f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_6.x, 218f)) * 548f)))), -2147483647i);
}

