struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 20097u, 44726u);

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47699u, 4294967295u, ~1327u, ~global3.x), ~(~(~vec4<u32>(global3.x, 107104u, u_input.b, 4294967295u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(47760u, u_input.b, 52403u, u_input.b), vec4<u32>(global3.x, global3.x, global3.x, 23324u), vec4<u32>(72316u, 0u, u_input.b, global3.x))))), 11u)];
    var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(~(~(vec4<u32>(4294967295u, global3.x, global3.x, global3.x) & vec4<u32>(4294967295u, 0u, u_input.b, global3.x)))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(9103u, 5483u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, global3.x, 72069u)), vec4<u32>(1u, 4294967295u, 1u, u_input.b)), ~(~vec4<u32>(11837u, 0u, 1u, global3.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, 4856u, 4294967295u, global3.x), ~vec4<u32>(35618u, 0u, 1u, u_input.b))), select(~vec4<u32>(1u, 41627u, 63970u, global3.x), ~vec4<u32>(u_input.b, global3.x, u_input.b, global3.x), !var_0.a) << (vec4<u32>(~39686u, 0u, 27408u, ~u_input.b) % vec4<u32>(32u)))), 11u)];
    let var_1 = arg_1;
    global0 = global4[_wgslsmith_index_u32(min(global3.x, min(_wgslsmith_mult_u32(u_input.b ^ ~global3.x, _wgslsmith_dot_vec2_u32(vec2<u32>(35170u, 4294967295u), global3.xx)), 4294967295u)), 11u)];
    let var_2 = Struct_1(true);
    return ~(~_wgslsmith_add_u32(~u_input.b, 37607u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b, ~592u), u_input.b, 18446u << (global3.x % 32u)), firstLeadingBit(~vec3<u32>(arg_3, arg_3, 1u)) << (vec3<u32>(~0u, ~u_input.b, 4294967295u) % vec3<u32>(32u)));
    global0 = global4[_wgslsmith_index_u32(global3.x, 11u)];
    global3 = vec3<u32>(~_wgslsmith_mult_u32(1u, ~global3.x), ~(~49049u), arg_3) | (~(~vec3<u32>(9065u, u_input.b, global3.x)) >> (vec3<u32>(_wgslsmith_mod_u32(global3.x & 7879u, select(u_input.b, 4294967295u, false)), func_3(249f, vec4<bool>(false, true, global1.a, arg_2.a), arg_0.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 743f))), abs(4294967295u)) % vec3<u32>(32u)));
    return min(arg_3, _wgslsmith_dot_vec3_u32(abs(~(~vec3<u32>(17495u, global3.x, 40149u))), vec3<u32>(~0u, arg_3, 23975u)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global3 = ~vec3<u32>(1u, func_2(vec3<f32>(-374f, 1594f, 742f), vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(arg_0.a), 4294967295u) >> (global3.x % 32u), 90665u) | ~min(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.b), vec3<u32>(5254u, global3.x, global3.x)), ~4294967295u, global3.x ^ global3.x), vec3<u32>(global3.x, 4294967295u & global3.x, 21922u));
    global4 = array<Struct_1, 11>();
    global4 = array<Struct_1, 11>();
    var var_0 = min(_wgslsmith_clamp_u32(2361u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b << (0u % 32u), ~u_input.b), 69044u), 0u), func_2(vec3<f32>(-695f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(108f)))), _wgslsmith_f_op_f32(-1108f * _wgslsmith_f_op_f32(f32(-1f) * -1545f))), reverseBits(vec3<i32>(-46506i << (u_input.b % 32u), i32(-1i) * -3166i, i32(-1i) * -63092i)), arg_0, 76548u));
    let var_1 = vec4<bool>(true, !(!all(vec3<bool>(false, arg_0.a, true))), false && !all(vec2<bool>(global0.a, global0.a)), -2595f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1161f - -302f))) - -876f));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    var var_1 = Struct_1(global1.a);
    var var_2 = vec3<bool>(true, true, true);
    let var_3 = vec4<bool>(!var_2.x, true, 27277u > _wgslsmith_mult_u32(~func_1(Struct_1(var_1.a)), ~u_input.b), !(4294967295u == (1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(34881u, 3786u, 0u, 4294967295u), vec4<u32>(u_input.b, global3.x, global3.x, 4294967295u)))));
    var var_4 = Struct_1(true);
    var_4 = Struct_1(!var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<i32>(u_input.a, 1i, 0i) << ((vec3<u32>(4294967295u, 29879u, global3.x) | vec3<u32>(global3.x, 49472u, 1u)) % vec3<u32>(32u))), ~(~4294967295u & (~global3.x ^ _wgslsmith_div_u32(u_input.b, 3316u))), ~(~(~(global3.xx | vec2<u32>(global3.x, 1u)))));
}

