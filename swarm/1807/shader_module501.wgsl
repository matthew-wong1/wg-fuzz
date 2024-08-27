struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false));

var<private> global2: Struct_2 = Struct_2(-55680i, 2147483647i);

var<private> global3: Struct_2 = Struct_2(-1i, 1i);

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32) -> u32 {
    global3 = Struct_2(-2147483647i, arg_0);
    let var_0 = Struct_3(56029u & _wgslsmith_div_u32(_wgslsmith_sub_u32(~35037u, _wgslsmith_clamp_u32(34204u, 4294967295u, 0u)), 65038u));
    global2 = Struct_2(select(-41262i, arg_0, !(all(global1[_wgslsmith_index_u32(28778u, 19u)]) && (global3.b <= global3.b))), global3.a);
    global3 = Struct_2(-17937i, 1865i);
    global2 = Struct_2(~_wgslsmith_mod_i32(u_input.a, -_wgslsmith_mult_i32(41594i, 1i)), ~(~(~(-61137i))));
    return 0u;
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global0 = _wgslsmith_clamp_u32(arg_0.a, arg_0.a, 4294967295u) >> (_wgslsmith_mod_u32(select(arg_0.a, arg_0.a, all(!vec3<bool>(false, false, arg_1))), arg_0.a) % 32u);
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1532f))));
    return global2.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>) -> bool {
    let var_0 = -213f;
    var var_1 = -arg_1 << (~(vec2<u32>(1u, 1u) & vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(51462u, 4294967295u), vec2<u32>(32475u, 17299u)), func_2(2147483647i))) % vec2<u32>(32u));
    let var_2 = false;
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, ~var_1.x | ~(i32(-1i) * -1i), ~42865i, global2.b), vec4<i32>(43981i, select(-2147483647i, firstLeadingBit(-1i), any(global1[_wgslsmith_index_u32(4294967295u, 19u)]) & select(false, arg_0.x, false)), _wgslsmith_mult_i32(func_3(Struct_3(4294967295u), !arg_0.x, Struct_2(arg_1.x, -1i), Struct_1(arg_1.x)), ~global3.a << (_wgslsmith_mod_u32(72534u, 4294967295u) % 32u)), min(u_input.a, u_input.b)));
    let var_4 = vec2<i32>(select(-2147483647i, ~(select(arg_1.x, 0i, true) ^ abs(var_1.x)), arg_0.x), reverseBits(firstLeadingBit(-1i)));
    return ((_wgslsmith_div_i32(1i, 1i) << (1u % 32u)) >= var_4.x) && all(global1[_wgslsmith_index_u32(~1u, 19u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i) * -select(vec2<i32>(-global2.a, _wgslsmith_mod_i32(global3.a, u_input.b)), -vec2<i32>(global3.a, 19625i), vec2<bool>(all(vec4<bool>(true, false, false, false)), func_1(vec2<bool>(false, true), vec2<i32>(global2.a, u_input.a))));
    var var_1 = vec2<f32>(-1251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))));
    var var_2 = global1[_wgslsmith_index_u32(0u, 19u)];
    var var_3 = ~vec2<u32>(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9959u, 5553u), vec3<u32>(1u, 30604u, 4294967295u)), 12901u), abs(~(~82985u)));
    let var_4 = Struct_2(global3.b, global3.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(-818f)), 1322f, var_1.x, _wgslsmith_f_op_f32(var_1.x - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_mult_u32(56725u & var_3.x, var_3.x));
}

