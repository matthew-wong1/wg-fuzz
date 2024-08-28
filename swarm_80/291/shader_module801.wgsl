struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 24> = array<bool, 24>(false, false, false, true, false, true, true, true, false, false, true, false, false, true, true, true, false, false, false, true, false, true, true, true);

var<private> global2: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-7883i, 1i, 43512i), vec3<i32>(i32(-2147483648), 2147483647i, -3793i), vec3<i32>(-21171i, 2147483647i, -12688i), vec3<i32>(-1216i, 28900i, 0i), vec3<i32>(-7229i, 6624i, 2888i), vec3<i32>(32950i, 1i, -1i), vec3<i32>(1i, 2147483647i, -15397i), vec3<i32>(-12127i, -78262i, 2147483647i), vec3<i32>(32606i, 1i, -10390i), vec3<i32>(45603i, -9327i, 1i));

var<private> global3: f32 = -811f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(global0.a, false);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1153f)) * _wgslsmith_f_op_f32(min(-786f, -627f))))))), 122f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-285f, -1467f), vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(var_1)), _wgslsmith_f_op_vec2_f32(var_1 * vec2<f32>(var_1.x, var_1.x)))))))));
    global0 = Struct_1(!select(select(var_0.a, vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d, 24u)], false), select(vec4<bool>(true, var_0.a.x, var_0.a.x, true), vec4<bool>(true, var_0.a.x, global1[_wgslsmith_index_u32(u_input.c, 24u)], true), var_0.b)), !(!vec4<bool>(true, false, true, global0.b)), global0.a), var_0.a.x);
    let var_3 = Struct_1(!vec4<bool>(any(!var_0.a.wxw), false, true, all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 24u)], true, var_0.a.x), vec3<bool>(var_0.b, global1[_wgslsmith_index_u32(u_input.d, 24u)], false), var_0.b))), true);
    return _wgslsmith_sub_i32(u_input.b, ~45217i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec3<i32>, 10>();
    let var_0 = vec2<i32>(select(u_input.b, _wgslsmith_div_i32(-2147483647i, 35567i), true), _wgslsmith_div_i32(func_3(), u_input.b));
    var var_1 = arg_0;
    var var_2 = firstLeadingBit(vec3<u32>(u_input.c, u_input.a, u_input.d));
    global0 = arg_0;
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global2 = array<vec3<i32>, 10>();
    var var_0 = 1i;
    let var_1 = select(vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), 1851f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), global0.a.x, true, u_input.b == (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, 2147483647i)) | (i32(-1i) * -38682i))), select(arg_3.a, func_2(arg_2, func_2(func_2(Struct_1(arg_2.a, global1[_wgslsmith_index_u32(103537u, 24u)]), Struct_1(arg_3.a, true), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(514u, 24u)], true, arg_2.b, true), false)), func_2(arg_2, Struct_1(vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 24u)], arg_2.b), true), arg_3), Struct_1(arg_2.a, global0.b)), arg_2).a, global1[_wgslsmith_index_u32(11471u, 24u)]), _wgslsmith_f_op_f32(min(-1150f, arg_1)) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_1 + arg_1)) - _wgslsmith_f_op_f32(floor(arg_1))));
    let var_2 = 18280i >> (u_input.c % 32u);
    var_0 = u_input.b;
    return false;
}

