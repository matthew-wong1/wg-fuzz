struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(5141u, vec4<bool>(false, false, true, false), -1931f, 22435u);

var<private> global2: u32 = 25498u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = vec2<bool>(true, ~(-2147483647i) > _wgslsmith_clamp_i32(-35838i, _wgslsmith_div_i32(abs(57414i), abs(2147483647i)), _wgslsmith_mult_i32(countOneBits(84361i), ~1i)));
    let var_1 = !(!any(vec3<bool>(all(vec2<bool>(global1.b.x, true)), global1.b.x, !var_0.x)));
    global2 = 1u;
    return Struct_1(max(60572u, u_input.b), vec4<bool>(var_0.x, true, false, var_0.x), -3484f, 1u);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global2 = _wgslsmith_sub_u32(global1.d, 2656u);
    global0 = true;
    global1 = func_2(arg_0.c);
    global1 = Struct_1(global1.a, arg_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(628f * arg_0.c)))), _wgslsmith_f_op_f32(round(arg_0.c)))), global1.d);
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.c, arg_0.c, arg_0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(319f, 1000f, -1941f) * vec3<f32>(arg_0.c, -2279f, 698f)))) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c + global1.c), -206f)), arg_0.c, global1.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c))), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c - 1147f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.c), 1265f, global1.c) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, 930f, 138f) - vec3<f32>(-805f, global1.c, -1694f)))))));
    return vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, 488i), ~(-9313i << (global1.d % 32u))), ~select(22399i, -13699i, false));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>) -> u32 {
    global1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(599f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.c))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(-469f + global1.c)), global1.c)));
    let var_0 = vec3<bool>(!((i32(-1i) * -arg_1.x) <= func_3(func_2(global1.c)).x), !global1.b.x, true);
    global0 = var_0.x;
    let var_1 = -vec4<i32>(arg_1.x, -4847i, 14809i, -36143i);
    return _wgslsmith_add_u32(max(global1.d, 40929u), ~15316u);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3.a;
    global2 = _wgslsmith_mod_u32(~(~var_0), firstLeadingBit(~(select(arg_3.a, arg_1.x, true) ^ var_0)));
    var var_1 = func_2(arg_0);
    var var_2 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(global1.a, 4294967295u, arg_3.d, 22560u) & abs(vec4<u32>(4294967295u, 1u, 0u, 4294967295u) << (vec4<u32>(1u, 49718u, var_0, 17421u) % vec4<u32>(32u)))), vec4<u32>(~arg_1.x >> (~0u % 32u), 1u, arg_3.a << (1u % 32u), func_4(~(~vec4<u32>(4294967295u, u_input.a, global1.d, 4294967295u)), func_3(func_2(arg_0)))));
    let var_3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -1307f)));
    return ~14262u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(u_input.b << ((_wgslsmith_add_u32(func_1(1280f, vec2<u32>(u_input.a, 87336u), -15380i, Struct_1(global1.a, vec4<bool>(false, false, true, true), 1222f, 4294967295u)), func_2(432f).a) | func_1(_wgslsmith_div_f32(global1.c, global1.c), ~vec2<u32>(0u, u_input.b), -2147483647i >> (u_input.b % 32u), Struct_1(global1.a, global1.b, -288f, u_input.a))) % 32u), !global1.b, _wgslsmith_f_op_f32(-global1.c), 0u);
    let var_0 = -754f;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - var_0) - -753f))), vec2<f32>(_wgslsmith_f_op_f32(sign(223f)), _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1.c, global1.c, global1.b.x))))))));
    let var_2 = func_2(global1.c);
    global2 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.d, 4294967295u) & select(4294967295u, var_2.a, true), ~56717u), _wgslsmith_div_u32(~var_2.a, 35862u)), ~(~14530u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(abs(0i), -2147483647i, -31656i), vec2<u32>(~23951u, 4294967295u), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(select(firstTrailingBit(vec2<i32>(-2147483647i, -6206i)), ~vec2<i32>(-35977i, 2147483647i), vec2<bool>(global1.b.x, true)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(7749i, -1i, 49359i, 0i), vec4<i32>(0i, -2147483647i, -23889i, 26622i)), reverseBits(2147483647i))), ~(~vec2<i32>(-15814i, 37041i)), vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(20122i, 29090i, -4176i, -1i), ~vec4<i32>(-2147483647i, -38550i, -33639i, -9021i)))), var_2.d, -32747i);
}

