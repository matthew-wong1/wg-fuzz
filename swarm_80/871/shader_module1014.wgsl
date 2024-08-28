struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(33563i, false, i32(-2147483648), vec3<bool>(true, false, true)), Struct_1(-20304i, true, -1i, vec3<bool>(false, true, true)));

var<private> global1: u32;

var<private> global2: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = vec4<f32>(1f, 1f, 1f, 1f);
    let var_1 = _wgslsmith_div_u32(~(0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 20612u, 96771u), ~vec4<u32>(942u, 1u, 32587u, 0u)) % 32u)), 0u);
    let var_2 = ~(~vec3<u32>(~(~79304u), 4294967295u, _wgslsmith_mod_u32(~0u, var_1)));
    let var_3 = ~vec3<i32>(~(~2147483647i) << (0u % 32u), global0.a.a, -arg_0.a.a);
    let var_4 = Struct_1(~_wgslsmith_dot_vec4_i32(-(vec4<i32>(2823i, global0.a.a, global0.a.a, 2147483647i) ^ vec4<i32>(56209i, -1i, global2.a.a, -49636i)), vec4<i32>(-15941i, ~global2.a.c, -1i, 55270i)), global2.b.b, arg_0.b.a, select(arg_0.a.d, select(select(global2.a.d, vec3<bool>(arg_0.b.d.x, false, true), select(arg_0.b.d.x, arg_0.b.d.x, global2.b.b)), select(vec3<bool>(false, false, true), select(arg_0.a.d, global0.b.d, global2.a.b), select(vec3<bool>(false, global0.a.b, false), global0.a.d, global0.b.d.x)), !select(arg_0.b.b, global2.b.d.x, false)), !(!all(vec4<bool>(true, global2.b.d.x, true, false)))));
    return !select(select(!select(vec3<bool>(true, true, arg_0.b.b), vec3<bool>(true, false, false), var_4.b), global2.b.d, any(!vec4<bool>(true, global0.b.d.x, global2.a.b, global2.b.b))), vec3<bool>(true, any(global0.a.d.yy), arg_0.b.b || any(vec2<bool>(var_4.b, true))), select(vec3<bool>(!global2.a.d.x, false, any(vec4<bool>(true, true, global2.b.d.x, false))), select(select(vec3<bool>(true, arg_0.b.b, global0.b.b), vec3<bool>(true, true, global2.a.d.x), var_4.b), global0.b.d, true), vec3<bool>(global0.b.d.x, false, select(false, true, arg_0.a.b))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = 0i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1964f - _wgslsmith_f_op_f32(f32(-1f) * -2589f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = Struct_2(Struct_1(-2147483647i, true, _wgslsmith_dot_vec3_i32(abs(max(vec3<i32>(5097i, arg_0.a, u_input.a), vec3<i32>(arg_2.x, -5295i, 1i))), ~(~vec3<i32>(arg_3.x, 0i, arg_0.c))), global0.b.d), Struct_1(-8298i, select(false, !all(vec4<bool>(global0.a.b, true, false, true)), global0.b.d.x), arg_3.x, global2.a.d));
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, false, !global2.a.d.x, !(global2.b.d.x & false)), Struct_2(arg_0, Struct_1(i32(-1i) * -37387i, arg_0.a > 2147483647i, -1i, vec3<bool>(arg_0.d.x, global2.a.d.x, global0.b.d.x))), Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(arg_2.yz, vec2<i32>(7999i, u_input.a)), global2.a.b, arg_2.x, func_3(Struct_2(Struct_1(-2147483647i, global2.a.d.x, -14993i, global2.a.d), global2.b))), arg_0)))));
    let var_1 = arg_2.xy;
    let var_2 = Struct_2(Struct_1(var_1.x, global2.a.d.x, 2147483647i, global2.a.d), arg_0);
    var var_3 = global2.b;
    return Struct_1(1i, all(select(select(vec2<bool>(true, true), var_2.a.d.yz, true), vec2<bool>(false, false), true & func_3(Struct_2(Struct_1(arg_3.x, var_3.b, -45250i, vec3<bool>(false, var_2.a.b, var_3.d.x)), Struct_1(66809i, true, u_input.a, var_2.b.d))).x)), global0.b.c, global0.b.d);
}

