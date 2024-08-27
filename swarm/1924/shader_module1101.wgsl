struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> bool {
    let var_0 = -1i >> (arg_1.b % 32u);
    return false;
}

fn func_3() -> u32 {
    var var_0 = 444f <= global0.a.x;
    var_0 = _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - global0.a.x) * _wgslsmith_f_op_f32(floor(1000f)))));
    return reverseBits(1u);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> f32 {
    global1 = array<bool, 8>();
    let var_0 = ~func_3();
    var var_1 = select(select(vec3<bool>(true, all(vec4<bool>(false, global1[_wgslsmith_index_u32(27578u, 8u)], false, global1[_wgslsmith_index_u32(0u, 8u)])), ~0u >= arg_1), vec3<bool>(true, any(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0, 8u)], true, global1[_wgslsmith_index_u32(arg_0.b.x, 8u)])) & !global1[_wgslsmith_index_u32(var_0, 8u)], !(global1[_wgslsmith_index_u32(arg_1, 8u)] && false)), true), !select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(770u, 8u)], global1[_wgslsmith_index_u32(31685u, 8u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(arg_1, 8u)], global1[_wgslsmith_index_u32(9040u, 8u)]), false), select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(1142u, 8u)]), select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 8u)], false, global1[_wgslsmith_index_u32(arg_1, 8u)]), false), false), !func_1(global0.b, Struct_1(vec3<f32>(-451f, 296f, global0.a.x), arg_1), u_input.c.zzy, 724f)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-869f)) * _wgslsmith_f_op_f32(sign(1108f))) != _wgslsmith_f_op_f32(global0.a.x - -1478f)));
    var var_2 = -u_input.c.x;
    let var_3 = !vec4<bool>(false, true, any(vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(8156u, arg_1), 8u)], global1[_wgslsmith_index_u32(16137u, 8u)])), true);
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(global0.b & ~abs(~0u)), 8u)];
    var var_1 = !select(select(vec3<bool>(func_1(global0.b, Struct_1(vec3<f32>(global0.a.x, global0.a.x, 378f), 1u), u_input.c.wxw, global0.a.x), global1[_wgslsmith_index_u32(4294967295u << (global0.b % 32u), 8u)], global1[_wgslsmith_index_u32(1u, 8u)] | global1[_wgslsmith_index_u32(40152u, 8u)]), !vec3<bool>(global1[_wgslsmith_index_u32(global0.b, 8u)], false, global1[_wgslsmith_index_u32(global0.b, 8u)]), !(!vec3<bool>(true, global1[_wgslsmith_index_u32(global0.b, 8u)], global1[_wgslsmith_index_u32(18945u, 8u)]))), !(!vec3<bool>(global1[_wgslsmith_index_u32(global0.b, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], false)), !(!(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(50796u, 8u)]))));
    let var_2 = _wgslsmith_f_op_f32(-global0.a.x);
    var var_3 = u_input.c.zyz;
    var_0 = (((~4294967295u != (1u & global0.b)) && (61968u < min(global0.b, 61477u))) && all(vec3<bool>(!global1[_wgslsmith_index_u32(global0.b, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], true))) && var_1.x;
    let var_4 = select(vec2<u32>(max(~_wgslsmith_div_u32(global0.b, 0u), 21863u), ~(global0.b ^ 0u)), _wgslsmith_div_vec2_u32(~firstTrailingBit(~vec2<u32>(0u, 1u)), (~vec2<u32>(44631u, global0.b) ^ ~vec2<u32>(global0.b, global0.b)) | _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b, 99464u), vec2<u32>(4294967295u, 1u), vec2<u32>(global0.b, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.b, 4294967295u), vec2<u32>(global0.b, 0u)))), false);
    let var_5 = select(true, _wgslsmith_f_op_f32(abs(1323f)) < _wgslsmith_f_op_f32(-global0.a.x), false);
    let var_6 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - global0.a.x)), -413f));
    let var_7 = !(!(!(!(!vec3<bool>(false, var_1.x, global1[_wgslsmith_index_u32(4294967295u, 8u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-((vec2<i32>(u_input.c.x, -2147483647i) << (var_4 % vec2<u32>(32u))) & vec2<i32>(u_input.c.x, _wgslsmith_add_i32(var_3.x, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.x))) + _wgslsmith_f_op_f32(func_2(Struct_3(var_4.x, vec3<u32>(1u, global0.b, 0u)), 14199u))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), -firstTrailingBit(-vec4<i32>(u_input.c.x, 24228i, 2147483647i, -58652i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2)), -515f, -858f, 1688f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1731f, -991f, var_2))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_6, global0.a.x, var_2, -1000f), vec4<f32>(129f, 900f, 678f, 801f))))))))));
}

