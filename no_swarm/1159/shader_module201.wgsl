struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32 = 870f;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-199f, vec4<bool>(true, false, true, true), vec2<f32>(764f, 890f), vec2<u32>(70067u, 0u)), Struct_1(214f, vec4<bool>(false, true, false, true), vec2<f32>(441f, 1758f), vec2<u32>(4294967295u, 69858u)), Struct_1(-409f, vec4<bool>(false, false, false, true), vec2<f32>(-399f, 507f), vec2<u32>(50092u, 39541u)), Struct_1(1000f, vec4<bool>(false, false, false, true), vec2<f32>(1369f, -1425f), vec2<u32>(24464u, 49380u)), Struct_1(-511f, vec4<bool>(false, true, true, false), vec2<f32>(-231f, 236f), vec2<u32>(4294967295u, 0u)), Struct_1(1148f, vec4<bool>(false, false, true, true), vec2<f32>(1230f, 1462f), vec2<u32>(13973u, 1u)), Struct_1(1589f, vec4<bool>(false, false, false, true), vec2<f32>(1000f, 716f), vec2<u32>(1u, 50026u)), Struct_1(-1449f, vec4<bool>(false, false, false, true), vec2<f32>(-618f, 1000f), vec2<u32>(4294967295u, 30295u)), Struct_1(1326f, vec4<bool>(false, false, false, true), vec2<f32>(1000f, -1044f), vec2<u32>(4294967295u, 1u)), Struct_1(1746f, vec4<bool>(true, true, true, false), vec2<f32>(314f, 1000f), vec2<u32>(4294967295u, 2387u)), Struct_1(1146f, vec4<bool>(true, true, false, false), vec2<f32>(453f, 194f), vec2<u32>(47605u, 29520u)), Struct_1(-612f, vec4<bool>(true, true, false, true), vec2<f32>(2803f, 922f), vec2<u32>(47647u, 57895u)), Struct_1(1000f, vec4<bool>(true, false, false, false), vec2<f32>(-225f, 598f), vec2<u32>(28923u, 4294967295u)), Struct_1(-1306f, vec4<bool>(true, false, false, true), vec2<f32>(511f, 2009f), vec2<u32>(1u, 0u)), Struct_1(-1000f, vec4<bool>(false, true, false, true), vec2<f32>(-1093f, 1000f), vec2<u32>(44414u, 1u)));

var<private> global3: bool = false;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(380f - _wgslsmith_f_op_f32(1000f - global4.a.x))) - _wgslsmith_f_op_f32(global4.a.x - _wgslsmith_f_op_f32(round(1000f))))));
    var var_0 = vec2<bool>(true, true);
    let var_1 = true;
    let var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(24959u, 21189u)) ^ 1u)), 15u)];
    return var_0.x;
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = func_2();
    let var_1 = global2[_wgslsmith_index_u32(max(~1u, 31738u), 15u)];
    global3 = any(vec4<bool>(true, !(var_1.b.x & var_1.b.x), false, true));
    var_0 = var_1.b.x;
    var var_2 = var_1.b.yz;
    return var_1.d.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> vec3<bool> {
    global4 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global4.a))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(278f, global4.a.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, global4.a.x, global4.a.x))))), vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 774f)), _wgslsmith_f_op_f32(-865f * _wgslsmith_f_op_f32(step(-1341f, global4.a.x))))), u_input.a);
    let var_0 = global4.b.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(min(1071f, global4.a.x)))), 400f, 621f);
    let var_2 = !(!arg_3.yzx);
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(143f + -738f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -949f))), global4.a.x, 183f), _wgslsmith_div_vec3_i32(global4.b, -(~countOneBits(vec3<i32>(7848i, global4.b.x, u_input.a.x)))));
    return select(arg_3.zyz, arg_3.wzw, true);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> f32 {
    let var_0 = !select(arg_1, select(select(func_3(arg_1.zz, global4.a, arg_1, vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), arg_1, !vec3<bool>(true, arg_1.x, true)), !arg_1, _wgslsmith_div_i32(global4.b.x, 17771i) >= u_input.a.x), vec3<bool>(_wgslsmith_f_op_f32(ceil(global4.a.x)) != -1825f, !(!arg_1.x), _wgslsmith_sub_u32(arg_2.x, 0u) < min(4294967295u, arg_2.x)));
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global4.a.x, -718f, -127f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, -1000f, arg_0.x) + global4.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1055f, global4.a.x, global4.a.x))) * vec3<f32>(-673f, arg_0.x, 1040f))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-7771i | global4.b.x, global4.b.x), -_wgslsmith_sub_i32(global4.b.x, u_input.a.x), _wgslsmith_div_i32(~u_input.a.x, -2147483647i)), vec3<i32>(~min(2147483647i, -1i), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_add_i32(global4.b.x, -63315i)), global4.b.x), vec3<i32>(~_wgslsmith_mult_i32(global4.b.x, global4.b.x), max(681i, global4.b.x), 0i)));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1745f);
    global1 = 395f;
    var var_1 = global2[_wgslsmith_index_u32(~0u, 15u)];
    return 139f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -29299i;
    var var_1 = ~(~min(~1u, 38931u));
    let var_2 = vec2<bool>((~func_1(Struct_2(vec3<f32>(-666f, global4.a.x, 1641f), u_input.a)) ^ ~1u) >= ~65628u, true);
    global2 = array<Struct_1, 15>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(func_4(global4.a, func_3(var_2, global4.a, select(vec3<bool>(true, true, true), !vec3<bool>(true, var_2.x, var_2.x), true), select(select(vec4<bool>(var_2.x, false, true, true), vec4<bool>(var_2.x, true, true, false), var_2.x), select(vec4<bool>(false, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, false, var_2.x), false), global4.b.x <= global4.b.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(69170u, 63998u, 60144u, 1u), vec4<u32>(50128u, 4294967295u, 0u, 56098u), vec4<u32>(47202u, 0u, 1u, 47123u)) | vec4<u32>(27251u, 1u, 55976u, 24076u), ~firstTrailingBit(vec4<u32>(0u, 4294967295u, 1u, 11762u))))), !(!select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, true, var_2.x), var_2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1867f, _wgslsmith_div_f32(1150f, global4.a.x)) + global4.a.zz)), vec2<u32>(~1u, 4294967295u));
    var var_4 = 5772u <= ~var_3.d.x;
    let var_5 = -(~25513i);
    let var_6 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1361f), vec4<bool>(true, true, false, var_2.x || (!var_2.x || true)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global4.a.xx, vec2<f32>(var_3.a, 1000f), all(vec2<bool>(false, false)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.c + var_3.c) * var_3.c) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1312f, 885f), var_3.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(191f, -2843f) - vec2<f32>(var_3.a, 195f)))))), min(min(~(~vec2<u32>(var_3.d.x, 1u)), abs(vec2<u32>(var_3.d.x, var_3.d.x)) ^ max(var_3.d, var_3.d)), ~vec2<u32>(~var_3.d.x, 0u)));
    var var_7 = Struct_1(var_6.a, vec4<bool>(all(var_3.b.yxz), var_2.x, true, !(!(!var_3.b.x))), _wgslsmith_f_op_vec2_f32(var_3.c - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a.yy + var_6.c), var_3.c)), ~(~var_3.d) >> (var_3.d % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec4<i32>(7740i, -1i, var_0, 37214i), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a.x, 1i, u_input.a.x, var_5)), -vec4<i32>(2147483647i, 6048i, global4.b.x, 33899i))));
}

