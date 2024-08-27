struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(6701i, true, vec2<bool>(true, false), -690f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = 46517u ^ u_input.b.x;
    var_0 = u_input.e;
    global0 = Struct_1(~(-_wgslsmith_mult_i32(arg_2.a, 9888i)), any(!vec4<bool>(false, false, u_input.e >= 63811u, all(global0.c))), !(!select(vec2<bool>(arg_2.b, arg_0.c.c.x), arg_0.c.c, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.d)) * global0.d) - _wgslsmith_f_op_f32(max(global0.d, _wgslsmith_f_op_f32(f32(-1f) * -997f)))))));
    var var_1 = arg_2.a;
    var_1 = i32(-1i) * -21249i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -331f), 815f, -1180f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, 1f, -480f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(-209f)), _wgslsmith_f_op_f32(select(-676f, -1355f, false)), 1288f)))));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d, -1136f, -1479f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(global0.c.x, Struct_1(2147483647i, global0.c.x, vec2<bool>(global0.b, global0.b), global0.d), Struct_1(arg_0.a, global0.c.x, global0.c, 675f)), Struct_1(-337i, true, arg_0.c, arg_0.d), Struct_1(global0.a, global0.b, global0.c, -337f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1289f, -2032f, arg_0.d))), select(vec3<bool>(false, global0.c.x, true), vec3<bool>(arg_0.c.x, false, arg_0.c.x), vec3<bool>(false, true, false))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(false, arg_0, Struct_1(3111i, global0.b, global0.c, global0.d)), Struct_1(52763i, arg_0.c.x, global0.c, -754f), arg_0))) * vec3<f32>(695f, _wgslsmith_f_op_f32(-global0.d), -1053f))));
    global0 = arg_0;
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.a, global0.a), vec2<i32>(arg_0.a, 0i)), firstTrailingBit(vec2<i32>(-2147483647i, -1i))), ~global0.a, _wgslsmith_add_i32(global0.a, global0.a)), vec3<i32>(-1i, ~(~(-16399i)), 1i)) | firstLeadingBit(countOneBits(~vec3<i32>(12801i, -2147483647i, 2118i)));
    var_1 = vec3<i32>(-max(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.x, 1i, arg_0.a), ~vec3<i32>(-19831i, var_1.x, 2147483647i)), countOneBits(global0.a << (4294967295u % 32u))), 0i, 25172i);
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(countOneBits(min(abs(vec2<i32>(-1i, -1i)), _wgslsmith_mult_vec2_i32(var_1.xy, vec2<i32>(var_1.x, -24873i)))), var_1.yz), false, !select(select(arg_0.c, !arg_0.c, select(arg_0.c, vec2<bool>(true, global0.c.x), global0.b)), !select(vec2<bool>(true, true), vec2<bool>(false, false), global0.c), select(vec2<bool>(true, false), vec2<bool>(true, true), !global0.c.x)), 964f);
    return select(vec4<bool>(true | any(select(vec3<bool>(false, arg_0.c.x, global0.b), vec3<bool>(true, arg_0.c.x, arg_0.b), global0.c.x)), !(!any(vec3<bool>(var_2.c.x, arg_0.b, true))), !any(!vec4<bool>(arg_0.b, var_2.b, true, var_2.b)), all(select(vec3<bool>(true, global0.c.x, arg_0.b), !vec3<bool>(false, arg_0.c.x, true), !vec3<bool>(false, false, global0.c.x)))), select(select(select(select(vec4<bool>(false, arg_0.c.x, global0.c.x, false), vec4<bool>(var_2.b, false, true, global0.c.x), var_2.c.x), select(vec4<bool>(true, var_2.c.x, var_2.c.x, true), vec4<bool>(false, true, arg_0.c.x, true), var_2.b), all(vec3<bool>(false, var_2.b, var_2.c.x))), !(!vec4<bool>(var_2.b, true, true, var_2.c.x)), firstTrailingBit(var_2.a) != 0i), !select(vec4<bool>(var_2.b, true, var_2.c.x, var_2.c.x), select(vec4<bool>(false, global0.b, global0.b, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), false), true), !arg_0.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!func_2(Struct_1(arg_1.b.b.a, global0.b, vec2<bool>(true, true), _wgslsmith_f_op_f32(max(global0.d, -1212f)))).xx);
    var var_1 = Struct_2(arg_0.x, Struct_1(~global0.a, arg_2.c.x, arg_0.wz, -1374f), Struct_1(arg_1.b.b.a | 17725i, !select(arg_0.x, true, all(vec2<bool>(arg_2.c.x, true))), arg_1.b.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))));
    let var_2 = arg_1.b;
    var var_3 = Struct_3(arg_1.a, var_2);
    return var_1.c;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = -(~(~vec4<i32>(2147483647i, 27100i, global0.a, 0i) & select(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<i32>(0i, global0.a, 2147483647i, global0.a), global0.b))) | vec4<i32>(_wgslsmith_mult_i32(0i, 2147483647i), ~(~(-52650i)) & max(_wgslsmith_mult_i32(12196i, arg_0.a), firstLeadingBit(global0.a)), global0.a, -2147483647i);
    let var_1 = Struct_3(u_input.b, Struct_2(all(!(!vec4<bool>(global0.b, global0.b, false, false))), Struct_1(-2147483647i, false, global0.c, global0.d), Struct_1(-(arg_0.a & global0.a), true, !select(vec2<bool>(global0.b, false), vec2<bool>(true, false), vec2<bool>(false, true)), _wgslsmith_f_op_f32(func_4(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.b, arg_0.c.x), Struct_3(vec2<u32>(1u, u_input.c.x), Struct_2(false, arg_0, arg_0)), arg_0).d - 1f))));
    global0 = func_4(vec4<bool>(global0.b, arg_0.b, true, arg_0.b), var_1, func_4(vec4<bool>(global0.b, false, any(vec2<bool>(false, global0.b)), false), Struct_3(~var_1.a, Struct_2(var_1.b.b.d > arg_0.d, arg_0, Struct_1(7318i, global0.b, var_1.b.b.c, var_1.b.c.d))), func_4(vec4<bool>(true != global0.c.x, arg_0.c.x, var_1.b.c.c.x || arg_0.b, any(global0.c)), Struct_3(firstTrailingBit(vec2<u32>(var_1.a.x, 48093u)), var_1.b), Struct_1(-50348i, select(true, var_1.b.c.c.x, true), select(vec2<bool>(false, var_1.b.b.b), vec2<bool>(var_1.b.c.b, false), global0.c), _wgslsmith_f_op_f32(trunc(-467f))))));
    var_0 = -(vec4<i32>(arg_0.a, _wgslsmith_sub_i32(-2154i, abs(var_1.b.c.a)), _wgslsmith_sub_i32(-2147483647i, global0.a) ^ 0i, -48909i) ^ (vec4<i32>(17647i, -12295i, _wgslsmith_add_i32(var_0.x, arg_0.a), _wgslsmith_add_i32(1i, global0.a)) >> ((min(vec4<u32>(u_input.c.x, 11121u, 1u, var_1.a.x), vec4<u32>(u_input.e, var_1.a.x, u_input.b.x, var_1.a.x)) | ~vec4<u32>(1u, 6289u, 52191u, var_1.a.x)) % vec4<u32>(32u))));
    let var_2 = firstLeadingBit(53105u);
    return var_1.b;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_3(u_input.b, func_5(func_4(select(!vec4<bool>(true, false, global0.b, global0.c.x), vec4<bool>(false, false, global0.b, true), func_2(Struct_1(global0.a, false, vec2<bool>(true, global0.b), global0.d))), Struct_3(u_input.c, Struct_2(false, Struct_1(global0.a, global0.c.x, global0.c, 606f), Struct_1(0i, true, global0.c, -724f))), Struct_1(i32(-1i) * -6951i, all(vec4<bool>(true, global0.b, false, false)), select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.c.x, false), global0.c.x), _wgslsmith_f_op_f32(sign(1921f))))));
    let var_1 = func_4(!(!(!(!vec4<bool>(global0.b, false, var_0.b.c.c.x, global0.c.x)))), var_0, var_0.b.c).b;
    let var_2 = var_0.b;
    let var_3 = func_4(vec4<bool>(!(true && func_4(vec4<bool>(false, var_0.b.a, true, false), Struct_3(u_input.c, var_0.b), Struct_1(-2147483647i, false, vec2<bool>(true, true), var_0.b.c.d)).b), !var_1, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_vec3_f32(func_3(var_2, Struct_1(1i, true, vec2<bool>(var_1, true), 1000f), Struct_1(var_2.c.a, var_1, global0.c, 796f))).x) <= var_2.c.d, var_0.b.a), var_0, Struct_1(~var_2.b.a, true == var_2.b.c.x, vec2<bool>(true, !any(vec2<bool>(var_0.b.b.b, false))), _wgslsmith_div_f32(global0.d, var_2.b.d)));
    var var_4 = Struct_3(~(~var_0.a), Struct_2(any(!(!vec4<bool>(true, var_3.c.x, var_2.c.b, false))), Struct_1(select(var_2.b.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.a, var_0.b.b.a, var_3.a, global0.a), vec4<i32>(-1i, -2147483647i, -44136i, -1i)), global0.c.x), all(!vec4<bool>(true, var_3.b, false, false)), select(var_2.b.c, vec2<bool>(var_2.b.b, var_0.b.c.c.x), true), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(var_2.c.d)))), func_5(var_0.b.c).c));
    return StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(662f, -176f, -194f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.d, global0.d, -109f)) + vec3<f32>(var_2.b.d, 116f, var_0.b.b.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(604f, var_2.c.d, var_4.b.c.d))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.b.d, 206f, -1271f)))), global0.b))), _wgslsmith_add_vec2_u32(select(select(u_input.b, _wgslsmith_clamp_vec2_u32(var_4.a, vec2<u32>(u_input.c.x, var_4.a.x), vec2<u32>(23840u, 0u)), vec2<bool>(var_1, false)), vec2<u32>(u_input.b.x, var_0.a.x) ^ ~u_input.d, !var_0.b.b.b), vec2<u32>(1u, countOneBits(abs(var_4.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.c.d, -537f, -1462f, global0.d) * vec4<f32>(var_3.d, -453f, var_2.c.d, -195f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.b.b.d, -404f, -1004f, 777f), vec4<f32>(var_3.d, var_2.b.d, var_3.d, -1591f), vec4<bool>(global0.b, false, var_4.b.b.c.x, true)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(1837f + 1264f), _wgslsmith_f_op_f32(865f * global0.d), _wgslsmith_div_f32(var_4.b.b.d, -348f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(224f, -150f, 1237f, var_4.b.b.d) - vec4<f32>(376f, 1615f, -680f, var_0.b.b.d)))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_4.b.b.d * 293f), _wgslsmith_f_op_f32(max(1627f, 2719f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

