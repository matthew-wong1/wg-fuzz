struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec4<u32> {
    let var_0 = Struct_2(vec4<f32>(1384f, -311f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(886f + 666f)))), -515f));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(-650f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(var_0.a.x * -222f)), vec3<f32>(_wgslsmith_f_op_f32(abs(-177f)), -892f, var_0.a.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(438f * var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1069f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(sign(1799f))), _wgslsmith_div_f32(671f, _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(1092f + -1000f), arg_2);
    let var_3 = vec4<bool>(true, global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f * var_0.a.x)), min(8953i, u_input.d) < -arg_3)) <= 1000f, any(!vec3<bool>(arg_0, arg_0, arg_0)));
    let var_4 = global0[_wgslsmith_index_u32(arg_1.a.x ^ (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(28355u, 26721u), 1u), 0u, 1u) & (~(~arg_1.a.x) | 1u)), 10u)];
    return max(abs(~(~vec4<u32>(15853u, u_input.b, arg_2, 1u))), ~vec4<u32>(~u_input.b, ~countOneBits(var_2.c), var_4.c, var_4.c));
}

fn func_2() -> bool {
    var var_0 = Struct_1(func_3(true & global1.x, Struct_1(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(98261u, u_input.a.x, u_input.b, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(128400u, u_input.b, 27141u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 80695u)))), u_input.a.x, -2147483647i));
    var var_1 = Struct_1(var_0.a);
    let var_2 = Struct_1(~_wgslsmith_clamp_vec4_u32(var_0.a, select(var_1.a ^ vec4<u32>(var_0.a.x, 3539u, 36922u, var_1.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 7255u, u_input.b, 54274u), vec4<u32>(95593u, 4294967295u, 4294967295u, var_0.a.x)), select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(false, global1.x, true, global1.x))), countOneBits(firstTrailingBit(vec4<u32>(45714u, 56594u, var_0.a.x, 31329u)))));
    var var_3 = any(vec2<bool>(!global1.x, !(!global1.x))) & true;
    let var_4 = ~abs(countOneBits(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 63317u), var_1.a.ww), ~vec2<u32>(var_2.a.x, 41348u))));
    return u_input.d == _wgslsmith_add_i32(u_input.c.x, ~((u_input.d << (4294967295u % 32u)) | _wgslsmith_sub_i32(2147483647i, u_input.c.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global1 = vec3<bool>(!func_2(), !(1133f != _wgslsmith_f_op_f32(-arg_2.a.x)), false);
    global1 = !vec3<bool>(false, global1.x, all(select(vec2<bool>(global1.x, global1.x), global1.zx, select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), global1.x))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(210f)))) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2387f), -1163f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.a.x, 920f)) - _wgslsmith_div_f32(arg_2.a.x, 1000f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.a.x, 563f), -1272f))));
    var var_1 = arg_1;
    let var_2 = -19718i;
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_div_f32(-788f, -233f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 486f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-665f * 576f) + _wgslsmith_div_f32(955f, 861f)))), _wgslsmith_f_op_f32(func_1(1i, Struct_1(vec4<u32>(abs(u_input.a.x), u_input.b & u_input.a.x, 4721u, 66067u)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(select(643f, 1952f, global1.x)), _wgslsmith_f_op_f32(floor(1660f)), _wgslsmith_f_op_f32(160f + 2406f), -897f)))), ~min(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), ~vec4<u32>(u_input.b, 1u, u_input.a.x, 13678u))));
    global1 = vec3<bool>(global1.x, _wgslsmith_dot_vec3_i32(~(-u_input.c.zwy), u_input.c.wzx) > _wgslsmith_add_i32(~0i, select(~u_input.d, _wgslsmith_div_i32(-1i, u_input.d), global1.x)), true);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 13184u, 36692u), ~vec3<u32>(u_input.b, u_input.b, var_0.c)) << ((firstTrailingBit(vec3<u32>(u_input.b, 0u, var_0.c)) << (vec3<u32>(0u, 1u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(66566u ^ u_input.a.x, var_0.c, u_input.b), reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b)))), vec3<u32>(1u, ~4294967295u | var_0.c, ~(~(~u_input.a.x)))), 10u)];
    global1 = select(select(!select(!vec3<bool>(global1.x, false, false), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, global1.x), true), select(vec3<bool>(true, true, global1.x), vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x))), vec3<bool>(true, global1.x || (u_input.c.x == -17451i), true & all(vec2<bool>(global1.x, false))), !(!all(global1.zy))), !vec3<bool>(select(14709u > var_0.c, true, any(vec2<bool>(true, true))), false, global1.x), true);
    let var_2 = select(!select(global1.zy, !select(vec2<bool>(true, true), vec2<bool>(global1.x, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), all(vec3<bool>(true, global1.x, false)))), select(global1.yz, vec2<bool>(false, global1.x), !(_wgslsmith_div_f32(442f, var_1.b) != var_1.b)), !global1.yz);
    global1 = !select(select(!select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, true, false), global1.x), vec3<bool>(false, true, false), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(1i, 0i, u_input.d, 0i)) < -u_input.c.x), !(!vec3<bool>(false, global1.x, global1.x)), select(var_2.x, !select(true, false, global1.x), global1.x));
    var var_3 = Struct_1(vec4<u32>(max(abs(~var_0.c), 40200u), 75369u, ~1u, 0u));
    let var_4 = Struct_2(var_0.a);
    var var_5 = ~vec3<u32>(max(abs(abs(116024u)), ~(~u_input.b)), ~68439u, _wgslsmith_clamp_u32(5733u, abs(~var_1.c), func_3(true, Struct_1(var_3.a), min(var_3.a.x, 4294967295u), -u_input.d).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1715f + _wgslsmith_div_f32(253f, var_0.a.x)), var_0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + -314f) - _wgslsmith_f_op_f32(1061f - -1201f)) + -160f)), 221f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.a.wyy) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_0.b, -1000f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.b)))), 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-334f)))), 843f), min(vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(8882i, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zw, u_input.c.ww), reverseBits(reverseBits(u_input.c.ww)), vec2<i32>(~u_input.c.x, u_input.c.x))));
}

