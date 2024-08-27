struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = -1430f;
    let var_1 = select(-u_input.b.x, countOneBits(-(u_input.a >> ((0u & u_input.d) % 32u))), !arg_3.b && false);
    global0 = array<vec4<bool>, 8>();
    var var_2 = !(!arg_2.xz);
    let var_3 = select(!select(select(vec4<bool>(false, arg_3.b, false, false), vec4<bool>(false, true, true, arg_2.x), 1i >= u_input.a), select(global0[_wgslsmith_index_u32(arg_0 | 0u, 8u)], select(vec4<bool>(false, false, false, true), vec4<bool>(arg_3.b, arg_2.x, arg_3.b, false), false), true), _wgslsmith_clamp_u32(0u, 0u, 4294967295u) >= ~arg_0), select(select(global0[_wgslsmith_index_u32(u_input.d, 8u)], !(!global0[_wgslsmith_index_u32(0u, 8u)]), any(select(vec4<bool>(true, arg_3.b, false, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, true), true))), !select(select(global0[_wgslsmith_index_u32(u_input.d, 8u)], global0[_wgslsmith_index_u32(arg_0, 8u)], arg_2.x), !global0[_wgslsmith_index_u32(1u, 8u)], select(vec4<bool>(var_2.x, arg_2.x, true, false), global0[_wgslsmith_index_u32(arg_3.a.x, 8u)], arg_3.b)), !arg_2.x), any(select(arg_2, arg_2, !select(vec3<bool>(var_2.x, arg_2.x, var_2.x), vec3<bool>(false, true, var_2.x), arg_2))));
    return vec2<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 - -1700f)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> vec2<f32> {
    global0 = array<vec4<bool>, 8>();
    var var_0 = _wgslsmith_add_vec3_u32(~(~(~vec3<u32>(4294967295u, u_input.d, 0u))), (~(~vec3<u32>(u_input.d, 0u, 27313u)) << (vec3<u32>(1u & u_input.d, ~u_input.d, ~0u) % vec3<u32>(32u))) << (firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), _wgslsmith_sub_vec3_u32(vec3<u32>(16904u, 763u, 49109u), vec3<u32>(u_input.d, 16350u, 1u)))) % vec3<u32>(32u)));
    var_0 = ~(~vec3<u32>(var_0.x, reverseBits(37626u), 4294967295u) ^ ~vec3<u32>(~var_0.x, countOneBits(1u), ~1u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(48636u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1157f, -450f, 848f, arg_1) + vec4<f32>(-2146f, -1057f, 1000f, arg_1))))), !vec3<bool>(true, true, arg_0), Struct_1(~abs(var_0.yy), true))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1783f, 312f), vec2<f32>(1139f, -143f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-618f, 825f) * vec2<f32>(-915f, -772f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true, -976f, u_input.c.x)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_2(false, -1914f, u_input.c.x)))))));
    var var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), false));
    let var_2 = ~(~vec3<u32>(1u, 1u, 1u));
    let var_3 = !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, var_2.x)), 0u, u_input.d), ~var_2.x), 8u)];
    let var_4 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~var_2 >> (var_2 % vec3<u32>(32u)), var_2), ~vec3<u32>(u_input.d, var_2.x, 0u));
    return Struct_1(vec2<u32>(18242u, ~_wgslsmith_sub_u32(~u_input.d, ~44599u)), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 8>();
    global0 = array<vec4<bool>, 8>();
    var var_0 = !(u_input.b.x != 2147483647i);
    var var_1 = select(any(vec4<bool>(true, true, !all(vec3<bool>(true, true, false)), true)), any(vec3<bool>(true, true, true)), true);
    let var_2 = !(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false), true)));
    var var_3 = func_1();
    let var_4 = var_3.a;
    var_1 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(962f, _wgslsmith_f_op_f32(ceil(-1106f)), -2147483647i);
}

