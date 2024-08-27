struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    return -64374i;
}

fn func_2() -> i32 {
    global0 = reverseBits(_wgslsmith_dot_vec2_i32(~select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 7766i) >> (u_input.c.yw % vec2<u32>(32u)), vec2<bool>(false, false)), vec2<i32>(_wgslsmith_add_i32(u_input.a >> (u_input.b.x % 32u), _wgslsmith_mult_i32(u_input.a, u_input.a)), max(u_input.a, func_3()))));
    global0 = -1i;
    global0 = abs(0i);
    global0 = select(u_input.a, 1i, any(select(vec4<bool>(u_input.b.x < 4294967295u, true, true, false), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), true)));
    global0 = countOneBits(-(~_wgslsmith_sub_i32(39497i, u_input.a) ^ 0i));
    return 0i;
}

fn func_1() -> vec2<f32> {
    global0 = _wgslsmith_add_i32(-1i, -max((u_input.a & u_input.a) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, -2147483647i), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), _wgslsmith_mult_i32(func_2(), countOneBits(1087i))));
    var var_0 = Struct_3(select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(u_input.a < 2147483647i, all(vec4<bool>(true, true, false, false))), !select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)), ~((vec3<i32>(11809i, u_input.a, u_input.a) >> (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), max(vec3<i32>(28877i, 0i, 50631i), vec3<i32>(-5108i, u_input.a, -11196i)))), Struct_2(vec2<f32>(-112f, _wgslsmith_f_op_f32(f32(-1f) * -412f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1812f), ~vec2<u32>(1661u, u_input.b.x)), abs(abs(vec3<i32>(2147483647i, 1i, 4709i)) << (~u_input.b.xyx % vec3<u32>(32u)))));
    let var_1 = vec3<bool>(var_0.a.x, all(!select(select(vec4<bool>(false, false, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, false, false), true), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(true, false, true, var_0.a.x))), true | var_0.a.x);
    var_0 = Struct_3(var_0.a, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_0.c.c.x), ~1i), var_0.c.c.xy), ~(u_input.a ^ -48575i), ~var_0.b.x), var_0.c);
    global0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, 9646i), var_0.b.x, _wgslsmith_add_i32(-1i, -1i) | _wgslsmith_mult_i32(min(u_input.a, var_0.b.x & u_input.a), u_input.a));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c.a.x, 1856f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.b.a, var_0.c.b.a))), 133f) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.c.a - var_0.c.a)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.c.b.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.b.a))))), arg_3.c.b.b);
    var var_1 = arg_1.a.c.yy;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-1000f - arg_3.c.a.x), arg_2.b);
    let var_3 = Struct_3(select(vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(true, arg_1.c.a.x)), !arg_3.a.x), arg_1.c.a, !(!arg_1.c.a.x)), vec2<bool>(!arg_3.a.x, (arg_1.d.x && arg_3.a.x) && any(arg_1.d.xx))), vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.c.c.x, 1i, abs(10036i)), arg_1.a.c), max(var_1.x, _wgslsmith_mod_i32(1i, func_2()))), arg_3.c);
    let var_4 = Struct_3(!var_3.a, ~_wgslsmith_div_vec3_i32(vec3<i32>(var_3.c.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_3.b.x), vec2<i32>(u_input.a, 23149i)), var_3.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(20051i, -1i, 1i), vec3<i32>(arg_1.a.c.x, arg_1.c.b.x, var_3.b.x))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1853f, -721f) - arg_3.c.a), _wgslsmith_f_op_vec2_f32(var_3.c.a + arg_3.c.a)))), var_2, arg_3.c.c));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -(~abs(~(~u_input.a)));
    let var_0 = u_input.b.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_4(firstLeadingBit(select(~u_input.c.xyx, ~u_input.c.wzx, true)), Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(func_1()), Struct_1(-1249f, vec2<u32>(u_input.b.x, 4294967295u)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a, 15109i), vec3<i32>(18029i, -31959i, u_input.a))), Struct_1(_wgslsmith_f_op_f32(-289f + -241f), vec2<u32>(var_0, 100002u)), Struct_3(vec2<bool>(true, true), vec3<i32>(u_input.a, u_input.a, 1i), Struct_2(vec2<f32>(120f, 2996f), Struct_1(-1075f, vec2<u32>(var_0, 4294967295u)), vec3<i32>(67577i, u_input.a, u_input.a))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(577f - -547f)), vec2<u32>(3450u, 1u)), Struct_3(vec2<bool>(true, true), (vec3<i32>(1i, u_input.a, 2147483647i) | vec3<i32>(-1i, u_input.a, -1i)) << (vec3<u32>(u_input.b.x, 62646u, var_0) % vec3<u32>(32u)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, 665f)), Struct_1(734f, u_input.c.xw), _wgslsmith_mod_vec3_i32(vec3<i32>(-64232i, u_input.a, 1i), vec3<i32>(-5733i, u_input.a, -1i)))))), vec2<u32>(var_0 << (u_input.b.x % 32u), 1u) & u_input.c.xy);
    let var_2 = ~vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, u_input.a)), ~u_input.a) | ((_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-6103i, u_input.a)), vec2<i32>(-2147483647i, 54338i)) | min(vec2<i32>(1i, -2147483647i) >> (vec2<u32>(1u, var_0) % vec2<u32>(32u)), vec2<i32>(50872i, -25127i) ^ vec2<i32>(u_input.a, u_input.a))) ^ _wgslsmith_sub_vec2_i32(-(~vec2<i32>(22306i, 2640i)), max(-vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(-1i, u_input.a))));
    var var_3 = Struct_5(all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec2<bool>(true, true), true)), Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(var_1.a, 959f)), _wgslsmith_f_op_f32(-var_1.a)), Struct_1(_wgslsmith_f_op_f32(var_1.a + 375f), abs(vec2<u32>(12027u, 0u))), vec3<i32>(countOneBits(79i), ~0i, i32(-1i) * -16065i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0), vec2<u32>(49849u, var_1.b.x))), Struct_3(vec2<bool>(any(vec4<bool>(false, false, false, true)), select(false, true, true)), vec3<i32>(-57724i, u_input.a, -1i), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(1080f, -1000f), vec2<f32>(-785f, -814f)), Struct_1(-908f, vec2<u32>(29267u, 0u)), -vec3<i32>(u_input.a, var_2.x, var_2.x))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, true, false), any(vec3<bool>(false, false, true))), vec3<bool>(true, true, false), false)));
    global0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

