struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: vec3<bool>;

var<private> global2: Struct_2;

var<private> global3: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-212f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1037f - arg_0.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), _wgslsmith_f_op_f32(abs(global2.a.x))))), _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, arg_0.a.x, 811f, arg_0.a.x) + vec4<f32>(arg_0.a.x, arg_0.a.x, 456f, global2.a.x))))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-877f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_div_f32(482f, global2.a.x)), arg_0.a.x, -513f)));
    global0 = vec3<bool>(global1.x || global1.x, any(select(vec4<bool>(true && global0.x, true, global0.x, true), select(vec4<bool>(global0.x, global0.x, global0.x, true), !vec4<bool>(global1.x, global1.x, true, global0.x), vec4<bool>(false, false, global0.x, global0.x)), global1.x)), any(select(vec3<bool>(global0.x, false, all(vec3<bool>(global0.x, global0.x, false))), !vec3<bool>(global0.x, true, true), global0.x)));
    let var_1 = arg_0;
    global0 = !vec3<bool>(global1.x == ((global3.x != 1i) == global1.x), u_input.a.x < u_input.d, global1.x);
    global3 = firstLeadingBit((vec4<i32>(global3.x, _wgslsmith_sub_i32(-85723i, 11066i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -1i, global3.x), vec4<i32>(2147483647i, -2147483647i, global3.x, 1i)), -u_input.b) << (~u_input.a % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u)));
    return global0.zz;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1565f, global2.a.x, 488f, global2.a.x) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, global2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(950f, _wgslsmith_div_f32(-1000f, global2.a.x), global1.x))), _wgslsmith_f_op_f32(abs(379f)), global2.a.x));
    var var_1 = Struct_1(!select(select(vec2<bool>(global1.x, true), func_3(Struct_2(var_0.yy)), any(vec2<bool>(global1.x, false))), vec2<bool>(true, true), global1.x), vec2<i32>(global3.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(global3.x, -43175i), _wgslsmith_sub_i32(u_input.b, -2147483647i)), global3.x)), select(vec4<bool>(true, global1.x, true, global0.x), !vec4<bool>(true, false, all(vec3<bool>(global1.x, global1.x, false)), true), !select(!vec4<bool>(global1.x, global0.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, true, global0.x))));
    global3 = -firstLeadingBit(max(countOneBits(vec4<i32>(10514i, -1i, 0i, -25150i)), vec4<i32>(i32(-1i) * -1i, var_1.b.x, -u_input.c, u_input.c)));
    var var_2 = global3.xyx;
    var var_3 = select(select(var_1.c.xxw, vec3<bool>(global0.x, any(select(var_1.c.zww, var_1.c.yyz, var_1.c.x)), false), vec3<bool>(var_1.a.x, any(!var_1.a), false)), !var_1.c.zzz, any(global1.zz));
    return Struct_2(var_0.zy);
}

fn func_1() -> i32 {
    var var_0 = func_2();
    global3 = vec4<i32>(~abs(global3.x), -((i32(-1i) * -1i) >> (~u_input.d % 32u)), _wgslsmith_mod_i32(min(~(-2147483647i), ~(-44897i)), 1i), 20662i);
    var var_1 = _wgslsmith_add_i32(~(-1i), u_input.c);
    var var_2 = Struct_1(vec2<bool>(all(!(!vec4<bool>(global1.x, global0.x, global1.x, global1.x))), global1.x), abs(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.c, global3.x) ^ vec2<i32>(0i, -10485i)), global3.zz)), select(select(vec4<bool>(!global0.x, global3.x != u_input.c, global1.x, global0.x), vec4<bool>(global0.x, true, false, !global0.x), func_2().a.x == _wgslsmith_f_op_f32(-599f * 1659f)), select(vec4<bool>(true, u_input.d >= 56266u, !global1.x, !global0.x), select(vec4<bool>(global0.x, global0.x, false, global1.x), !vec4<bool>(false, true, global0.x, global1.x), global3.x < -1i), vec4<bool>(true, true, true, true)), global1.x));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.a.x - 1650f), var_0.a.x))));
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a)) + vec2<f32>(-1304f, _wgslsmith_f_op_f32(round(global2.a.x)))))));
    global2 = Struct_2(global2.a);
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-(~func_1()), 37685i | global3.x), global3.wz);
    var var_1 = func_2();
    let var_2 = global0.zy;
    var var_3 = Struct_1(!global0.yy, abs(vec2<i32>(2147483647i & _wgslsmith_div_i32(var_0.x, 73079i), u_input.b)), vec4<bool>(global0.x, any(global1.xy), all(select(vec4<bool>(global1.x, var_2.x, true, global1.x), select(vec4<bool>(var_2.x, false, global1.x, true), vec4<bool>(true, global1.x, var_2.x, false), vec4<bool>(global0.x, global0.x, var_2.x, global0.x)), func_3(Struct_2(vec2<f32>(global2.a.x, -376f))).x)), false));
    let var_4 = true;
    var var_5 = vec3<u32>(12499u, 4294967295u, u_input.d);
    global1 = var_3.c.ywz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-978f)), _wgslsmith_f_op_f32(752f + _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(389f - var_1.a.x)), ~(~_wgslsmith_mult_u32(0u, u_input.d) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 57981u, 4264u), u_input.a) % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1190f - global2.a.x))))));
}

