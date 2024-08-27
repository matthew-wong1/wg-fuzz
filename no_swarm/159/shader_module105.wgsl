struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(2500f, 788f, 703f), vec3<f32>(902f, -641f, 184f), vec3<f32>(-235f, 1140f, 330f), vec3<f32>(-1976f, -2253f, 1664f), vec3<f32>(-941f, -336f, 616f), vec3<f32>(-1000f, 282f, 2437f), vec3<f32>(1142f, -870f, -1097f), vec3<f32>(-850f, -1888f, -579f), vec3<f32>(-1035f, -749f, -1425f), vec3<f32>(-509f, 313f, 879f), vec3<f32>(1000f, -1649f, 909f), vec3<f32>(-858f, 563f, 875f), vec3<f32>(-1653f, 609f, 1172f), vec3<f32>(228f, -838f, 638f), vec3<f32>(-656f, -307f, 1420f), vec3<f32>(866f, 1071f, 570f), vec3<f32>(-1235f, -1161f, -813f), vec3<f32>(1009f, -1951f, -304f));

var<private> global2: array<f32, 14> = array<f32, 14>(826f, -1233f, 611f, 353f, 1733f, 1000f, 1139f, 2039f, -1359f, -1506f, 490f, -356f, 418f, -387f);

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

var<private> global4: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = u_input.a;
    var var_1 = 1u;
    var var_2 = 22743u;
    global0 = 657f;
    var var_3 = reverseBits(~var_0.x);
    return u_input.c.zyz;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    var var_0 = arg_1.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f + global2[_wgslsmith_index_u32(u_input.c.x, 14u)]) - -2135f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.c.c, arg_0.a.c), vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], global2[_wgslsmith_index_u32(arg_0.a.a.a.x, 14u)]))))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.c.c, arg_0.c.c))))));
    global1 = array<vec3<f32>, 18>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(4294967295u, 14u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-469f, _wgslsmith_f_op_f32(sign(325f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(arg_0.b.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)], arg_1.a)) + 341f))));
    var var_3 = 4294967295u;
    return select(_wgslsmith_dot_vec3_u32(u_input.c.yxx, _wgslsmith_sub_vec3_u32(firstLeadingBit(u_input.c.zwz) << (u_input.c.xwy % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(1231u, u_input.a.x, u_input.a.x), ~vec3<u32>(arg_0.b.x, arg_0.b.x, u_input.a.x)))), ~(u_input.c.x ^ arg_0.a.a.a.x), global3.x);
}

