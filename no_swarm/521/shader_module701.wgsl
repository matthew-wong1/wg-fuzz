struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = -17269i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = false;
    let var_1 = Struct_1(all(vec3<bool>(false, true, any(vec4<bool>(true, false, true, false)))));
    let var_2 = 1u >= firstTrailingBit(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_mod_u32(u_input.e.x, min(u_input.c.x, 44215u))));
    var var_3 = ~(~(~u_input.c.xyy));
    var_0 = any(select(!select(vec4<bool>(var_2, var_1.a, var_1.a, false), !vec4<bool>(var_1.a, false, false, true), true || var_1.a), vec4<bool>(true, var_2, select(var_3.x >= 7150u, false || var_1.a, var_1.a && var_2), true), select(vec4<bool>(true, true, true, all(vec3<bool>(true, var_2, false))), !(!vec4<bool>(var_2, true, var_2, var_1.a)), all(vec4<bool>(false, true, var_1.a, var_2)))));
    return !var_1.a;
}

fn func_2() -> Struct_1 {
    let var_0 = !vec4<bool>(all(vec3<bool>(true, true, any(vec4<bool>(true, false, true, true)))), !all(vec2<bool>(true, false)), func_3(~(-u_input.b)), !(!any(vec4<bool>(false, false, false, true))));
    let var_1 = func_3(u_input.b);
    let var_2 = Struct_1(any(var_0.wzw));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-770f, 1397f, _wgslsmith_f_op_f32(1385f * -452f), -1347f)))));
    global0 = _wgslsmith_mod_u32(u_input.c.x, 0u);
    return Struct_1(true);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> bool {
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = select(vec3<bool>(!func_3(8665i), arg_0 > 30792u, var_1.a), vec3<bool>(true, true & all(select(vec4<bool>(false, true, var_0.a, true), vec4<bool>(var_1.a, var_1.a, true, var_1.a), false)), var_1.a && true), any(select(!(!vec3<bool>(false, var_1.a, true)), !(!vec3<bool>(var_0.a, var_0.a, false)), select(select(vec3<bool>(true, var_0.a, true), vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, var_0.a, var_0.a)), !vec3<bool>(false, var_0.a, false), !vec3<bool>(true, var_1.a, false)))));
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2097f, 1298f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1188f * 871f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(select(1000f, -256f, var_3.a))))), 1f));
    return select(all(vec3<bool>(select(false, false, var_2.x), any(var_2), !var_3.a)), true, var_0.a) & var_2.x;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = ~(~_wgslsmith_add_u32(~(~6250u), _wgslsmith_dot_vec3_u32(u_input.c.yxy, vec3<u32>(u_input.a.x, 76875u, u_input.d)) << (1u % 32u)));
    global0 = 4294967295u;
    global0 = 7369u;
    global1 = -1i;
    var var_0 = func_2();
    return func_2();
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-731f * 544f))) * -681f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f))));
    let var_1 = Struct_1((var_0 < 1528f) && !arg_0.a);
    var var_2 = func_4(var_0, u_input.b, select(select(vec3<bool>(false, true, true), !select(vec3<bool>(var_1.a, false, true), vec3<bool>(false, var_1.a, true), vec3<bool>(var_1.a, arg_0.a, true)), true), !select(select(vec3<bool>(arg_0.a, arg_0.a, var_1.a), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(arg_0.a, var_1.a, false)), select(vec3<bool>(true, var_1.a, false), vec3<bool>(var_1.a, arg_0.a, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, var_1.a, false), vec3<bool>(false, false, arg_0.a), vec3<bool>(false, arg_0.a, true))), !vec3<bool>(any(vec3<bool>(var_1.a, false, false)), true, !arg_0.a)), select(vec4<bool>(false, !(u_input.d >= u_input.d), 44022u != u_input.c.x, arg_0.a), vec4<bool>(true, any(vec3<bool>(var_1.a, true, false)), false, _wgslsmith_f_op_f32(trunc(-191f)) > -967f), select(vec4<bool>(false, func_2().a, arg_0.a, var_1.a), select(vec4<bool>(var_1.a, arg_0.a, false, var_1.a), select(vec4<bool>(false, false, arg_0.a, var_1.a), vec4<bool>(false, var_1.a, var_1.a, arg_0.a), vec4<bool>(false, true, false, true)), false), select(select(vec4<bool>(true, arg_0.a, true, true), vec4<bool>(arg_0.a, arg_0.a, var_1.a, var_1.a), var_1.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a), select(vec4<bool>(arg_0.a, false, true, true), vec4<bool>(var_1.a, true, var_1.a, arg_0.a), vec4<bool>(var_1.a, false, true, false))))));
    var var_3 = firstTrailingBit(abs(u_input.c.xw));
    global1 = ~abs(_wgslsmith_add_i32(~u_input.b, u_input.b));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(820f)), _wgslsmith_f_op_f32(1428f - var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -502f);
    let var_1 = Struct_1(true);
    let var_2 = _wgslsmith_f_op_vec2_f32(func_5(func_4(_wgslsmith_f_op_f32(sign(533f)), 23376i, !(!(!vec3<bool>(true, var_1.a, var_1.a))), vec4<bool>(all(!vec3<bool>(var_1.a, true, var_1.a)), true, _wgslsmith_div_u32(u_input.c.x, u_input.d) >= firstTrailingBit(u_input.e.x), func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.e.x), u_input.a), u_input.c)))));
    var var_3 = select(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(13106i, -26275i)), select(vec2<i32>(u_input.b, 876i), vec2<i32>(u_input.b, u_input.b), var_1.a)), u_input.b ^ min(u_input.b, -36559i)), ~(~(-7116i)), false);
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_2.x)), vec4<u32>(firstTrailingBit(~36988u), firstLeadingBit(21935u), u_input.e.x, max(40222u, 4294967295u)), max(select(u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b)), vec2<i32>(u_input.b, 1i)), var_1.a), -firstLeadingBit(u_input.b) & 1i));
}

