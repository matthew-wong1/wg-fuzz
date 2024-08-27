struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 54335u;

var<private> global2: array<Struct_1, 15>;

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global1 = 1u;
    global3 = _wgslsmith_f_op_f32(ceil(-1595f));
    var var_0 = global2[_wgslsmith_index_u32(~(u_input.b.x | 35352u), 15u)];
    global2 = array<Struct_1, 15>();
    var var_1 = Struct_1(vec2<u32>(abs(62173u), 4294967295u) & ~u_input.b, min(firstLeadingBit(u_input.b), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c)) - -267f), -firstLeadingBit(vec2<i32>(1065i, _wgslsmith_mult_i32(1i, global4.d.x))));
    return global2[_wgslsmith_index_u32(0u, 15u)];
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.c - _wgslsmith_div_f32(2047f, arg_0.c)), -123f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(192f)) - _wgslsmith_f_op_f32(trunc(global4.c))) * -428f)), _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, 1000f))))));
    global0 = true;
    var var_1 = 2147483647i;
    global2 = array<Struct_1, 15>();
    let var_2 = !(!vec4<bool>(select(true, true, false), any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true, !any(vec2<bool>(false, true))));
    return arg_0.d.x << (abs(1427u) % 32u);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    return global2[_wgslsmith_index_u32(4294967295u, 15u)];
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> i32 {
    global3 = 1860f;
    global2 = array<Struct_1, 15>();
    var var_0 = func_4(reverseBits(~firstTrailingBit(firstLeadingBit(vec2<i32>(2147483647i, -1i)))), func_3(func_2(vec2<bool>(true | arg_0, true)), _wgslsmith_f_op_f32(max(global4.c, 407f))), arg_1);
    var var_1 = 0i;
    let var_2 = ~_wgslsmith_clamp_u32(countOneBits(firstTrailingBit(arg_1.b.x)), u_input.b.x, var_0.b.x);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = !all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), any(vec3<bool>(false, true, false))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true)));
    global1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(~countOneBits(min(vec3<u32>(17369u, global4.a.x, u_input.b.x), vec3<u32>(22785u, 0u, u_input.b.x))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global4.a.x, u_input.b.x, global4.b.x), vec3<u32>(1u, global4.b.x, 28144u)), vec3<u32>(0u, 0u, 49200u)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(26699u, global4.b.x, global4.b.x), vec3<u32>(global4.b.x, 0u, 4294967295u)), ~vec3<u32>(0u, u_input.a, u_input.a)))));
    let var_0 = vec2<i32>(global4.d.x, _wgslsmith_dot_vec4_i32(abs(~(~vec4<i32>(global4.d.x, global4.d.x, 0i, 1238i))), vec4<i32>(1i, global4.d.x, func_1(false, global2[_wgslsmith_index_u32(global4.b.x, 15u)]), max(-2147483647i, 1i)) << (vec4<u32>(global4.a.x | u_input.b.x, ~1867u, global4.a.x, _wgslsmith_mod_u32(9686u, 1u)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(step(-720f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global4.c, 1934f)))) * _wgslsmith_f_op_f32(-global4.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-2141f)), reverseBits(~0i));
}

