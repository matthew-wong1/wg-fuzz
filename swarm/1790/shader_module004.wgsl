struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(98659u, 0u, 0u), vec3<u32>(0u, 65269u, 0u), vec3<u32>(1u, 0u, 43946u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(8280u, 91392u, 1u), vec3<u32>(3355u, 59091u, 0u), vec3<u32>(35738u, 19931u, 1u), vec3<u32>(1u, 17025u, 0u), vec3<u32>(4294967295u, 1u, 52721u), vec3<u32>(22597u, 4294967295u, 4294967295u), vec3<u32>(4216u, 13582u, 85406u), vec3<u32>(15927u, 0u, 17086u), vec3<u32>(101619u, 87620u, 14220u), vec3<u32>(24218u, 21616u, 1u), vec3<u32>(4294967295u, 1u, 53313u), vec3<u32>(48965u, 33678u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = vec4<u32>(arg_1.a.x, u_input.a, 104738u, _wgslsmith_clamp_u32(~(~u_input.a) | (1u << ((arg_1.a.x | arg_1.a.x) % 32u)), _wgslsmith_mult_u32(u_input.a, min(~u_input.a, ~u_input.a)), 4294967295u));
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(342f)) - _wgslsmith_f_op_f32(f32(-1f) * -359f))));
    global0 = array<vec3<u32>, 19>();
    return _wgslsmith_clamp_vec3_u32(reverseBits(~firstTrailingBit(firstLeadingBit(vec3<u32>(var_0.x, 58539u, 74128u)))), vec3<u32>(var_0.x, arg_1.a.x, 70971u), var_0.wwz);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: i32) -> f32 {
    var var_0 = Struct_1(arg_0.a, 282f, ~max(select(func_3(vec4<bool>(true, false, true, false), Struct_2(vec4<u32>(arg_0.c.x, 0u, arg_0.c.x, 4294967295u))), min(vec3<u32>(10265u, 0u, 96882u), global0[_wgslsmith_index_u32(32630u, 19u)]), vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_0.c.x, 4294967295u) & arg_0.c, abs(global0[_wgslsmith_index_u32(arg_0.c.x, 19u)]))));
    let var_1 = arg_0.c.x;
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    let var_2 = Struct_2(vec4<u32>(~(~(~15690u)), arg_0.c.x, 62319u, 1u));
    return var_0.b;
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    let var_0 = 22431u;
    global0 = array<vec3<u32>, 19>();
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(565f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_1(arg_1, arg_1, global0[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(floor(arg_1))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(arg_1 + -972f)))))), global0[_wgslsmith_index_u32(u_input.a, 19u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2952f * _wgslsmith_f_op_f32(-2438f + 1352f)))));
    var var_2 = select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, !all(vec4<bool>(true, false, true, false))), vec2<bool>(true, true)), !select(vec2<bool>(true, any(vec4<bool>(true, false, true, false))), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), !(false || (func_3(vec4<bool>(false, false, false, false), Struct_2(vec4<u32>(70119u, 1u, u_input.a, u_input.a))).x == var_1.c.x)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1636f - -944f)))), var_1.b, -465f);
    let var_4 = Struct_2(vec4<u32>(~var_1.c.x, var_1.c.x ^ _wgslsmith_sub_u32(~1u, 1u), ~var_1.c.x, 0u));
    var_2 = vec2<bool>(true, true);
    global0 = array<vec3<u32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(~2374u, _wgslsmith_mod_u32(countOneBits(u_input.a), var_0), var_1.c.x), vec3<u32>(abs(firstLeadingBit(4294967295u)), u_input.a, 1u)), 2147483647i, -vec4<i32>(u_input.b.x, 32014i, -10217i, u_input.b.x), 22545u, u_input.b.x);
}

