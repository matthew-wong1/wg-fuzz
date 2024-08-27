struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d ^ select(~(~u_input.d), u_input.d, vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true));
    let var_1 = global2[_wgslsmith_index_u32(min(var_0.x, u_input.b.x), 9u)];
    global0 = vec4<u32>(~30106u, _wgslsmith_div_u32(u_input.b.x, 0u), 1u, firstTrailingBit(43333u >> (global0.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~abs(global0.x >> (60160u % 32u)), _wgslsmith_div_u32(max(u_input.d.x, max(15159u, var_0.x)), 9619u ^ global0.x)), abs(1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(160f, -403f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1558f, 281f)), all(vec3<bool>(false, true, true))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-368f))), -241f)), u_input.a, ~vec3<u32>(~var_1.a, countOneBits(global0.x), 31452u) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global0.wyw & var_0.xzw, ~var_0.wyz), ~(global0.zzx << (var_0.wyx % vec3<u32>(32u)))));
}

