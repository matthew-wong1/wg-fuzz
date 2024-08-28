struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global0 = array<vec4<bool>, 32>();
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-929f, 487f), vec2<f32>(-450f, -765f), true)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, 418f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1077f, -447f), vec2<f32>(-626f, -1123f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1291f, 1132f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-276f, -199f)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1886f, 1262f))))), ~(~u_input.a.x) == u_input.b.x))));
    let var_1 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(all(!global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), false), false), !(!(var_0.x >= _wgslsmith_f_op_f32(var_0.x + 479f))));
    let var_2 = Struct_2(Struct_1(true, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~1u), u_input.b.x)), Struct_1(!(!var_1.x), max(u_input.b.x, countOneBits(reverseBits(u_input.a.x)))), !vec3<bool>(var_1.x, true, !var_1.x), Struct_1(true, ~u_input.a.x));
    var var_3 = Struct_4(var_2.b, !(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_2.a.b, 75316u), ~u_input.a.x) < _wgslsmith_dot_vec4_u32(reverseBits(u_input.a), ~u_input.a)));
    return _wgslsmith_mod_u32(countOneBits(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(31489u, 79277u, 48106u)), _wgslsmith_mod_u32(~67837u, _wgslsmith_mod_u32(var_2.b.b, u_input.b.x)), reverseBits(var_2.a.b | 11495u))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, (72029u << (var_2.a.b % 32u)) | 0u, _wgslsmith_mod_u32(var_2.b.b, firstTrailingBit(0u))), reverseBits(max(~var_2.b.b, _wgslsmith_add_u32(31351u, 106225u)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f));
    var var_1 = func_3() | (~u_input.a.x >> (max(1u, _wgslsmith_add_u32(arg_1, ~41956u)) % 32u));
    var_1 = arg_1;
    let var_2 = true;
    var var_3 = Struct_5(!(!select(vec4<bool>(true, arg_0.x, var_2, true), select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(true, false, true, true), true), !global0[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(Struct_1(select(arg_0.x, true, true), _wgslsmith_div_u32(~u_input.b.x, arg_1)), Struct_1(any(!global0[_wgslsmith_index_u32(1u, 32u)]), arg_1), select(!vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, var_2, true), !(!arg_0.xxy)), Struct_1(true, arg_1)), Struct_4(Struct_1(select(arg_0.x, true, arg_0.x), 44350u), !any(vec3<bool>(true, var_2, false))));
    return Struct_2(Struct_1(false, arg_1), var_3.c.b, !vec3<bool>(firstTrailingBit(0u) > ~var_3.d.a.b, arg_0.x, any(select(arg_0.ywy, arg_0.xyz, true))), Struct_1(arg_0.x, ~16891u));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - vec3<f32>(arg_0, arg_0, arg_0)))), func_2(!global0[_wgslsmith_index_u32(reverseBits(23575u), 32u)], ~u_input.a.x));
    var var_2 = -815f;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0)))))), -332f, arg_0);
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(var_1.a)), var_1.b);
    return func_2(vec4<bool>(var_4.b.a.a, true, true, arg_1), select(min(~var_1.b.d.b, ~var_4.b.b.b) ^ min(var_1.b.b.b, ~0u), 4294967295u, arg_1)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-862f, -1307f, 1000f), vec3<f32>(1705f, -1957f, -1171f))))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-444f, _wgslsmith_f_op_f32(sign(1653f)), _wgslsmith_f_op_f32(select(1713f, -290f, true)))))), Struct_2(Struct_1(true, u_input.b.x), Struct_1(true, _wgslsmith_div_u32(~55179u, ~u_input.b.x)), vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true), func_1(671f, !any(vec3<bool>(true, false, true)))));
    let var_2 = var_1.a;
    var var_3 = !((any(select(global0[_wgslsmith_index_u32(var_0, 32u)], vec4<bool>(var_1.b.b.a, var_1.b.b.a, var_1.b.a.a, true), vec4<bool>(var_1.b.b.a, false, var_1.b.c.x, var_1.b.a.a))) && !(u_input.a.x > u_input.b.x)) & func_2(global0[_wgslsmith_index_u32(var_1.b.d.b, 32u)], 0u).d.a);
    let var_4 = ~_wgslsmith_dot_vec4_u32(select(min(vec4<u32>(0u, u_input.b.x, var_0, var_0), u_input.a), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 41229u), select(vec4<bool>(true, var_1.b.b.a, var_1.b.d.a, var_1.b.d.a), global0[_wgslsmith_index_u32(u_input.b.x, 32u)], var_1.b.a.a)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(u_input.a), ~u_input.b, firstLeadingBit(u_input.b))) >> (var_0 % 32u);
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-241f, -1607f, var_2.x))) - _wgslsmith_f_op_vec3_f32(floor(var_1.a))))), func_2(select(global0[_wgslsmith_index_u32(~var_1.b.b.b, 32u)], select(!vec4<bool>(var_1.b.d.a, var_1.b.b.a, true, false), vec4<bool>(true, false, var_1.b.d.a, true), select(vec4<bool>(var_1.b.b.a, true, var_1.b.c.x, false), vec4<bool>(true, false, var_1.b.a.a, true), vec4<bool>(false, false, var_1.b.d.a, false))), vec4<bool>(!var_1.b.d.a, false, true, var_1.b.c.x)), func_2(!vec4<bool>(var_1.b.d.a, var_1.b.b.a, true, var_1.b.d.a), ~1u).a.b));
    var var_5 = u_input.c.www;
    global0 = array<vec4<bool>, 32>();
    var var_6 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.xy, _wgslsmith_f_op_f32(-var_1.a.x));
}

