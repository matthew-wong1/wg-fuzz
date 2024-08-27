struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<vec4<bool>, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-238f * 435f))), 267f, select(any(vec2<bool>(true, arg_1.b.x)), !arg_1.b.x, arg_1.b.x | arg_1.b.x))) + _wgslsmith_f_op_f32(arg_1.a * 696f)), select(select(select(select(arg_1.b, vec3<bool>(true, false, arg_1.b.x), false), !vec3<bool>(true, false, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, true)), !arg_1.b, arg_1.b), vec3<bool>(arg_1.b.x, true, arg_1.b.x), arg_1.b.x || (_wgslsmith_f_op_f32(-arg_1.a) != _wgslsmith_f_op_f32(f32(-1f) * -437f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(1777f)), select(vec3<bool>(true, !var_0.b.x, true & var_0.b.x), !select(!var_0.b, vec3<bool>(false, var_0.b.x, false), arg_1.b), arg_1.b));
    let var_2 = select(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 67826u, 4294967295u, u_input.c) & vec4<u32>(arg_0, u_input.b, 31227u, 21723u), ~vec4<u32>(u_input.b, arg_0, arg_0, 4294967295u))), min(select(firstTrailingBit(vec4<u32>(1u, arg_0, 1792u, arg_0)), min(vec4<u32>(0u, 0u, u_input.d.x, 0u), vec4<u32>(arg_0, u_input.b, u_input.b, u_input.b)), vec4<bool>(var_1.b.x, var_0.b.x, true, true)), reverseBits(~vec4<u32>(arg_0, 3166u, 4294967295u, u_input.d.x))) & _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 114977u, arg_0, 0u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_0, 0u, arg_0), vec4<u32>(u_input.d.x, 15140u, 1u, arg_0)), vec4<u32>(~arg_0, u_input.b, ~u_input.c, _wgslsmith_mod_u32(u_input.c, arg_0))), true);
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, 593f), vec2<f32>(520f, arg_1.a), var_1.b.x)))))));
    return select(select(arg_1.b, arg_1.b, var_0.b), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, var_3, arg_1.b.x), true), var_1.b, var_1.b)), var_3);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> vec2<f32> {
    global0 = array<Struct_1, 28>();
    let var_0 = Struct_1(736f, !func_3(1785u, Struct_1(-2151f, select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))));
    var var_1 = Struct_1(var_0.a, vec3<bool>(any(global1[_wgslsmith_index_u32(firstLeadingBit(countOneBits(4294967295u)), 32u)]), ~(u_input.d.x ^ 21247u) >= arg_0, var_0.b.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_1.a) * var_1.a)))));
    var var_3 = !vec4<bool>(var_0.b.x, false, var_0.a > var_1.a, any(!func_3(1u, Struct_1(var_1.a, vec3<bool>(var_0.b.x, false, var_0.b.x)))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(553f, 528f) + vec2<f32>(var_0.a, -853f)))))))));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 28>();
    var var_0 = 563f;
    global1 = array<vec4<bool>, 32>();
    var_0 = _wgslsmith_f_op_f32(-845f + _wgslsmith_f_op_f32(-1000f + -510f));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_2(u_input.c, -(~(~(~vec2<i32>(1572i, 61042i))))));
    return _wgslsmith_div_f32(-288f, _wgslsmith_f_op_f32(-1147f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(global1[_wgslsmith_index_u32(u_input.c, 32u)]);
    var var_1 = select(vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, 92109u), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.d.xz)) ^ 1u, 31920u, u_input.d.x ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, u_input.d.x), vec4<u32>(17180u, u_input.d.x, 4294967295u, u_input.d.x)), vec4<u32>(4294967295u, 33683u, u_input.c, u_input.b))), abs(abs(~(~vec4<u32>(31970u, 0u, u_input.d.x, 92480u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -322f) * -2653f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(step(-1272f, _wgslsmith_f_op_f32(abs(255f))))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, ~abs(u_input.d.x)), 28u)];
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(-65458i, u_input.a), ~vec2<i32>(_wgslsmith_add_i32(-u_input.a, u_input.a >> (var_1.x % 32u)), 1i ^ u_input.a));
    global0 = array<Struct_1, 28>();
    global1 = array<vec4<bool>, 32>();
    let var_4 = vec3<bool>(true, u_input.a > -22438i, var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(abs(~var_1.x) << (var_1.x % 32u), u_input.b, var_1.x));
}