fn func_1() -> i32 {
    let var_0 = Struct_1(global0.a, !(true && !global0.a.x) && func_4(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 418f)), Struct_1(vec4<bool>(true, true, true, true), false), func_2(Struct_1(vec4<bool>(global0.a.x, global0.b, false, global0.a.x), false), Struct_1(vec4<bool>(global0.b, true, true, global0.b), true), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global0.b, false, global0.a.x), global1[_wgslsmith_index_u32(u_input.c, 24u)]))));
    global2 = array<vec3<i32>, 10>();
    var var_1 = -_wgslsmith_dot_vec4_i32(abs(min(reverseBits(vec4<i32>(19263i, 33311i, u_input.b, 40925i)), countOneBits(vec4<i32>(-86867i, u_input.b, 1i, 13943i)))), max(-vec4<i32>(u_input.b, u_input.b, u_input.b, 13939i) & select(vec4<i32>(u_input.b, -1i, 41303i, -2680i), vec4<i32>(-34830i, 0i, u_input.b, u_input.b), global0.a), (vec4<i32>(23143i, 55748i, 0i, u_input.b) << (vec4<u32>(u_input.d, 61752u, u_input.c, 0u) % vec4<u32>(32u))) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<i32>(u_input.b, 11411i, u_input.b, u_input.b))));
    let var_2 = var_0;
    return 2147483647i;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(!vec4<bool>(false, global0.a.x, !all(global0.a), global0.a.x), !all(vec3<bool>(arg_1.a.x & false, true, all(global0.a))));
    var var_0 = arg_1;
    var var_1 = Struct_1(select(!select(vec4<bool>(true, true, var_0.a.x, false), vec4<bool>(true, true, true, true), var_0.a.x | true), vec4<bool>(!global1[_wgslsmith_index_u32(select(u_input.a, u_input.d, false), 24u)], !arg_1.a.x, !(-30094i < u_input.b), var_0.b), select(vec4<bool>(arg_1.b, global0.a.x, false, arg_1.b), arg_1.a, true)), true);
    global3 = 1f;
    var var_2 = global2[_wgslsmith_index_u32(~firstTrailingBit(abs(1u)), 10u)];
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), func_2(func_2(func_2(func_2(Struct_1(vec4<bool>(false, global0.b, true, true), global1[_wgslsmith_index_u32(u_input.d, 24u)]), Struct_1(global0.a, true), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 24u)], true, false, global1[_wgslsmith_index_u32(30112u, 24u)]), false)), Struct_1(global0.a, global1[_wgslsmith_index_u32(u_input.d, 24u)]), func_2(Struct_1(vec4<bool>(global0.b, global0.b, global1[_wgslsmith_index_u32(u_input.a, 24u)], true), global1[_wgslsmith_index_u32(1u, 24u)]), Struct_1(global0.a, true), Struct_1(global0.a, global1[_wgslsmith_index_u32(u_input.d, 24u)]))), func_2(func_2(Struct_1(vec4<bool>(true, false, global0.b, false), false), Struct_1(global0.a, global1[_wgslsmith_index_u32(u_input.a, 24u)]), Struct_1(global0.a, global1[_wgslsmith_index_u32(u_input.a, 24u)])), func_2(Struct_1(vec4<bool>(false, false, false, true), global0.a.x), Struct_1(global0.a, global1[_wgslsmith_index_u32(0u, 24u)]), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], false, global0.b), false)), Struct_1(global0.a, true)), func_2(Struct_1(global0.a, global0.b), func_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(u_input.d, 24u)], false, global0.b), global1[_wgslsmith_index_u32(u_input.c, 24u)]), Struct_1(vec4<bool>(false, true, false, false), global1[_wgslsmith_index_u32(u_input.a, 24u)]), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 24u)], global0.a.x, false, true), global0.b)), func_2(Struct_1(vec4<bool>(false, global0.a.x, true, global0.a.x), global0.b), Struct_1(global0.a, false), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(78774u, 24u)], false, true, global0.b), global0.b)))), func_2(func_2(Struct_1(vec4<bool>(global0.b, global0.a.x, true, global1[_wgslsmith_index_u32(12908u, 24u)]), global1[_wgslsmith_index_u32(u_input.d, 24u)]), Struct_1(global0.a, true), Struct_1(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), global0.b)), Struct_1(global0.a, -9647i == u_input.b), Struct_1(global0.a, true)), func_2(func_2(func_2(Struct_1(global0.a, global0.a.x), Struct_1(global0.a, global1[_wgslsmith_index_u32(u_input.a, 24u)]), Struct_1(global0.a, global1[_wgslsmith_index_u32(u_input.d, 24u)])), Struct_1(vec4<bool>(true, true, true, true), global0.b), Struct_1(global0.a, global0.b)), Struct_1(!global0.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38303u, 0u, 1u, 4294967295u), vec4<u32>(u_input.a, 14940u, u_input.a, 1u)), 24u)]), Struct_1(vec4<bool>(false, global0.a.x, true, global1[_wgslsmith_index_u32(u_input.c, 24u)]), global0.b))));
    let var_1 = 4294967295u;
    global0 = Struct_1(var_0.a, true);
    let var_2 = Struct_1(func_2(Struct_1(global0.a, var_0.a.x), func_5(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), Struct_1(!var_0.a, false)), func_5(abs(u_input.b), Struct_1(var_0.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(83442u, 1u), 24u)]))).a, true);
    var var_3 = -(~vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 4704i), vec2<i32>(2147483647i, 15904i)), 1i, 5204i));
    let var_4 = Struct_1(vec4<bool>(global0.b, var_0.a.x, !func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -46289i, u_input.b), vec4<i32>(u_input.b, var_3.x, var_3.x, -9014i)), func_2(Struct_1(vec4<bool>(false, false, true, var_2.b), var_0.b), Struct_1(var_0.a, true), var_2)).b, false), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1448f));
}

