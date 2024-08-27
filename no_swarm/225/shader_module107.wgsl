struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), -113f, vec3<f32>(437f, 449f, -1000f)));

var<private> global1: array<vec4<u32>, 28>;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false));

var<private> global3: array<u32, 25>;

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 22u)];
    let var_1 = ~(_wgslsmith_mod_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(18614u, 25u)], 28360u), ~reverseBits(vec2<u32>(29865u, 70687u))) << (countOneBits(vec2<u32>(~81316u, min(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)]))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, u_input.a), -countOneBits(vec4<i32>(1i, u_input.a, u_input.a, u_input.a))), u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global4.a.e)) - _wgslsmith_f_op_vec3_f32(select(global4.a.e, global0.a.e, global0.a.a.x))))) * global4.a.e), global4.a.e.x, vec2<i32>(0i, min(~18730i, 1i)) >> (vec2<u32>(global3[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)] | global3[_wgslsmith_index_u32(var_1.x, 25u)]), 25u)], abs(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_1), 25u)])) % vec2<u32>(32u)), var_1.x);
}

