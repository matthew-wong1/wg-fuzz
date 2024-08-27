struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: vec2<i32>;

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = arg_2;
    global0 = array<vec4<i32>, 20>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.a.zz, _wgslsmith_f_op_vec2_f32(sign(arg_2.a.zx)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.c.b, 180f)))))) * _wgslsmith_f_op_vec2_f32(-arg_2.a.yz)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2.a.xz * var_0.a.xx))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.e, 2591f), arg_2.a.yy, global2.x)))) + var_0.a.yz))));
    let var_2 = _wgslsmith_add_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.b, var_0.b, 49470i), ~vec3<i32>(0i, 70661i, arg_2.b)) & ~(-(vec3<i32>(2147483647i, arg_1.x, 2147483647i) & vec3<i32>(var_0.b, 2794i, arg_2.b))), _wgslsmith_clamp_vec3_i32(-(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, arg_1.x, arg_2.b), vec3<i32>(-63842i, 23861i, arg_1.x), vec3<i32>(2147483647i, global1.x, var_0.b)) >> (firstLeadingBit(vec3<u32>(u_input.b, 128826u, u_input.a)) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, arg_1.x, 1i)), -vec3<i32>(18578i, arg_2.b, -1i)), -abs(vec3<i32>(2147483647i, 35885i, arg_1.x)) & _wgslsmith_add_vec3_i32(vec3<i32>(global1.x, 2147483647i, arg_2.b), -vec3<i32>(612i, var_0.b, 0i))));
    var var_3 = true;
    return !vec4<bool>(~u_input.b <= 14727u, arg_2.c.c, true, 440f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * _wgslsmith_f_op_f32(round(321f))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(select(func_3(Struct_1(!vec4<bool>(false, false, global2.x, true), 317f, all(vec4<bool>(false, global2.x, true, global2.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(-9966i, -21988i) ^ vec2<i32>(58494i, global1.x), vec2<i32>(global1.x, global1.x)), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1134f, 310f, 533f, -417f), vec4<f32>(-1087f, -1127f, 2047f, 408f), vec4<bool>(false, false, true, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(-14275i, global1.x), vec2<i32>(global1.x, global1.x)), Struct_1(vec4<bool>(global2.x, true, true, global2.x), 368f, global2.x), -717f, -2960f)), select(!vec4<bool>(true, true, false, global2.x), !(!vec4<bool>(global2.x, false, false, true)), (0u | u_input.a) >= u_input.b), !vec4<bool>(true, true, all(vec4<bool>(true, global2.x, true, global2.x)), true)), _wgslsmith_div_f32(862f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1519f, -1041f, global2.x)))) * 300f)), true);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1761f, -576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))), _wgslsmith_f_op_f32(sign(-416f)))), _wgslsmith_div_i32(global1.x, _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(global1.x ^ 1i, global1.x & global1.x))), Struct_1(!var_0.a, 280f, select(var_0.a.x, true, false)), var_0.b, 620f);
    let var_2 = var_1.c;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_1.e, -200f, var_2.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.b, 165f, 1696f, var_1.d) * var_1.a))), _wgslsmith_f_op_vec4_f32(var_1.a - var_1.a), reverseBits(u_input.a) != ~(~0u))), _wgslsmith_mult_i32(firstTrailingBit(0i), ~var_1.b), Struct_1(vec4<bool>(global2.x, !all(var_1.c.a), var_0.c, any(var_1.c.a.xzy)), -1036f, all(select(vec4<bool>(true, var_2.c, false, var_1.c.c), vec4<bool>(var_1.c.c, var_1.c.c, true, true), any(var_1.c.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-375f))), _wgslsmith_f_op_f32(min(var_1.c.b, var_2.b)));
    let var_4 = var_1.b;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.c.b)), -1000f, var_1.d, _wgslsmith_f_op_f32(round(-564f)))), global1.x << ((((u_input.b >> (1143u % 32u)) | _wgslsmith_add_u32(u_input.a, u_input.b)) & ~4294967295u) % 32u), Struct_1(vec4<bool>(false, any(var_0.a.wy) || var_3.c.c, -1177f == _wgslsmith_f_op_f32(trunc(var_2.b)), !any(var_1.c.a)), -688f, true), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(-var_2.b));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = array<vec4<i32>, 20>();
    let var_0 = func_2();
    var var_1 = func_2().c;
    let var_2 = 0u;
    var var_3 = 12858u;
    return func_2();
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(u_input.a, arg_3 >> (_wgslsmith_div_u32(arg_3 >> (u_input.a % 32u), ~arg_3) % 32u)), 127775u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().c.b));
    let var_2 = arg_2;
    var var_3 = func_1(4294967295u).c;
    let var_4 = -1000f;
    return func_2().c;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    global2 = func_3(func_2().c, vec2<i32>(_wgslsmith_sub_i32(global1.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-18512i, -14527i), arg_1.b)), ~(~(-37046i))), Struct_2(arg_0, ~func_1(~u_input.b).b, Struct_1(arg_1.c.a, arg_0.x, func_3(arg_1.c, ~vec2<i32>(2147483647i, global1.x), Struct_2(arg_0, global1.x, arg_1.c, 1000f, -1030f)).x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - arg_1.c.b)))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(max(arg_1.e, _wgslsmith_f_op_f32(arg_0.x - 895f)))))).wxy;
    global2 = !func_1(0u).c.a.www;
    return -828f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1304f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(469f * -938f), _wgslsmith_f_op_f32(f32(-1f) * -1046f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-866f, 1458f) + vec2<f32>(2010f, 279f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-150f, -682f))))), global2.x)));
    let var_1 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(-1374f, -215f, -341f, 431f)), vec4<f32>(187f, 1185f, var_0.x, -676f))))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 643f, var_0.x)))), global1.x, func_4(vec3<bool>(false, true, 790f < var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x), var_0.x, -111f), func_1(u_input.a), 81687u), _wgslsmith_f_op_f32(-func_2().e), func_2().e)));
    global2 = !(!(!func_3(Struct_1(vec4<bool>(global2.x, true, true, global2.x), 792f, true), abs(vec2<i32>(-3386i, -9955i)), func_1(u_input.b)).yzw));
    var var_2 = global1.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-func_1(abs(66603u)).a.yx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -_wgslsmith_sub_i32(-15926i, 1i), _wgslsmith_dot_vec4_i32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(26017u, 12373u, u_input.b, 1u), vec4<u32>(u_input.a, 37145u, u_input.b, u_input.a)), 20u)], _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, -2147483647i, global1.x, 0i), vec4<i32>(26580i, -1i, 2147483647i, global1.x)), ~vec4<i32>(global1.x, -32922i, global1.x, 24835i))), global1.x, ~(~(~(-2147483647i)))), vec3<i32>(global1.x, -8779i, i32(-1i) * -1i), 695f);
}

