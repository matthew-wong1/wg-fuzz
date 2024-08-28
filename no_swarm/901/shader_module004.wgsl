struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: u32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1528f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1877f), 1000f)), 2030f))));
    var var_1 = Struct_3(vec2<bool>(any(select(!vec2<bool>(true, arg_0), !vec2<bool>(arg_0, arg_0), arg_0)), arg_0 & true));
    let var_2 = -10973i;
    let var_3 = Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, ~12425u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 53907u), vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.d, u_input.d))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -421f) != _wgslsmith_f_op_f32(round(var_0)), !arg_0, all(vec2<bool>(true, arg_0)), !all(!vec3<bool>(arg_0, false, true))), !(!var_1.a.x), reverseBits(-var_2), !vec4<bool>(!var_1.a.x && true, var_1.a.x, true, false));
    let var_4 = -39135i | ~select(~var_2, 51079i, true);
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = Struct_4(select(vec2<bool>(true, true), vec2<bool>(!(150f > arg_1), 4294967295u <= u_input.d), true), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(687f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1028f, arg_1) + vec2<f32>(-366f, 1448f)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(f32(-1f) * -1529f))), _wgslsmith_f_op_f32(-arg_1)), Struct_1(abs(vec2<u32>(u_input.d, 0u) >> (select(vec2<u32>(28203u, 0u), vec2<u32>(11300u, u_input.d), vec2<bool>(false, true)) % vec2<u32>(32u))), vec4<bool>(true, true, true, true), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true)), reverseBits(~1i), vec4<bool>(!any(vec4<bool>(false, false, true, true)), func_3(select(false, true, false)), true, all(vec2<bool>(true, false)))));
    var_0 = Struct_4(select(select(var_0.a, !select(vec2<bool>(var_0.c.e.x, var_0.c.e.x), vec2<bool>(true, var_0.c.c), var_0.c.b.xx), select(true, var_0.c.c, arg_1 >= 118f)), vec2<bool>(true, var_0.c.b.x), 1u > ~var_0.c.a.x), Struct_2(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(var_0.b.b)))), -421f), Struct_1(firstLeadingBit(reverseBits(var_0.c.a)), !vec4<bool>(u_input.d == var_0.c.a.x, true, var_0.c.e.x, arg_1 >= 1174f), false, u_input.a.x, !select(var_0.c.e, vec4<bool>(true, true, var_0.c.b.x, var_0.c.b.x), 1u >= var_0.c.a.x)));
    let var_1 = Struct_3(var_0.a);
    var_0 = Struct_4(select(select(vec2<bool>(true, true), select(var_0.a, vec2<bool>(var_0.a.x, false), var_1.a), var_1.a.x), !(!var_0.c.e.xz), !vec2<bool>(any(var_0.c.b), var_1.a.x)), var_0.b, Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u) ^ var_0.c.a, ~vec2<u32>(37912u, var_0.c.a.x)), select(var_0.c.e, !select(var_0.c.b, var_0.c.b, var_0.c.e.x), var_0.c.e), !(abs(var_0.c.a.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 22409u), vec3<u32>(5886u, 0u, var_0.c.a.x))), i32(-1i) * -1i, !select(vec4<bool>(false, var_1.a.x, var_1.a.x, var_0.a.x), var_0.c.e, var_0.c.b)));
    let var_2 = var_1.a.x;
    return ~u_input.d;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<f32> {
    global0 = 11575u << (reverseBits(func_2(u_input.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b * -476f) * arg_0.b.b))) % 32u);
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(arg_0.b.a, arg_2.zy)), vec2<f32>(917f, arg_2.x), -1090f > arg_2.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, arg_0.b.a.x), vec2<f32>(arg_1.b, arg_2.x)))), arg_1.a)), -1000f);
    var var_1 = false;
    return vec3<f32>(arg_2.x, 848f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-153f * 1f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-476f, 1276f, 131f) * vec3<f32>(618f, 664f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, -1138f, -782f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(477f, 374f, 201f), _wgslsmith_f_op_vec3_f32(func_1(Struct_4(vec2<bool>(false, true), Struct_2(vec2<f32>(-483f, 110f), -720f), Struct_1(vec2<u32>(8025u, u_input.d), vec4<bool>(true, false, false, true), false, u_input.e.x, vec4<bool>(true, false, false, false))), Struct_2(vec2<f32>(1000f, 792f), -803f), vec4<f32>(1000f, 1000f, 917f, 656f))))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-738f, _wgslsmith_f_op_f32(floor(1345f)), _wgslsmith_f_op_f32(-2454f * -351f))))))));
    let var_1 = Struct_3(select(vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true), true));
    var var_2 = var_0.x;
    global0 = abs(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~1u), u_input.d), reverseBits(firstTrailingBit(vec2<u32>(u_input.d, u_input.d) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))))));
    let var_3 = Struct_3(vec2<bool>(true, func_3(!(var_1.a.x || false))));
    global0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d & 4294967295u, 0u), ~vec2<u32>(u_input.d, u_input.d)), ~abs(~(vec2<u32>(1u, u_input.d) >> (vec2<u32>(1u, 50411u) % vec2<u32>(32u)))));
    global0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

