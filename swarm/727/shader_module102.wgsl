struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(47077u, vec4<u32>(15494u, 3644u, 0u, 297u), Struct_1(vec2<bool>(false, true), vec3<f32>(1000f, -619f, -298f)), 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.xwz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.c.b, _wgslsmith_f_op_vec3_f32(arg_3.zxy * vec3<f32>(arg_0.x, -176f, 1935f)))))));
    let var_2 = abs(-firstLeadingBit(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.b, var_0)), vec2<i32>(var_0, var_0))));
    var var_3 = global0.b.yw;
    var_3 = countOneBits(vec2<u32>(~global0.d, ~abs(var_3.x)));
    return ~(_wgslsmith_div_u32(~(~arg_2), firstTrailingBit(1171u)) >> (_wgslsmith_mult_u32(~(4294967295u & arg_1.x), 1u) % 32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> f32 {
    global0 = Struct_2(global0.b.x, _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(arg_0.x, u_input.c, 48789u, 0u)), global0.b, vec4<u32>(27017u, 2799u, global0.b.x, 1349u) >> (vec4<u32>(1u, 0u, 4294967295u, 19799u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(77596u, global0.a) >> (u_input.c % 32u), ~0u, global0.a, firstLeadingBit(5829u)), vec4<u32>(func_3(vec2<f32>(-846f, global0.c.b.x), global0.b.ywx, 0u, vec4<f32>(global0.c.b.x, -327f, global0.c.b.x, -2538f)), _wgslsmith_dot_vec4_u32(global0.b << (global0.b % vec4<u32>(32u)), ~vec4<u32>(arg_0.x, global0.a, arg_0.x, 0u)), arg_0.x, 57706u)), Struct_1(!select(global0.c.a, !global0.c.a, global0.c.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.c.b))))), _wgslsmith_add_u32(global0.b.x, u_input.c));
    global0 = Struct_2(42598u, abs(select(~_wgslsmith_clamp_vec4_u32(global0.b, vec4<u32>(arg_0.x, 4294967295u, u_input.c, 1u), global0.b), (global0.b | vec4<u32>(global0.a, 0u, global0.b.x, u_input.c)) << (abs(global0.b) % vec4<u32>(32u)), !select(vec4<bool>(global0.c.a.x, false, global0.c.a.x, false), vec4<bool>(true, global0.c.a.x, global0.c.a.x, global0.c.a.x), global0.c.a.x))), global0.c, _wgslsmith_add_u32(arg_0.x, arg_0.x));
    var var_0 = global0.c.b.x;
    let var_1 = Struct_1(!global0.c.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.b * global0.c.b) * _wgslsmith_div_vec3_f32(global0.c.b, vec3<f32>(-122f, -120f, global0.c.b.x))), global0.c.b, !vec3<bool>(false, global0.c.a.x, global0.c.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1128f, global0.c.b.x, _wgslsmith_f_op_f32(-global0.c.b.x))), any(!vec4<bool>(global0.c.a.x, false, true, false)))));
    var_0 = _wgslsmith_f_op_f32(var_1.b.x * global0.c.b.x);
    return var_1.b.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(global0.c.b.x * _wgslsmith_f_op_f32(func_2(abs(~global0.b.xw ^ reverseBits(global0.b.xy)), -firstTrailingBit(firstLeadingBit(arg_1.x)))));
    var var_1 = firstTrailingBit(global0.b.zy);
    let var_2 = global0.b;
    let var_3 = _wgslsmith_dot_vec2_i32(arg_1.xx, arg_1.yx);
    global0 = Struct_2(17465u, vec4<u32>(~(~_wgslsmith_div_u32(1u, 34546u)), ~(~arg_2), _wgslsmith_add_u32(global0.b.x, global0.d), ~_wgslsmith_mult_u32(global0.d, var_1.x)), global0.c, _wgslsmith_mod_u32(max(u_input.c, var_2.x), reverseBits(var_2.x)) << (var_2.x % 32u));
    return (_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(arg_1.yxw), ~arg_1.yyz), vec3<i32>(arg_1.x & 0i, _wgslsmith_mod_i32(arg_1.x, var_3), _wgslsmith_mod_i32(arg_1.x, -21609i))) << (abs(var_2.xzw) % vec3<u32>(32u))) >> (~vec3<u32>(func_3(vec2<f32>(-893f, -681f), vec3<u32>(1u, 10752u, 52334u), 81972u, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.b.x, 456f, -462f, -1367f), vec4<f32>(global0.c.b.x, global0.c.b.x, -829f, -1874f)))), abs(~u_input.c), ~(~var_2.x)) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_3 {
    global0 = Struct_2(~(~reverseBits(_wgslsmith_sub_u32(3308u, u_input.c))), ~vec4<u32>(~select(17253u, 4294967295u, false), _wgslsmith_add_u32(30277u, select(53202u, 0u, arg_1)), 1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, u_input.c), global0.b.yx), u_input.c)), global0.c, u_input.c);
    var var_0 = Struct_2(u_input.c, global0.b, global0.c, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(~1273u, _wgslsmith_mod_u32(u_input.c, u_input.c), global0.d), ~1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c.b.x + _wgslsmith_f_op_f32(global0.c.b.x * var_0.c.b.x)), _wgslsmith_f_op_f32(func_2(select(global0.b.yw, vec2<u32>(u_input.c, global0.b.x), false), arg_0.x))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.c.b.x, -1801f)), 281f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-108f, -1330f), global0.c.b.zy)) * _wgslsmith_f_op_vec2_f32(round(var_0.c.b.yz))), arg_1))));
    var_0 = Struct_2(_wgslsmith_div_u32(~u_input.c, ~((15391u ^ global0.a) >> (var_0.b.x % 32u))), vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(28521u, var_0.d, var_0.a), vec3<u32>(u_input.c, 82561u, 1u)), u_input.c, ~reverseBits(_wgslsmith_sub_u32(13320u, global0.b.x))), Struct_1(!vec2<bool>(true, select(var_0.c.a.x, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.c.b)))), 5744u);
    var var_2 = global0.c;
    return Struct_3(var_0.b.zz, var_0.c, var_0.c.b, _wgslsmith_f_op_vec2_f32(round(var_2.b.yx)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_2 {
    global0 = Struct_2((~0u << (firstTrailingBit(u_input.c) % 32u)) << (global0.b.x % 32u), select(~arg_3.b, vec4<u32>(u_input.c, ~select(4294967295u, 6671u, arg_1.a.x), 0u, _wgslsmith_clamp_u32(29088u, min(arg_0.a.x, arg_3.b.x), ~arg_3.d)), true), arg_0.b, 27953u);
    var var_0 = select(select(vec4<bool>(_wgslsmith_f_op_f32(-arg_1.b.x) > 563f, arg_0.b.a.x, all(!vec4<bool>(arg_2.x, global0.c.a.x, arg_0.b.a.x, false)), arg_0.b.a.x), select(select(vec4<bool>(true, false, global0.c.a.x, global0.c.a.x), select(vec4<bool>(global0.c.a.x, arg_2.x, true, true), vec4<bool>(arg_1.a.x, arg_2.x, global0.c.a.x, true), arg_3.c.a.x), vec4<bool>(false, true, arg_3.c.a.x, false)), select(vec4<bool>(true, arg_0.b.a.x, arg_1.a.x, false), vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x), vec4<bool>(global0.c.a.x, false, arg_1.a.x, true)), vec4<bool>(!arg_0.b.a.x, 59673u <= arg_3.d, u_input.a <= -44338i, global0.c.a.x & false)), vec4<bool>(global0.c.a.x, true, any(vec3<bool>(arg_3.c.a.x, arg_0.b.a.x, arg_1.a.x)), any(vec2<bool>(true, true)))), vec4<bool>(true, !(!arg_0.b.a.x), select(false, false, func_4(vec3<i32>(0i, -2147483647i, u_input.a), !arg_0.b.a.x, vec3<bool>(global0.c.a.x, arg_1.a.x, false)).b.a.x), all(select(vec4<bool>(true, false, arg_3.c.a.x, true), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_2.x, arg_0.b.a.x), false), true))), global0.c.a.x != arg_1.a.x);
    var var_1 = vec2<f32>(arg_1.b.x, arg_3.c.b.x);
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_3.c.b.yx)), vec2<f32>(_wgslsmith_div_f32(arg_3.c.b.x, -717f), 380f));
    var_0 = select(select(!(!(!vec4<bool>(false, false, true, var_0.x))), !vec4<bool>(true, 0i == u_input.a, arg_0.b.a.x, any(vec4<bool>(false, var_0.x, arg_1.a.x, false))), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, arg_1.a.x, false, var_0.x), true))), vec4<bool>(arg_3.c.a.x, !(!(2191f > arg_3.c.b.x)), !all(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(false, false, true, arg_1.a.x), true)), global0.c.a.x), false);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(-func_1(vec3<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x), abs(vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i)), _wgslsmith_mod_u32(u_input.c, u_input.c)), any(vec3<bool>(any(vec2<bool>(global0.c.a.x, global0.c.a.x)), global0.c.a.x, true)), !vec3<bool>(true & global0.c.a.x, global0.c.a.x, false)), global0.c, vec3<bool>(global0.c.a.x, all(select(select(vec3<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x), vec3<bool>(global0.c.a.x, global0.c.a.x, true), vec3<bool>(true, global0.c.a.x, global0.c.a.x)), !vec3<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x), vec3<bool>(true, true, true))), global0.c.a.x), Struct_2(global0.a, vec4<u32>(~select(0u, 63953u, true), ~func_4(vec3<i32>(1i, u_input.a, u_input.a), global0.c.a.x, vec3<bool>(global0.c.a.x, false, global0.c.a.x)).a.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c, global0.a), u_input.c), firstLeadingBit(~global0.d)), func_4(select(vec3<i32>(-10462i, u_input.a, 2147483647i), vec3<i32>(-31523i, u_input.b, u_input.a), vec3<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x)), false, select(!vec3<bool>(true, global0.c.a.x, global0.c.a.x), vec3<bool>(false, false, false), select(vec3<bool>(global0.c.a.x, global0.c.a.x, true), vec3<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x), true))).b, 24u));
    let var_0 = func_1(select(select(vec3<bool>(global0.c.a.x, true, true), vec3<bool>(false, any(vec4<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x, false)), true), select(vec3<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x), !vec3<bool>(false, true, global0.c.a.x), all(vec3<bool>(false, global0.c.a.x, global0.c.a.x)))), select(select(select(vec3<bool>(global0.c.a.x, global0.c.a.x, global0.c.a.x), vec3<bool>(global0.c.a.x, global0.c.a.x, true), vec3<bool>(false, false, global0.c.a.x)), !vec3<bool>(global0.c.a.x, true, global0.c.a.x), vec3<bool>(global0.c.a.x, true, true)), !vec3<bool>(global0.c.a.x, false, false), true), select(true, any(select(vec3<bool>(global0.c.a.x, true, true), vec3<bool>(false, global0.c.a.x, global0.c.a.x), false)), !(true & global0.c.a.x))), -(~abs(~vec4<i32>(-60485i, u_input.a, 0i, u_input.a))), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a, 24240u, u_input.c, 4294967295u), vec4<u32>(4294967295u, 85455u, global0.b.x, global0.a)), vec4<u32>(0u, 4294967295u, global0.a, 4294967295u)), u_input.c, 4294967295u));
    let var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(func_5(Struct_3(vec2<u32>(u_input.c, 86376u), Struct_1(global0.c.a, global0.c.b), global0.c.b, global0.c.b.zy), global0.c, vec3<bool>(true, global0.c.a.x, true), Struct_2(u_input.c, global0.b, global0.c, 1u)).b.x, ~global0.d), 1u), func_4(min(var_0, _wgslsmith_add_vec3_i32(vec3<i32>(1i, var_0.x, var_0.x), vec3<i32>(u_input.b, u_input.a, 7269i))) ^ ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_0.x, -1i), var_0), true, vec3<bool>(true, false, true)).a);
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(4294967295u, max(8670u >> (global0.a % 32u), var_1.x)), 27641u, abs(1u), 1u) << (vec4<u32>(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(23475u, u_input.c)), reverseBits(global0.b.xz)), var_1.x, u_input.c, u_input.c) % vec4<u32>(32u));
    var_2 = vec4<u32>(4294967295u, 34339u, _wgslsmith_add_u32(_wgslsmith_sub_u32(~4294967295u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 0u), vec3<u32>(global0.d, 56598u, 1u)), 1u)), _wgslsmith_mod_u32(1u, ~2292u)), ~_wgslsmith_add_u32(var_1.x, ~0u));
    let var_3 = func_4(var_0, global0.c.b.x > _wgslsmith_f_op_f32(global0.c.b.x + -199f), select(vec3<bool>(global0.c.a.x, !(361f > global0.c.b.x), global0.c.a.x), vec3<bool>(true, true, true), select(func_4(-vec3<i32>(-2147483647i, -53490i, var_0.x), 33265u != u_input.c, select(vec3<bool>(false, global0.c.a.x, true), vec3<bool>(global0.c.a.x, false, global0.c.a.x), vec3<bool>(global0.c.a.x, false, true))).b.a.x, global0.c.a.x, true)));
    var_2 = _wgslsmith_mult_vec4_u32(~func_5(var_3, global0.c, vec3<bool>(var_3.b.a.x, var_3.b.a.x, false), Struct_2(77145u, vec4<u32>(var_1.x, 1u, 18853u, 15756u), var_3.b, var_3.a.x)).b & _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_2.x, 55987u, u_input.c), vec4<u32>(global0.d, 4294967295u, 4294967295u, var_3.a.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_3.a.x, global0.b.x, 59810u), global0.b)), global0.b | _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(global0.b, abs(global0.b)), ~global0.b));
    var var_4 = func_3(var_3.d, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(func_4(vec3<i32>(u_input.b, 9643i, var_0.x), false, vec3<bool>(false, global0.c.a.x, var_3.b.a.x)).a.x, ~6284u), _wgslsmith_dot_vec3_u32(global0.b.yyy, vec3<u32>(42972u, 1u, 14473u)), u_input.c), global0.b.wxw, vec3<u32>(_wgslsmith_add_u32(~var_2.x, ~var_1.x), ~(~10743u), 0u)), firstLeadingBit(60443u), vec4<f32>(-168f, var_3.b.b.x, global0.c.b.x, var_3.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(0u)), 863f, var_3.b.b, var_2.x, _wgslsmith_add_vec3_i32(max(vec3<i32>(_wgslsmith_add_i32(2147483647i, -1i), -var_0.x, 1i), abs(var_0) | var_0), vec3<i32>((u_input.a << (9885u % 32u)) << (func_3(vec2<f32>(960f, 651f), vec3<u32>(var_2.x, 0u, u_input.c), var_3.a.x, vec4<f32>(1000f, global0.c.b.x, -686f, var_3.b.b.x)) % 32u), -10322i, ~_wgslsmith_mult_i32(43552i, var_0.x))));
}

