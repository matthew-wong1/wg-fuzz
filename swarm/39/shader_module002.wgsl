struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = 40883i;
    let var_1 = arg_1;
    var_0 = u_input.a.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(round(var_1.a)), arg_1.b);
    var_0 = arg_2;
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_0.a.x;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1174f)), arg_0.a.x));
    var_1 = -352f;
    var_1 = _wgslsmith_f_op_f32(step(1337f, _wgslsmith_f_op_f32(-var_0)));
    let var_2 = all(!func_2(1i, arg_1, _wgslsmith_clamp_i32(35948i, u_input.a.x, 2147483647i)).b.zx);
    return !arg_1.b.yxw;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_add_i32(-4805i, -_wgslsmith_add_i32(-27332i, 1i)), arg_0, max(i32(-1i) * -2147483647i, u_input.a.x) << (select(max(select(31457u, 27079u, arg_0.b.x), 4294967295u >> (0u % 32u)), _wgslsmith_mult_u32(min(u_input.e, u_input.d.x), min(u_input.d.x, u_input.e)), !all(vec4<bool>(arg_1.x, arg_1.x, true, false))) % 32u));
    let var_1 = func_2(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(24637i, arg_2, 0i), select(vec3<i32>(-39943i, -6143i, u_input.a.x), vec3<i32>(-13484i, arg_2, u_input.a.x), var_0.b.xyw)), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.c), -34621i)), -53543i, ~2147483647i), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.a * _wgslsmith_f_op_vec2_f32(trunc(arg_0.a))))), select(var_0.b, select(vec4<bool>(arg_1.x, arg_0.b.x, false, false), select(vec4<bool>(false, var_0.b.x, arg_0.b.x, arg_1.x), var_0.b, false), var_0.b), false && !arg_0.b.x)), ((i32(-1i) * -arg_2) ^ ~(~(-61282i))) & 1i).b.x;
    let var_2 = arg_0;
    let var_3 = min(~u_input.e, 4294967295u);
    let var_4 = select(!(!(!arg_0.b.x)), all(func_3(func_2(arg_2, Struct_1(arg_0.a, arg_0.b), u_input.c), var_2)) || !(!var_2.b.x), true);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = arg_3.b.x || arg_1.b.x;
    var var_1 = func_2(-_wgslsmith_sub_i32(-(~u_input.c), ~(-u_input.a.x)), func_1(func_1(arg_3, arg_1.b.wy, u_input.c), select(vec2<bool>(true, true), func_1(Struct_1(arg_1.a, arg_1.b), !vec2<bool>(var_0, false), 1i).b.zx, false), _wgslsmith_mult_i32(-u_input.c, 2147483647i)), _wgslsmith_mult_i32(-min(u_input.a.x, u_input.c), 63541i));
    let var_2 = Struct_1(vec2<f32>(600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x * arg_3.a.x), _wgslsmith_f_op_f32(-264f - 1925f), arg_2.x > 4234u)))), arg_3.b);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1164f, -1067f), _wgslsmith_f_op_vec2_f32(sign(var_1.a)))))), arg_0.b);
    var_1 = func_2(-2147483647i, arg_1, u_input.a.x >> (~u_input.b % 32u));
    return !vec3<bool>(!(!arg_0.b.x), false, true);
}

fn func_5(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    return func_1(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1933f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(108f, -548f), vec2<f32>(arg_0, arg_0)))), vec4<bool>(true, !arg_1.x, select(arg_1.x, arg_1.x, arg_1.x), true)), arg_1.zx, firstLeadingBit(-2147483647i)), arg_1.yx, ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) * 970f)), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true), func_4(func_1(Struct_1(vec2<f32>(756f, 579f), vec4<bool>(true, false, true, false)), vec2<bool>(true, true), u_input.a.x), Struct_1(vec2<f32>(-2111f, -1042f), vec4<bool>(true, true, true, true)), ~vec4<u32>(u_input.b, 31695u, 4294967295u, 4294967295u), func_1(Struct_1(vec2<f32>(-1208f, -259f), vec4<bool>(false, true, true, true)), vec2<bool>(true, false), -2147483647i)), vec3<bool>(true, true, true)), vec3<bool>(!any(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, true, false)) && true, true), all(vec4<bool>(true, true, true, true)) | true));
    let var_1 = var_0;
    var var_2 = vec4<bool>(func_3(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - var_0.a.x), var_1.b.www), var_0).x, var_0.b.x, !all(var_0.b.zz) & any(func_1(var_0, select(vec2<bool>(var_0.b.x, false), var_0.b.wx, true), abs(u_input.a.x)).b.wzy), all(!select(!var_1.b.xx, !var_1.b.yz, !vec2<bool>(var_0.b.x, true))));
    var var_3 = countOneBits(u_input.d.x);
    var_2 = func_1(func_5(var_1.a.x, !vec3<bool>(true, select(true, var_2.x, var_0.b.x), !var_1.b.x)), func_1(Struct_1(var_0.a, vec4<bool>(true, true, func_5(var_1.a.x, var_1.b.xxx).b.x, select(var_0.b.x, false, var_0.b.x))), var_1.b.yx, (_wgslsmith_clamp_i32(u_input.a.x, u_input.c, 470i) & reverseBits(u_input.c)) << (_wgslsmith_clamp_u32(firstTrailingBit(15644u), u_input.e, u_input.e) % 32u)).b.yz, 1i).b;
    var_3 = u_input.d.x;
    let var_4 = -(_wgslsmith_mod_vec4_i32(vec4<i32>(5610i, u_input.a.x, u_input.a.x, u_input.c), vec4<i32>(58736i, -26625i, -5649i, 5223i)) << (vec4<u32>(_wgslsmith_clamp_u32(0u, 5763u, u_input.b), ~u_input.b, ~12452u, ~u_input.d.x) % vec4<u32>(32u))) | vec4<i32>(~u_input.c, firstTrailingBit(2147483647i), ~(~u_input.a.x | -24574i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(11941i, -2147483647i, 53229i), vec3<i32>(u_input.c, 0i, 75746i), vec3<i32>(13348i, -9829i, -22325i)), firstTrailingBit(vec3<i32>(2147483647i, -3970i, 22611i))), ~reverseBits(vec3<i32>(-50317i, 1i, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.yz, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_clamp_i32(abs(var_4.x), i32(-1i) * -2147483647i, countOneBits(-2147483647i))), var_4.yx));
}

