struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(-1471f, -767f), false, vec4<f32>(949f, -318f, 398f, 184f));

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<vec2<bool>, 14>;

var<private> global4: f32 = 528f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    return global0[_wgslsmith_index_u32(u_input.b >> (_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(u_input.b, global1.a.x)) % 32u), 29u)];
}

fn func_1(arg_0: bool, arg_1: i32) -> vec3<u32> {
    var var_0 = global1.c;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global1.d.x), global1.b.x);
    let var_2 = ~countOneBits(firstTrailingBit(abs(arg_1 << (global1.a.x % 32u))));
    var var_3 = func_2(_wgslsmith_f_op_f32(-var_1.x), global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(global1.a.x, 29u)]);
    global2 = array<Struct_1, 16>();
    return (firstTrailingBit(~vec3<u32>(global1.a.x, 120661u, 4294967295u)) ^ ~(~abs(vec3<u32>(4294967295u, 1u, var_3.a.x)))) ^ abs(abs(abs(vec3<u32>(55681u, 0u, u_input.b) & vec3<u32>(var_3.a.x, u_input.b, 21207u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global1.b.x)), global1.b.x), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(1u, 1u, 1u) << (~vec3<u32>(35971u, 15964u, global1.a.x) % vec3<u32>(32u))), ~abs(vec3<u32>(4294967295u, u_input.b, 40343u)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.a.x, u_input.b, 28000u), firstTrailingBit(vec3<u32>(u_input.b, 1u, 0u))) % vec3<u32>(32u)), func_1(any(global3[_wgslsmith_index_u32(1u, 14u)]), -2147483647i) | ~(~vec3<u32>(0u, u_input.b, global1.a.x))), ~vec3<u32>(abs(9795u), u_input.b, select(0u, select(0u, u_input.b, global1.c), all(global3[_wgslsmith_index_u32(u_input.b, 14u)]))), u_input.a);
}

