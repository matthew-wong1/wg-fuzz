struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<vec2<f32>, 30>;

var<private> global2: array<u32, 28> = array<u32, 28>(1u, 4294967295u, 106370u, 67728u, 479u, 0u, 1u, 0u, 0u, 1u, 4294967295u, 4294967295u, 12858u, 20639u, 31673u, 15175u, 0u, 32754u, 35426u, 45162u, 3376u, 23742u, 0u, 35863u, 1u, 0u, 73238u, 0u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 28>();
    global1 = array<vec2<f32>, 30>();
    var var_0 = vec2<i32>(~(~(47538i & u_input.a)), ~16542i) << (firstTrailingBit(min(vec2<u32>(global2[_wgslsmith_index_u32(16444u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]) >> (vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 28u)]) % vec2<u32>(32u)), vec2<u32>(16491u, 1u) << (vec2<u32>(global2[_wgslsmith_index_u32(12282u, 28u)], global2[_wgslsmith_index_u32(u_input.b, 28u)]) % vec2<u32>(32u))) | ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, global2[_wgslsmith_index_u32(4034u, 28u)]))) % vec2<u32>(32u));
    let var_1 = Struct_2(-2147483647i);
    let var_2 = !(global0[_wgslsmith_index_u32(~49u, 23u)] == 327f);
    let var_3 = ~(-firstLeadingBit(vec2<i32>(u_input.a, var_0.x)) >> (select(vec2<u32>(reverseBits(global2[_wgslsmith_index_u32(120243u, 28u)]), 30258u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 85389u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 67527u), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)])), vec2<u32>(3003u, u_input.b)), any(vec3<bool>(var_2, true, false)) == true) % vec2<u32>(32u)));
    var var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(38479u), 23u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b), 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2333u, 23u)])), -866f)), -(~(-_wgslsmith_add_i32(2147483647i, u_input.a))));
}

