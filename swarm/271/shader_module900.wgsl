struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<bool, 18>;

var<private> global2: Struct_2 = Struct_2(Struct_1(0u, vec3<bool>(false, false, true)), vec2<bool>(true, true));

var<private> global3: array<i32, 28>;

var<private> global4: vec2<u32> = vec2<u32>(18748u, 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_1, 18>();
    global4 = abs(vec2<u32>(reverseBits(0u), _wgslsmith_add_u32(~firstLeadingBit(arg_1.x), 4294967295u)));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.a, 4294967295u, global4.x, 0u) & vec4<u32>(global2.a.a, global4.x, global2.a.a, arg_1.x), vec4<u32>(0u, global4.x, 0u, 4294967295u) << (vec4<u32>(1u, global2.a.a, 98158u, 71501u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 46305u, 4294967295u), vec3<u32>(arg_1.x, 1u, global2.a.a)), arg_1.x, firstLeadingBit(73241u), _wgslsmith_mult_u32(170u, 0u))), _wgslsmith_sub_u32(abs(reverseBits(global4.x)), ~(1u ^ global2.a.a))), 18u)];
    var var_1 = vec3<f32>(-225f, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1074f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(ceil(469f))))), arg_0);
    var var_2 = 1f;
    return Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~firstLeadingBit(_wgslsmith_clamp_u32(45676u, var_0.a, 39671u))), 18u)], select(!vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(global2.a.a, 18u)], global2.b.x, global2.a.b.x)), 32762u > global2.a.a), select(vec2<bool>(false, true), select(var_0.b.zz, !vec2<bool>(true, global2.b.x), vec2<bool>(false, global2.b.x)), false), global1[_wgslsmith_index_u32(~max(~1u, firstTrailingBit(var_0.a)), 18u)]));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(549f + 1302f)), _wgslsmith_mult_vec2_u32(vec2<u32>(global2.a.a << (global4.x % 32u), global2.a.a) | ~vec2<u32>(4294967295u, 4294967295u), select(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.a, global2.a.a), vec2<u32>(arg_0.a.a, 4294967295u)), vec2<u32>(arg_0.a.a, arg_0.a.a), false) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.a.a, 6713u), vec2<u32>(53843u, arg_0.a.a) ^ vec2<u32>(arg_0.a.a, global4.x)) % vec2<u32>(32u)))).a;
    let var_1 = -2032f;
    var var_2 = _wgslsmith_f_op_f32(ceil(1149f));
    global1 = array<bool, 18>();
    var var_3 = countOneBits(2147483647i);
    return arg_0;
}

fn func_1() -> Struct_1 {
    global3 = array<i32, 28>();
    let var_0 = func_3(func_2(_wgslsmith_f_op_f32(-1083f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1207f)), 259f)), ~vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.a, global4.x, global4.x), vec3<u32>(global2.a.a, global4.x, global2.a.a)))), -31061i);
    var var_1 = global2.a;
    global3 = array<i32, 28>();
    var var_2 = vec2<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -584f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1378f + 210f)))))), 1f);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global4.x;
    let var_1 = ~vec4<u32>(15066u, global4.x, 0u, ~(~0u) >> (firstTrailingBit(global2.a.a) % 32u));
    let var_2 = Struct_2(Struct_1(~(~var_1.x) >> (~_wgslsmith_add_u32(global2.a.a, var_1.x) % 32u), global2.a.b), select(global2.b, vec2<bool>(7932u <= firstTrailingBit(global2.a.a), select(0u, var_0, global2.b.x) >= 34540u), true));
    global1 = array<bool, 18>();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(31371i, u_input.b, global3[_wgslsmith_index_u32(~55400u, 28u)]) ^ _wgslsmith_clamp_vec3_i32(~vec3<i32>(-361i, 23892i, 2147483647i), -vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(48400u, 28u)], u_input.b), vec3<i32>(u_input.b, 2147483647i, -2147483647i))) << (countOneBits(var_1.zwy) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(-546f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(536f)))), _wgslsmith_f_op_f32(-302f * -909f), -629f)), 1561f);
}

