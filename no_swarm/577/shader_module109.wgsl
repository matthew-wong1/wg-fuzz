struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(19096i, -75554i, 2147483647i, 3568i), vec2<i32>(3804i, -1i));

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(1i, -5621i, -16038i, -15873i), vec2<i32>(2147483647i, -26508i)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-44267i, 1i, -1i, -35842i), vec2<i32>(2147483647i, -1i)), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(1764i, -63994i, -20571i, 2147483647i), vec2<i32>(-9643i, 51417i)), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-1i, 2147483647i, -30184i, 2147483647i), vec2<i32>(-13919i, -1i)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(0i, 1i, 0i, -13822i), vec2<i32>(0i, -30777i)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(2147483647i, 1i, -14098i, i32(-2147483648)), vec2<i32>(16973i, -1i)), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-58777i, -58284i, 0i, 41541i), vec2<i32>(-28229i, 28677i)), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(0i, 6882i, -42812i, -55795i), vec2<i32>(37853i, 12592i)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-2705i, -21497i, -19110i, i32(-2147483648)), vec2<i32>(-1i, 19844i)), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(12733i, -3721i, -1i, 2147483647i), vec2<i32>(-50480i, 1i)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(2147483647i, 1i, 1i, -59438i), vec2<i32>(0i, 1i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(i32(-2147483648), -9809i, -34087i, 851i), vec2<i32>(29286i, -1i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-1i, -32761i, 1i, -24429i), vec2<i32>(28315i, 2147483647i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-21418i, -25074i, 66898i, 22097i), vec2<i32>(13105i, 34985i)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(0i, 0i, 46789i, -44631i), vec2<i32>(0i, 28672i)), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(0i, -123052i, 18470i, -1i), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -39346i), vec2<i32>(12468i, 0i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(1i, 1i, -44156i, -1i), vec2<i32>(0i, 1i)));

var<private> global2: array<Struct_4, 2>;

var<private> global3: vec4<u32> = vec4<u32>(0u, 77795u, 13886u, 12860u);

var<private> global4: array<u32, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = !(!(!(0u >= global3.x)) || true);
    let var_1 = Struct_5(global0.a.xw, Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-189f, 172f)) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 1179f), vec2<f32>(arg_0, arg_0))))));
    let var_2 = var_1;
    var var_3 = vec2<bool>(var_1.a.x, true | var_2.a.x);
    var var_4 = !vec4<bool>(all(global0.a), !any(var_1.a), (_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(4294967295u, u_input.b)) | _wgslsmith_mod_u32(1u, global4[_wgslsmith_index_u32(u_input.b, 4u)])) < (global3.x | _wgslsmith_sub_u32(1349u, 1u)), global0.a.x);
    return !(var_1.a.x & !(!var_3.x | all(vec3<bool>(global0.a.x, false, true))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_3) -> bool {
    var var_0 = Struct_5(select(vec2<bool>(-37046i <= _wgslsmith_div_i32(global0.c.x, 0i), false), !(!select(global0.a.zx, vec2<bool>(true, false), global0.a.yz)), vec2<bool>(!global0.a.x, func_3(825f))), arg_3);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.a.a.x, 982f, 1000f), vec3<f32>(arg_3.a.a.x, -460f, 968f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.a.a.x, arg_3.a.a.x, 452f), vec3<f32>(1391f, arg_3.a.a.x, var_0.b.a.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.a.a.x * var_0.b.a.a.x), _wgslsmith_f_op_f32(-var_0.b.a.a.x), arg_3.a.a.x), var_0.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.a.a.x - 1000f), -1322f, _wgslsmith_f_op_f32(f32(-1f) * -1464f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.a.x, arg_3.a.a.x, -205f) * vec3<f32>(-375f, arg_3.a.a.x, arg_3.a.a.x))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.a.x, var_0.b.a.a.x, arg_3.a.a.x) - vec3<f32>(-496f, arg_3.a.a.x, 2439f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1283f, 270f, -779f))))))), global0.a.x));
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.a.a - vec2<f32>(283f, var_1.x)) + _wgslsmith_f_op_vec2_f32(var_0.b.a.a * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_0.b.a.a.x), vec2<f32>(var_0.b.a.a.x, arg_3.a.a.x), true))))), Struct_3(var_0.b.a));
    var var_3 = var_0.b;
    var var_4 = Struct_4(arg_3.a, Struct_3(var_0.b.a));
    return var_0.a.x;
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = vec2<bool>(!func_2(vec2<u32>(~global3.x, firstLeadingBit(32086u)), ~(~vec4<u32>(0u, 0u, 0u, 1u)), ~1u, arg_0.b), true);
    var_0 = vec2<bool>(var_0.x, !(!all(global0.a.zwz)));
    var var_1 = vec3<bool>(global0.a.x, func_2(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global4[_wgslsmith_index_u32(u_input.a.x, 4u)], 1850u) & vec4<u32>(global3.x, u_input.a.x, 28668u, 15684u), select(vec4<u32>(0u, 49328u, global4[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a.x), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.x, 4u)], 4u)], 7899u, 33139u, 27587u), global0.a))), firstTrailingBit(vec4<u32>(1031u, 43980u, ~global3.x, 1u << (0u % 32u))), (58580u << (global3.x % 32u)) ^ global3.x, Struct_3(arg_0.a)), true);
    var var_2 = arg_0.b;
    global2 = array<Struct_4, 2>();
    return global3.wzw;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: u32, arg_3: Struct_4) -> Struct_4 {
    global1 = array<Struct_1, 18>();
    let var_0 = global0.a.x;
    let var_1 = arg_1.b.a.a.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(floor(-725f)))));
    let var_2 = ~global0.c.x;
    return global2[_wgslsmith_index_u32(~(arg_2 | max(u_input.b, 1u)) | arg_2, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = global0.a;
    let var_2 = func_4(~_wgslsmith_mod_vec3_u32(~func_1(Struct_4(Struct_2(vec2<f32>(-1673f, 1761f)), Struct_3(Struct_2(vec2<f32>(-663f, -207f)))), -768f, vec3<bool>(false, var_1.x, true)), u_input.a), Struct_5(!select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), global0.a.wy), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-523f, -353f)))))), 0u, Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(2217f, 1016f)), _wgslsmith_f_op_f32(-299f * -267f))), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1234f, -1059f)))))));
    var var_3 = global0.c.x;
    var var_4 = global1[_wgslsmith_index_u32(global3.x, 18u)];
    var var_5 = var_2;
    let var_6 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.b.a.a.x * var_2.a.a.x) * 525f))), var_2.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(_wgslsmith_add_u32(0u, global3.x)) | 4294967295u, _wgslsmith_add_u32(~func_1(Struct_4(Struct_2(vec2<f32>(442f, var_2.b.a.a.x)), var_2.b), 1179f, global0.a.xxw).x, select(~4294967295u, _wgslsmith_sub_u32(global3.x, u_input.b), true)), var_1.x));
}

