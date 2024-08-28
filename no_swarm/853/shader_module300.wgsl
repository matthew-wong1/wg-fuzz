struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    return 1730f;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))));
    global0 = array<Struct_1, 32>();
    global1 = array<Struct_1, 16>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(1276f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1144f))), _wgslsmith_f_op_f32(floor(560f)), _wgslsmith_f_op_f32(arg_0.a - arg_0.b), -1045f);
    var var_2 = abs((_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a, -2147483647i)), min(vec2<i32>(0i, -1i), vec2<i32>(u_input.a, 2147483647i))) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.c, arg_0.c), vec2<u32>(arg_0.c, 13985u)) % vec2<u32>(32u))) >> (~vec2<u32>(~4294967295u, ~0u) % vec2<u32>(32u)));
    return countOneBits(~arg_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a, 979f) - vec2<f32>(arg_0.a, arg_0.a)))) * vec2<f32>(-131f, _wgslsmith_f_op_f32(arg_3.b * 1506f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(func_2())))), all(!(!vec3<bool>(arg_2, arg_2, false))))), vec2<f32>(726f, arg_3.a)));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, -574f) * vec2<f32>(-738f, arg_0.a))))))));
    let var_1 = Struct_1(1000f, _wgslsmith_f_op_f32(func_2()), arg_0.c ^ arg_1);
    let var_2 = _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, 1i, u_input.a)), vec4<i32>(-2147483647i, u_input.a, u_input.a, 5124i), reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) << (~vec4<u32>(~arg_3.c, arg_3.c, 0u, _wgslsmith_mult_u32(75883u, 47397u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 23028i, 49482i, countOneBits(i32(-1i) * -14817i)), ~abs(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))));
    return 0u;
}

fn func_1() -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-616f + -1905f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 471f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(func_2()))))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, -724f, true)), _wgslsmith_f_op_f32(-1024f + 1154f)))), 1u);
    let var_2 = _wgslsmith_f_op_f32(995f + var_1.a);
    var var_3 = Struct_1(var_2, var_2, func_4(global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(67108u, 16u)]), 16u)], func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 43677u), 16u)]), all(vec3<bool>(any(vec3<bool>(true, false, true)), true, true)), global1[_wgslsmith_index_u32(var_1.c, 16u)]));
    let var_4 = var_2;
    return 37216u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(select(4294967295u, ~(~1u) ^ ~func_1(), !any(vec3<bool>(false, false, false)) != true), ~countOneBits(func_4(global1[_wgslsmith_index_u32(~1u, 16u)], min(8167u, 4294967295u), true, Struct_1(-1852f, -1000f, 4294967295u))));
    let var_1 = vec3<bool>(true, true, !any(vec3<bool>(true, true, true)) && !(!all(vec3<bool>(false, false, true))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(799f - -630f))) + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-466f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-338f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1192f))))));
    let var_3 = var_1.zx;
    var var_4 = !select(any(select(var_1, !var_1, var_3.x & false)), (func_1() <= abs(var_0)) || var_3.x, any(vec4<bool>(!var_1.x, !var_3.x, var_3.x, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-76221i, u_input.a), vec2<i32>(u_input.a, u_input.a) ^ ~vec2<i32>(-2147483647i, u_input.a)), var_0, u_input.a);
}

