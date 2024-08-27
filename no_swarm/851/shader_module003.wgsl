struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_1(vec4<u32>(~firstLeadingBit(u_input.a ^ u_input.c.x), u_input.a ^ u_input.a, ~21830u, _wgslsmith_dot_vec2_u32(reverseBits(u_input.c.ww), max(vec2<u32>(u_input.c.x, 90664u), u_input.c.wz)) ^ u_input.c.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, _wgslsmith_f_op_f32(-arg_0), -337f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(1423f, -104f, false)), _wgslsmith_f_op_f32(721f * arg_0), arg_0), vec3<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(120f + arg_0), arg_0), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, false))))), -489f, true);
    var_0 = Struct_1(max(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(var_0.a.x, 1u, 1u, 46578u)), var_0.a), vec4<u32>(~var_0.a.x ^ ~8981u, 71849u, ~(~1u), 1u)), vec3<f32>(arg_0, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, 251f, var_0.d)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))))), all(vec2<bool>(false, !(var_0.c != arg_0))));
    let var_1 = Struct_1((select(vec4<u32>(0u, var_0.a.x, 360u, var_0.a.x), max(var_0.a, vec4<u32>(var_0.a.x, var_0.a.x, u_input.a, 0u)), false) & u_input.c) ^ vec4<u32>(_wgslsmith_mod_u32(0u, firstTrailingBit(4294967295u)), _wgslsmith_clamp_u32(countOneBits(59493u), ~24499u, 56155u), 1u, 69996u), vec3<f32>(1759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), arg_0), var_0.b.x, select(!(_wgslsmith_f_op_f32(max(var_0.b.x, var_0.c)) == -102f), !(_wgslsmith_div_f32(var_0.c, -1000f) <= 965f), false));
    global0 = array<vec3<bool>, 6>();
    var var_2 = _wgslsmith_f_op_f32(var_0.c * var_0.b.x);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1576f - -335f))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1952f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1338f) * _wgslsmith_f_op_f32(353f - -747f))))));
    global0 = array<vec3<bool>, 6>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -305f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1997f, var_0))))))));
    var_1 = vec2<f32>(-1286f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -1000f)) * _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(abs(var_0)))), var_1.x));
    return _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -757f) - _wgslsmith_f_op_f32(f32(-1f) * -210f))))));
}

fn func_1() -> i32 {
    let var_0 = vec4<f32>(-566f, _wgslsmith_f_op_f32(floor(243f)), 1699f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -991f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(u_input.b, vec4<bool>(true, false, true, true)))))))));
    let var_1 = Struct_1(select(select(_wgslsmith_mult_vec4_u32(~vec4<u32>(10421u, u_input.a, u_input.c.x, u_input.c.x), u_input.c), u_input.c, !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), u_input.c, vec4<bool>(true, true, true, true)), vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(func_3(var_0.x)), -1000f), -1626f, !any(vec4<bool>(true, true, false, true)));
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(-25105i, firstLeadingBit(2147483647i)), -12919i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x >> (~_wgslsmith_dot_vec2_u32(var_1.a.yw, vec2<u32>(u_input.a, var_1.a.x)) % 32u)));
    var var_3 = Struct_1(vec4<u32>(max(~(u_input.c.x | 70026u), 1u), 4294967295u, ~(~(~24685u)), 0u), _wgslsmith_f_op_vec3_f32(sign(var_1.b)), var_0.x, all(!select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4686u, u_input.a), 6u)], vec3<bool>(true, true, var_1.d), true)));
    var_3 = var_1;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_f_op_f32(func_3(-264f)))), -458f) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(717f)))), _wgslsmith_f_op_f32(1f + 205f), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-abs(u_input.b.xz), -vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(~countOneBits(u_input.b.x), -(~u_input.b.x))), (u_input.c.xy ^ ~vec2<u32>(u_input.a, 8621u)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(51653u, u_input.c.x, u_input.a), u_input.c.wzz), ~u_input.c.x), u_input.c.yy) % vec2<u32>(32u)));
}

