struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-253f, arg_0.a.x, arg_0.a.x) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.x, arg_0.b.x, global0.a.x), arg_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.b.x, 596f) + vec3<f32>(arg_0.a.x, -987f, arg_0.a.x))), vec3<bool>(global0.b.x, true, true))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(987f * 570f) * arg_0.b.x), _wgslsmith_f_op_f32(step(-729f, _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(-arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_div_f32(-912f, arg_0.b.x), _wgslsmith_f_op_f32(min(-1203f, -631f))))));
    var var_1 = -4160i;
    var_1 = ~global0.e & -33871i;
    var var_2 = abs(~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(57699u, 0u, 12016u, 16429u), vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x)) | (21788u ^ u_input.d.x))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1191f * global0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(1171f * var_0.x)))));
    return !(!(!(!vec4<bool>(false, true, global0.b.x, arg_0.c))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = reverseBits(u_input.d.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1234f, global0.a.x, arg_2, arg_1.a.x), vec4<f32>(arg_0.b.x, arg_1.b.x, -143f, global0.a.x))) * _wgslsmith_f_op_vec4_f32(-global0.a)), global0.a, select(arg_0.c, all(vec2<bool>(true, false)), select(true, false, arg_0.c))))));
    let var_2 = select(vec4<bool>(select(true, true & all(vec4<bool>(false, arg_0.c, global0.b.x, global0.c)), _wgslsmith_f_op_f32(-arg_1.a.x) > arg_1.a.x), true, global0.b.x, global0.c), !select(vec4<bool>(global0.c, arg_1.c, false, global0.b.x), !(!vec4<bool>(false, arg_1.c, global0.c, false)), false), select(vec4<bool>(arg_0.c, true, select(false, true, select(arg_0.c, arg_1.c, false)), arg_0.c), vec4<bool>(any(func_3(arg_0)), select(true, true, !arg_0.c), select(false, all(vec2<bool>(true, true)), arg_1.c == global0.c), false), vec4<bool>(true, arg_0.c, u_input.c.x <= (global0.e | u_input.c.x), any(!vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c)))));
    let var_3 = vec3<bool>(false, !global0.c, _wgslsmith_f_op_f32(floor(arg_2)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.a.x)), 723f))));
    let var_4 = true;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(-134f, arg_0.b.x, -1228f, global0.a.x) - vec4<f32>(global0.a.x, arg_0.a.x, 529f, 584f))))), global0.b, true, max(u_input.b.x, global0.e & -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -63435i, -35119i), vec3<i32>(-2147483647i, -1i, u_input.c.x))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.e, 48802i, 52588i, global0.e), vec4<i32>(54624i, global0.e, -2147483647i, -2147483647i)) & _wgslsmith_mod_i32(min(global0.d, 1i), ~0i), -1i));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    global0 = Struct_1(arg_2.a, !func_2(Struct_2(func_2(Struct_2(arg_1.a.xww, vec3<f32>(-399f, 702f, 580f), true), Struct_2(vec3<f32>(arg_1.a.x, -1122f, global0.a.x), vec3<f32>(global0.a.x, arg_1.a.x, 1706f), false), -459f, vec2<u32>(4294967295u, u_input.d.x)).a.zzx, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(767f, 540f, 1030f))), select(arg_2.c, true, arg_1.c)), Struct_2(vec3<f32>(1296f, global0.a.x, -1471f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.x, arg_2.a.x, 188f))), func_2(Struct_2(arg_1.a.ywy, arg_1.a.xyw, arg_0), Struct_2(vec3<f32>(global0.a.x, global0.a.x, -665f), arg_2.a.wzz, arg_1.b.x), arg_2.a.x, u_input.d).c), -1115f, ~select(vec2<u32>(u_input.d.x, 84830u), u_input.d, arg_1.b.yx)).b, arg_0, countOneBits(reverseBits(47715i)), u_input.b.x);
    var var_0 = ~((u_input.d.x ^ countOneBits(u_input.d.x)) & 93234u);
    var var_1 = _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1432f)))));
    var_0 = ~_wgslsmith_mod_u32(~(~4294967295u ^ u_input.d.x), ~_wgslsmith_div_u32(u_input.d.x, 4294967295u) >> (u_input.d.x % 32u));
    return arg_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    global0 = func_4(false, func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.wyz * global0.a.zyz)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.a.x, -121f, -1048f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, arg_2.a, 972f), global0.a.yyw, global0.b))), !all(arg_2.d)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1000f, 446f)), _wgslsmith_div_vec3_f32(global0.a.zww, _wgslsmith_f_op_vec3_f32(global0.a.xyy + global0.a.zwx)), global0.c), -521f, abs(reverseBits(u_input.d))), func_2(Struct_2(global0.a.wxw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(279f, arg_2.a, 980f) - global0.a.wwz) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-470f, 211f, global0.a.x)))), all(!global0.b)), Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.a.yxy))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -692f), -1784f, -426f), arg_2.a == _wgslsmith_f_op_f32(exp2(global0.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -956f))), arg_2.c.yx & ~vec2<u32>(25429u, 1u)), vec2<i32>(u_input.c.x, ~arg_0.x));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(global0.a.xyx)), global0.a.zww, firstTrailingBit(10667u) > (countOneBits(0u) & arg_2.c.x));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2093f, arg_2.a))) + arg_2.a), !(true | all(arg_2.d)), vec3<u32>(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.d.x, 24379u) & vec4<u32>(1u, u_input.d.x, 70447u, 50626u), vec4<u32>(u_input.d.x, arg_2.c.x, 33235u, arg_2.c.x))), u_input.d.x, _wgslsmith_div_u32(4294967295u, max(arg_2.c.x, 4294967295u))), func_3(Struct_2(vec3<f32>(-604f, _wgslsmith_f_op_f32(1000f - 992f), _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_f32(max(-1226f, var_0.b.x)) > _wgslsmith_f_op_f32(208f + 1164f))).xx);
    let var_2 = !arg_2.d;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1270f, 480f, 1482f))) + global0.a.zwy)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(331f - 984f)), _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec3_f32(-global0.a.wyy))), arg_2.d.x & var_0.c);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(919f, var_3.a.x, var_0.b.x, global0.a.x), vec4<f32>(-1576f, var_3.b.x, 793f, 1253f), vec4<bool>(false, false, false, true)))))), func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, -193f, arg_2.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(839f, -323f, var_0.b.x) * vec3<f32>(arg_2.a, -1000f, -2475f)), _wgslsmith_f_op_vec3_f32(-global0.a.xwx), func_2(Struct_2(var_3.a, vec3<f32>(144f, global0.a.x, 464f), false), Struct_2(global0.a.yyz, vec3<f32>(684f, 1442f, -795f), true), 1969f, vec2<u32>(arg_2.c.x, u_input.d.x)).b)), all(!var_2)), Struct_2(var_3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, var_0.a.x, 944f), vec3<f32>(-562f, 1387f, var_3.a.x))), !(var_1.d.x | var_3.c)), _wgslsmith_f_op_f32(468f - _wgslsmith_f_op_f32(-165f - _wgslsmith_div_f32(global0.a.x, var_3.b.x))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_2.c.x), vec2<u32>(arg_2.c.x, 0u)) | var_1.c.yx, firstTrailingBit(~vec2<u32>(arg_2.c.x, u_input.d.x)))).b, -2147483647i > -global0.e, min(2147483647i, _wgslsmith_add_i32(~(-1i), -35832i) << (_wgslsmith_add_u32(~var_1.c.x, 13463u) % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(5728i, 56748i, 2147483647i, arg_0.x), u_input.b), u_input.b, !vec4<bool>(true, false, var_0.c, true)), vec4<i32>(select(-2147483647i, 28625i, arg_1), 2147483647i, u_input.b.x, u_input.c.x), vec4<i32>(firstTrailingBit(0i), _wgslsmith_clamp_i32(0i, 2147483647i, global0.d), _wgslsmith_mult_i32(global0.e, global0.d), 77713i)), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(~(~0i), global0.d, global0.e), global0.c, Struct_3(global0.a.x, false, vec3<u32>(u_input.d.x, 4294967295u, 46777u), global0.b.zy));
    var_0 = func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(879f, -1453f, 879f)))), _wgslsmith_f_op_vec3_f32(max(var_0.a.yxw, vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(global0.a.x - var_0.a.x), _wgslsmith_f_op_f32(-global0.a.x)))), false), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -1000f, 1000f) - _wgslsmith_f_op_vec3_f32(select(global0.a.yww, vec3<f32>(799f, global0.a.x, var_0.a.x), var_0.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, 952f, -861f))))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1305f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)))), ~vec2<u32>(1u, _wgslsmith_mod_u32(max(u_input.d.x, 83912u), ~33525u)));
    let var_1 = ~_wgslsmith_add_vec2_u32(~u_input.d, u_input.d);
    let var_2 = Struct_2(global0.a.zww, _wgslsmith_f_op_vec3_f32(global0.a.zzx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.zwz) * vec3<f32>(535f, -2658f, 1663f)))), global0.c);
    global0 = func_1(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(~u_input.b), max(abs(u_input.b), vec4<i32>(-31330i, -1i, global0.d, 3574i))), -1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e, 0i), -vec2<i32>(global0.e, u_input.b.x)), u_input.a.x)), func_1(reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(59199i, global0.d, 1i), u_input.c), _wgslsmith_add_i32(global0.d, global0.d), _wgslsmith_mult_i32(global0.e, 0i))), true, Struct_3(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x)), !global0.b.x, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_1.x, 4294967295u, 38470u)), abs(vec3<u32>(51382u, u_input.d.x, u_input.d.x))), vec2<bool>(global0.c, u_input.c.x > 0i))).c, Struct_3(global0.a.x, !func_4(all(vec2<bool>(var_0.b.x, var_0.c)), func_1(vec3<i32>(global0.e, global0.d, var_0.d), true, Struct_3(global0.a.x, var_0.c, vec3<u32>(var_1.x, u_input.d.x, var_1.x), global0.b.zy)), Struct_1(global0.a, vec3<bool>(global0.c, true, false), true, var_0.d, var_0.d), min(vec2<i32>(var_0.e, 1i), vec2<i32>(var_0.d, u_input.c.x))).b.x, ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(53287u, 1u, 8163u), vec3<u32>(u_input.d.x, 0u, 38373u), var_0.c), vec3<u32>(u_input.d.x, var_1.x, u_input.d.x)), !global0.b.zy));
    let var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(4294967295u, u_input.d.x))), firstTrailingBit(~var_1.x)), ~vec2<u32>(53131u, 2355u), func_1(vec3<i32>(~global0.d, var_0.e, -1i), true, Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x + 1188f), _wgslsmith_f_op_f32(-global0.a.x)), false, (vec3<u32>(var_1.x, u_input.d.x, u_input.d.x) ^ vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u)) ^ ~vec3<u32>(var_1.x, u_input.d.x, 41949u), vec2<bool>(func_2(Struct_2(vec3<f32>(var_2.a.x, var_0.a.x, var_0.a.x), var_0.a.xxy, false), Struct_2(var_2.a, vec3<f32>(1439f, var_0.a.x, 610f), global0.c), 934f, u_input.d).c, select(true, var_0.b.x, true)))).a);
}

