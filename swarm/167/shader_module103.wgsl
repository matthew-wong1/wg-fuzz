struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, false, false, true, false, false, false, true, false, false, true, false, true, false, false, false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: bool) -> vec3<u32> {
    var var_0 = 1855f;
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(arg_1.x, arg_2.x)), 18u)], arg_3, 12503u != arg_1.x, true);
    var var_2 = Struct_1(~83880u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f + -544f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1477f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-524f, -1053f), _wgslsmith_div_f32(1059f, 1010f), all(var_1.yxz)))))));
    return abs(vec3<u32>(arg_2.x, ~countOneBits(arg_1.x) ^ ~u_input.b, 65028u));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    var var_0 = ~u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, (arg_0.x & 19783u) << (arg_0.x % 32u), arg_0.x), min(arg_0.yxw, vec3<u32>(u_input.b, u_input.a, 4294967295u)) >> (func_3(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 18u)], false), arg_0, firstLeadingBit(vec3<u32>(1u, 1u, 27928u)), !global0[_wgslsmith_index_u32(54831u, 18u)]) % vec3<u32>(32u))) % 32u);
    let var_1 = !select(vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.zxx, ~vec3<u32>(1u, arg_0.x, arg_0.x)), 18u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 1u), vec4<u32>(0u, 0u, 1u, arg_0.x)), 18u)], true), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 18u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(u_input.b, 18u)]), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 18u)]), global0[_wgslsmith_index_u32(arg_0.x, 18u)])), true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(~1u, 18u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(26987u, 18u)]), select(vec2<bool>(true, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(2719u, 18u)]), all(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.b, 18u)]))), !(arg_1 < arg_1)));
    global0 = array<bool, 18>();
    var_0 = 53210u;
    var var_2 = u_input.c;
    return _wgslsmith_clamp_u32(arg_0.x, _wgslsmith_add_u32(firstLeadingBit(arg_0.x | 1u), ~(~u_input.b)), ~(~u_input.a));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = ~(_wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 66152u, 45898u, 44960u), vec4<u32>(2201u, u_input.b, u_input.a, u_input.b)), vec4<u32>(73050u, 68503u, u_input.a, 117393u)), ~vec4<u32>(24256u, u_input.a, u_input.b, u_input.b)) & ~(~vec4<u32>(4294967295u, u_input.a, u_input.b, 80075u)));
    let var_1 = global0[_wgslsmith_index_u32(~(~(~(~1u))), 18u)];
    var var_2 = Struct_1(4294967295u, _wgslsmith_f_op_f32(1063f * -1119f));
    var_0 = vec4<u32>(u_input.a, var_0.x, _wgslsmith_div_u32(var_0.x, 1u), 1u) & abs(firstLeadingBit(min(vec4<u32>(0u, 4294967295u, 0u, var_0.x), vec4<u32>(4294967295u, var_2.a, u_input.b, u_input.b))) & vec4<u32>(4294967295u, 0u, ~u_input.a, ~40832u));
    let var_3 = ~u_input.a;
    return ~func_2(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.x, 0u, 43987u, var_2.a)), ~vec4<u32>(23020u, 1u, var_2.a, 59600u) & vec4<u32>(1u, 32105u, var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-804f, var_2.b)) * -1263f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f), _wgslsmith_f_op_f32(var_2.b + var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    var var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(758f, _wgslsmith_f_op_f32(f32(-1f) * -297f))))));
    let var_1 = Struct_1(firstLeadingBit(~(~4294967295u << (0u % 32u))), 622f);
    var_0 = Struct_1(countOneBits(func_1(vec3<bool>(global0[_wgslsmith_index_u32(7866u, 18u)], global0[_wgslsmith_index_u32(17438u, 18u)], global0[_wgslsmith_index_u32(var_1.a, 18u)]))) ^ 1u, _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b), 1000f))));
    let var_2 = firstTrailingBit(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.a, var_0.a, u_input.b), vec4<u32>(0u, 0u, var_0.a, 64601u), vec4<u32>(var_1.a, var_1.a, var_0.a, 12624u)), min(select(vec4<u32>(53468u, 2518u, 4294967295u, var_1.a), vec4<u32>(var_1.a, 2313u, u_input.b, 4294967295u), vec4<bool>(global0[_wgslsmith_index_u32(28650u, 18u)], true, false, true)), ~vec4<u32>(0u, 41043u, 31309u, u_input.a))) >> (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 37461u) ^ vec4<u32>(0u, var_0.a, var_0.a, var_1.a), vec4<u32>(1u, var_1.a, 4294967295u, u_input.b) >> (vec4<u32>(var_1.a, u_input.b, var_1.a, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global0 = array<bool, 18>();
    var var_3 = ~0u;
    var var_4 = ~(-(i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

