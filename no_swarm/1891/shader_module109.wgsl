struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec4<f32> {
    global0 = Struct_4(!arg_2.x, abs(-17471i));
    global0 = Struct_4(arg_1.x, arg_0.b.c.x);
    let var_0 = arg_1.xx;
    global0 = Struct_4(!select(!any(vec4<bool>(true, false, var_0.x, true)), arg_0.d != 276f, all(!vec3<bool>(arg_2.x, var_0.x, arg_2.x))), _wgslsmith_mod_i32(i32(-1i) * -(i32(-1i) * -1i), 1i | ~global0.b));
    let var_1 = Struct_4(false, _wgslsmith_clamp_i32(min(-1i, _wgslsmith_mod_i32(arg_0.b.c.x, -1i) >> ((u_input.b.x | u_input.b.x) % 32u)), arg_0.b.c.x, -21456i));
    return _wgslsmith_f_op_vec4_f32(-arg_0.b.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec3<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-956f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-184f)))), global0.a | !(arg_1.x > arg_1.x))), _wgslsmith_f_op_f32(933f * arg_0.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x)))))));
    var var_1 = arg_0.c;
    global0 = Struct_4(true, -58590i);
    global0 = Struct_4(any(!select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, global0.a, true), false)) || select(!(1i != global0.b), global0.a, global0.a), firstTrailingBit(arg_0.c.x));
    var var_2 = Struct_2(select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 46354u, arg_1.x), ~vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), 1u, 48370u, countOneBits(47578u)), reverseBits(u_input.b), global0.a));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(-(~var_1.x), arg_0.c.x, 18007i), arg_0.c);
}

fn func_2() -> Struct_4 {
    global0 = Struct_4(global0.a, -2147483647i);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, -299f, -1062f, 1320f)), _wgslsmith_div_vec4_f32(vec4<f32>(447f, -353f, 1136f, 597f), vec4<f32>(858f, 126f, -481f, 948f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1203f, 609f, -1000f, -498f), vec4<f32>(-772f, -957f, -2093f, 2309f))), vec4<f32>(1005f, -971f, -229f, -1693f), global0.a || global0.a))))), _wgslsmith_f_op_f32(774f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1394f, _wgslsmith_f_op_f32(sign(-1275f))))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec4<i32>(global0.b, global0.b, global0.b, global0.b), Struct_1(vec4<f32>(-533f, 477f, -389f, 3217f), 726f, vec3<i32>(global0.b, 26198i, global0.b)), vec4<bool>(true, global0.a, global0.a, global0.a), 1523f, 1678f), vec3<bool>(false, global0.a, false), select(vec4<bool>(global0.a, true, global0.a, global0.a), vec4<bool>(true, global0.a, false, false), vec4<bool>(global0.a, true, global0.a, false)))), 1f, vec3<i32>(1i, 4164i, global0.b) >> (u_input.b.zxy % vec3<u32>(32u))), ~vec3<u32>(_wgslsmith_add_u32(1u, 1u), reverseBits(u_input.a), 22919u), countOneBits(~(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x) ^ u_input.b.yxy))));
    global0 = Struct_4((1538f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-631f, 123f) * _wgslsmith_f_op_f32(-1000f + var_0.a.x))) | !(_wgslsmith_f_op_f32(var_0.b * -322f) >= -1203f), -_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b, 2147483647i, var_0.c.x), vec3<i32>(0i, var_0.c.x, global0.b), vec3<i32>(31197i, var_0.c.x, -45264i)), -_wgslsmith_mult_vec3_i32(var_0.c, vec3<i32>(var_0.c.x, 17244i, -23168i))));
    return Struct_4(true, -func_4(Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.a.x, -1115f, var_0.b, 1666f)), _wgslsmith_f_op_f32(sign(478f)), -var_0.c), u_input.b.wwy, vec3<u32>(u_input.a, ~u_input.a, 4294967295u)).x);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    global0 = func_2();
    global0 = Struct_4(!any(vec2<bool>(any(vec3<bool>(global0.a, true, true)), global0.a)), _wgslsmith_mod_i32(global0.b, countOneBits(global0.b)));
    global0 = Struct_4(global0.a, 27931i);
    let var_0 = -abs(vec4<i32>(33330i, _wgslsmith_dot_vec2_i32(vec2<i32>(-38762i, global0.b), vec2<i32>(2147483647i, global0.b)) >> (arg_1 % 32u), -_wgslsmith_div_i32(global0.b, global0.b), 2147483647i));
    let var_1 = Struct_3(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + arg_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f - arg_0.x)))), -var_0.xxz), select(!vec4<bool>(global0.b >= var_0.x, true | global0.a, any(vec4<bool>(global0.a, global0.a, false, false)), global0.a), select(vec4<bool>(global0.a, any(vec2<bool>(true, global0.a)), all(vec2<bool>(false, global0.a)), global0.a), vec4<bool>(global0.a, select(global0.a, false, true), any(vec2<bool>(global0.a, false)), !global0.a), !all(vec3<bool>(true, true, global0.a))), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2134f)))) * -847f), 1000f);
    return func_4(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(242f)), _wgslsmith_f_op_f32(min(var_1.b.b, arg_0.x)), -521f, _wgslsmith_div_f32(1895f, 648f)))), _wgslsmith_f_op_f32(1748f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * -1000f)))), var_0.yzw), reverseBits(_wgslsmith_mult_vec3_u32((u_input.b.wzy | vec3<u32>(32823u, arg_1, 4294967295u)) ^ countOneBits(u_input.b.wyw), max(u_input.b.wzz, _wgslsmith_mult_vec3_u32(u_input.b.wxz, u_input.b.yxz)))), abs(u_input.b.zzy)).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var_0 = reverseBits(max(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-23401i, 0i), ~vec2<i32>(695i, -224i)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, 210f, -447f, 182f)), 1u >> (u_input.a % 32u))), ~firstTrailingBit(global0.b)));
    global0 = func_2();
    global0 = Struct_4(_wgslsmith_clamp_u32(0u, u_input.a ^ _wgslsmith_div_u32(u_input.b.x, 0u), ~56954u) >= u_input.b.x, global0.b);
    var var_1 = firstTrailingBit(vec3<u32>(53663u, u_input.b.x ^ u_input.b.x, ~min(abs(9699u), u_input.a ^ u_input.a)));
    let var_2 = global0.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-842f, -868f), -517f, -1435f, _wgslsmith_div_f32(1000f, 419f)))));
    var_0 = -2147483647i;
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global0.b, i32(-1i) * -2147483647i), vec4<i32>(-5394i, ~(-firstLeadingBit(32215i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(global0.b, 2147483647i), ~countOneBits(vec2<i32>(global0.b, global0.b))), abs(global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1199f), _wgslsmith_add_i32(-_wgslsmith_sub_i32(~0i, -global0.b), -firstTrailingBit(-33407i)));
}

