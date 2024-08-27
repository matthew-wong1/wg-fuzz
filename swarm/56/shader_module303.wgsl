struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_2(Struct_1(vec4<bool>(false, true, !arg_2.b.x && true, arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b))), vec3<bool>(all(!vec3<bool>(false, false, arg_1)), true, arg_1), ~(~(~vec2<u32>(arg_2.c.x, arg_2.c.x) >> (vec2<u32>(101024u, arg_2.c.x) % vec2<u32>(32u)))));
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    var var_1 = Struct_1(vec4<bool>(all(!(!vec3<bool>(arg_1, arg_1, true))), !(_wgslsmith_f_op_f32(floor(var_0.a.b)) > 360f), select(all(!var_0.b.zx), false, all(!vec4<bool>(var_0.b.x, arg_1, arg_2.a.a.x, false))), (false || any(var_0.a.a.zy)) && any(!var_0.a.a.wyy)), _wgslsmith_f_op_f32(trunc(-311f)));
    var var_2 = var_1.a.x & arg_1;
    return _wgslsmith_add_u32(var_0.c.x, ~var_0.c.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a.wzz;
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * 815f), 646f));
    let var_2 = Struct_2(Struct_1(select(arg_0.a, !select(arg_0.a, vec4<bool>(false, false, arg_0.a.x, false), vec4<bool>(false, arg_0.a.x, false, var_0.x)), !vec4<bool>(false, false, var_0.x, true)), -576f), !vec3<bool>(arg_0.a.x || (global0[_wgslsmith_index_u32(4294967295u, 27u)] >= global0[_wgslsmith_index_u32(0u, 27u)]), arg_0.a.x, !arg_0.a.x), vec2<u32>(func_3(~reverseBits(vec2<u32>(16840u, 4294967295u)), all(arg_0.a), Struct_2(arg_0, !vec3<bool>(arg_0.a.x, var_0.x, true), vec2<u32>(1u, 1u))), 1u));
    return var_2.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = func_2(Struct_1(select(arg_2.a, vec4<bool>(!arg_3, any(vec2<bool>(true, arg_3)), true, true), true), _wgslsmith_f_op_f32(abs(arg_2.b))));
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_1 = Struct_1(select(!(!(!vec4<bool>(arg_0.x, true, false, arg_2.a.x))), select(var_0.a, func_2(arg_2).a, -1274f != arg_2.b), true), _wgslsmith_f_op_f32(-var_0.b));
    return Struct_2(arg_2, var_0.a.xyx, ~vec2<u32>(1u, ~1u));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_2 {
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    var var_0 = min(select(max(vec2<u32>(94844u, 1u), _wgslsmith_mult_vec2_u32(arg_1.c, arg_2)), arg_1.c, all(vec3<bool>(true, arg_1.b.x, true))), vec2<u32>(arg_0, arg_2.x)) >> (_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(~arg_1.c, arg_2), arg_2) % vec2<u32>(32u));
    return func_4(func_2(Struct_1(vec4<bool>(!arg_1.a.a.x, false, arg_1.b.x, arg_1.a.b > arg_1.a.b), func_4(vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, arg_1.a.b, arg_1.a.b)), Struct_1(arg_1.a.a, arg_1.a.b), true).a.b)).a.wz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a.b, _wgslsmith_f_op_f32(func_4(arg_1.a.a.wz, vec3<f32>(arg_1.a.b, 1000f, arg_1.a.b), arg_1.a, arg_1.a.a.x).a.b - 539f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f))))), Struct_1(arg_1.a.a, arg_1.a.b), true);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    global0 = array<i32, 27>();
    let var_0 = -1044f;
    let var_1 = true;
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    return _wgslsmith_add_u32(1u, arg_1.c.x);
}

fn func_1() -> vec4<f32> {
    let var_0 = vec2<u32>(~firstTrailingBit(~_wgslsmith_sub_u32(4294967295u, 82610u)), func_6(Struct_1(vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, false))), 1f), func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(92968u, 0u, 15720u), vec3<u32>(4294967295u, 1u, 1u))), func_4(vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-619f, 215f, 951f) + vec3<f32>(-490f, 157f, 1035f)), func_2(Struct_1(vec4<bool>(false, true, true, false), -513f)), true), max(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), func_4(vec2<bool>(func_2(Struct_1(vec4<bool>(true, false, false, false), -882f)).a.x, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-865f, -595f, 621f) + vec3<f32>(275f, 198f, -1528f)) - vec3<f32>(1296f, -881f, -1894f)), func_2(func_4(vec2<bool>(false, true), vec3<f32>(376f, 2882f, -529f), Struct_1(vec4<bool>(false, true, true, true), 1701f), true).a), !(global0[_wgslsmith_index_u32(1u, 27u)] != global0[_wgslsmith_index_u32(26857u, 27u)])).a));
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let var_1 = func_5(var_0.x, func_4(func_2(Struct_1(vec4<bool>(true, true, true, true), -105f)).a.zw, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-479f, _wgslsmith_f_op_f32(floor(-1000f)), -889f), vec3<f32>(func_5(var_0.x, Struct_2(Struct_1(vec4<bool>(false, true, false, true), 422f), vec3<bool>(false, true, false), vec2<u32>(0u, var_0.x)), vec2<u32>(14571u, 11428u)).a.b, _wgslsmith_f_op_f32(floor(1132f)), _wgslsmith_f_op_f32(554f + 549f)))), Struct_1(func_5(20136u & var_0.x, func_4(vec2<bool>(true, true), vec3<f32>(-2003f, -411f, -448f), Struct_1(vec4<bool>(true, true, true, true), 305f), false), func_5(64009u, Struct_2(Struct_1(vec4<bool>(true, true, true, false), 752f), vec3<bool>(true, false, true), vec2<u32>(4294967295u, var_0.x)), vec2<u32>(var_0.x, var_0.x)).c).a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1068f - -226f))), !any(vec4<bool>(true, false, true, false))), ~_wgslsmith_add_vec2_u32(~abs(var_0), ~(~var_0)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1436f, -1024f, 2330f, _wgslsmith_f_op_f32(-var_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(i32(-1i) * -4484i);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_1.x)), ~func_4(func_2(Struct_1(vec4<bool>(false, false, false, false), var_1.x)).a.yz, var_1.xyz, func_5(reverseBits(1u), Struct_2(Struct_1(vec4<bool>(true, false, false, true), var_1.x), vec3<bool>(true, true, false), vec2<u32>(1u, 0u)), ~vec2<u32>(4294967295u, 0u)).a, func_5(~0u, func_5(22597u, Struct_2(Struct_1(vec4<bool>(true, false, false, true), var_1.x), vec3<bool>(true, false, true), vec2<u32>(0u, 0u)), vec2<u32>(1u, 1u)), abs(vec2<u32>(4294967295u, 4294967295u))).a.a.x).c.x);
}

