struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3 = Struct_3(vec2<f32>(-799f, 801f), false, Struct_1(vec4<bool>(false, true, true, true), 22762u, vec4<u32>(1u, 20155u, 0u, 76391u), false, -1i), vec2<i32>(-5581i, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_3) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-679f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)))))));
    var var_0 = vec2<bool>(true, -1i >= _wgslsmith_dot_vec3_i32(-max(vec3<i32>(arg_3.d.x, arg_3.d.x, -46i), vec3<i32>(2147483647i, 0i, arg_3.c.e)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_3.c.e, -2147483647i, arg_3.c.e), vec3<i32>(-2147483647i, global1.c.e, -1i)) >> (~arg_3.c.c.xww % vec3<u32>(32u))));
    var_0 = global1.c.a.wx;
    let var_1 = var_0.x;
    global1 = arg_3;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    let var_0 = (~(~(~global1.c.c.yw)) | _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.c.c.zy, vec2<u32>(arg_0.b, arg_1.c.b)), abs(~vec2<u32>(arg_0.c.x, global1.c.b)))) ^ arg_0.c.xx;
    let var_1 = !(global1.b & all(!func_3(vec3<u32>(1u, 9200u, 1u), global1.c.c.x, vec2<f32>(765f, 1000f), arg_1)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(min(global1.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(319f, arg_1.a.x))), arg_1.a)))), true, arg_1.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.d.x, ~arg_2.a), _wgslsmith_clamp_vec2_i32(abs(arg_1.d), abs(arg_1.d), global1.d), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, global1.c.e), vec2<i32>(55569i, -8121i))) ^ abs(global1.d));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = !global1.c.d;
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + -1681f) * _wgslsmith_f_op_f32(min(arg_1.x, -1077f))), 649f)), arg_2.c.d, func_2(func_2(func_2(func_2(global1.c, arg_2, Struct_2(-1i)).c, func_2(Struct_1(global1.c.a, 57347u, arg_2.c.c, global1.c.a.x, global1.d.x), arg_2, Struct_2(-2147483647i)), Struct_2(arg_0.x)).c, Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a.x, arg_2.a.x), arg_1)), arg_2.b && global1.b, func_2(arg_2.c, arg_2, Struct_2(arg_0.x)).c, vec2<i32>(arg_0.x, arg_2.d.x)), Struct_2(select(global1.c.e, global1.d.x, global1.b))).c, func_2(Struct_1(vec4<bool>(true, global1.b, arg_2.c.a.x, global1.c.a.x), 17168u | arg_2.c.c.x, _wgslsmith_sub_vec4_u32(arg_2.c.c, global1.c.c), !global1.b, arg_0.x), arg_2, Struct_2(_wgslsmith_clamp_i32(2147483647i, arg_0.x, arg_0.x))), Struct_2(10221i)).c, ~_wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(-18659i), ~(-1i)), _wgslsmith_sub_vec2_i32(global1.d, global1.d)));
    global0 = 283f;
    var_0 = true;
    var var_1 = !arg_2.c.a.x;
    return vec4<bool>(true, global1.b, arg_2.c.a.x, arg_2.c.d);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.xy, arg_0.a, !arg_0.c.a.wz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) + global1.a) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a - vec2<f32>(global1.a.x, arg_1.x)), vec2<f32>(arg_0.a.x, arg_0.a.x)))), arg_2.x, Struct_1(!func_4(reverseBits(vec3<i32>(0i, -16808i, 12680i)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, arg_1.x), arg_0.a, vec2<bool>(true, true))), func_2(Struct_1(vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, global1.b, global1.c.d), arg_0.c.b, vec4<u32>(global1.c.b, 106840u, 4294967295u, 75499u), arg_0.c.d, global1.c.e), arg_0, Struct_2(arg_0.c.e))), 11910u, ~arg_0.c.c, func_3(global1.c.c.yxz, 4294967295u, global1.a, func_2(global1.c, arg_0, Struct_2(global1.c.e))).x, _wgslsmith_sub_i32(-func_2(global1.c, arg_0, Struct_2(0i)).d.x, arg_0.c.e)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(37943i, arg_0.c.e)), vec2<i32>(arg_0.d.x, global1.d.x), global1.d), firstTrailingBit(vec2<i32>(arg_0.d.x >> (1u % 32u), arg_0.c.e))));
    var var_1 = arg_0.a.x;
    var var_2 = vec4<i32>(select(~(-2147483647i), -countOneBits(i32(-1i) * -6793i), !(~0u < arg_0.c.b)), arg_0.d.x, arg_0.c.e, 1i);
    var_1 = _wgslsmith_f_op_f32(128f - 475f);
    global1 = arg_0;
    return -227f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1416f, global1.a.x, _wgslsmith_f_op_f32(func_1(Struct_3(global1.a, global1.b, Struct_1(global1.c.a, u_input.a, vec4<u32>(65264u, 24662u, 23927u, 28255u), true, global1.d.x), vec2<i32>(global1.c.e, 22754i)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-555f, global1.a.x, -1851f))), vec2<bool>(all(global1.c.a), true))), global1.a.x));
    var var_2 = func_2(global1.c, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.zz, global1.a, global1.b)))), func_2(func_2(Struct_1(vec4<bool>(global1.b, true, false, global1.c.a.x), 1u, vec4<u32>(u_input.a, 60803u, u_input.b, 9924u), true, global1.c.e), Struct_3(vec2<f32>(-468f, var_1.x), global1.c.d, Struct_1(global1.c.a, 2745u, global1.c.c, true, -26024i), vec2<i32>(global1.c.e, 2147483647i)), Struct_2(-66422i)).c, func_2(Struct_1(global1.c.a, u_input.a, global1.c.c, global1.c.a.x, 1i), Struct_3(vec2<f32>(global1.a.x, global1.a.x), true, global1.c, vec2<i32>(global1.c.e, 10112i)), Struct_2(global1.c.e)), Struct_2(~0i)).c.d, func_2(Struct_1(global1.c.a, global1.c.b & u_input.b, ~vec4<u32>(61320u, 0u, 0u, 0u), true, _wgslsmith_add_i32(global1.c.e, 3001i)), Struct_3(vec2<f32>(var_1.x, global1.a.x), true, Struct_1(global1.c.a, 0u, global1.c.c, false, 11546i), -vec2<i32>(-41916i, 2147483647i)), Struct_2(0i)).c, -vec2<i32>(~global1.c.e, 1i)), Struct_2(-1i));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(2896f * global1.a.x), var_2.a.x, var_1.x);
    global0 = 1182f;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, -1737f)))));
    global1 = func_2(global1.c, func_2(func_2(Struct_1(func_2(Struct_1(var_2.c.a, 60931u, var_2.c.c, global1.c.d, -20389i), Struct_3(var_1.zx, false, var_2.c, vec2<i32>(0i, -38306i)), Struct_2(global1.d.x)).c.a, countOneBits(1u), max(global1.c.c, vec4<u32>(1669u, 4294967295u, 4294967295u, 4294967295u)), false, _wgslsmith_div_i32(global1.c.e, 2147483647i)), func_2(func_2(Struct_1(global1.c.a, 0u, vec4<u32>(global1.c.b, 1u, 2703u, 0u), false, var_2.d.x), Struct_3(var_1.ww, false, var_2.c, vec2<i32>(var_2.c.e, global1.d.x)), Struct_2(global1.c.e)).c, func_2(Struct_1(vec4<bool>(global1.c.d, true, false, var_2.b), var_2.c.c.x, global1.c.c, false, 26178i), Struct_3(vec2<f32>(927f, 102f), var_2.c.d, Struct_1(vec4<bool>(var_2.b, var_2.b, global1.b, var_2.c.a.x), 0u, var_2.c.c, global1.b, -1i), global1.d), Struct_2(global1.c.e)), Struct_2(42421i)), Struct_2(0i)).c, func_2(func_2(func_2(Struct_1(global1.c.a, 45250u, vec4<u32>(1u, var_2.c.b, u_input.b, global1.c.b), true, 2147483647i), Struct_3(var_2.a, true, Struct_1(vec4<bool>(true, false, var_2.b, global1.c.d), u_input.b, global1.c.c, false, -21113i), var_2.d), Struct_2(global1.d.x)).c, func_2(var_2.c, Struct_3(global1.a, var_2.c.a.x, Struct_1(vec4<bool>(var_2.b, true, global1.b, var_2.c.a.x), var_2.c.b, global1.c.c, global1.c.d, var_2.c.e), var_2.d), Struct_2(4729i)), Struct_2(global1.d.x)).c, func_2(global1.c, Struct_3(global1.a, global1.c.a.x, global1.c, var_2.d), Struct_2(var_2.c.e)), Struct_2(8839i)), Struct_2(_wgslsmith_clamp_i32(global1.c.e, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.c.e), vec2<i32>(global1.c.e, 1i)), global1.d.x))), Struct_2(abs(1i)));
    global1 = func_2(global1.c, Struct_3(global1.a, var_2.b, var_2.c, vec2<i32>(_wgslsmith_sub_i32(var_2.c.e, global1.d.x) << (_wgslsmith_clamp_u32(var_2.c.c.x, 54445u, 50057u) % 32u), ~var_2.d.x)), Struct_2(var_2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.c.xwx, -639f, vec2<i32>(min(-countOneBits(var_2.c.e), _wgslsmith_div_i32(var_2.c.e >> (var_2.c.b % 32u), var_2.c.e)), 2147483647i), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, min(-50336i, var_2.d.x)), _wgslsmith_f_op_f32(step(679f, -624f)));
}

