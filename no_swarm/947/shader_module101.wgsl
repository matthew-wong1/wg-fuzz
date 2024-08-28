struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(0u, 27868u, 1u, 61215u)));

var<private> global2: Struct_1;

var<private> global3: array<bool, 14>;

var<private> global4: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global2 = Struct_1(~(~global2.a));
    var var_1 = abs(u_input.b.x);
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec4_u32(global2.a, global1.a.a));
    var_1 = 0i;
    return all(!(!(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(50377u, 14u)])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -153f) + _wgslsmith_f_op_f32(-arg_1.x)))));
    global3 = array<bool, 14>();
    global3 = array<bool, 14>();
    return Struct_1(firstLeadingBit(firstTrailingBit(abs(vec4<u32>(1u, arg_0.a.x, u_input.a.x, 0u)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(arg_2 - arg_2) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -582f), arg_2)), _wgslsmith_f_op_f32(-938f * 704f));
    global3 = array<bool, 14>();
    let var_1 = Struct_3(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(~_wgslsmith_add_u32(36644u, arg_0.a.x), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(18564u, arg_1.x), ~u_input.a.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.a.x, arg_1.x, arg_0.a.x) & u_input.a, vec3<u32>(u_input.a.x, global2.a.x & arg_0.a.x, firstTrailingBit(1u))) & ~max(~global1.a.a.ywy, firstTrailingBit(global1.a.a.zzy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1000f, arg_2) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -260f, arg_2))))), vec3<u32>(func_2(Struct_1(global2.a & vec4<u32>(arg_0.a.x, 1u, global2.a.x, 86034u)), vec3<f32>(-678f, _wgslsmith_div_f32(arg_2, 1579f), _wgslsmith_div_f32(1000f, 635f))).a.x, 1u, _wgslsmith_div_u32(0u, 4294967295u)), Struct_2(func_2(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, -1003f, -223f))) + vec3<f32>(1543f, arg_2, arg_2)))));
    let var_2 = (~_wgslsmith_div_u32(select(global1.a.a.x, 4294967295u, var_0), ~global2.a.x) & var_1.b.x) << (1u % 32u);
    global2 = global1.a;
    return !((all(!vec4<bool>(var_0, global0[_wgslsmith_index_u32(20012u, 23u)], global3[_wgslsmith_index_u32(global1.a.a.x, 14u)], false)) && global3[_wgslsmith_index_u32(~(~var_2), 14u)]) == global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(var_1.e.a.a.zx, reverseBits(arg_1))), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 14u)]));
    var var_1 = vec3<bool>(func_1(), !(!var_0.x), global0[_wgslsmith_index_u32(~107764u, 23u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2000f, -224f, -1279f) * vec3<f32>(-1755f, 944f, -976f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(612f, -758f, 934f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -405f, 161f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-931f, 908f, -992f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170f * 1238f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1084f * -269f)), 1310f))));
    var var_3 = global3[_wgslsmith_index_u32(global1.a.a.x, 14u)];
    var var_4 = func_2(global1.a, _wgslsmith_f_op_vec3_f32(var_2 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2))));
    global3 = array<bool, 14>();
    let var_5 = true;
    global4 = u_input.b.zz;
    var_1 = select(!vec3<bool>(var_1.x, any(select(vec2<bool>(global0[_wgslsmith_index_u32(45172u, 23u)], false), var_1.zz, false)), func_3(Struct_1(vec4<u32>(var_4.a.x, 2772u, 6622u, global1.a.a.x)), countOneBits(vec2<u32>(11648u, 0u)), var_2.x)), vec3<bool>(var_1.x, true, true), var_4.a.x >= 27142u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(firstLeadingBit(~u_input.a.x), u_input.a.x), var_2, vec2<u32>(var_4.a.x, _wgslsmith_dot_vec3_u32(max(_wgslsmith_clamp_vec3_u32(global2.a.xyw, vec3<u32>(global1.a.a.x, 67766u, 30898u), u_input.a), global2.a.zxw), ~_wgslsmith_div_vec3_u32(global2.a.xwz, vec3<u32>(global1.a.a.x, 38623u, 1u)))));
}

