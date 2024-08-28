struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec2<f32>;

var<private> global2: bool = true;

var<private> global3: array<u32, 23>;

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(global1.x - global1.x);
}

fn func_2() -> vec2<f32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4292u, ~_wgslsmith_dot_vec4_u32((vec4<u32>(global3[_wgslsmith_index_u32(42427u, 23u)], 1u, 0u, 4294967295u) << (vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 0u, 4294967295u, 32712u) % vec4<u32>(32u))) | select(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(43691u, 23u)], 1u, 1u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)], 65690u, global3[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(39111u, 23u)]), false), vec4<u32>(global3[_wgslsmith_index_u32(22160u, 23u)], 22237u, global3[_wgslsmith_index_u32(24962u, 23u)], 0u))), 23u)];
    let var_1 = global4[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(min(max(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60587u, 23u)], 23u)]), 0u), global3[_wgslsmith_index_u32(select(4294967295u, 4294967295u, false), 23u)] ^ firstTrailingBit(global3[_wgslsmith_index_u32(33431u, 23u)]))), 21u)];
    global2 = true;
    var var_2 = 724f;
    global4 = array<Struct_1, 21>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-728f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, -795f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -981f)))))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~global3[_wgslsmith_index_u32(4294967295u, 23u)]), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16241u, 23u)], 23u)], 23u)]), vec2<u32>(firstLeadingBit(1u), firstLeadingBit(~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(14822u, 23u)], 23u)])));
    global3 = array<u32, 23>();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()));
    var var_1 = select(5550i, max(_wgslsmith_mult_i32(-1i, 1i), -13196i), false);
    var var_2 = any(!vec2<bool>(false, !(4294967295u < var_0.x)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(~(~(~(-33101i))), 31055i, _wgslsmith_mult_i32(-global0.x, -46433i)), 1i, ~firstLeadingBit(1i >> (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)], 1u) % 32u)));
    var var_2 = Struct_1(vec2<i32>(global0.x, ~var_1.x), vec3<u32>(11918u, 10335u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(func_1(), 23u)], _wgslsmith_dot_vec4_u32(select(vec4<u32>(global3[_wgslsmith_index_u32(4397u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33903u, 23u)], 23u)], 23u)], 4294967295u), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9081u, 23u)], 23u)], 98737u), vec4<bool>(false, true, false, false)), firstLeadingBit(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25844u, 23u)], 23u)], 1943u, global3[_wgslsmith_index_u32(0u, 23u)]))))));
    var var_3 = Struct_1(global0.yx, vec3<u32>(var_2.b.x | global3[_wgslsmith_index_u32(var_2.b.x, 23u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(0u), global3[_wgslsmith_index_u32(0u, 23u)]), 23u)], _wgslsmith_div_u32(_wgslsmith_div_u32(var_2.b.x, var_2.b.x), ~var_2.b.x)));
    var var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(-6883i, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-685f)) * global1.x) - _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_vec2_f32(func_2()).x) * 1337f)), vec3<u32>(~(~_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(1u, 23u)], var_2.b.x, 0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(74654u, 61293u, var_2.b.x, 1u), ~vec4<u32>(global3[_wgslsmith_index_u32(var_3.b.x, 23u)], var_3.b.x, 4294967295u, global3[_wgslsmith_index_u32(var_2.b.x, 23u)])), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 53563u, var_3.b.x, global3[_wgslsmith_index_u32(19369u, 23u)]), vec4<u32>(var_2.b.x, var_3.b.x, 1u, 4294967295u)), func_1(), ~var_3.b.x)), var_3.b.x));
}

