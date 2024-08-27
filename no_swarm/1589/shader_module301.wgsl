struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, !(!(!global0.x)));
    var var_1 = global1[_wgslsmith_index_u32(121545u, 25u)];
    let var_2 = ~(~vec3<u32>(max(0u, 1u), 4271u, 1u));
    let var_3 = i32(-1i) * -9327i;
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -678f)));
    var var_5 = global1[_wgslsmith_index_u32(43620u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(var_2 << (select(vec3<u32>(10989u, var_2.x, 4294967295u), vec3<u32>(0u, var_2.x, var_2.x), false) % vec3<u32>(32u)), ~vec3<u32>(8119u, 0u, var_2.x) & _wgslsmith_div_vec3_u32(vec3<u32>(29893u, 6474u, 4160u), vec3<u32>(var_2.x, 4294967295u, var_2.x))) << (vec3<u32>(~4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_2.x, var_2.x), 0u ^ var_2.x), var_2.x) % vec3<u32>(32u)), ~1u, ~(~(~vec2<u32>(var_2.x, 0u))) & vec2<u32>(countOneBits(77673u), var_2.x), _wgslsmith_f_op_f32(exp2(var_4)));
}

