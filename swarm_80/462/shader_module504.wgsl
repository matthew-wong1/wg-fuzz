struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = abs(~(~min(~42979u, 51466u)));
    var var_0 = Struct_1(!(!vec3<bool>(true, true, u_input.b < u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1554f), _wgslsmith_f_op_f32(trunc(-557f))))), reverseBits(1i));
    var var_1 = select(abs(abs(_wgslsmith_mod_i32(u_input.c << (4294967295u % 32u), var_0.c))), -abs(~0i), true);
    var_1 = var_0.c;
    var var_2 = Struct_1(!(!(!var_0.a)), _wgslsmith_f_op_f32(ceil(458f)), var_0.c);
    return var_0.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.e.x, u_input.a) >> (vec3<u32>(4294967295u, u_input.e.x, u_input.e.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(1u, 64838u, u_input.a)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-919f + 386f))) * arg_1));
    var_0 = arg_1;
    return vec2<bool>(true, all(vec2<bool>(!any(vec4<bool>(true, true, false, false)), true)));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = 1314f;
    let var_1 = func_2(vec2<i32>(firstLeadingBit(u_input.d.x), _wgslsmith_mod_i32(0i, ~firstTrailingBit(-1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0)))), u_input.c);
    var var_2 = true;
    global0 = 1u;
    var_2 = all(!(!vec4<bool>(false, var_1.x, all(var_1), true)));
    return 363f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(true, u_input.b == u_input.b, !any(vec4<bool>(false, false, false, true)) && true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(313f - -1000f), -732f), u_input.d.x);
    global0 = ~0u;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<f32>(var_0.b, -4076f, 401f))), -255f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, 2045f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(566f * var_0.b), 1824f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1251f, _wgslsmith_div_f32(var_0.b, var_1.x), _wgslsmith_f_op_f32(1092f + -203f), 1236f)), select(!vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(true, var_0.a.x, true, 38133u < u_input.a), all(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, true, true), true))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1255f + 553f))), var_1.x, var_0.b)));
    let var_3 = !vec3<bool>(true && var_0.a.x, var_0.a.x, false);
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -4285i, var_2, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1185f, -315f, -1065f, -1327f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(447f, var_1.x, 892f, 1763f) - _wgslsmith_f_op_vec4_f32(-var_2))))));
}

