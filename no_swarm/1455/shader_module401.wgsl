struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(52895u, 0u, 4294967295u, 38474u), vec4<u32>(4294967295u, 0u, 54746u, 0u), vec4<u32>(43460u, 90166u, 0u, 1u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 8091u, 4294967295u), vec4<u32>(28610u, 1u, 0u, 4294967295u), vec4<u32>(1u, 8167u, 1u, 25932u), vec4<u32>(0u, 94019u, 45401u, 1u), vec4<u32>(28892u, 16575u, 90346u, 1u), vec4<u32>(1u, 52441u, 4294967295u, 41568u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(0u, 15630u, 2047u, 12035u), vec4<u32>(11095u, 29772u, 4294967295u, 4294967295u), vec4<u32>(10211u, 34551u, 1u, 40345u), vec4<u32>(4294967295u, 34462u, 1u, 1u), vec4<u32>(50066u, 0u, 33451u, 4294967295u), vec4<u32>(0u, 4294967295u, 80778u, 34967u), vec4<u32>(1u, 36341u, 21520u, 0u), vec4<u32>(1u, 74452u, 4294967295u, 6761u), vec4<u32>(53342u, 16791u, 4294967295u, 4294967295u), vec4<u32>(51441u, 45512u, 110447u, 56085u), vec4<u32>(4294967295u, 0u, 39092u, 4294967295u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(91168u, 1u, 914u, 5779u), vec4<u32>(4294967295u, 7883u, 29999u, 0u), vec4<u32>(1u, 12886u, 53991u, 0u), vec4<u32>(66026u, 1u, 0u, 28863u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(1u, 10494u, 4294967295u, 47302u), vec4<u32>(21731u, 15804u, 10426u, 16958u), vec4<u32>(56312u, 5822u, 39676u, 4294967295u));

var<private> global2: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    let var_0 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(~(u_input.a.x ^ u_input.a.x), u_input.a.x, -13703i), vec3<i32>(1i, -max(u_input.a.x, -39431i), 34553i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-207f))))), 1383f));
    let var_2 = vec3<i32>(u_input.a.x, var_0.x, u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(abs(1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(f32(-1f) * -1620f))), 338f));
    global1 = array<vec4<u32>, 31>();
    return _wgslsmith_f_op_f32(abs(var_3.x));
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), arg_0.b.d.x, 849f, _wgslsmith_f_op_f32(arg_0.b.d.x * 556f)))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 31u)];
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x));
    let var_2 = Struct_3(_wgslsmith_add_u32(_wgslsmith_mod_u32(~(~arg_0.b.a), u_input.b.x), 4294967295u), global0[_wgslsmith_index_u32(4294967295u, 28u)]);
    let var_3 = ~abs(abs(363u)) == var_1.x;
    return _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(arg_0.b.a >> ((arg_0.b.a << (4294967295u % 32u)) % 32u)), u_input.b.x), 31u)], _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 49845u, _wgslsmith_dot_vec2_u32(var_1.zw ^ vec2<u32>(var_2.b.a, u_input.b.x), vec2<u32>(var_2.a, u_input.b.x) | u_input.b.xx), 1116u), ~(~global1[_wgslsmith_index_u32(countOneBits(0u), 31u)])));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = u_input.a;
    global0 = array<Struct_2, 28>();
    global1 = array<vec4<u32>, 31>();
    global1 = array<vec4<u32>, 31>();
    var var_1 = ~_wgslsmith_mod_vec3_i32(select(vec3<i32>(-2147483647i, u_input.a.x, 25037i), vec3<i32>(u_input.a.x, arg_0, -47244i), vec3<bool>(false, false, true)) ^ ~vec3<i32>(var_0.x, 2147483647i, -20532i), ~(vec3<i32>(31860i, u_input.a.x, arg_0) >> (u_input.b % vec3<u32>(32u)))) | (min(_wgslsmith_mod_vec3_i32(~vec3<i32>(39650i, var_0.x, arg_0), -vec3<i32>(arg_0, -24437i, var_0.x)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.x, arg_0, 1i), vec3<i32>(var_0.x, -1i, 0i), -vec3<i32>(u_input.a.x, arg_0, arg_0))) << (~(~vec3<u32>(0u, u_input.b.x, 49013u)) % vec3<u32>(32u)));
    return Struct_3((~func_2(Struct_3(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])) << (_wgslsmith_div_u32(~u_input.b.x, firstTrailingBit(u_input.b.x)) % 32u)) | ~_wgslsmith_dot_vec2_u32(u_input.b.zx ^ u_input.b.yy, u_input.b.yy), Struct_2(14959u | (u_input.b.x | abs(70768u)), Struct_1(_wgslsmith_dot_vec2_i32(u_input.a, var_1.yy)), Struct_1(~u_input.a.x & (arg_0 ^ var_0.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(465f, -2480f, -957f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(426f, -734f, 1255f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(340f, 174f, 902f), vec3<f32>(816f, -480f, 124f), true)))), Struct_1(_wgslsmith_clamp_i32(var_1.x, var_0.x, var_1.x) ^ (i32(-1i) * -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(true && (u_input.a.x <= u_input.a.x), true, 0i >= ~u_input.a.x, false));
    var var_1 = reverseBits(_wgslsmith_add_u32(4294967295u, u_input.b.x) & reverseBits(4294967295u ^ max(0u, u_input.b.x)));
    let var_2 = func_1(0i);
    var_0 = !vec4<bool>(!var_0.x | all(!var_0.wxw), select(all(vec4<bool>(true, true, true, true)), true, var_0.x), any(select(vec4<bool>(true, false, true, var_0.x), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), any(vec2<bool>(var_0.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.d.x) * 1295f) >= var_2.b.d.x);
    var_0 = vec4<bool>(!(!(_wgslsmith_clamp_u32(9236u, u_input.b.x, 0u) >= var_2.b.a)), false, var_0.x, !all(select(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, false, true, false), var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), any(var_0.xw))));
    var var_3 = Struct_3(0u, var_2.b);
    let var_4 = var_3.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(abs(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(4020i, 346i, -2147483647i), vec3<i32>(0i, var_2.b.b.a, 35421i)))), -2147483647i, -(~u_input.a.x), -(vec2<i32>(-1i) * -(~vec2<i32>(-1i, -9564i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.d.x) + _wgslsmith_f_op_f32(-630f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(838f, 432f)))))));
}