fn func_1() -> i32 {
    var var_0 = Struct_1(-10374i, !(!select(global0.a.d.x, false, global0.a.b != false)), countOneBits(global0.a.a), global2.b.d);
    let var_1 = 0u;
    var var_2 = Struct_1(global2.b.c, !(!(~84788u > var_1)), global0.b.c, global2.b.d);
    var var_3 = true;
    var_0 = func_2(global0.a, 1860f, ~(-vec4<i32>(-25635i, global0.b.c, ~25296i, firstLeadingBit(var_2.a))), ~(~_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, global2.a.c, 20136i), select(vec3<i32>(var_0.c, -2147483647i, global0.a.c), vec3<i32>(global2.a.a, 22247i, global2.b.c), vec3<bool>(true, true, false)))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    global2 = Struct_2(Struct_1(-23423i, select(!all(global2.b.d.xy), true, any(select(vec3<bool>(true, global2.a.b, global2.b.d.x), global0.b.d, global0.b.b))), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-1i, global0.a.c)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(19502i, u_input.a, 9382i), vec3<i32>(global2.a.c, u_input.a, u_input.a)), _wgslsmith_mult_i32(-15211i, -25705i))), !vec3<bool>(true, true, !global0.b.d.x)), Struct_1(global2.b.c, global2.b.b && false, func_1(), !(!global2.a.d)));
    let var_1 = Struct_2(global2.b, global0.b);
    var var_2 = func_2(func_2(Struct_1(-(~global2.a.c), func_2(func_2(var_1.b, -802f, vec4<i32>(2147483647i, u_input.a, global2.a.a, global0.b.a), vec3<i32>(-8150i, 23724i, -2147483647i)), _wgslsmith_div_f32(-1000f, 807f), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -18137i, var_1.b.c, global2.b.c), vec4<i32>(1i, global0.b.a, global2.a.a, global0.b.a)), vec3<i32>(u_input.a, -12568i, -2147483647i)).b, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.a.a, u_input.a), vec3<i32>(var_1.b.a, 2147483647i, -1i)), ~1206i, true), vec3<bool>(all(vec4<bool>(global0.b.d.x, false, var_1.b.d.x, false)), global2.a.d.x, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1591f)))), ~(vec4<i32>(0i, -27729i, u_input.a, 2542i) | ~vec4<i32>(2225i, global0.a.c, -1i, global0.b.c)), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_1.a.a, global0.b.c), vec3<i32>(var_1.a.a, u_input.a, var_1.b.a)))), 231f, firstLeadingBit(-vec4<i32>(var_1.a.a ^ global0.b.c, 5100i, 29776i, global2.b.a)), select(vec3<i32>(1i, 1i, 1i), max(vec3<i32>(global2.b.a, _wgslsmith_sub_i32(0i, 6004i), 2047i), -vec3<i32>(2147483647i, -15967i, 2147483647i)), ~(u_input.a << (0u % 32u)) == 2147483647i));
    var var_3 = abs(abs(~(countOneBits(1u) | _wgslsmith_clamp_u32(4294967295u, 0u, 78966u))));
    var var_4 = i32(-1i) * -global2.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-232f, 737f), vec2<f32>(-1133f, 463f), false)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-980f, 559f), vec2<f32>(621f, 1666f), global0.b.d.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(789f, -1723f), vec2<f32>(-2098f, 1442f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1075f)))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-869f, _wgslsmith_f_op_f32(-1923f - -430f)))))), firstTrailingBit(1i), reverseBits(-2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(509f))) + _wgslsmith_f_op_f32(step(1341f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2250f)), _wgslsmith_f_op_f32(-786f + -503f))))));
}

