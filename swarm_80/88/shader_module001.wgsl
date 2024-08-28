struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
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

var<private> global0: array<Struct_1, 6>;

var<private> global1: u32 = 1u;

var<private> global2: array<i32, 32>;

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> bool {
    global3 = array<Struct_1, 15>();
    global2 = array<i32, 32>();
    global0 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(628f, -489f)))) * _wgslsmith_f_op_f32(f32(-1f) * -476f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global2 = array<i32, 32>();
    return false;
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true)), !any(vec4<bool>(false, true, true, 56877u < u_input.b.x)), true && all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global3 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u ^ _wgslsmith_mult_u32(u_input.c.x, u_input.b.x), select(1u, u_input.a.x, !var_0.x), select(27900u, 1u, var_0.x & var_0.x)), firstTrailingBit(u_input.b), vec4<u32>(abs(~1u), 0u, 6536u, ~(2518u & u_input.a.x))) & vec4<u32>(~u_input.a.x, select(~u_input.a.x ^ 36068u, max(4294967295u, u_input.c.x) ^ 1u, any(var_0.zx)), ~0u, u_input.c.x);
    global3 = array<Struct_1, 15>();
    var var_2 = true;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(~var_1.zz), vec2<u32>(1u, u_input.c.x) & vec2<u32>(u_input.a.x, 0u)) ^ u_input.a.x, reverseBits(15190u));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2();
    let var_1 = u_input.a;
    global3 = array<Struct_1, 15>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -840f);
    let var_3 = vec4<i32>(-3671i, ~global2[_wgslsmith_index_u32(func_3(), 32u)], firstTrailingBit(~(-max(-2147483647i, global2[_wgslsmith_index_u32(64874u, 32u)]))), -select(global2[_wgslsmith_index_u32(~var_1.x, 32u)], global2[_wgslsmith_index_u32(~(0u ^ u_input.b.x), 32u)], !any(vec4<bool>(false, false, false, true))));
    return vec2<bool>(false || all(vec4<bool>(true, true, global2[_wgslsmith_index_u32(var_1.x, 32u)] < var_3.x, true)), any(vec2<bool>(~global2[_wgslsmith_index_u32(u_input.b.x, 32u)] < firstLeadingBit(-1i), !all(vec4<bool>(true, true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), func_1());
    var var_1 = global0[_wgslsmith_index_u32(~(~u_input.b.x), 6u)];
    global1 = 40457u;
    global0 = array<Struct_1, 6>();
    let var_2 = _wgslsmith_add_u32(~(abs(u_input.b.x) | u_input.a.x), abs(26778u));
    global1 = abs(~_wgslsmith_clamp_u32(~var_2, u_input.b.x, 1u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1099f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_div_i32(-1i, -1i) ^ select(global2[_wgslsmith_index_u32(var_2, 32u)], global2[_wgslsmith_index_u32(var_2, 32u)], false))));
}

