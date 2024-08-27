struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 24>;

var<private> global3: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    return global1.b.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = !select(vec4<bool>(true, select(true, true, global1.b.x || global1.b.x), true, func_3()), !select(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)], true), select(true, false, all(vec2<bool>(global1.b.x, global1.b.x))));
    return select(vec3<bool>(any(select(var_0.ywz, global1.b, !vec3<bool>(true, global1.b.x, global1.b.x))), true, var_0.x && var_0.x), vec3<bool>(any(var_0.wz), (_wgslsmith_f_op_f32(round(1000f)) == _wgslsmith_f_op_f32(-3509f + -1286f)) & all(select(vec2<bool>(false, false), global1.b.xz, global1.b.yx)), var_0.x), !select(!global1.b, var_0.ywx, false));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global0 = array<vec2<i32>, 26>();
    let var_0 = Struct_1(-8968i, global1.b);
    var var_1 = global1.b.x;
    let var_2 = !vec3<bool>(select(any(vec4<bool>(var_0.b.x, true, global1.b.x, false)), !var_0.b.x, any(func_2())), all(select(vec2<bool>(false, false), func_2().zx, vec2<bool>(true, global1.b.x))), !var_0.b.x);
    var var_3 = vec3<bool>(var_2.x, any(global3[_wgslsmith_index_u32(u_input.b, 12u)]), all(!func_2().zx));
    return !(!select(!global3[_wgslsmith_index_u32(u_input.d, 12u)], !(!vec4<bool>(true, true, var_0.b.x, false)), global3[_wgslsmith_index_u32(u_input.b, 12u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.d), 12u)], func_1(_wgslsmith_f_op_f32(sign(-1097f))), vec4<bool>(global1.b.x, true, all(select(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 25592u), 12u)], global1.b.x)), global1.b.x));
    let var_1 = countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(13381u, abs(4294967295u) & (u_input.b ^ u_input.b)), ~vec2<u32>(7738u, ~u_input.d)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-445f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1256f - 275f), _wgslsmith_f_op_f32(f32(-1f) * -165f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1622f, -466f))), !global1.b.x))));
    var var_3 = reverseBits(4294967295u) & u_input.d;
    let var_4 = abs(min(select(vec3<i32>(-2147483647i, 1i, -2147483647i), min(vec3<i32>(u_input.c.x, u_input.a, global1.a), u_input.c), !vec3<bool>(true, false, var_0.x)), vec3<i32>(countOneBits(-2147483647i), -1i, -global1.a))) >> (global2[_wgslsmith_index_u32(~(~(~u_input.d)) | 1u, 24u)] % vec3<u32>(32u));
    var var_5 = global1.b.x | (var_1.x == 0u);
    global0 = array<vec2<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * -1000f)) + 365f), firstLeadingBit(vec4<u32>(var_1.x, var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(46182u, u_input.d), var_1), ~_wgslsmith_add_u32(u_input.d, var_1.x))), max(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, var_1.x, var_1.x, var_1.x), vec4<u32>(u_input.d, 0u, u_input.b, u_input.d), vec4<u32>(9813u, 15744u, var_1.x, u_input.d)) | _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 30391u, 1u, u_input.d), vec4<u32>(var_1.x, var_1.x, 4294967295u, 24518u)), vec4<u32>(var_1.x, ~83624u, ~0u, u_input.b >> (u_input.b % 32u))), ~(vec4<u32>(46182u, u_input.d, var_1.x, var_1.x) | vec4<u32>(1u, 77271u, 56185u, 0u)) >> (~vec4<u32>(8369u, u_input.d, var_1.x, 0u) % vec4<u32>(32u))));
}

