struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(0i, -1i));

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, 1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f - 1452f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(423f)) + 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1097f) + _wgslsmith_f_op_f32(f32(-1f) * -762f)), _wgslsmith_div_f32(-136f, 1f), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-191f * 268f) + _wgslsmith_f_op_f32(f32(-1f) * -279f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -466f), 534f, _wgslsmith_f_op_f32(step(628f, 1012f)), _wgslsmith_f_op_f32(f32(-1f) * -1394f)))), select(!global0[_wgslsmith_index_u32(u_input.a, 12u)], !global0[_wgslsmith_index_u32(u_input.a, 12u)], vec4<bool>(all(global0[_wgslsmith_index_u32(u_input.a, 12u)]), !any(vec3<bool>(true, false, false)), all(vec2<bool>(false, false)), true))));
    return ~(~(~max(global1.a.x, -1i)) << (u_input.a % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global1.a);
    global0 = array<vec4<bool>, 12>();
    let var_1 = vec3<i32>(min(global1.a.x, var_0.a.x), _wgslsmith_div_i32(func_3(), global2.a.x & _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(36116i, global1.a.x))), select(~1i & var_0.a.x, -(i32(-1i) * -56801i), ~_wgslsmith_div_u32(1u, u_input.a) < (_wgslsmith_mod_u32(u_input.a, u_input.a) | u_input.a)));
    let var_2 = false;
    var var_3 = vec2<bool>(true, !var_2);
    return var_0;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec3<bool>) -> vec3<u32> {
    global1 = func_2();
    let var_0 = abs(max(min(vec2<u32>(u_input.a, 4294967295u) << (~vec2<u32>(u_input.a, 84176u) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 0u)), max(69680u, 9542u))), _wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(38046u, u_input.a)), firstTrailingBit(vec2<u32>(4294967295u, 71776u)) | vec2<u32>(56586u, 21505u))));
    let var_1 = func_2();
    var var_2 = arg_3.yx;
    let var_3 = _wgslsmith_f_op_f32(round(-1193f));
    return _wgslsmith_mod_vec3_u32(~select(reverseBits(vec3<u32>(u_input.a, 1u, 1u)), ~vec3<u32>(u_input.a, 1u, 0u), all(select(global0[_wgslsmith_index_u32(var_0.x, 12u)], global0[_wgslsmith_index_u32(var_0.x, 12u)], true))), ~(~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 80324u, var_0.x), vec3<u32>(8528u, u_input.a, 1u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = true;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec4<bool>, 12>();
    let var_0 = u_input.a;
    global1 = Struct_1(~vec2<i32>(arg_1.a.x & func_4(arg_1, Struct_1(arg_1.a), arg_0, vec3<u32>(39861u, u_input.a, u_input.a)).a.x, ~2147483647i));
    global0 = array<vec4<bool>, 12>();
    var var_1 = arg_1;
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(386f + arg_3), -1106f, arg_3, -517f))));
    var var_2 = _wgslsmith_mod_i32(-1i, arg_0.a.x);
    var_2 = 1i;
    let var_3 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -1215f))))), _wgslsmith_dot_vec2_i32(global1.a & vec2<i32>(reverseBits(1i), var_0.a.x), ~(-(~vec2<i32>(arg_2.a.x, var_0.a.x)))), false, vec3<bool>(true, false, ~1u != u_input.a)).x;
    return func_4(func_5(func_4(arg_2, func_4(arg_2, Struct_1(vec2<i32>(global2.a.x, 0i)), arg_2, min(vec3<u32>(20382u, u_input.a, var_3), vec3<u32>(0u, 57011u, u_input.a))), func_4(func_2(), Struct_1(global1.a), Struct_1(vec2<i32>(-1i, global2.a.x)), ~vec3<u32>(9939u, u_input.a, u_input.a)), firstLeadingBit(firstTrailingBit(vec3<u32>(12090u, 88850u, var_3)))), arg_0), func_4(Struct_1(arg_2.a), arg_0, Struct_1(func_5(arg_0, arg_2).a), vec3<u32>(22109u, ~u_input.a << (u_input.a % 32u), ~_wgslsmith_div_u32(78598u, var_3))), func_2(), abs(~(vec3<u32>(0u, 36777u, 17811u) >> (vec3<u32>(23928u, u_input.a, 61712u) % vec3<u32>(32u)))) ^ ~countOneBits(vec3<u32>(0u, 3196u, 0u) & vec3<u32>(11296u, 46756u, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(func_5(func_4(Struct_1(~vec2<i32>(-17678i, global1.a.x)), Struct_1(vec2<i32>(3569i, -1i)), Struct_1(vec2<i32>(4618i, global2.a.x)), func_1(_wgslsmith_f_op_f32(-222f - -306f), firstLeadingBit(global1.a.x), global1.a.x == -70870i, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), Struct_1(vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-16155i, global2.a.x, global2.a.x, global2.a.x), vec4<i32>(global1.a.x, global2.a.x, global1.a.x, -2147483647i))))), 1i, func_2(), _wgslsmith_f_op_f32(sign(-1069f)));
    global1 = Struct_1(abs(-global1.a));
    global1 = Struct_1(~(_wgslsmith_add_vec2_i32(~vec2<i32>(-5637i, global2.a.x), vec2<i32>(1i, 1i)) | abs(vec2<i32>(-1i, 0i))));
    global0 = array<vec4<bool>, 12>();
    var var_0 = true;
    global1 = Struct_1(global1.a);
    let var_1 = func_2();
    var_0 = true;
    let var_2 = func_5(var_1, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-394f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(160f, 990f))))), -528f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(267f)) * -1520f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f - 913f) - _wgslsmith_div_f32(-1548f, _wgslsmith_f_op_f32(ceil(1229f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
}

