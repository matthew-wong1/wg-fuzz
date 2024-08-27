struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_2;

var<private> global2: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec2<bool>) -> f32 {
    global2 = u_input.a;
    var var_0 = -1076f;
    global1 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(-40566i, -20610i), -78913i), global1.a.x, global1.a.x), abs(~arg_1)), global1.b, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, _wgslsmith_mod_i32(-35030i, 29063i), -16299i), vec3<i32>(_wgslsmith_clamp_i32(arg_1.x, global1.c.x, global1.a.x), _wgslsmith_add_i32(33832i, u_input.e.x), _wgslsmith_dot_vec2_i32(arg_1.zw, vec2<i32>(u_input.e.x, u_input.d.x))), reverseBits(u_input.e.yyx)), -(vec3<i32>(-2147483647i, global1.c.x, 0i) | min(vec3<i32>(-4855i, arg_1.x, 1i), arg_1.wzz))));
    global1 = Struct_2(global1.a, Struct_1(select(select(select(global1.b.c.wzx, global1.b.c.xzy, global1.b.b.x), select(global1.b.a, vec3<bool>(global1.b.a.x, global1.b.a.x, true), global1.b.c.yxz), arg_0), select(global1.b.a, vec3<bool>(arg_0, true, false), 335f >= global0.x), true), vec2<bool>(global1.b.a.x, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, global1.b.b.x, true, false), !vec4<bool>(global1.b.b.x, true, true, true), arg_3.x), arg_0)), arg_1.zyx);
    let var_1 = abs(vec4<u32>(8775u, 1089u, 1u, ~1u)) & ~(_wgslsmith_clamp_vec4_u32(arg_2, vec4<u32>(u_input.c, 0u, 4294967295u, u_input.b), arg_2) | ~reverseBits(arg_2));
    return global0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = vec3<f32>(281f, global0.x, global0.x);
    global0 = vec4<f32>(140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, global1.a, vec4<u32>(1u, 1u, u_input.c, arg_1.b), arg_1.a.zy)) * 2234f) + var_0.x) * global0.x), 1000f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(488f + var_0.x)))));
    let var_1 = Struct_4(vec3<bool>(true, true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(arg_1.b ^ 33126u), u_input.a, ~(u_input.a >> (arg_1.b % 32u)), ~1u), ~vec4<u32>(4294967295u, 20296u << (arg_1.b % 32u), _wgslsmith_add_u32(82436u, 1u), _wgslsmith_div_u32(arg_1.b, 85265u))), !(firstTrailingBit(-arg_2.c.x) >= ~arg_2.c.x));
    var var_2 = countOneBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_2.c.x, -2147483647i), ~global1.a.x));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.x, -12739i), abs(firstLeadingBit(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(u_input.e, u_input.e)))));
    return 41329u;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global1 = arg_0;
    let var_0 = !any(global1.b.c);
    var var_1 = select(select(vec2<bool>(~u_input.b >= 37504u, func_2(vec4<i32>(0i, 32083i, global1.a.x, arg_0.a.x), Struct_4(vec3<bool>(arg_0.b.b.x, false, true), u_input.a, true), Struct_2(vec4<i32>(-11001i, 10157i, -26020i, -3268i), Struct_1(global1.b.c.wwz, vec2<bool>(var_0, false), arg_0.b.c), arg_0.a.yxy), true) >= abs(u_input.b)), select(arg_0.b.c.xx, vec2<bool>(true, !arg_0.b.a.x), arg_0.b.b), !(!global1.b.c.xz)), global1.b.b, global1.b.c.yw);
    global1 = Struct_2(abs(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(arg_0.a, vec4<i32>(global1.c.x, u_input.d.x, u_input.d.x, global1.c.x))), Struct_1(!(!arg_0.b.a), vec2<bool>(global0.x >= _wgslsmith_f_op_f32(845f + global0.x), arg_0.b.b.x), !(!arg_0.b.c)), select(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d.x, arg_0.a.x, global1.c.x, -22314i)), global1.a), ~(-1i)), -max(_wgslsmith_sub_vec3_i32(vec3<i32>(19623i, 43580i, u_input.e.x), global1.c), reverseBits(vec3<i32>(u_input.e.x, -40574i, arg_0.a.x))), var_0));
    var_1 = vec2<bool>(!arg_0.b.b.x, true);
    return Struct_2(vec4<i32>(_wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(global1.a.x, -2147483647i, 2147483647i, -1i))), ~(22723i & global1.a.x)), 1i, min(_wgslsmith_clamp_i32(-arg_0.c.x, firstLeadingBit(43308i), arg_0.c.x), ~(-2147483647i)), arg_0.c.x), Struct_1(vec3<bool>(25741i >= ~arg_0.a.x, true, true), !vec2<bool>(2784f == global0.x, true), arg_0.b.c), -_wgslsmith_add_vec3_i32(vec3<i32>(~1i, ~(-1i), _wgslsmith_dot_vec2_i32(global1.c.zy, vec2<i32>(44780i, -2147483647i))), global1.a.yxx));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = func_1(func_1(arg_0.d));
    let var_1 = var_0.b.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1530f, arg_1));
    let var_3 = global1.b.c;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1875f, 245f, -305f, -456f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) * vec4<f32>(var_2.x, var_2.x, 338f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, -785f, var_2.x, 152f))))))));
    return func_1(Struct_2(-arg_0.b.a, Struct_1(vec3<bool>(!var_3.x, var_3.x, !var_1), !arg_0.d.b.a.yx, global1.b.c), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(43577i, 37952i, 20907i), ~vec3<i32>(arg_2.x, global1.a.x, global1.a.x)), arg_2, u_input.e.zxw << (~vec3<u32>(u_input.b, 0u, u_input.a) % vec3<u32>(32u)))));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_5, arg_3: i32) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -441f, -1131f, -605f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, 1117f, -994f) - vec4<f32>(global0.x, 467f, global0.x, global0.x)))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(global0.x - -834f), global0.x, global0.x, _wgslsmith_f_op_f32(func_3(true, vec4<i32>(1i, arg_3, 0i, global1.a.x), vec4<u32>(3901u, 1u, 1u, u_input.c), global1.b.c.yy))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1204f, global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))))))));
    let var_0 = arg_2;
    let var_1 = global0.x;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, vec4<i32>(1i, arg_3, -1i, arg_3), vec4<u32>(22958u, 4294967295u, 4294967295u, 1u), vec2<bool>(true, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) + global0.x), global0.x, global0.x)) + vec4<f32>(321f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000f, 733f)))) - 762f), -1034f, _wgslsmith_f_op_f32(1000f * 380f)));
    return Struct_4(func_4(Struct_5(true, var_0.b, func_1(var_0.d).b, Struct_2(global1.a, arg_2.b.b, vec3<i32>(-10975i, -7846i, 8777i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global0.x)))), -_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(global1.a.zyz, var_0.b.a.zxx), -vec3<i32>(global1.c.x, -266i, 2147483647i))).b.c.zzx, _wgslsmith_clamp_u32(_wgslsmith_div_u32(func_2(-vec4<i32>(arg_3, -28032i, 0i, -13609i), Struct_4(vec3<bool>(var_0.a, var_0.d.b.a.x, true), u_input.c, arg_0), Struct_2(var_0.b.a, Struct_1(vec3<bool>(var_0.d.b.b.x, global1.b.b.x, true), global1.b.b, var_0.b.b.c), arg_2.b.c), var_0.d.b.b.x), ~arg_1), 7115u, ~_wgslsmith_div_u32(min(1u, arg_1), ~arg_1)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(false, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.a, u_input.c, 52923u, 16213u))), vec4<u32>(_wgslsmith_div_u32(u_input.a, 5765u), 4386u ^ u_input.b, 1u, u_input.b)), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(33950u, u_input.a, 103559u, u_input.a)), ~reverseBits(vec4<u32>(4294967295u, u_input.c, u_input.b, 1u)))), Struct_5(false, func_4(Struct_5(true, func_1(Struct_2(vec4<i32>(-2147483647i, 1882i, 0i, global1.a.x), Struct_1(global1.b.a, global1.b.c.wz, global1.b.c), u_input.e.ywz)), global1.b, func_1(Struct_2(vec4<i32>(-9412i, u_input.d.x, 25931i, 0i), global1.b, u_input.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(2919f)))), vec3<i32>(53924i, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x), -21840i ^ u_input.e.x)), func_1(func_4(Struct_5(global1.b.b.x, Struct_2(u_input.e, global1.b, vec3<i32>(20926i, u_input.d.x, 8019i)), Struct_1(vec3<bool>(global1.b.a.x, global1.b.a.x, global1.b.c.x), vec2<bool>(global1.b.a.x, true), global1.b.c), Struct_2(vec4<i32>(u_input.e.x, u_input.e.x, 21270i, global1.c.x), global1.b, vec3<i32>(global1.a.x, -2147483647i, 2147483647i))), _wgslsmith_f_op_f32(-262f - global0.x), vec3<i32>(global1.c.x, global1.a.x, global1.a.x))).b, Struct_2(vec4<i32>(~1i, global1.c.x, -u_input.d.x, global1.c.x), func_1(func_4(Struct_5(false, Struct_2(u_input.e, global1.b, u_input.e.xyz), global1.b, Struct_2(vec4<i32>(u_input.d.x, 27515i, 0i, global1.a.x), global1.b, vec3<i32>(global1.c.x, 1i, 18645i))), -470f, global1.c)).b, u_input.e.zzz)), max(0i | _wgslsmith_div_i32(-1i, func_1(Struct_2(vec4<i32>(global1.c.x, global1.c.x, u_input.d.x, -2147483647i), Struct_1(global1.b.c.zxy, vec2<bool>(true, global1.b.b.x), vec4<bool>(global1.b.c.x, true, true, global1.b.a.x)), vec3<i32>(u_input.e.x, -8341i, 1i))).a.x), func_1(Struct_2(global1.a, Struct_1(vec3<bool>(global1.b.a.x, false, global1.b.a.x), vec2<bool>(true, global1.b.a.x), vec4<bool>(global1.b.c.x, global1.b.b.x, false, true)), global1.c >> (vec3<u32>(13150u, 74400u, 4294967295u) % vec3<u32>(32u)))).c.x));
    let var_1 = firstTrailingBit(2147483647i);
    var var_2 = Struct_3(Struct_2(~(-u_input.e), Struct_1(global1.b.c.xxx, !var_0.a.xy, global1.b.c), firstLeadingBit(vec3<i32>(var_1, 4349i, abs(1i)))));
    global1 = Struct_2(select(vec4<i32>(-1i) * -vec4<i32>(22343i, var_2.a.a.x, 3554i, var_1), vec4<i32>(-1i, var_1, -1i, 46394i << (var_0.b % 32u)), var_0.b == ~abs(4294967295u)), func_1(func_1(func_1(func_1(var_2.a)))).b, u_input.e.xxw);
    let var_3 = func_4(Struct_5(func_1(Struct_2(~var_2.a.a, Struct_1(global1.b.c.ywx, vec2<bool>(var_0.a.x, var_2.a.b.c.x), var_2.a.b.c), vec3<i32>(var_2.a.c.x, global1.c.x, -38165i))).b.c.x, var_2.a, var_2.a.b, var_2.a), -1000f, var_2.a.c).b;
    let var_4 = false;
    let var_5 = Struct_1(var_3.c.wxy, vec2<bool>(true, true), !(!func_1(var_2.a).b.c));
    let var_6 = func_1(Struct_2(vec4<i32>(2147483647i, var_2.a.c.x << (u_input.c % 32u), _wgslsmith_clamp_i32(4353i, 1i, 30504i), global1.a.x), Struct_1(!var_3.a, vec2<bool>(var_4, any(global1.b.c)), var_2.a.b.c), _wgslsmith_sub_vec3_i32(var_2.a.a.yww, func_4(Struct_5(var_5.c.x, var_2.a, var_2.a.b, var_2.a), global0.x, vec3<i32>(14888i, u_input.d.x, 41365i) | vec3<i32>(var_2.a.c.x, 0i, 26106i)).c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(-2147483647i, var_6.a.x), var_6.c.x, var_1, ~u_input.d.x), _wgslsmith_f_op_f32(-1f), 26544u, -2147483647i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, global0.x)) + global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))))));
}

