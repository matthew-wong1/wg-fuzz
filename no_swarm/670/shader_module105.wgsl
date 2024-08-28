struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(221f, -301f, 932f, 716f, -1000f, 997f, -1161f, -172f, 1525f, 1153f, -174f, -638f);

var<private> global1: Struct_2;

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-181f, 300f, -904f, -1135f), vec4<f32>(-571f, 460f, 323f, 1003f), vec4<f32>(229f, -242f, 962f, 426f), vec4<f32>(-740f, -1287f, 1241f, 262f), vec4<f32>(1270f, -1302f, -278f, 1990f), vec4<f32>(-199f, -844f, -712f, 2207f));

var<private> global3: vec2<u32>;

var<private> global4: array<vec3<i32>, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec3_u32(firstLeadingBit(~(vec3<u32>(4196u, global3.x, global1.a.d.x) << (vec3<u32>(76816u, 10219u, global3.x) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_dot_vec4_u32(global1.a.d, vec4<u32>(global3.x, global3.x, 43836u, 76545u)), firstLeadingBit(1u), 42324u));
    var var_1 = vec2<bool>(true, false);
    let var_2 = -2147483647i;
    let var_3 = ~(u_input.a | ~(-2147483647i ^ global1.b.x)) >> (~max(global3.x, min(var_0.x, global1.a.d.x)) % 32u);
    var_1 = vec2<bool>(1u < _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3.x, var_0.x, 35246u, 55777u) << (global1.a.d % vec4<u32>(32u)), global1.a.d), ~select(global1.a.d, vec4<u32>(global3.x, 28079u, global3.x, var_0.x), vec4<bool>(global1.a.e, false, global1.d, var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1220f))) > global0[_wgslsmith_index_u32(~37352u, 12u)]);
    var_0 = global1.a.d.xzx;
    var var_4 = false;
    global2 = array<vec4<f32>, 6>();
    var var_5 = -646f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, -_wgslsmith_mult_i32(countOneBits(-2147483647i), firstLeadingBit(1i))));
}

