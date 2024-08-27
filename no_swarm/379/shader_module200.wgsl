struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: Struct_1;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-29979i, -37614i, 2147483647i), vec3<i32>(1i, 26057i, -14553i), vec3<i32>(10348i, 56746i, -55579i), vec3<i32>(2147483647i, 4606i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1213i, 17421i), vec3<i32>(22322i, -1i, i32(-2147483648)), vec3<i32>(-33466i, 0i, -70599i), vec3<i32>(1i, 12068i, 13798i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-70870i, i32(-2147483648), 19070i), vec3<i32>(0i, 188i, -95417i), vec3<i32>(21477i, -14110i, 22632i), vec3<i32>(34773i, i32(-2147483648), -1i), vec3<i32>(16571i, 1i, 6360i), vec3<i32>(2147483647i, -5391i, 1i));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-1224f, 1392f, 1000f, -1570f), vec3<i32>(0i, -15113i, -1i), 24105i, vec3<f32>(701f, -368f, -1375f), -553f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>) -> vec4<f32> {
    global2 = array<vec3<i32>, 15>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1426f, 543f, -764f, arg_0.x))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.d.x, 550f, -575f, 1390f)))))), global0.b, firstTrailingBit(29047i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.d - _wgslsmith_f_op_vec3_f32(select(global0.a.yzw, global3.a.xxx, vec3<bool>(false, global1.x, global1.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.d) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global3.d.x, _wgslsmith_f_op_f32(abs(580f)))))));
    let var_0 = Struct_1(global3.a, vec3<i32>(21854i, -firstLeadingBit(global0.c), countOneBits(-_wgslsmith_mod_i32(global3.b.x, global3.b.x))), u_input.b.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global3.a.yxz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, global3.a.x, global0.a.x), vec3<f32>(arg_0.x, 666f, global3.e), any(vec4<bool>(false, global1.x, global1.x, global1.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(710f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.x, arg_0.x) * -405f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * global0.d.x), _wgslsmith_div_f32(global0.e, -1000f))), global0.a, false)), vec3<i32>(~_wgslsmith_dot_vec2_i32(abs(u_input.b.zy), vec2<i32>(var_0.c, -4845i)), firstLeadingBit(var_0.b.x << (u_input.c % 32u)), (1535i ^ var_0.c) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -60249i, 339i), global2[_wgslsmith_index_u32(0u, 15u)]))), _wgslsmith_div_i32(1i, -2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1058f - global3.a.x), -478f, _wgslsmith_f_op_f32(-global3.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 197f, -1050f) * vec3<f32>(global0.d.x, arg_0.x, 1163f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-904f, 778f, arg_0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2604f))), 329f));
    let var_1 = -var_0.c;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.a)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, -666f) * arg_2)))))), u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global3.b, abs(_wgslsmith_sub_vec3_i32(global3.b, vec3<i32>(1i, global0.b.x, 11877i)))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_1, u_input.b.x, -66910i)), vec3<i32>(u_input.a, -14414i, 27949i) ^ vec3<i32>(2147483647i, arg_1, -7867i))), vec3<f32>(_wgslsmith_f_op_f32(global3.e - arg_2.x), -767f, arg_3), global3.e);
    var var_0 = _wgslsmith_f_op_f32(floor(arg_3));
    var var_1 = Struct_3(Struct_2(any(select(select(vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, true, false, false), global1.x), select(vec4<bool>(false, false, global1.x, true), vec4<bool>(false, global1.x, false, true), global1.x), true))));
    var_0 = 1f;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-615f)) + global3.e), _wgslsmith_f_op_f32(select(1081f, -564f, all(vec2<bool>(global1.x, true)))), _wgslsmith_f_op_f32(-global3.a.x)), global0.a)), vec3<i32>(-1i) * -global3.b, -72773i, global0.a.xyy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - arg_2.x))));
    return Struct_1(global3.a, ~vec3<i32>(global3.c, 5225i, u_input.a >> (~u_input.c % 32u)), _wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(global0.b.x, -31786i, global0.b.x, 1i))), firstLeadingBit(min(~vec4<i32>(19216i, global0.c, -1i, 499i), vec4<i32>(-2147483647i, global0.c, global3.c, global3.b.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_3, global3.d.x)))), 813f, -243f) + global3.a.xyz), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(step(1038f, 788f))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> vec2<u32> {
    let var_0 = Struct_5(Struct_3(Struct_2(false || arg_1)), _wgslsmith_mult_i32(-(~40555i), -_wgslsmith_sub_i32(30213i << (u_input.c % 32u), 2147483647i)));
    var var_1 = vec3<f32>(arg_0.e, _wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(-global0.a.x)), global0.d.x);
    global2 = array<vec3<i32>, 15>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -320f);
    global2 = array<vec3<i32>, 15>();
    return _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 57332u) & vec2<u32>(0u, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(61204u, 108517u))), vec2<u32>(u_input.c, abs(4826u))) << (~vec2<u32>(0u, 1u) % vec2<u32>(32u)), countOneBits(vec2<u32>(~1u, 0u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(trunc(global0.a.x)));
    let var_1 = !(!(!select(true, global1.x, false) | (global0.e == _wgslsmith_f_op_f32(exp2(var_0.a)))));
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, u_input.c, u_input.c), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 17794u), vec4<u32>(1u, u_input.c, u_input.c, u_input.c)))), _wgslsmith_mod_vec2_u32(func_4(func_2(vec3<u32>(4294967295u, u_input.c, u_input.c), u_input.a, vec2<f32>(arg_0.x, global0.d.x), -958f), false, true) ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(49144u, u_input.c), vec2<u32>(87221u, 4294967295u) | vec2<u32>(u_input.c, 24085u)), select(~(~vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(u_input.c, u_input.c), true)));
    global1 = select(vec3<bool>(var_1, false, !(any(global1.xx) != var_1)), !vec3<bool>(func_4(Struct_1(global0.a, global2[_wgslsmith_index_u32(var_2.x, 15u)], -18259i, vec3<f32>(global0.d.x, var_0.a, global0.e), -2019f), global1.x, global1.x).x == u_input.c, select(any(vec3<bool>(true, false, global1.x)), all(vec2<bool>(false, var_1)), false), select(var_2.x, var_2.x, var_1) >= _wgslsmith_mult_u32(79075u, var_2.x)), vec3<bool>(any(vec2<bool>(u_input.c > var_2.x, all(vec2<bool>(global1.x, true)))), any(vec2<bool>(global1.x, any(global1.zz))), global1.x));
    let var_3 = 4773u;
    return Struct_3(Struct_2(false));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = vec4<u32>(~min(u_input.c, firstLeadingBit(31819u & arg_1.x)), arg_1.x, ~(~u_input.c), _wgslsmith_div_u32(~1u, 1u) | u_input.c);
    var_0 = _wgslsmith_div_vec4_u32(~select(firstTrailingBit(~vec4<u32>(61519u, 21411u, u_input.c, 47065u)), vec4<u32>(~u_input.c, 32575u, arg_1.x, 1u), !(global0.b.x > u_input.a)), ~(~((vec4<u32>(u_input.c, 31328u, 65411u, arg_1.x) << (vec4<u32>(1u, 0u, 42323u, arg_1.x) % vec4<u32>(32u))) >> (vec4<u32>(12334u, arg_1.x, var_0.x, 68735u) % vec4<u32>(32u)))));
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x)));
    var var_3 = select(!(!(!select(vec3<bool>(global1.x, global1.x, arg_0.a.a.a), vec3<bool>(false, false, true), true))), select(vec3<bool>(var_1.a.a, global1.x, any(vec3<bool>(false, arg_0.a.a.a, global1.x))), select(!vec3<bool>(false, arg_0.a.a.a, var_1.a.a), vec3<bool>(var_1.a.a, true != global1.x, false), vec3<bool>(arg_0.a.a.a || true, any(vec4<bool>(false, arg_0.a.a.a, var_1.a.a, var_1.a.a)), !global1.x)), vec3<bool>(any(!vec4<bool>(false, true, arg_0.a.a.a, false)), true, global1.x)), true);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-193f, _wgslsmith_f_op_f32(f32(-1f) * -584f)))) - arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    var var_1 = Struct_4(global3.d.x);
    var var_2 = 1i;
    let var_3 = func_5(Struct_5(func_1(global3.a, ~(-2147483647i), global2[_wgslsmith_index_u32(25817u, 15u)]), ~global0.b.x), ~firstLeadingBit(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(62472u, u_input.c)), vec2<u32>(45836u, 4294967295u), vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(10403u, u_input.c) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.a.yyx - var_0.xxx)), vec3<f32>(func_2(vec3<u32>(u_input.c, u_input.c, 14298u), u_input.a, vec2<f32>(1066f, global0.d.x), -496f).a.x, _wgslsmith_f_op_f32(global0.e - var_1.a), 1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(116f, var_1.a, var_0.x) + vec3<f32>(global3.d.x, var_1.a, global3.d.x)), _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(var_1.a, 683f))).zyx)) + vec3<f32>(_wgslsmith_f_op_f32(floor(588f)), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(ceil(164f))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(global0.a.yzy - _wgslsmith_f_op_vec3_f32(-global3.a.zxx));
    global0 = func_2(vec3<u32>(~1u, ~(~1u >> (u_input.c % 32u)), ~(~u_input.c)), ~35321i, global0.d.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1255f) + -531f) - 2076f));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(1u, ~u_input.c, min(u_input.c, 15724u), 82192u), vec4<u32>(~u_input.c, ~u_input.c, 1u, u_input.c), vec4<bool>(true, global1.x & global1.x, global1.x, global0.b.x > -21150i)));
}

