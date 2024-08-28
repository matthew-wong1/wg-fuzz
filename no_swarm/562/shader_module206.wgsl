struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 18404u, 22495u, 77650u);

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> i32 {
    var var_0 = arg_2.b;
    global1 = Struct_1(~max(select(1i, arg_1.x, arg_0.x), global1.d), select(vec2<bool>(103378u == (arg_2.a.x ^ global0.x), !(!arg_3)), global1.b, vec2<bool>(true, true)), global1.c, -43746i);
    let var_1 = arg_2.a;
    let var_2 = Struct_1(firstTrailingBit(-24883i), select(vec2<bool>(any(arg_0.zx), all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), !arg_0.xz, !arg_0.xz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(arg_2.b * 112f), arg_2.b, -902f))), 1i);
    var_0 = var_2.c.x;
    return -43492i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - global1.c.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, global1.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -599f))), 1384f, _wgslsmith_f_op_f32(round(global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.b, arg_1.b))) + -1066f)) - _wgslsmith_f_op_vec4_f32(-global1.c));
    let var_1 = true;
    global1 = Struct_1(-1i, global1.b, vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.c.x)), 617f, arg_0.b, 1953f), firstLeadingBit(_wgslsmith_sub_i32(17278i, -8526i)));
    var var_2 = vec3<bool>(!(true | (global1.c.x >= var_0.x)), global1.b.x, var_1);
    var var_3 = Struct_1(func_3(vec3<bool>(true, true, true), vec3<i32>(-(~global1.a), _wgslsmith_mod_i32(abs(1i), -1i), 1i), arg_1, true), !(!vec2<bool>(select(var_1, false, global1.b.x), true)), global1.c, u_input.b.x);
    return ~abs(min(countOneBits(_wgslsmith_clamp_i32(0i, var_3.a, 38925i)), firstTrailingBit(i32(-1i) * -1i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = Struct_1(~58412i, vec2<bool>(false, ~_wgslsmith_sub_u32(35172u, 18576u) <= ~global0.x), global1.c, 3221i);
    var_0 = arg_3;
    let var_1 = Struct_2(vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(global0.zyz), firstTrailingBit(global0.xww)), _wgslsmith_sub_u32(0u, min(~0u, ~global0.x)), ~33299u), var_0.c.x);
    var var_2 = u_input.b.ww ^ (vec2<i32>(-1i) * -(countOneBits(vec2<i32>(0i, 47391i)) >> (global0.wx % vec2<u32>(32u))));
    return Struct_1(~arg_3.a, !global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(global1.c.x, arg_2, var_0.c.x, arg_2)))), i32(-1i) * -_wgslsmith_sub_i32(i32(-1i) * -2147483647i, global1.a));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = func_4(Struct_1(1i, select(select(global1.b, !global1.b, !global1.b), global1.b, select(!global1.b, select(vec2<bool>(global1.b.x, true), vec2<bool>(false, true), global1.b), vec2<bool>(global1.b.x, false))), _wgslsmith_f_op_vec4_f32(abs(global1.c)), min(~(-2147483647i), global1.a)), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_2(Struct_2(global0.xyw, -1490f), Struct_2(global0.wwz, -931f)), global1.d, -global1.d), u_input.b.zxx, vec3<i32>(_wgslsmith_div_i32(61861i, 32955i), 0i, u_input.b.x))), _wgslsmith_f_op_f32(-global1.c.x), Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x >> (global0.x % 32u), func_3(vec3<bool>(false, global1.b.x, true), u_input.b.ywx, Struct_2(vec3<u32>(arg_0.x, arg_0.x, global0.x), -505f), true)), select(~(-2147483647i), global1.d >> (global0.x % 32u), true)), select(!select(global1.b, global1.b, vec2<bool>(true, true)), vec2<bool>(select(global1.b.x, global1.b.x, global1.b.x), false), false), _wgslsmith_f_op_vec4_f32(-global1.c), ~(-13005i)));
    let var_1 = u_input.b.ywx;
    let var_2 = Struct_1(_wgslsmith_sub_i32(-func_4(func_4(Struct_1(-23500i, vec2<bool>(global1.b.x, var_0.b.x), global1.c, -1i), vec3<i32>(global1.a, u_input.b.x, global1.a), 558f, Struct_1(var_1.x, global1.b, vec4<f32>(global1.c.x, -709f, var_0.c.x, global1.c.x), var_1.x)), _wgslsmith_add_vec3_i32(var_1, var_1), _wgslsmith_div_f32(global1.c.x, global1.c.x), Struct_1(17069i, vec2<bool>(global1.b.x, true), vec4<f32>(2598f, global1.c.x, 1047f, global1.c.x), u_input.b.x)).d, ~_wgslsmith_div_i32(-45846i, var_1.x)), !vec2<bool>(select(!var_0.b.x, var_0.b.x, true), all(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(true, global1.b.x, global1.b.x)))), _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1.c))))), -21440i);
    var var_3 = 49777u;
    let var_4 = var_2;
    return func_4(Struct_1(var_2.d, select(select(vec2<bool>(global1.b.x, true), vec2<bool>(true, true), var_0.b), global1.b, true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -347f, var_0.c.x, _wgslsmith_f_op_f32(1468f * _wgslsmith_f_op_f32(-var_4.c.x))), _wgslsmith_sub_i32(~(2147483647i >> (1u % 32u)), i32(-1i) * -1i)), _wgslsmith_div_vec3_i32(var_1, vec3<i32>(var_0.d, abs(countOneBits(0i)), var_2.a)), global1.c.x, func_4(Struct_1(var_1.x, var_2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_2.c.x, global1.c.x, var_2.c.x)), 1i), ~u_input.b.zzy, var_4.c.x, var_4));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: f32) -> vec4<u32> {
    global0 = vec4<u32>(13694u, 58757u, abs(global0.x), 0u);
    var var_0 = Struct_2(vec3<u32>(~4294967295u, max(~(~20384u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), ~vec4<u32>(17482u, 83893u, global0.x, 1u))), 4294967295u), 2979f);
    let var_1 = select(!global1.b, global1.b, vec2<bool>(select(true, select(arg_0.b.x, true, arg_0.b.x) & false, true), false));
    global1 = Struct_1(1i & (_wgslsmith_clamp_i32(~25764i, firstTrailingBit(global1.a), -32850i) & func_3(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.b.x, arg_1, arg_1), false), u_input.b.xxx, Struct_2(var_0.a, var_0.b), false & var_1.x)), !arg_0.b, _wgslsmith_f_op_vec4_f32(arg_0.c + arg_0.c), arg_0.d);
    global0 = ~(~select(~vec4<u32>(var_0.a.x, 47095u, 1u, 0u), firstTrailingBit(vec4<u32>(4294967295u, 26647u, global0.x, var_0.a.x)), !vec4<bool>(arg_0.b.x, arg_1, true, var_1.x)));
    return _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(global0.yx, global0.wy), global0.x), ~_wgslsmith_mult_u32(firstLeadingBit(46569u), _wgslsmith_clamp_u32(4294967295u, var_0.a.x, var_0.a.x)), 21115u, var_0.a.x), ~firstTrailingBit(~(vec4<u32>(var_0.a.x, global0.x, var_0.a.x, global0.x) ^ vec4<u32>(4294967295u, 1839u, 0u, 18273u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, select(~global0.x, _wgslsmith_mult_u32(33514u, global0.x), true), global0.x) & (func_5(func_1(global0.ww), any(vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x)), _wgslsmith_sub_i32(u_input.b.x, -2737i), 213f) << (~vec4<u32>(0u, 0u, 1u, global0.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~59530u, global0.x, _wgslsmith_clamp_u32(10918u, 3470u, 1u)), vec4<u32>(abs(global0.x), ~global0.x, abs(53461u), global0.x)) >> (min(firstTrailingBit(vec4<u32>(global0.x, 45185u, global0.x, 15155u)), ~(vec4<u32>(31401u, 43407u, 37750u, global0.x) << (vec4<u32>(56289u, global0.x, global0.x, 38873u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_0 = Struct_2(vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(global0.x), global0.x) ^ (4294967295u & _wgslsmith_dot_vec2_u32(global0.yx, vec2<u32>(7681u, 0u))), 66642u, _wgslsmith_mult_u32(global0.x, 9917u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)));
    global1 = Struct_1(~u_input.b.x, !func_4(func_1(abs(global0.zw)), u_input.b.xzw >> (vec3<u32>(0u, var_0.a.x, var_0.a.x) % vec3<u32>(32u)), 254f, Struct_1(69412i, global1.b, _wgslsmith_div_vec4_f32(global1.c, global1.c), 6959i)).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c.x, -1562f, var_0.b, global1.c.x))) + _wgslsmith_f_op_vec4_f32(global1.c - global1.c))))), global1.a);
    let var_1 = Struct_2(global0.zzx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * func_4(Struct_1(-34068i, global1.b, vec4<f32>(-1251f, 795f, -525f, var_0.b), u_input.a), u_input.b.ywz, -1332f, Struct_1(u_input.a, vec2<bool>(false, global1.b.x), global1.c, -2147483647i)).c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) + _wgslsmith_f_op_f32(639f - -419f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_sub_vec3_i32(u_input.b.zxy, ~u_input.b.wxz), vec2<f32>(-927f, var_0.b), vec3<i32>(-global1.a, u_input.a, u_input.a));
}

