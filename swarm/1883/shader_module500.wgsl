struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(69412u, false, vec3<u32>(1u, 0u, 19188u), vec4<u32>(28972u, 31124u, 0u, 3742u)), -506f, vec2<u32>(2466u, 1u), vec4<i32>(-32002i, i32(-2147483648), -28749i, 0i), Struct_1(4294967295u, false, vec3<u32>(4294967295u, 65795u, 1u), vec4<u32>(27707u, 152163u, 4294967295u, 4294967295u))), Struct_2(Struct_1(44529u, true, vec3<u32>(25192u, 0u, 7647u), vec4<u32>(0u, 4294967295u, 82918u, 53277u)), -331f, vec2<u32>(27941u, 4294967295u), vec4<i32>(0i, -13753i, 1i, 1i), Struct_1(81550u, false, vec3<u32>(0u, 4294967295u, 9776u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u))), Struct_2(Struct_1(29462u, false, vec3<u32>(4294967295u, 4294967295u, 45842u), vec4<u32>(18212u, 0u, 1u, 24117u)), -1005f, vec2<u32>(4294967295u, 19593u), vec4<i32>(-16596i, -9411i, 2147483647i, -45575i), Struct_1(99692u, false, vec3<u32>(13477u, 4294967295u, 40025u), vec4<u32>(0u, 6176u, 0u, 0u))), Struct_2(Struct_1(15865u, true, vec3<u32>(0u, 29339u, 4294967295u), vec4<u32>(63204u, 4294967295u, 0u, 84177u)), -727f, vec2<u32>(1u, 1u), vec4<i32>(i32(-2147483648), 0i, 13933i, -1i), Struct_1(1u, true, vec3<u32>(28677u, 21488u, 1123u), vec4<u32>(4294967295u, 25275u, 4294967295u, 54134u))), Struct_2(Struct_1(1u, true, vec3<u32>(19899u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 57112u, 45614u)), 574f, vec2<u32>(1u, 4294967295u), vec4<i32>(0i, 11125i, 2147483647i, -1i), Struct_1(4294967295u, false, vec3<u32>(10097u, 1u, 1u), vec4<u32>(4294967295u, 1u, 93665u, 46627u))), Struct_2(Struct_1(4294967295u, false, vec3<u32>(4294967295u, 4294967295u, 1u), vec4<u32>(29164u, 61421u, 56164u, 1u)), 366f, vec2<u32>(1u, 79821u), vec4<i32>(-1i, 6171i, 2929i, i32(-2147483648)), Struct_1(16520u, true, vec3<u32>(0u, 0u, 42129u), vec4<u32>(8987u, 4294967295u, 8764u, 3770u))), Struct_2(Struct_1(79698u, false, vec3<u32>(0u, 31226u, 1u), vec4<u32>(14418u, 1u, 0u, 4294967295u)), 2145f, vec2<u32>(63153u, 60554u), vec4<i32>(i32(-2147483648), i32(-2147483648), -7083i, 6082i), Struct_1(0u, true, vec3<u32>(4294967295u, 76293u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 21126u))));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    var var_0 = any(arg_1);
    let var_1 = firstLeadingBit(-arg_0.d.x);
    var_0 = true;
    let var_2 = -((u_input.a | u_input.a) >> (vec2<u32>(~(~62122u), reverseBits(0u)) % vec2<u32>(32u)));
    var var_3 = Struct_3(Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(28203u, 37017u), arg_0.c), all(vec2<bool>(true, arg_0.e.b)), global0.c, _wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 4294967295u, global0.c.x, 32069u), global0.d)), arg_0.b, vec2<u32>(global1.x, 0u), ~reverseBits(~vec4<i32>(var_1, -3970i, var_1, 2763i)), arg_0.a), select(select(vec2<bool>(!global0.b, arg_0.a.c.x != arg_0.e.d.x), arg_1.zy, vec2<bool>(true, global0.b)), !arg_1.wx, vec2<bool>(true, select(arg_0.a.b, true, all(vec3<bool>(arg_1.x, true, true))))));
    return reverseBits(~0u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: i32) -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(Struct_1(~0u, all(vec4<bool>(false, arg_1.b.x, false, arg_2.x)), min(_wgslsmith_add_vec3_u32(vec3<u32>(4196u, global0.c.x, u_input.c.x), vec3<u32>(50997u, arg_0.x, 0u)), ~vec3<u32>(66497u, arg_0.x, 38217u)), _wgslsmith_sub_vec4_u32(~u_input.d, reverseBits(global0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b))), firstLeadingBit(vec2<u32>(abs(global1.x), ~arg_0.x)), -(min(vec4<i32>(u_input.a.x, u_input.a.x, arg_1.a.d.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, arg_1.a.d.x, u_input.a.x)) ^ arg_1.a.d), arg_1.a.a), vec2<bool>(true != any(vec2<bool>(true, true)), reverseBits(global1.x) == (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a.d.x, 37539u, 4294967295u, 0u), vec4<u32>(arg_0.x, global1.x, 32750u, u_input.e)) ^ 1u)));
    var var_1 = select(select(vec4<bool>(any(vec3<bool>(false, arg_2.x, global0.b)), arg_2.x, all(vec4<bool>(arg_1.a.a.b, true, true, true)), countOneBits(1u) >= ~arg_0.x), !vec4<bool>(!arg_2.x, var_0.a.e.b, true & global0.b, true), arg_3 == max(5126i, -arg_3)), !select(vec4<bool>(global0.b, u_input.c.x < u_input.d.x, var_0.b.x, true), vec4<bool>(true, all(vec4<bool>(false, false, var_0.b.x, var_0.b.x)), var_0.a.a.b != true, any(vec4<bool>(arg_1.b.x, true, false, arg_1.a.a.b))), vec4<bool>(true, all(vec3<bool>(arg_1.b.x, true, arg_2.x)), !var_0.b.x, arg_2.x)), select(4294967295u, 1u, true) <= abs(23148u >> (global1.x % 32u)));
    let var_2 = min(vec3<i32>(2611i, abs(arg_3 | 2147483647i), var_0.a.d.x), -(~vec3<i32>(reverseBits(1i), -u_input.a.x, arg_1.a.d.x << (22218u % 32u))));
    var var_3 = u_input.b.x;
    let var_4 = arg_1;
    return vec4<bool>(false, var_0.b.x, !(!all(vec2<bool>(arg_2.x, true)) | !arg_2.x), false);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    global2 = array<Struct_2, 7>();
    var var_0 = any(func_4(~u_input.c, Struct_3(global2[_wgslsmith_index_u32(1u ^ func_3(global2[_wgslsmith_index_u32(1u, 7u)], vec4<bool>(false, arg_0.b, global0.b, false)), 7u)], vec2<bool>(false & arg_0.b, !global0.b)), vec3<bool>(false && arg_0.b, any(select(vec2<bool>(global0.b, false), vec2<bool>(false, false), false)), all(vec4<bool>(global0.b, arg_0.b, global0.b, global0.b)) | !global0.b), ~reverseBits(u_input.a.x)));
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(global0.c.yy, min(_wgslsmith_clamp_vec2_u32(global0.d.xw, vec2<u32>(38053u, global1.x), select(vec2<u32>(0u, u_input.d.x), arg_0.c.zx, vec2<bool>(true, true))), arg_0.c.yy)), ~(~u_input.b.yx));
    var var_2 = ~(~global1.x);
    let var_3 = min(_wgslsmith_clamp_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-53631i, u_input.a.x), u_input.a, vec2<i32>(39979i, u_input.a.x) << (vec2<u32>(global0.d.x, 34630u) % vec2<u32>(32u))), vec2<i32>(-10555i, 1i >> (global1.x % 32u)), vec2<i32>(u_input.a.x, ~u_input.a.x)), vec2<i32>(u_input.a.x, -(~u_input.a.x)));
    return Struct_3(global2[_wgslsmith_index_u32(firstTrailingBit(~global1.x), 7u)], !func_4(~(~arg_0.d.xzy), Struct_3(global2[_wgslsmith_index_u32(~4294967295u, 7u)], select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, true), true)), select(vec3<bool>(arg_0.b, global0.b, true), vec3<bool>(global0.b, false, false), select(vec3<bool>(false, false, arg_0.b), vec3<bool>(global0.b, true, false), true)), -2147483647i << (firstLeadingBit(arg_0.d.x) % 32u)).wx);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_3 {
    global1 = vec2<u32>(~(~1u), arg_1.x ^ arg_2.a.a.a);
    var var_0 = func_2(arg_2.a.e);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.b, _wgslsmith_f_op_f32(step(arg_2.a.b, -2283f))))), _wgslsmith_div_f32(-625f, 1000f)));
    var var_2 = arg_2;
    global0 = arg_2.a.a;
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, 1f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(658f, 522f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.b, arg_3.b), vec2<f32>(arg_3.b, -901f), arg_0.b.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-607f, 880f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-466f, 1033f) * vec2<f32>(-328f, arg_0.a.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, arg_0.a.b) - vec2<f32>(arg_0.a.b, arg_3.b))))))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(-509f, var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 243f) + vec2<f32>(380f, arg_3.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(152f, arg_3.b))))) - var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -2119f), var_0) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1521f, 299f))) * _wgslsmith_f_op_vec2_f32(trunc(var_0)))));
    global2 = array<Struct_2, 7>();
    let var_3 = arg_0;
    return 9749i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec4<i32>(abs(u_input.a.x), ~(~u_input.a.x) ^ u_input.a.x, u_input.a.x, -func_5(func_1(Struct_3(global2[_wgslsmith_index_u32(global1.x, 7u)], vec2<bool>(global0.b, global0.b)), u_input.d, Struct_3(global2[_wgslsmith_index_u32(52340u, 7u)], vec2<bool>(true, global0.b)), vec4<u32>(u_input.e, 1u, 83925u, 52539u)), vec2<bool>(global0.b, global0.b), 42857i, func_2(Struct_1(u_input.c.x, false, u_input.d.zxw, vec4<u32>(global0.a, global0.a, 0u, global1.x))).a)));
    var var_1 = Struct_3(func_1(Struct_3(Struct_2(func_1(Struct_3(global2[_wgslsmith_index_u32(global0.c.x, 7u)], vec2<bool>(global0.b, global0.b)), vec4<u32>(u_input.e, u_input.b.x, 1u, 0u), Struct_3(Struct_2(Struct_1(global1.x, true, vec3<u32>(u_input.e, 1u, 112788u), vec4<u32>(5276u, 4294967295u, global0.a, global1.x)), 507f, vec2<u32>(global0.d.x, 0u), vec4<i32>(u_input.a.x, u_input.a.x, 1i, 1i), Struct_1(u_input.d.x, false, u_input.d.zxy, global0.d)), vec2<bool>(global0.b, global0.b)), global0.d).a.a, _wgslsmith_f_op_f32(1139f - 833f), func_1(Struct_3(global2[_wgslsmith_index_u32(0u, 7u)], vec2<bool>(global0.b, global0.b)), vec4<u32>(global1.x, global0.d.x, 15352u, 0u), Struct_3(Struct_2(Struct_1(u_input.b.x, true, u_input.b, u_input.d), 707f, vec2<u32>(global0.d.x, 1u), vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x), Struct_1(0u, global0.b, vec3<u32>(global1.x, 31881u, 3371u), vec4<u32>(global0.a, u_input.b.x, 1u, 0u))), vec2<bool>(global0.b, global0.b)), u_input.d).a.e.c.xz, -vec4<i32>(u_input.a.x, 2147483647i, 0i, 0i), func_2(Struct_1(21071u, global0.b, vec3<u32>(4294967295u, 38358u, 0u), u_input.d)).a.a), func_4(_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, global1.x, 9916u), vec3<u32>(global1.x, global0.d.x, u_input.d.x)), func_1(Struct_3(global2[_wgslsmith_index_u32(40238u, 7u)], vec2<bool>(true, global0.b)), u_input.d, Struct_3(global2[_wgslsmith_index_u32(global0.a, 7u)], vec2<bool>(global0.b, global0.b)), u_input.d), vec3<bool>(false, global0.b, global0.b), var_0.x).zx), u_input.d, Struct_3(func_1(func_2(Struct_1(global0.d.x, false, vec3<u32>(0u, global1.x, global1.x), u_input.d)), ~global0.d, Struct_3(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], vec2<bool>(global0.b, global0.b)), vec4<u32>(94771u, 0u, u_input.e, 28755u)).a, !func_2(Struct_1(4294967295u, true, vec3<u32>(4294967295u, 0u, global0.c.x), global0.d)).b), vec4<u32>(func_2(Struct_1(22005u, true, vec3<u32>(4294967295u, u_input.b.x, u_input.e), global0.d)).a.e.d.x, 0u | firstTrailingBit(51217u), ~(~175u), ~(~u_input.b.x))).a, select(vec2<bool>(func_4(vec3<u32>(global1.x, global0.d.x, global1.x), Struct_3(Struct_2(Struct_1(1u, global0.b, vec3<u32>(39825u, u_input.d.x, global0.c.x), vec4<u32>(11372u, global0.d.x, 1u, 4294967295u)), -1968f, global0.d.wx, vec4<i32>(var_0.x, var_0.x, var_0.x, 36516i), Struct_1(1u, true, global0.d.zwy, global0.d)), vec2<bool>(global0.b, global0.b)), vec3<bool>(true, true, true), ~u_input.a.x).x, true), !(!vec2<bool>(global0.b, global0.b)), select(vec2<bool>(global0.b, global0.b), select(vec2<bool>(true, true), vec2<bool>(false, global0.b), true & global0.b), !global0.b)));
    let var_2 = var_1.a.a.d;
    var var_3 = var_1.a.d.wxy;
    var_1 = Struct_3(func_2(Struct_1(1u, var_1.a.b < _wgslsmith_f_op_f32(var_1.a.b + -463f), var_1.a.e.c, abs(u_input.d))).a, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.d.zwz, _wgslsmith_f_op_f32(max(var_1.a.b, var_1.a.b)), u_input.c.x, vec2<f32>(var_1.a.b, var_1.a.b));
}

