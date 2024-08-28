struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-12066i, arg_0.x, u_input.d, 58401i) | vec4<i32>(arg_0.x, arg_0.x, -20451i, -22126i), _wgslsmith_clamp_vec4_i32(vec4<i32>(13660i, u_input.d, u_input.a, u_input.d), vec4<i32>(-2147483647i, 11614i, -1i, 59876i), vec4<i32>(-1i, -1i, u_input.d, 33877i))), vec4<i32>(_wgslsmith_mult_i32(-1i, 0i), _wgslsmith_clamp_i32(42508i, arg_0.x, arg_0.x), min(u_input.d, -1i), 1i)), 7127i), !any(select(select(vec4<bool>(true, false, global0.x, false), vec4<bool>(true, false, true, global0.x), true), select(vec4<bool>(false, false, global0.x, false), vec4<bool>(false, false, false, true), vec4<bool>(global0.x, global0.x, false, true)), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, global0.x, true, false), false))));
    global0 = !(!select(!select(vec4<bool>(var_0.b, global0.x, var_0.b, var_0.b), vec4<bool>(true, true, var_0.b, false), vec4<bool>(false, var_0.b, false, false)), vec4<bool>(false, true, arg_1 < arg_1, false), select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(var_0.b, global0.x, true, var_0.b), global0.x), !vec4<bool>(global0.x, var_0.b, true, false), !vec4<bool>(true, global0.x, global0.x, var_0.b))));
    global0 = !select(vec4<bool>(false, all(!vec4<bool>(false, true, global0.x, global0.x)), var_0.b, true), vec4<bool>(global0.x, true | (false && var_0.b), false, global0.x), vec4<bool>(all(vec4<bool>(var_0.b, global0.x, global0.x, var_0.b)), false, var_0.b && (false && var_0.b), global0.x));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-13139i, u_input.d, 1i, arg_0.x), -vec4<i32>(var_0.a, var_0.a, 1i, -2147483647i)), (arg_0.x > arg_0.x) && true), Struct_1(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), arg_0.xy)), false)), arg_0.zy);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    global0 = vec4<bool>(!all(select(select(vec4<bool>(false, arg_1.a.b.b, global0.x, true), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, true, false, false)), !vec4<bool>(arg_1.a.b.b, global0.x, global0.x, false), !arg_1.a.b.b)), !func_2(abs(select(vec3<i32>(-1385i, arg_1.b.x, 35333i), vec3<i32>(-2147483647i, -1i, u_input.a), vec3<bool>(global0.x, global0.x, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, arg_0.x)))).a.a.b, arg_1.a.b.b, any(global0.xxx));
    global0 = select(select(vec4<bool>(true, false, all(vec3<bool>(arg_1.a.b.b, arg_1.a.b.b, global0.x)), all(vec2<bool>(global0.x, arg_1.a.b.b))), select(!(!vec4<bool>(arg_1.a.a.b, false, global0.x, false)), select(!vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(arg_1.a.b.b, true, global0.x, global0.x), arg_2.x >= 1u), true), select(vec4<bool>(false, all(vec4<bool>(false, global0.x, true, true)), true, true || global0.x), select(select(vec4<bool>(false, arg_1.a.a.b, false, true), vec4<bool>(global0.x, arg_1.a.a.b, global0.x, false), vec4<bool>(global0.x, true, arg_1.a.b.b, arg_1.a.b.b)), !vec4<bool>(arg_1.a.a.b, false, true, false), vec4<bool>(global0.x, arg_1.a.b.b, global0.x, true)), false)), vec4<bool>(true, any(global0.zxw), arg_1.a.a.b, any(global0.zz)), !(!select(!vec4<bool>(global0.x, false, false, true), vec4<bool>(false, global0.x, false, arg_1.a.a.b), 695f <= arg_0.x)));
    let var_0 = Struct_5(arg_1.b.x, arg_1.a.a.b, arg_0.x, abs(vec2<i32>(-2147483647i, 2147483647i)) ^ (arg_1.b ^ func_2(_wgslsmith_add_vec3_i32(vec3<i32>(-14596i, -1i, u_input.a), vec3<i32>(38751i, -1i, 0i)), 1015f).b), _wgslsmith_f_op_vec3_f32(abs(arg_0.zzw)));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-219f, 464f))))));
    global0 = select(select(vec4<bool>(-2147483647i > _wgslsmith_mod_i32(arg_1.b.x, 15339i), any(global0.yy), any(vec4<bool>(global0.x, arg_1.a.b.b, global0.x, var_0.b)), !var_0.b), vec4<bool>(var_1.x == _wgslsmith_div_f32(var_1.x, arg_0.x), false, var_0.b, all(!vec4<bool>(true, global0.x, true, true))), vec4<bool>(true, false, any(vec4<bool>(false, true, var_0.b, true)), false)), select(!(!(!vec4<bool>(global0.x, var_0.b, true, false))), select(select(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(arg_1.a.a.b, false, false, true), vec4<bool>(false, true, true, global0.x)), !vec4<bool>(true, false, false, global0.x), vec4<bool>(true, true, true, arg_1.a.b.b)), select(!vec4<bool>(var_0.b, global0.x, var_0.b, var_0.b), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, true), global0.x), !vec4<bool>(false, arg_1.a.a.b, true, true)), !(!vec4<bool>(false, false, false, var_0.b))), vec4<bool>(any(global0.zww), true, global0.x, (0u == arg_2.x) & (var_0.b || var_0.b))), vec4<bool>(true, !all(select(global0.ww, vec2<bool>(true, var_0.b), var_0.b)), true | all(vec4<bool>(var_0.b, false, false, global0.x)), 36400u != _wgslsmith_sub_u32(36631u << (u_input.b.x % 32u), ~u_input.b.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.e.x)))) - var_0.e.x) * -1941f);
}

