struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: bool = true;

var<private> global2: Struct_1 = Struct_1(1u, 12460u, vec4<f32>(-174f, 1466f, -2986f, -858f), -218f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> u32 {
    global2 = Struct_1(global2.b | _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(19063u, 1u, u_input.b)), _wgslsmith_div_u32(0u, u_input.b)), 5161u, vec4<f32>(global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)) - _wgslsmith_f_op_f32(exp2(global2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(112f, -729f) + -1262f))), _wgslsmith_f_op_f32(-281f + 322f));
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(-555f + global2.c.x)), _wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(-global2.c.x)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.d))), 584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.c.x))))), min(arg_1.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(13293i, -47890i)) | 1i, 10342i)), Struct_1(global2.b, (~global2.a >> (495u % 32u)) ^ ~1u, global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f) + 1786f)));
    global1 = false || all(arg_0.zy);
    global2 = var_0.c;
    global2 = Struct_1(var_0.c.b, _wgslsmith_clamp_u32(1u, u_input.b, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-517f, -620f, _wgslsmith_f_op_f32(-var_0.c.c.x), _wgslsmith_f_op_f32(-190f + global2.d)) + global2.c), _wgslsmith_f_op_f32(-1123f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1650f, -212f))));
    return 1u;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    let var_0 = global0.zy;
    var var_1 = ~vec3<u32>(_wgslsmith_add_u32(~arg_1, _wgslsmith_mult_u32(0u, u_input.b)) << (~func_3(arg_0, vec4<i32>(1i, u_input.a, 46642i, u_input.a)) % 32u), global2.b, 6780u << (~u_input.b % 32u));
    global2 = Struct_1(_wgslsmith_sub_u32(60662u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, var_1.x)), ~reverseBits(vec2<u32>(global2.b, 9662u)))), 4360u, _wgslsmith_f_op_vec4_f32(step(global2.c, global2.c)), _wgslsmith_f_op_f32(f32(-1f) * -2328f));
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, ~(48198u << (select(var_1.x, 4294967295u, false) % 32u)), select(0u, ~u_input.b ^ ~33428u, true)), countOneBits(max(~vec3<u32>(arg_1, u_input.b, 14443u), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 1u, arg_1), vec3<u32>(33533u, arg_1, 56071u))) << (vec3<u32>(0u, u_input.b, _wgslsmith_mult_u32(global2.a, global2.b)) % vec3<u32>(32u))), ~vec3<u32>(~19475u, ~(~var_1.x), 114671u));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global2.c.x)), global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1013f - -1204f) + _wgslsmith_f_op_f32(global2.c.x * 113f))))));
    return u_input.a;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = !(!select(!(!vec4<bool>(true, global0.x, global0.x, global0.x)), !vec4<bool>(false, false, global0.x, global0.x), false));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.wzw + arg_0.c.zwz)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c.ywx + vec3<f32>(664f, global2.c.x, 649f))))), func_2(vec4<bool>(all(select(global0.wz, global0.zw, vec2<bool>(var_0.x, var_0.x))), (global2.b <= global2.b) | true, var_0.x, global0.x), ~19336u), arg_0);
    var var_2 = arg_0;
    let var_3 = !(!select(vec4<bool>(any(vec4<bool>(global0.x, true, var_0.x, global0.x)), true, !global0.x, false), select(vec4<bool>(global0.x, var_0.x, false, var_0.x), !vec4<bool>(global0.x, true, true, var_0.x), any(vec3<bool>(global0.x, true, var_0.x))), !(!vec4<bool>(global0.x, var_0.x, true, global0.x))));
    let var_4 = arg_0.d;
    return 0i;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> Struct_2 {
    var var_0 = global2.c.zyy;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global2.c.xzx)))), 1i << ((_wgslsmith_mod_u32(_wgslsmith_mod_u32(89533u, 29469u), _wgslsmith_sub_u32(u_input.b, 61731u)) | ~global2.b) % 32u), Struct_1(~reverseBits(~27976u), 26297u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), 783f, var_0.x, -981f)), var_0.x));
    let var_2 = var_0.x;
    let var_3 = Struct_2(vec3<f32>(var_1.c.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(827f - _wgslsmith_f_op_f32(-var_1.a.x)) + _wgslsmith_f_op_f32(min(global2.d, _wgslsmith_f_op_f32(-var_0.x))))), min(-u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_0, firstLeadingBit(vec4<i32>(u_input.a, var_1.b, var_1.b, 0i))), ~reverseBits(vec4<i32>(2147483647i, var_1.b, arg_0.x, var_1.b)))), Struct_1(_wgslsmith_mod_u32(global2.b, 31126u), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(398f - _wgslsmith_f_op_f32(-771f + 2533f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-423f * global2.c.x), _wgslsmith_f_op_f32(global2.d * 759f)), -468f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    let var_4 = _wgslsmith_f_op_f32(-291f - 691f);
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-580f, _wgslsmith_f_op_f32(-892f * 310f), all(global0.yw))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(797f)), !all(vec3<bool>(true, arg_1, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c.d - -1040f))) + global2.d)), abs(var_1.b), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<i32>(i32(-1i) * -34467i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-34533i, ~u_input.a), _wgslsmith_mod_i32(abs(u_input.a), -1i)), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, -10i, 1i)), vec3<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), ~(-59436i), firstLeadingBit(u_input.a))), -2147483647i), !(_wgslsmith_mod_i32(min(u_input.a, 69317i), firstTrailingBit(u_input.a)) <= (func_1(Struct_1(42777u, global2.b, vec4<f32>(483f, global2.d, global2.d, 621f), global2.c.x)) << (4294967295u % 32u))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c.c + _wgslsmith_f_op_vec4_f32(-global2.c)) * global2.c), global2.c);
    global1 = any(!vec4<bool>(global0.x, any(global0.xwz), !(u_input.b >= global2.b), !global0.x));
    let var_2 = Struct_3(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.c.zzx), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, var_1.x, 610f)))), -2147483647i, func_4(firstTrailingBit(firstTrailingBit(vec4<i32>(-2147483647i, var_0.b, var_0.b, u_input.a))), global0.x).c));
    let var_3 = ~abs(~(~_wgslsmith_sub_u32(var_2.a.c.b, global2.b)));
    let var_4 = countOneBits(countOneBits((select(vec2<u32>(u_input.b, 156235u), vec2<u32>(34897u, 1u), vec2<bool>(global0.x, true)) ^ ~vec2<u32>(111860u, 24412u)) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_3, 22655u), vec2<u32>(21234u, global2.a))));
    let var_5 = true;
    global2 = var_2.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(64735i | var_0.b, vec3<f32>(var_0.c.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.c.x))), var_0.a.x), 0u);
}

