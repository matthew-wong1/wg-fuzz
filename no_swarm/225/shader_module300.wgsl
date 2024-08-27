struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(-24102i, 1i, -1i), vec3<i32>(1i, 1i, -344i), vec3<i32>(21958i, 2147483647i, -1i), vec3<i32>(0i, 58239i, -1086i), vec3<i32>(2147483647i, 52803i, -1i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(-64919i, 1i, 2662i), vec3<i32>(-1i, 43052i, 2147483647i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(-1i, 7220i, -1i), vec3<i32>(-14568i, 37291i, 0i), vec3<i32>(-49433i, i32(-2147483648), 1i), vec3<i32>(-1299i, -16618i, -1i), vec3<i32>(i32(-2147483648), -93051i, 36579i), vec3<i32>(0i, 7383i, 0i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = vec4<i32>(~arg_1.c.x, _wgslsmith_dot_vec2_i32(arg_0.c, max(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.c, vec2<i32>(arg_1.c.x, arg_0.c.x)), -vec2<i32>(-18440i, arg_1.c.x)), vec2<i32>(arg_0.c.x | arg_0.c.x, countOneBits(46781i)))), ~(-7662i), arg_0.c.x);
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    let var_1 = arg_0;
    return arg_1.b.x;
}

fn func_2() -> vec2<u32> {
    global0 = array<vec3<i32>, 17>();
    var var_0 = !vec3<bool>(func_3(Struct_1(1817f, vec4<bool>(true, true, false, true), vec2<i32>(48323i, 20039i)), Struct_1(-1000f, vec4<bool>(true, false, false, true), vec2<i32>(-27196i, 0i))) != !func_3(Struct_1(-880f, vec4<bool>(true, false, true, true), vec2<i32>(7857i, 2147483647i)), Struct_1(-551f, vec4<bool>(true, false, true, true), vec2<i32>(-2147483647i, -1i))), true, any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(142f + -264f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = var_1;
    let var_3 = Struct_2(!any(var_0.zy), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1167f - var_1) + var_1) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) * var_1)), select(!select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, true, true, var_0.x), var_0.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, true, var_0.x), var_1 == 869f), select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x))), vec2<i32>(countOneBits(i32(-1i) * -37222i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(26321i, -1i, -26897i, 0i)), vec4<i32>(1i, 1i, 1i, 1i)))));
    return u_input.a.zy;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    let var_0 = Struct_2(true | any(vec2<bool>(true, -210f != arg_0)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1375f, 719f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 1159f) + _wgslsmith_f_op_f32(-1081f - 567f)), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), (vec2<i32>(2147483647i, -44380i) | (vec2<i32>(0i, -9891i) << (u_input.a.zx % vec2<u32>(32u)))) << (select(func_2(), select(vec2<u32>(43393u, 61468u), u_input.a.wx, false), true) % vec2<u32>(32u))));
    global0 = array<vec3<i32>, 17>();
    return vec4<bool>(false, func_3(var_0.b, var_0.b), var_0.b.b.x, all(select(!vec2<bool>(var_0.b.b.x, true), select(vec2<bool>(var_0.a, var_0.b.b.x), var_0.b.b.wx, var_0.b.b.x), !var_0.b.b.x)) & any(!(!var_0.b.b.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-618f * _wgslsmith_f_op_f32(abs(-470f))))), select(vec4<bool>(true, true, true, true), !func_1(_wgslsmith_div_f32(1000f, 406f)), !(!any(vec4<bool>(false, false, true, false)))), vec2<i32>(~min(_wgslsmith_add_i32(-9369i, 2147483647i), abs(1i)), 2147483647i));
    var var_1 = Struct_2(var_0.b.x, Struct_1(_wgslsmith_f_op_f32(-var_0.a), vec4<bool>(all(var_0.b.yxw), var_0.b.x, false, !all(var_0.b.xzy)), ~abs(-var_0.c)));
    let var_2 = (abs(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(20741i, var_1.b.c.x, var_0.c.x, -1i), vec4<i32>(var_0.c.x, 0i, var_0.c.x, -24576i)))) << (_wgslsmith_mult_vec4_u32(firstTrailingBit(~u_input.a), u_input.a) % vec4<u32>(32u))) << (countOneBits(vec4<u32>(~_wgslsmith_mult_u32(u_input.a.x, 1u), ~9362u, select(~75708u, ~u_input.b, var_1.b.a > 110f), ~u_input.b)) % vec4<u32>(32u));
    var var_3 = ~(-var_2.yy | (vec2<i32>(-1i) * -max(var_2.xx, vec2<i32>(1i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.x, _wgslsmith_dot_vec3_i32(var_2.wzx, select(countOneBits(var_2.zwx), vec3<i32>(var_2.x, 30341i, -1i) ^ var_2.yzz, var_0.b.x)), countOneBits(~(-var_1.b.c.x))), ~_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, var_2.x, var_0.c.x), var_2.zzx), vec3<i32>(var_1.b.c.x, reverseBits(var_0.c.x), i32(-1i) * -34943i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(595f, 299f, 1000f, 393f), vec4<f32>(689f, 355f, -871f, 416f)))))))), countOneBits(29721i));
}