fn func_1() -> Struct_5 {
    global0 = !(!select(!select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, global0.x, true, true), global0.x), vec4<bool>(global0.x || global0.x, select(global0.x, false, false), false, true), -2147483647i >= (u_input.d | -58777i)));
    global0 = !(!select(vec4<bool>(true, !global0.x, global0.x, true), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x));
    var var_0 = func_2(max(-(vec3<i32>(u_input.d, u_input.d, -1i) | vec3<i32>(-1i, u_input.a, 1i)), ~vec3<i32>(-2147483647i, 55363i, u_input.a)) | vec3<i32>(1i, u_input.a ^ u_input.a, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(145f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-559f, 245f)))) - _wgslsmith_f_op_f32(-135f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1840f, 1963f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2041f, -1422f))))));
    var var_2 = ~(~vec2<u32>(u_input.b.x, ~abs(4294967295u)));
    return Struct_5(u_input.d, ~_wgslsmith_mod_u32(min(4294967295u, var_2.x), min(19504u, 0u)) == reverseBits(var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-593f, -1000f, var_1.x, var_1.x), Struct_3(var_0.a, var_0.b), vec4<u32>(4294967295u, u_input.c, u_input.c, 1u))) - _wgslsmith_f_op_f32(-1314f - -1000f)), _wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + _wgslsmith_f_op_f32(max(var_1.x, var_1.x)))))), ~(~var_0.b ^ firstLeadingBit(vec2<i32>(u_input.a, u_input.d))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -878f), -324f, true)) + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_f_op_f32(floor(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.b.zx;
    let var_2 = true;
    global0 = !(!vec4<bool>(false, abs(var_1.x) < 0u, !(u_input.a <= u_input.d), true));
    let var_3 = global0.zxz;
    let var_4 = Struct_2(func_2(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 11501i, 0i), vec3<i32>(var_0.d.x, 0i, 19799i)), ~vec3<i32>(-25765i, 7890i, u_input.a), ~vec3<i32>(-1i, u_input.a, 50780i)), vec3<i32>(select(u_input.d, -1i, var_0.b), var_0.d.x, 33539i)), _wgslsmith_f_op_f32(-663f - func_1().c)).a.a, func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(select(-21684i, -34530i, false), _wgslsmith_mult_i32(0i, var_0.a), u_input.d), -(vec3<i32>(2147483647i, 30254i, u_input.d) | vec3<i32>(1i, -1i, -2147483647i))), 485f).a.a);
    global0 = !select(vec4<bool>(abs(u_input.c) < ~4294967295u, true | var_2, any(vec4<bool>(var_4.b.b, var_2, true, true)), func_1().b), vec4<bool>(true, var_2 || !global0.x, any(vec2<bool>(var_0.b, var_3.x)), select(!var_2, true || var_3.x, var_3.x)), (select(false, var_0.b, var_2) != true) & global0.x);
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, var_4.b.a), vec3<i32>(2147483647i, 0i, u_input.d)))));
}

