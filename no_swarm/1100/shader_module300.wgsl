struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(1u, 1u, 0u, 7348u), vec4<u32>(40505u, 85003u, 4294967295u, 70661u), vec4<u32>(1u, 14116u, 1u, 41058u), vec4<u32>(0u, 18719u, 0u, 106750u), vec4<u32>(0u, 4294967295u, 42621u, 1u), vec4<u32>(4294967295u, 1u, 23311u, 1u));

var<private> global1: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = Struct_3(arg_1.c.a, select(_wgslsmith_dot_vec2_i32(arg_1.c.c >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(29717u, u_input.b.x), vec2<u32>(55957u, 4294967295u), vec2<u32>(6322u, 4294967295u)) % vec2<u32>(32u)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, 41125i), vec2<i32>(global1.x, arg_2)), -vec2<i32>(2147483647i, -16378i), select(true, arg_1.d.b, false))), 0i, true));
    global0 = array<vec4<u32>, 6>();
    var var_1 = arg_1.b.b;
    global0 = array<vec4<u32>, 6>();
    let var_2 = abs(global1.x);
    return arg_1.c.b;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(vec2<f32>(1f, 1f), false, _wgslsmith_add_vec2_i32(select(-vec2<i32>(0i, 15073i), -reverseBits(vec2<i32>(global1.x, global1.x)), vec2<bool>(func_3(global1.x, Struct_2(vec4<i32>(-28483i, 2147483647i, 2147483647i, 9101i), Struct_1(vec2<f32>(-939f, 968f), true, global1.zz, vec4<f32>(-676f, 1789f, -1000f, 1662f)), Struct_1(vec2<f32>(1459f, -230f), false, vec2<i32>(global1.x, global1.x), vec4<f32>(-1357f, 966f, -1000f, 360f)), Struct_1(vec2<f32>(-150f, 424f), true, global1.yy, vec4<f32>(-1380f, 151f, 231f, 269f))), -2147483647i), true)), global1.yz | vec2<i32>(_wgslsmith_mod_i32(44411i, global1.x), _wgslsmith_clamp_i32(0i, global1.x, 0i))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(132f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-301f - 2115f)), 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f + 213f) + -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1291f * _wgslsmith_f_op_f32(f32(-1f) * -1038f))))));
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(54432u, 18369u, _wgslsmith_sub_u32(u_input.a.x, min(0u ^ u_input.c, u_input.a.x))), ~(~vec3<u32>(1u, u_input.a.x ^ 119131u, 1u)));
    return 1000f;
}

fn func_1() -> i32 {
    global0 = array<vec4<u32>, 6>();
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1391f, 612f, 2372f) - vec3<f32>(-1364f, -480f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2256f, 175f, 1000f)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1487f, 554f, 1646f))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-439f)) * _wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1011f)) * _wgslsmith_f_op_f32(sign(-1547f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1104f, 610f, 1000f) - vec3<f32>(1279f, -376f, 1069f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1146f, 1058f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1091f, 1753f, -652f) + vec3<f32>(-1278f, 1000f, 984f)), true)), -2147483647i <= ~global1.x))))));
    let var_1 = -1661f;
    let var_2 = 103f;
    var var_3 = _wgslsmith_mult_u32(u_input.c, 16081u);
    return 18106i;
}

fn func_4(arg_0: i32) -> i32 {
    global0 = array<vec4<u32>, 6>();
    global0 = array<vec4<u32>, 6>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1815f, -661f) * vec2<f32>(449f, -1000f)))))))), ~global1.x);
    global1 = abs(vec3<i32>(var_0.b, -2147483647i, _wgslsmith_div_i32(var_0.b, i32(-1i) * -34642i)));
    let var_1 = u_input.a.wz;
    return _wgslsmith_div_i32(19336i, ~(~(-8308i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 6>();
    global0 = array<vec4<u32>, 6>();
    global1 = vec3<i32>(~global1.x, global1.x ^ max(global1.x, global1.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, global1.x), global1.x & global1.x) & global1.x, ~(~_wgslsmith_sub_i32(1i, global1.x))));
    var var_0 = max(~(vec3<i32>(1i, _wgslsmith_sub_i32(global1.x, global1.x), -global1.x) >> (vec3<u32>(u_input.c, min(u_input.c, 4294967295u), u_input.c) % vec3<u32>(32u))), vec3<i32>(-47345i, max(1i, 22848i), i32(-1i) * -global1.x));
    var_0 = vec3<i32>(min(40213i ^ (i32(-1i) * -global1.x), var_0.x), -2147483647i, _wgslsmith_div_i32(-2147483647i, func_4(func_1())));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-132f - 1349f))), _wgslsmith_f_op_f32(-1683f - _wgslsmith_f_op_f32(f32(-1f) * -468f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(1000f - 2035f)), vec2<f32>(_wgslsmith_f_op_f32(sign(720f)), _wgslsmith_f_op_f32(step(-824f, -703f)))))), true, global1.yy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 511f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-418f + 206f))), 899f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-42747i, 30953i, var_0.x), vec3<i32>(42789i, global1.x, var_1.c.x)))) << (u_input.b % vec3<u32>(32u)), 28030i);
}

