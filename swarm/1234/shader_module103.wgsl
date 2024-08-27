struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~firstLeadingBit(u_input.d)), u_input.d, u_input.d), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(abs(u_input.d.x), 1u), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 0u), u_input.d, ~u_input.d))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - -1147f), 178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + 889f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1016f) + _wgslsmith_div_f32(-1613f, -2573f))), 737f));
    var var_1 = Struct_1(select(arg_3.a, select(arg_2.a, !vec2<bool>(true, arg_1), !arg_2.b), !all(vec3<bool>(arg_3.b, arg_2.b, true))), true);
    var var_2 = select(!arg_3.a, !arg_2.a, arg_2.a);
    global0 = u_input.b;
    return vec2<bool>(!var_2.x, arg_3.a.x);
}

fn func_2() -> u32 {
    let var_0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.b, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 0u, 46255u), vec3<u32>(1u, u_input.b, u_input.d.x))) >> (vec3<u32>(4294967295u, 1u, abs(49746u)) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.d.x, 1u, 4294967295u) | abs(vec3<u32>(u_input.d.x, 2032u, u_input.d.x))));
    global0 = 74024u;
    let var_1 = Struct_2(var_0.x, true, Struct_1(select(func_3(~vec3<i32>(u_input.a, u_input.a, 42492i), true, Struct_1(vec2<bool>(false, true), true), Struct_1(vec2<bool>(false, true), false)), func_3(-vec3<i32>(u_input.a, u_input.a, -8793i), all(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), false), Struct_1(vec2<bool>(true, true), true)), any(vec3<bool>(true, true, true))), all(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-422f)))), 225f, _wgslsmith_f_op_f32(min(-463f, _wgslsmith_f_op_f32(min(1388f, 444f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1472f - 1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1277f + 609f), _wgslsmith_f_op_f32(sign(-898f)), true)), false)), -862f));
    let var_3 = ~_wgslsmith_mod_u32(_wgslsmith_add_u32(34534u, ~4294967295u) ^ ~(~u_input.c), u_input.c);
    return _wgslsmith_mod_u32(select(_wgslsmith_dot_vec3_u32(firstLeadingBit(min(var_0, var_0)), _wgslsmith_div_vec3_u32(var_0, vec3<u32>(73293u, var_1.a, var_0.x))), _wgslsmith_clamp_u32(abs(u_input.d.x) | abs(0u), select(_wgslsmith_add_u32(64711u, 1u), 39975u, -1792f > var_2.x), var_1.a), false), _wgslsmith_mod_u32(822u ^ var_1.a, 0u));
}

fn func_1() -> bool {
    let var_0 = min(vec2<u32>(~func_2(), ~1u) >> (u_input.d % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.b | _wgslsmith_sub_u32(~1u, abs(u_input.c))));
    var var_1 = u_input.a;
    var_1 = -2147483647i & -u_input.a;
    let var_2 = ~_wgslsmith_mult_u32(u_input.c, ~(~(~var_0.x)));
    global0 = 1u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(select(false, true, func_1()), false);
    var_0 = !vec2<bool>(any(vec3<bool>(any(vec3<bool>(var_0.x, false, false)), var_0.x, var_0.x)), !(!(!var_0.x)));
    let var_1 = Struct_1(!vec2<bool>(any(!vec2<bool>(var_0.x, var_0.x)), all(vec4<bool>(false, false, var_0.x, var_0.x))), true);
    let var_2 = !vec3<bool>(all(!func_3(vec3<i32>(u_input.a, u_input.a, 1i), true, var_1, Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), var_0.x))), true, true);
    let var_3 = ~(~countOneBits(reverseBits(vec3<u32>(u_input.b, 0u, 24998u)))) & abs(firstTrailingBit(vec3<u32>(4294967295u, ~24802u, 1u)));
    var var_4 = Struct_2(u_input.c, !var_1.a.x, var_1);
    global0 = firstLeadingBit(abs(_wgslsmith_dot_vec2_u32(~u_input.d, select(_wgslsmith_clamp_vec2_u32(var_3.zx, vec2<u32>(u_input.b, var_4.a), u_input.d), vec2<u32>(1557u, u_input.d.x), vec2<bool>(true, var_2.x)))));
    let var_5 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(2191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(-999f + _wgslsmith_f_op_f32(sign(180f))))), select(vec2<bool>(false, var_1.a.x), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(~(~52129u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_4.a, var_4.a, 1u), vec4<u32>(var_4.a, 0u, 29998u, 10986u), vec4<u32>(var_4.a, u_input.d.x, 34542u, var_3.x)), vec4<u32>(36377u, var_4.a, 0u, 0u) ^ vec4<u32>(0u, var_4.a, 65740u, var_4.a))));
}

