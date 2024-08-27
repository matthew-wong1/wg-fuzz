struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~50736u, 8u)];
    var var_1 = false;
    var var_2 = var_0.d;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1106f, 902f, !var_0.c.x))))) != 1000f;
    var_2 = arg_0.xy;
    return !vec3<bool>(var_3, !(!(arg_1.x == 4294967295u)), any(select(vec3<bool>(false, var_2.x, var_0.c.x), !arg_0.xxx, vec3<bool>(true, var_0.d.x, var_3))));
}

fn func_2() -> f32 {
    var var_0 = !func_3(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, true & any(vec2<bool>(true, true))), vec2<u32>(1u, 1u));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(sign(-346f)), vec3<u32>(~17580u, 4294967295u, ~0u), select(select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !vec4<bool>(true, var_0.x, false, var_0.x)), !select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false)), vec4<bool>(var_0.x, all(vec4<bool>(false, false, var_0.x, true)), true && var_0.x, all(vec4<bool>(true, var_0.x, true, var_0.x)))), vec4<bool>(!(1i > u_input.a), true, !any(vec2<bool>(var_0.x, var_0.x)), any(!vec3<bool>(var_0.x, false, var_0.x))), all(vec2<bool>(true, 2147483647i == u_input.a))), vec2<bool>(var_0.x, true & all(select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, var_0.x), true))));
    global0 = array<Struct_2, 8>();
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.x, max(36929u, _wgslsmith_div_u32(1u, var_1.b.x)), firstLeadingBit(1u), 5038u), ~vec4<u32>(4294967295u, 1u, ~(~4294967295u), 70676u)), 8u)];
    var_0 = func_3(select(var_1.c, var_1.c, select(vec4<bool>(var_1.d.x, var_1.c.x, var_1.a < var_1.a, false), var_1.c, select(var_1.d.x || var_1.d.x, var_0.x, false))), firstLeadingBit(~vec2<u32>(8646u | var_1.b.x, ~4294967295u)));
    return var_1.a;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-2017f, -955f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2554f, 162f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(-138f)), 928f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 825f) - vec2<f32>(258f, var_0.x)))))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-537f, var_0.x)), _wgslsmith_div_f32(-1140f, _wgslsmith_f_op_f32(floor(1038f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_2 = _wgslsmith_f_op_f32(1947f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1029f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-728f + -234f) - var_1.x) - _wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f - -546f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), 261f, true))), _wgslsmith_div_f32(-1114f, _wgslsmith_f_op_f32(f32(-1f) * -335f)))), vec4<f32>(1f, 1f, 1f, 1f));
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_1 = select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), any(vec4<bool>(false, true, true, false))), vec2<bool>(any(vec4<bool>(true, true, false, false)), true), vec2<bool>(true, true)), vec2<bool>(true, true), func_3(vec4<bool>(true, true, true, true), vec2<u32>(1u, 0u)).x || true), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))) || false, any(!select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(reverseBits(vec2<u32>(4294967295u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 22413u), vec2<u32>(4294967295u, 39797u)), var_1.x)), vec3<i32>(27501i, firstTrailingBit(reverseBits(u_input.a)), _wgslsmith_clamp_i32(18886i, 1i, 0i)), min(1u, select(0u, 0u, true)), u_input.a);
}