fn func_2() -> vec4<f32> {
    var var_0 = !select(!global4.yzw, select(vec3<bool>(select(global3.x, true, false), false, any(global4.xzw)), select(select(vec3<bool>(false, false, global3.x), vec3<bool>(global3.x, global3.x, global4.x), true), select(vec3<bool>(false, true, true), vec3<bool>(global4.x, true, false), vec3<bool>(false, true, true)), global3.x | false), false), global2[_wgslsmith_index_u32(u_input.c.x | ~u_input.a.x, 14u)] <= _wgslsmith_f_op_f32(trunc(808f)));
    let var_1 = Struct_2(Struct_1(u_input.c), select(vec4<bool>(true, true, true, true), !vec4<bool>(!global4.x, true, !global3.x, !global4.x), global3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1389u, 14u)] + global2[_wgslsmith_index_u32(98u, 14u)]) - -619f)))), u_input.a);
    var var_2 = vec2<u32>(_wgslsmith_div_u32(6153u, func_4(Struct_4(Struct_2(var_1.a, vec4<bool>(var_1.b.x, false, var_1.b.x, var_0.x), 141f, vec2<u32>(45828u, 1u)), func_3(var_1.b), var_1, Struct_3(global3.x)), Struct_3(false | global3.x))), firstLeadingBit(reverseBits(~u_input.a.x)) | (reverseBits(~0u) & countOneBits(var_1.d.x)));
    global2 = array<f32, 14>();
    global4 = select(!vec4<bool>(true, !(var_0.x & global4.x), true, var_0.x), vec4<bool>(false, true, ((1059f < var_1.c) == var_0.x) == false, all(select(vec4<bool>(true, false, global4.x, true), select(var_1.b, vec4<bool>(var_1.b.x, var_0.x, false, global4.x), true), vec4<bool>(global4.x, true, var_0.x, global4.x)))), var_1.b);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], var_1.c, global3.x)) * _wgslsmith_f_op_f32(377f * 280f))), global2[_wgslsmith_index_u32(max(~var_1.d.x, ~_wgslsmith_sub_u32(34371u, var_1.a.a.x)), 14u)], -1000f, global2[_wgslsmith_index_u32(35874u, 14u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_1.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(1262f * -1465f))), -1008f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-680f - -660f)), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~(~(~arg_1.a.x)), 14u)]))));
    global2 = array<f32, 14>();
    var var_1 = ~_wgslsmith_dot_vec3_u32(~arg_1.a.wwz, _wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_1.a.x, arg_1.a.x, 0u)), vec3<u32>(u_input.a.x, 4294967295u, _wgslsmith_add_u32(20613u, u_input.c.x))));
    return all(vec3<bool>(false, -1i <= u_input.b, global3.x));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, global2[_wgslsmith_index_u32(u_input.a.x, 14u)])) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 14u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(14292u, 14u)]), arg_0)))));
    global3 = !global4.xww;
    global4 = vec4<bool>(!func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -187f, -234f, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 265f, 937f, 402f) + vec4<f32>(1000f, arg_0, 650f, -1000f))), Struct_1(u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_div_i32(firstTrailingBit(-1i), u_input.b)), true, true, global3.x);
    global2 = array<f32, 14>();
    let var_1 = ~_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, u_input.c), vec4<u32>(4294967295u, 103770u, 7305u, 1u) | u_input.c)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~func_1(1333f), func_4(Struct_4(Struct_2(Struct_1(u_input.c), !vec4<bool>(true, true, global3.x, true), _wgslsmith_f_op_f32(f32(-1f) * -422f), min(vec2<u32>(4294967295u, 4294967295u), u_input.a)), ~(~u_input.c.yyy), Struct_2(Struct_1(u_input.c), !vec4<bool>(global3.x, global3.x, false, true), global2[_wgslsmith_index_u32(~u_input.a.x, 14u)], vec2<u32>(u_input.c.x, u_input.a.x) & u_input.a), Struct_3(global4.x)), Struct_3(true))), 18u)];
    let var_1 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.c.x ^ 4294967295u), ~(~u_input.a.x), func_1(_wgslsmith_f_op_f32(-1236f - -1000f)), ~22689u | u_input.c.x)), vec4<bool>(global3.x | true, global3.x, true, false), _wgslsmith_f_op_f32(round(625f)), ~_wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(u_input.c.x), u_input.a.x), ~(~u_input.c.zx)));
    global4 = var_1.b;
    var var_2 = 1f;
    var var_3 = var_1.a;
    let var_4 = firstLeadingBit(~((u_input.c.xz >> (u_input.c.yx % vec2<u32>(32u))) << (min(u_input.a, u_input.c.wz) % vec2<u32>(32u)))) | min(abs(min(reverseBits(vec2<u32>(var_1.a.a.x, 4294967295u)), vec2<u32>(66714u, var_3.a.x))), vec2<u32>(_wgslsmith_mod_u32(var_1.a.a.x, u_input.c.x), countOneBits(var_3.a.x)) << (vec2<u32>(var_1.a.a.x, u_input.c.x | 4294967295u) % vec2<u32>(32u)));
    let var_5 = var_0.yx;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(reverseBits(1u), 3200u, ~u_input.c.x), select(u_input.b, 80494i, all(var_1.b.xz)), vec3<i32>(countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(8952i, 2147483647i, u_input.b), vec3<i32>(-1i, u_input.b, u_input.b)), ~(-2147483647i))), -u_input.b >> (4294967295u % 32u), -(~u_input.b)), ~_wgslsmith_div_vec3_u32(abs(min(vec3<u32>(48916u, u_input.c.x, 9108u), vec3<u32>(var_1.d.x, 62545u, 28197u))), vec3<u32>(6072u, ~u_input.a.x, _wgslsmith_add_u32(var_3.a.x, var_1.a.a.x))));
}

