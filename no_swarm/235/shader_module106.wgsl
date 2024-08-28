struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 31418i), -212f, -5823i), vec4<f32>(377f, 1353f, 1000f, 330f));

var<private> global1: Struct_3;

var<private> global2: vec4<f32> = vec4<f32>(671f, -856f, 1123f, -157f);

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-920i, 1733i, -1i), 157f, -20885i);

var<private> global4: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    global1 = Struct_3(global0.a, global0.b);
    let var_0 = 1u;
    global1 = Struct_3(Struct_1(countOneBits(_wgslsmith_add_vec3_i32(global3.a, vec3<i32>(global3.a.x, global1.a.a.x, -3242i) & vec3<i32>(global1.a.c, global1.a.c, 1i))), _wgslsmith_div_f32(-570f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * global2.x), -286f))), _wgslsmith_dot_vec2_i32(global0.a.a.yy, vec2<i32>(global1.a.c, global1.a.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1374f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -738f)), _wgslsmith_f_op_f32(abs(-627f))) - _wgslsmith_f_op_vec4_f32(-global1.b)));
    let var_1 = vec4<bool>(global4.x == global4.x, var_0 <= ~(~var_0), true, global4.x);
    let var_2 = -449f;
    return ~firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u), ~(~4294967295u), u_input.b.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(arg_1.a, firstTrailingBit(vec3<i32>(-countOneBits(-1i), -u_input.a.x, ~_wgslsmith_sub_i32(global3.a.x, global0.a.c))), func_3(_wgslsmith_f_op_f32(abs(-806f))));
    var var_1 = Struct_3(Struct_1(~vec3<i32>(_wgslsmith_div_i32(13073i, 2147483647i), u_input.c.x | -4619i, -1i), _wgslsmith_f_op_f32(ceil(1238f)), _wgslsmith_clamp_i32(select(-2147483647i, 0i, global4.x & true), 0i, global0.a.c)), vec4<f32>(_wgslsmith_f_op_f32(sign(-883f)), _wgslsmith_f_op_f32(254f + 654f), global1.a.b, 959f));
    let var_2 = var_0.a;
    global4 = select(vec4<bool>(true & !global4.x, !all(global4.yw), !global4.x, !(global3.b >= var_0.a.b) && !(var_0.c.x < arg_0.x)), vec4<bool>(global4.x, (24276u < _wgslsmith_sub_u32(u_input.d.x, u_input.b.x)) | !global4.x, true, global3.b < _wgslsmith_div_f32(-250f, var_2.b)), select(select(!(!vec4<bool>(false, global4.x, global4.x, global4.x)), !(!vec4<bool>(global4.x, global4.x, global4.x, global4.x)), select(!vec4<bool>(global4.x, global4.x, global4.x, true), vec4<bool>(global4.x, false, false, false), select(vec4<bool>(global4.x, false, global4.x, global4.x), vec4<bool>(false, global4.x, global4.x, global4.x), vec4<bool>(false, global4.x, false, false)))), vec4<bool>(global4.x, _wgslsmith_f_op_f32(-780f + 1617f) > _wgslsmith_f_op_f32(floor(global3.b)), global3.b <= -268f, all(global4.wz) & true), true));
    let var_3 = max(abs(u_input.d.xx), ~vec2<u32>(var_0.c.x, 23492u)) | select(_wgslsmith_sub_vec2_u32(u_input.b.yx, var_0.c.xx), u_input.b.xx, select(global4.wy, vec2<bool>(true, true), any(select(vec3<bool>(global4.x, true, false), global4.yxx, global4.zxy))));
    return Struct_3(Struct_1(max(_wgslsmith_sub_vec3_i32(arg_1.a.a, vec3<i32>(global0.a.a.x, global3.a.x, -7253i)) >> (~var_0.c % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(~global1.a.a, -vec3<i32>(arg_1.a.c, var_0.b.x, u_input.c.x))), _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), 16104i), vec4<f32>(_wgslsmith_f_op_f32(ceil(1717f)), global1.b.x, _wgslsmith_f_op_f32(trunc(163f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.b))))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = true || global4.x;
    global0 = func_2(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_2.wy, vec2<u32>(arg_2.x, u_input.b.x)), ~(~7803u)), 4294967295u), arg_0);
    let var_1 = 25710i;
    let var_2 = !global4.wyy;
    global0 = arg_0;
    return global0.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    var var_0 = -6168i;
    global3 = arg_2.a;
    let var_1 = global3.b;
    let var_2 = !global4.x;
    global0 = arg_1;
    return firstLeadingBit(reverseBits(u_input.c.x));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(438f * 1389f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), 825f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b)))), 1470f, true)), -227f, global2.x);
    var var_0 = -(~vec4<i32>((i32(-1i) * -5707i) | -global0.a.a.x, min(arg_0.x, 1i) << ((u_input.b.x ^ u_input.d.x) % 32u), abs(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2881i, global0.a.a.x, arg_0.x, -1i))), 1i));
    var var_1 = vec3<u32>(reverseBits(u_input.b.x), u_input.d.x, u_input.d.x);
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-898f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)), global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -173f)))), vec2<f32>(global3.b, func_2(countOneBits(~vec2<u32>(10613u, 1u)), Struct_3(Struct_1(vec3<i32>(-7120i, -18338i, 75977i), global3.b, global1.a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-734f, 1385f, global1.b.x, -299f) - global1.b))).a.b));
    let var_3 = func_1(func_2(~u_input.d.zx, func_2(_wgslsmith_mod_vec2_u32(~u_input.b.xz, vec2<u32>(111642u, 1u)), func_2(var_1.xz ^ u_input.d.yy, Struct_3(arg_1, global0.b)))), 4001u, ~abs(vec4<u32>(21255u, countOneBits(var_1.x), 50673u, firstLeadingBit(u_input.b.x))));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<i32>(global1.a.c, func_4(vec2<bool>(any(vec3<bool>(true, global4.x, false)), true), Struct_3(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.x, 764f, -844f))), Struct_3(func_1(Struct_3(global0.a, vec4<f32>(global1.a.b, global0.a.b, global0.a.b, 400f)), 33793u, vec4<u32>(1u, u_input.b.x, 0u, 0u)), vec4<f32>(global3.b, 519f, 942f, -1929f)))), Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a.x, global0.a.c, -2147483647i), vec3<i32>(-31479i, -20395i, 0i), vec3<bool>(global4.x, false, global4.x)), -global3.a), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c.x, 42524i, 0i), vec3<i32>(global1.a.c, -2617i, 7792i) >> (vec3<u32>(u_input.d.x, u_input.b.x, 4294967295u) % vec3<u32>(32u))), ~abs(u_input.a.yzz)), _wgslsmith_f_op_f32(round(-396f)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-37325i, global1.a.c, 1458i), vec3<i32>(-11488i, global3.c, 0i)) << ((1u ^ min(u_input.b.x, u_input.b.x)) % 32u)));
    var var_1 = func_2((vec2<u32>(u_input.d.x, _wgslsmith_add_u32(1u, u_input.d.x)) ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(29825u, u_input.b.x), ~u_input.b.zx)) & vec2<u32>(~func_3(-1316f).x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, u_input.b.x, 17660u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(67514u, 75084u, u_input.d.x, 4294967295u), vec4<u32>(u_input.d.x, 1u, 32778u, 32319u), vec4<u32>(u_input.b.x, 68261u, u_input.d.x, 4294967295u)))), func_2((_wgslsmith_div_vec2_u32(u_input.d.zy, vec2<u32>(25598u, 3534u)) | (vec2<u32>(u_input.d.x, 1u) | vec2<u32>(0u, 21218u))) | reverseBits(vec2<u32>(1u, 26583u)), func_2(u_input.d.zy, Struct_3(var_0, _wgslsmith_f_op_vec4_f32(-global1.b)))));
    var var_2 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(var_1.a.b + _wgslsmith_f_op_f32(-var_1.a.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_div_f32(717f, _wgslsmith_f_op_f32(459f + -1000f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2609f, global0.b.x, 1549f, global0.a.b)))))));
    var var_3 = global4.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global1.b.x, -1376f, 1009f) - vec4<f32>(913f, global0.b.x, -244f, var_1.a.b)) - _wgslsmith_f_op_vec4_f32(abs(var_2.b))))) * var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.xz & var_0.a.zx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(Struct_3(var_1.a, global0.b), u_input.b.x, vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, u_input.d.x)).b, _wgslsmith_f_op_f32(trunc(global3.b)), 119f))), firstTrailingBit(-84621i) << ((71238u ^ _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)) % 32u), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 20796i), var_1.a.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.c, global0.a.c, var_1.a.a.x), -var_1.a.a) << (func_3(_wgslsmith_f_op_f32(var_1.a.b + global2.x)) % vec3<u32>(32u)), -global3.a));
}

