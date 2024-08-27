struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-21297i, 833f);

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<f32, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = global1.a;
    global2 = array<Struct_1, 4>();
    var var_1 = global2[_wgslsmith_index_u32(~(select(~_wgslsmith_div_u32(4294967295u, 1u), 17670u, false) >> (u_input.d % 32u)), 4u)];
    global2 = array<Struct_1, 4>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -363f) - arg_0)))) + _wgslsmith_f_op_vec2_f32(-arg_0));
    return global1.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>) -> vec4<u32> {
    let var_0 = !vec3<bool>(true, true, !(u_input.a >= ~u_input.d));
    let var_1 = arg_1;
    let var_2 = 12669u;
    global3 = array<f32, 31>();
    let var_3 = all(vec2<bool>(!(~u_input.d > max(12417u, 24876u)), !(~48457u == _wgslsmith_clamp_u32(1u, 0u, 0u))));
    return _wgslsmith_mod_vec4_u32(countOneBits(countOneBits(arg_2)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    var var_0 = true;
    global3 = array<f32, 31>();
    let var_1 = countOneBits(_wgslsmith_div_vec2_u32(abs(~vec2<u32>(46586u, u_input.a)) >> (~vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), ~(~vec2<u32>(u_input.a, 0u))));
    global0 = Struct_1(global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1121f, global3[_wgslsmith_index_u32(1u, 31u)])) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-811f, -1000f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_2(Struct_1(1i, global3[_wgslsmith_index_u32(28509u, 31u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global0.b, global1.b))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, u_input.a, 11799u, 1581u)), firstTrailingBit(vec4<u32>(14481u, 1u, var_1.x, 86306u))))), vec3<u32>(u_input.d, ~(~u_input.d), ~_wgslsmith_div_u32(reverseBits(16731u), u_input.d ^ 29202u)));
}

