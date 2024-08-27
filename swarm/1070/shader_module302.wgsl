struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3> = array<Struct_5, 3>(Struct_5(-525f, 51920i), Struct_5(-719f, -3485i), Struct_5(-931f, 2147483647i));

var<private> global1: Struct_1 = Struct_1(9724i, -992f, vec3<f32>(1597f, -1122f, -1000f), vec4<f32>(263f, 533f, 264f, 1312f));

var<private> global2: f32 = 417f;

var<private> global3: vec2<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -852f)), arg_1.b, true)), -1130f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.xx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-766f, arg_1.c.x) + vec2<f32>(arg_1.b, arg_1.d.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-391f, global1.c.x)))))));
    var var_1 = -41311i;
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.xy)))));
    var var_2 = arg_1;
    let var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b), var_0.x))), _wgslsmith_f_op_f32(min(global1.d.x, _wgslsmith_f_op_f32(-global1.b)))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-arg_1.c.x), 242f), i32(-1i) * -var_2.a, !arg_0.xy, arg_1);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.d), _wgslsmith_f_op_vec4_f32(sign(arg_1.d))));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_3(max(vec4<i32>(firstLeadingBit(u_input.c.x), -u_input.c.x ^ u_input.c.x, firstTrailingBit(_wgslsmith_mod_i32(global1.a, -1i)), 2147483647i), max(vec4<i32>(1i, global1.a, 1i, firstTrailingBit(-7526i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a, -3400i, u_input.a, global1.a), vec4<i32>(-1i, 83018i, global1.a, u_input.a), vec4<i32>(global1.a, u_input.c.x, global1.a, u_input.c.x)))), _wgslsmith_add_vec3_u32(~abs(vec3<u32>(14976u, u_input.b.x, u_input.b.x) >> (vec3<u32>(37721u, 1u, 1u) % vec3<u32>(32u))), vec3<u32>(u_input.b.x, 0u, ~51745u)), Struct_1(u_input.c.x, -131f, vec3<f32>(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d), global1.d) + _wgslsmith_f_op_vec4_f32(func_3(!vec3<bool>(arg_0, true, false), Struct_1(u_input.c.x, -533f, global1.c, global1.d))))), !any(vec3<bool>(global3.x | true, arg_0, any(vec3<bool>(true, false, global3.x)))));
    var var_1 = Struct_3(abs(vec4<i32>(-_wgslsmith_add_i32(var_0.a.x, -65313i), _wgslsmith_mult_i32(1i, 2147483647i), _wgslsmith_mult_i32(1i, ~69784i), 0i)), var_0.b, Struct_1(i32(-1i) * -_wgslsmith_div_i32(2147483647i, global1.a), _wgslsmith_div_f32(global1.c.x, var_0.c.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.c * vec3<f32>(-121f, var_0.c.d.x, var_0.c.d.x)) + _wgslsmith_f_op_vec3_f32(global1.c + vec3<f32>(-1599f, var_0.c.d.x, -1000f)))), _wgslsmith_f_op_vec4_f32(func_3(!select(vec3<bool>(false, global3.x, arg_0), vec3<bool>(global3.x, false, true), vec3<bool>(arg_0, false, var_0.d)), Struct_1(reverseBits(var_0.c.a), _wgslsmith_f_op_f32(select(global1.d.x, -1095f, true)), var_0.c.c, _wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, var_0.c.b, var_0.c.c.x, 2680f), vec4<f32>(var_0.c.d.x, 2190f, global1.b, -1558f)))))), false);
    var var_2 = var_1.a.zyw;
    var_2 = var_0.a.xzz << (~u_input.b.wyx % vec3<u32>(32u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(exp2(var_0.c.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.b, global1.b, var_1.c.d.x), vec3<f32>(var_1.c.b, var_1.c.d.x, global1.d.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c.d.x + var_1.c.c.x), _wgslsmith_f_op_f32(select(var_1.c.d.x, var_1.c.c.x, true)), -323f))), -1i, vec2<bool>(arg_0 || all(select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(var_1.d, false, var_0.d, false), var_1.d)), all(select(!vec2<bool>(global3.x, false), select(vec2<bool>(global3.x, false), vec2<bool>(false, false), true), var_0.d))), var_0.c);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.e.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-518f * 1000f)))) * -315f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-325f))), var_0.c.b)), var_3.d.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = u_input.b.x;
    let var_1 = Struct_2(1382f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.c.d.x)) - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_f_op_f32(-global1.c.x))), arg_0.x, !(!select(vec2<bool>(global3.x, global3.x), select(vec2<bool>(global3.x, true), vec2<bool>(true, arg_2.d), vec2<bool>(false, true)), !vec2<bool>(true, global3.x))), Struct_1(17351i, arg_2.c.b, _wgslsmith_f_op_vec3_f32(arg_2.c.d.zzw + vec3<f32>(573f, _wgslsmith_f_op_f32(floor(arg_2.c.b)), _wgslsmith_f_op_f32(func_2(global3.x)))), global1.d));
    let var_2 = Struct_3(arg_2.a, _wgslsmith_clamp_vec3_u32(arg_2.b, u_input.b.wyz, abs(~vec3<u32>(arg_2.b.x, arg_2.b.x, u_input.b.x))), Struct_1(_wgslsmith_add_i32(u_input.c.x, 1i), 103f, global1.d.xwy, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1258f * 1948f), _wgslsmith_f_op_f32(ceil(1048f)), _wgslsmith_f_op_f32(trunc(-1276f)), 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(729f, arg_2.c.b, -607f, 239f), vec4<f32>(1139f, global1.c.x, 406f, 911f)) * arg_2.c.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_2.c.b)), -887f, all(vec4<bool>(var_1.d.x, false, true, var_1.d.x)))), global1.b) >= 379f);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(func_2(true || (all(vec4<bool>(global3.x, global3.x, var_1.d.x, var_2.d)) || !var_2.d))), 201f, _wgslsmith_f_op_f32(max(-1244f, -1050f)));
    let var_4 = var_2.c.c.x;
    return !vec2<bool>(var_2.b.x < ~(29858u & u_input.b.x), select(all(!var_1.d), select(true, any(vec2<bool>(global3.x, global3.x)), true), global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 3>();
    let var_0 = Struct_4(_wgslsmith_sub_vec3_u32(~(~u_input.b.ywz), vec3<u32>(_wgslsmith_sub_u32(0u, u_input.b.x ^ u_input.b.x), u_input.b.x, firstLeadingBit(~10156u))), countOneBits(u_input.c.x) ^ _wgslsmith_div_i32(2147483647i, i32(-1i) * -20352i), _wgslsmith_div_vec2_u32(u_input.b.zz, ~(~vec2<u32>(u_input.b.x, 1u) | vec2<u32>(u_input.b.x, u_input.b.x))));
    global3 = !vec2<bool>(global3.x, all(select(func_1(u_input.c.yx, -1i, Struct_3(vec4<i32>(global1.a, 47929i, global1.a, -30774i), vec3<u32>(var_0.a.x, u_input.b.x, var_0.c.x), Struct_1(-1i, global1.c.x, global1.c, vec4<f32>(1586f, 428f, -1159f, 562f)), true)), !vec2<bool>(global3.x, true), vec2<bool>(global3.x, true))));
    global1 = Struct_1(abs(12996i), -709f, global1.c, _wgslsmith_f_op_vec4_f32(select(global1.d, global1.d, select(select(!vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, global3.x, false), vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(global3.x, true, true, true))), select(select(vec4<bool>(global3.x, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, false, global3.x), false), select(vec4<bool>(false, global3.x, false, global3.x), vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(true, false, false, false)), true), select(vec4<bool>(global3.x, global3.x, true, true), !vec4<bool>(true, false, global3.x, global3.x), !global3.x)))));
    global3 = select(func_1(~u_input.c.yz, -((global1.a >> (47953u % 32u)) | -33752i), Struct_3(vec4<i32>(-1i, 1i << (var_0.a.x % 32u), u_input.a & 16582i, ~19320i), ~vec3<u32>(var_0.a.x, 1u, 52583u), Struct_1(-1i, global1.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 484f, global1.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-416f, -1062f, global1.d.x, global1.d.x) * global1.d)), true)), vec2<bool>(true, false), select(!func_1(vec2<i32>(global1.a, -1i), _wgslsmith_clamp_i32(2147483647i, global1.a, 38234i), Struct_3(vec4<i32>(0i, global1.a, 50287i, -28616i), var_0.a, Struct_1(2147483647i, global1.b, vec3<f32>(-1693f, 786f, global1.b), global1.d), global3.x)), vec2<bool>(false, global3.x), vec2<bool>(global3.x, !(1u != u_input.b.x))));
    var var_1 = false;
    global3 = vec2<bool>(global3.x && false, global3.x);
    var var_2 = Struct_2(2086f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec4_f32(func_3(!vec3<bool>(true, global3.x, true), Struct_1(u_input.a, 1000f, vec3<f32>(-2060f, 609f, global1.c.x), vec4<f32>(-1544f, global1.b, global1.c.x, global1.b)))).wxx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 227f, 580f)), vec3<f32>(global1.c.x, global1.b, global1.d.x)), global3.x))), -global1.a, select(select(func_1(u_input.c.zz, global1.a >> (var_0.a.x % 32u), Struct_3(vec4<i32>(global1.a, 0i, var_0.b, -12589i), u_input.b.yzx, Struct_1(0i, 1019f, global1.d.zxz, vec4<f32>(global1.d.x, -386f, global1.c.x, 184f)), true)), func_1(~u_input.c.xz, reverseBits(var_0.b), Struct_3(vec4<i32>(var_0.b, -246i, -16652i, global1.a), var_0.a, Struct_1(-15666i, -678f, vec3<f32>(-121f, global1.c.x, global1.c.x), global1.d), global3.x)), vec2<bool>(false, !global3.x)), vec2<bool>(!global3.x, !func_1(vec2<i32>(2147483647i, -2147483647i), -1i, Struct_3(vec4<i32>(u_input.c.x, global1.a, -2147483647i, 12184i), vec3<u32>(u_input.b.x, u_input.b.x, var_0.a.x), Struct_1(u_input.c.x, global1.d.x, global1.d.zzx, vec4<f32>(-2132f, -704f, 2815f, global1.c.x)), true)).x), !vec2<bool>(all(vec4<bool>(global3.x, global3.x, global3.x, false)), global3.x && false)), Struct_1(1i, _wgslsmith_f_op_f32(-global1.c.x), global1.d.yxw, global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(_wgslsmith_mult_i32(var_0.b, 6847i) << (select(u_input.b.x, u_input.b.x, false) % 32u)), var_2.e.d);
}

