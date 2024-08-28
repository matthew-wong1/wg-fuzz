struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1() -> vec3<f32> {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1699f + -712f), -612f, all(vec3<bool>(true, true, false)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-515f, -861f, 752f))))))), true | !(u_input.a.x > -24290i));
    let var_2 = _wgslsmith_add_i32(~u_input.d.x, 1i);
    let var_3 = 4294967295u;
    let var_4 = 0i;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1041f - _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -129f)), 428f) - var_1.b);
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1070f, -705f, -2126f, -522f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(294f, 1176f, 290f, 841f), vec4<f32>(-2293f, 1296f, -675f, 1508f), vec4<bool>(false, true, false, true))), vec4<bool>(false, false, true, true))))));
    var var_1 = !select(select(vec3<bool>(false, true, select(false, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true)), !vec3<bool>(31631u > u_input.b.x, var_0.x == -1646f, any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true));
    var var_2 = 1i & u_input.c.x;
    var_1 = select(vec3<bool>(var_1.x, !var_1.x, !var_1.x), !(!select(!vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, var_1.x, true))), vec3<bool>(all(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(true, var_1.x, false, var_1.x)), select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), true), false)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(u_input.b.x, 13142u, 4294967295u))) != ~u_input.b.x, true));
    var var_3 = Struct_2(var_0.x, u_input.c.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(floor(var_0.x)), true))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -756f, _wgslsmith_f_op_f32(f32(-1f) * -889f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.yxz, vec3<f32>(var_0.x, -313f, var_0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1380f, -466f, 1004f), var_0.yzz)), all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), true), Struct_1(761f, var_0.xwx, true));
    return vec4<f32>(_wgslsmith_f_op_f32(max(-929f, var_3.d.a)), _wgslsmith_f_op_f32(-var_3.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * -284f)), var_0.x);
}

fn func_4(arg_0: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.x - -1267f) <= _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x));
    return -8759i;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(-809f)), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(356f, 925f, -302f, 330f) + _wgslsmith_f_op_vec4_f32(func_3()))) << (1u % 32u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1513f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2573f, 120f, -1397f)))), true), Struct_1(_wgslsmith_f_op_f32(-272f * _wgslsmith_div_f32(-238f, -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-641f, -685f, 576f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, -1000f, -311f) - vec3<f32>(-1000f, -991f, 634f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(757f, -237f, 2577f)))))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(-var_0.c.a) >= 421f, false, all(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(var_0.d.c, var_0.c.c), var_0.d.c)), any(select(vec3<bool>(var_0.d.c, false, false), vec3<bool>(true, var_0.c.c, var_0.c.c), vec3<bool>(var_0.d.c, true, false))))), all(vec4<bool>(all(!vec2<bool>(var_0.c.c, false)), (384f <= var_0.a) | true, true, all(vec2<bool>(true, true)))));
    let var_2 = var_0.d.a;
    var var_3 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 8575u), u_input.b.x, abs(0u))), ~vec3<u32>(min(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~81293u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(1u, 1u)), ~u_input.b.x));
    var var_4 = !any(var_1.yy);
    return Struct_2(712f, ~var_0.b, var_0.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x * _wgslsmith_f_op_f32(713f + -1313f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3()).wyx), !var_1.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec3<f32> {
    var var_0 = arg_1;
    var_0 = func_2().c;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-686f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(721f, -1000f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_2().d.b)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -2123f, 401f), vec3<f32>(arg_1.b.x, 1644f, arg_1.b.x)) + arg_1.b)))), arg_2);
    let var_2 = func_2().c;
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1577f * var_0.b.x), var_0.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-536f)) * var_1.a), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(802f)))), false);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 252f, -1833f) * vec3<f32>(-476f, 416f, -122f)) + _wgslsmith_f_op_vec3_f32(func_1())), vec3<f32>(-170f, _wgslsmith_f_op_f32(select(154f, -1045f, false)), 818f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -971f), 1000f, 129f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(func_5(func_2(), func_2().c, false))), vec3<f32>(_wgslsmith_f_op_f32(-1112f - -1000f), _wgslsmith_f_op_f32(-289f + _wgslsmith_div_f32(-724f, -1169f)), _wgslsmith_f_op_f32(f32(-1f) * -817f))));
    var var_1 = func_2();
    var_0 = _wgslsmith_f_op_vec3_f32(-var_1.c.b);
    var_1 = func_2();
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), abs(_wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b, u_input.a.x, -19929i), vec3<i32>(u_input.a.x, var_1.b, 8503i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.d.x, u_input.d.x), vec3<i32>(var_1.b, var_1.b, -44085i)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-176f, var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.d.b)), _wgslsmith_f_op_vec3_f32(func_1())), true), Struct_1(func_2().d.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1534f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-var_1.c.b), vec3<bool>(1i <= u_input.a.x, any(vec4<bool>(var_1.c.c, var_1.d.c, true, false)), all(vec3<bool>(false, var_1.d.c, true))))), true));
    let var_2 = (~u_input.b.x << (u_input.b.x % 32u)) ^ (reverseBits(~abs(u_input.b.x)) | _wgslsmith_mult_u32(~(~84395u), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_mult_vec2_i32(select(u_input.a.xy, u_input.c, var_1.d.c), u_input.d.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.b.x))))), reverseBits(4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(660f, -1000f, var_1.c.a, var_1.d.b.x), vec4<f32>(var_0.x, var_0.x, 1869f, -434f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1208f, -179f, 531f, var_1.c.a))))));
}

