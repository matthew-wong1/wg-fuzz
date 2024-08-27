struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: array<i32, 7>;

var<private> global4: array<Struct_4, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> i32 {
    global1 = abs(arg_0.x);
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global3[_wgslsmith_index_u32(select(~arg_0.x, arg_0.x, all(vec3<bool>(arg_1, false, true))), 7u)] ^ (u_input.b.x >> (arg_0.x % 32u))), u_input.a);
    var var_0 = Struct_3(1i);
    var var_1 = Struct_1(select(vec4<bool>(arg_1 & arg_1, any(vec3<bool>(true, arg_1, arg_1)), false, false), vec4<bool>(false, false | arg_1, false, !(arg_0.x >= 0u)), !vec4<bool>(true, arg_1, arg_1, !arg_1)), vec2<bool>(true, true));
    var_1 = Struct_1(var_1.a, vec2<bool>(arg_1, all(var_1.a)));
    return 0i;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(select(!vec4<bool>(true, true, all(vec3<bool>(false, true, true)), select(true, true, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), !vec2<bool>(all(vec3<bool>(true, false, false)) && false, true));
    global0 = global3[_wgslsmith_index_u32(~16302u, 7u)];
    global4 = array<Struct_4, 14>();
    var_0 = Struct_1(!(!var_0.a), var_0.b);
    global2 = ~countOneBits(_wgslsmith_dot_vec3_i32(u_input.b.zyz, vec3<i32>(1i, func_3(vec2<u32>(30796u, 1u), true), 7344i << (1u % 32u))));
    return ~(~(~select(20891u, 13338u, true) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 51804u, 0u), vec4<u32>(27144u, 16439u, 44685u, 42508u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 10954u, 103837u, 1u), vec4<u32>(4294967295u, 49131u, 1u, 4294967295u))) % 32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))));
    global0 = -arg_1.c.a;
    global0 = ~(i32(-1i) * -25509i);
    var var_1 = arg_0.zxz;
    let var_2 = vec3<u32>(func_2(), _wgslsmith_add_u32(~(~arg_1.d.x), arg_1.b), arg_1.b);
    return vec2<bool>(arg_0.x && all(vec3<bool>(false, var_1.x, true)), select(arg_0.x, arg_0.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(true, false, false, !any(vec3<bool>(true, true, false))), global4[_wgslsmith_index_u32(~countOneBits(0u), 14u)]);
    global3 = array<i32, 7>();
    global1 = _wgslsmith_sub_u32(~(~(~0u)), _wgslsmith_add_u32(~(~64950u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u)))) ^ firstLeadingBit(~countOneBits(97806u));
    global4 = array<Struct_4, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(13384u, 1u, false)) | abs(31757u), _wgslsmith_div_u32(select(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(81050u, 32644u), vec2<u32>(1u, 41194u)), abs(vec2<u32>(0u, 64959u))), false), _wgslsmith_div_u32(min(0u << (1u % 32u), abs(18228u)), abs(firstLeadingBit(0u)))), countOneBits(~(~vec3<u32>(0u, 47296u, 0u))));
}

