struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: u32) -> bool {
    let var_0 = u_input.d.xwz;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_1 = arg_0.x;
    return any(arg_0.xy);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    var var_0 = vec4<i32>(-23632i, -(u_input.a | abs(-29774i)), firstTrailingBit(abs(94i)) & u_input.b.x, -30885i);
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(0u), 18u)];
    return -183f;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = u_input.e;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1161f) - _wgslsmith_f_op_f32(-684f - -230f)), true && !arg_1, _wgslsmith_f_op_f32(-1716f + _wgslsmith_f_op_f32(-866f - -436f)), !(!vec3<bool>(arg_2, false, arg_3))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(505f, 742f), vec2<f32>(-1985f, -162f), false))));
    var var_2 = Struct_1(abs(-4720i));
    global0 = array<Struct_1, 18>();
    let var_3 = Struct_1(firstLeadingBit(abs(-_wgslsmith_mult_i32(-13520i, -4580i))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_i32(abs(select(-22060i, -2147483647i, false)) | u_input.b.x, 20865i));
    let var_1 = u_input.e;
    var var_2 = var_0;
    var_2 = func_2(max(vec4<u32>(_wgslsmith_mod_u32(u_input.c, 1u), 81626u, countOneBits(u_input.c), ~1u) ^ vec4<u32>(u_input.c, ~1u, ~u_input.c, u_input.c), vec4<u32>(firstTrailingBit(u_input.c >> (0u % 32u)), countOneBits(u_input.c), 2138u, abs(u_input.c) << (u_input.c % 32u))), !((u_input.c > u_input.c) && false) | (-2234f >= _wgslsmith_f_op_f32(select(1000f, -1126f, func_1(vec4<bool>(false, false, true, false), u_input.d.xyx, vec2<u32>(u_input.c, 13261u), u_input.c)))), select(!(!all(vec3<bool>(true, false, false))), false, true), u_input.b.x != var_0.a);
    global0 = array<Struct_1, 18>();
    var_2 = Struct_1(u_input.e);
    var_2 = func_2(firstLeadingBit(vec4<u32>(u_input.c ^ ~18269u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9004u, 43002u)), 8364u >> (0u % 32u)), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(2960u, u_input.c, u_input.c), vec3<u32>(u_input.c, 4294967295u, 45041u) << (vec3<u32>(21629u, u_input.c, u_input.c) % vec3<u32>(32u))))), false, true, any(vec2<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))))));
    global0 = array<Struct_1, 18>();
    var var_3 = ~(~max(abs(vec3<u32>(u_input.c, 1u, u_input.c)), abs(vec3<u32>(4294967295u, u_input.c, u_input.c)))) | (firstLeadingBit(~(~vec3<u32>(40903u, u_input.c, u_input.c))) >> (vec3<u32>(~(1u | u_input.c), 38013u, 33778u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-248f);
}

