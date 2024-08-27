struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<vec2<i32>, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    return Struct_3(arg_3.a);
}

fn func_3() -> u32 {
    global0 = array<vec2<i32>, 7>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1180f), func_1(vec3<f32>(1f, 1f, 1f), select(vec2<bool>(true, false), vec2<bool>(false, true), true), abs(u_input.b), Struct_3(vec4<f32>(489f, 1821f, -886f, 1032f))).a.x, 1i >= _wgslsmith_add_i32(u_input.b, 78875i))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(-1351f + -188f)) + _wgslsmith_f_op_f32(-485f - _wgslsmith_f_op_f32(f32(-1f) * -1104f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f));
    var var_1 = vec4<u32>(u_input.a << (1u % 32u), 20143u, ~countOneBits(max(countOneBits(1u), _wgslsmith_mult_u32(u_input.a, 0u))), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a));
    let var_2 = vec3<bool>(!any(vec3<bool>(true, false, true)), true, true);
    return _wgslsmith_mod_u32(max(~var_1.x, _wgslsmith_add_u32(1u, _wgslsmith_div_u32(4294967295u, u_input.a))), _wgslsmith_add_u32(var_1.x, 1u)) & min(~min(var_1.x, 21779u), _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), ~0u)));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = ~7056i;
    var var_1 = any(vec2<bool>(1856u != _wgslsmith_sub_u32(u_input.a, u_input.a & 46936u), all(vec3<bool>(true, true, true))));
    var_1 = !(false | (u_input.a >= _wgslsmith_clamp_u32(firstLeadingBit(1u), u_input.a, firstLeadingBit(u_input.a))));
    global0 = array<vec2<i32>, 7>();
    let var_2 = vec3<bool>(_wgslsmith_sub_u32(abs(u_input.a), u_input.a & min(u_input.a, 4294967295u)) == _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, ~u_input.a), func_3()), true, any(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, true), vec4<bool>(false, all(vec3<bool>(true, false, true)), false, any(vec4<bool>(false, true, true, false))))));
    return vec4<bool>(!select(var_2.x, true, var_2.x), !(!(var_2.x || var_2.x)), !var_2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, !(!all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), any(!func_2(abs(u_input.b), func_1(vec3<f32>(732f, -300f, -1091f), vec2<bool>(true, true), -1425i, Struct_3(vec4<f32>(-925f, -1407f, 425f, -219f))))), false);
    var var_1 = var_0;
    let var_2 = !var_0.xxw;
    global0 = array<vec2<i32>, 7>();
    var_1 = var_0;
    let var_3 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(~(~0u), 7u)]), var_0.x != !(!select(var_0.x, false, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

