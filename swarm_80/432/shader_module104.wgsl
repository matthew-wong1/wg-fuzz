struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32>;

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_3.b.x)), -682f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1453f)) * _wgslsmith_f_op_f32(1138f * -701f)), arg_3.d.c)) * _wgslsmith_f_op_vec3_f32(trunc(arg_3.b)));
    var var_1 = arg_3;
    global1 = vec4<u32>(~arg_2, var_1.c.x, ~_wgslsmith_sub_u32(16252u >> (arg_1.x % 32u), firstLeadingBit(~arg_3.c.x)), arg_1.x ^ select(_wgslsmith_mod_u32(~u_input.a, countOneBits(arg_1.x)), ~(~arg_3.c.x), false));
    let var_2 = arg_3.d;
    global2 = select(~(~arg_3.e), _wgslsmith_mult_i32(countOneBits(-firstLeadingBit(-44564i)), 28840i), any(var_2.d.wx));
    return arg_3.c;
}

fn func_2() -> Struct_2 {
    var var_0 = 14253i;
    global1 = ~(~select(~(~vec4<u32>(55092u, 25912u, 1u, u_input.b)), vec4<u32>(u_input.b, 0u, global1.x, 4294967295u) & func_3(1120f, vec2<u32>(u_input.a, 19734u), 45596u, Struct_2(vec3<bool>(false, false, false), vec3<f32>(1739f, 919f, -1493f), vec4<u32>(global1.x, global1.x, global1.x, 73129u), Struct_1(u_input.c, global1.x, -1911f, vec4<bool>(true, false, false, false)), -16153i)), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(839f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-302f - -805f), _wgslsmith_f_op_f32(845f * -438f))), 575f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1080f, -618f, -328f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(294f, -1995f, 591f), vec3<f32>(935f, -169f, -589f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -857f, 1000f)))));
    var var_2 = true;
    var var_3 = ~vec4<i32>(-_wgslsmith_add_i32(u_input.d.x, 42318i ^ u_input.d.x), reverseBits(u_input.d.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1788i, u_input.d.x), -50116i), ~(-(~u_input.d.x)));
    return Struct_2(vec3<bool>(12476i < var_3.x, !(false || select(false, true, false)), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(-1650f, -1447f))), var_1.x, var_1.x)), abs(countOneBits(select(vec4<u32>(46113u, u_input.a, u_input.c, 50634u), vec4<u32>(4294967295u, u_input.c, 4294967295u, 4294967295u), vec4<bool>(false, false, true, false)))) << (firstTrailingBit(~(~vec4<u32>(4294967295u, 43682u, global1.x, 0u))) % vec4<u32>(32u)), Struct_1(_wgslsmith_add_u32(~abs(u_input.b), global1.x), 43470u, _wgslsmith_f_op_f32(exp2(var_1.x)), !vec4<bool>(true, true, any(vec2<bool>(true, false)), false)), ~reverseBits(1i));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_mult_vec3_i32(~vec3<i32>(~select(-1i, arg_0.x, true), select(49777i, -54677i, true), -1i), -(~(-u_input.d & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(-16806i, u_input.d.x, 0i)))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, var_1.d.c, var_1.d.c, -258f)))))));
    global2 = -(~arg_0.x);
    let var_3 = func_2().d;
    return var_1.a.x;
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-func_2().d.c);
    let var_0 = vec3<bool>(any(select(!vec3<bool>(arg_0.x, true, false), vec3<bool>(true, true, true), !(!vec3<bool>(arg_0.x, false, arg_0.x)))), false, !((func_2().e | min(705i, -2147483647i)) != countOneBits(min(u_input.d.x, u_input.d.x))));
    var var_1 = ~global1.x;
    var var_2 = vec3<bool>(true, true, (u_input.d.x != -2147483647i) | true);
    let var_3 = Struct_2(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1507f, 361f, -2209f), vec3<f32>(-1454f, 767f, 1000f))), vec3<f32>(937f, -1000f, 985f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1141f, -212f), vec3<f32>(1844f, -1442f, -1089f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, -1000f) + vec3<f32>(-150f, 897f, -142f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -498f) + _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -108f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(240f)) - 692f))), firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global1.x, global1.x, 29103u), 60691u, global1.x), ~25300u, _wgslsmith_mod_u32(u_input.a, 1u), 1u)), func_2().d, u_input.d.x);
    return Struct_1(56093u, 0u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1046f, _wgslsmith_f_op_f32(exp2(var_3.d.c)), true))))), select(vec4<bool>(var_3.d.d.x, true, false, var_3.a.x), var_3.d.d, select(func_2().d.d, vec4<bool>(true, true, true, true), select(var_3.d.d, vec4<bool>(arg_0.x, var_3.a.x, arg_0.x, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -2147483647i;
    global0 = -690f;
    var var_0 = func_4(vec2<bool>(func_1(max(min(u_input.d.zz, vec2<i32>(u_input.d.x, u_input.d.x)), vec2<i32>(44835i, 0i))), false));
    var var_1 = func_2().d.d.xx;
    var var_2 = global1.wxw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1f)))))), 14208i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(169f, -238f, var_0.c, 1828f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c, var_0.c, var_0.c, 921f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, 1032f, 1283f)))))), u_input.d.x, global1.wyz);
}

