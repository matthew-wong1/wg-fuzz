struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32;

var<private> global2: array<vec3<bool>, 20>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    global2 = array<vec3<bool>, 20>();
    global0 = 50959u;
    let var_0 = arg_0.c;
    var var_1 = arg_0;
    let var_2 = u_input.a.x;
    return vec4<f32>(_wgslsmith_f_op_f32(205f * var_1.a.b), -802f, arg_0.d.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.b + -167f))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<f32> {
    global0 = 1u;
    global2 = array<vec3<bool>, 20>();
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_1, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, arg_0.x, arg_0.x, 1204f), vec4<f32>(1106f, 1018f, 224f, arg_0.x), true)) + _wgslsmith_f_op_vec4_f32(arg_1.a.c - _wgslsmith_f_op_vec4_f32(arg_0 + arg_1.d.c))), all(!arg_1.a.d.xz) | (all(vec4<bool>(false, arg_1.d.d.x, arg_1.d.a.x, false)) | select(true, false, arg_1.d.a.x))))));
}

fn func_1() -> Struct_2 {
    global1 = max(0u, _wgslsmith_dot_vec2_u32(~u_input.a, _wgslsmith_mult_vec2_u32(select(u_input.b.ww, select(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(67489u, 1u), vec2<bool>(true, true)), vec2<bool>(false, false)), max(vec2<u32>(0u, u_input.a.x), u_input.b.xw))));
    var var_0 = true;
    var var_1 = Struct_2(Struct_1(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), false), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -858f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(793f, -1512f, _wgslsmith_f_op_f32(f32(-1f) * -895f), 320f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1077f, -554f, 1886f, 423f)), _wgslsmith_f_op_vec4_f32(func_2(vec4<f32>(1792f, -1000f, 137f, 241f), Struct_2(Struct_1(vec2<bool>(true, true), -1458f, vec4<f32>(-1451f, -227f, -1468f, 448f), global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec2<u32>(594u, u_input.a.x), 2147483647i, Struct_1(vec2<bool>(false, true), -1066f, vec4<f32>(-154f, -695f, 1310f, 974f), vec3<bool>(true, false, false)), -2147483647i), vec2<u32>(u_input.b.x, u_input.a.x))))))), select(select(select(vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global2[_wgslsmith_index_u32(68910u, 20u)]), global2[_wgslsmith_index_u32(min(u_input.b.x, u_input.b.x), 20u)], select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), global2[_wgslsmith_index_u32(19474u, 20u)])), ~_wgslsmith_clamp_vec2_u32(~countOneBits(vec2<u32>(u_input.a.x, 4294967295u)), u_input.b.xy ^ ~u_input.a, (u_input.a | u_input.b.zx) << ((u_input.a | vec2<u32>(u_input.b.x, 1u)) % vec2<u32>(32u))), (1i << (1u % 32u)) << (abs(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(67310u, u_input.a.x))) % 32u), Struct_1(vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1414f * -1095f), -492f), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(804f, -446f)), _wgslsmith_f_op_f32(f32(-1f) * -1560f), true)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec2<bool>(false, true), -3136f, vec4<f32>(315f, -2129f, 954f, -799f), vec3<bool>(false, false, true)), vec2<u32>(4294967295u, u_input.b.x), 1682i, Struct_1(vec2<bool>(false, false), -951f, vec4<f32>(-142f, -298f, 1345f, -863f), global2[_wgslsmith_index_u32(u_input.b.x, 20u)]), 0i), false)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1538f)) - _wgslsmith_div_f32(1176f, 138f)), _wgslsmith_f_op_f32(-1f)), !vec3<bool>(true, true, u_input.b.x > u_input.a.x)), 2147483647i);
    var var_2 = vec3<u32>(select(_wgslsmith_clamp_u32(max(min(u_input.b.x, 1u), 16546u), 51905u, var_1.b.x), firstLeadingBit(4294967295u), !var_1.a.d.x), abs(4294967295u) & var_1.b.x, 1u);
    global1 = ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.b, u_input.a << (vec2<u32>(var_2.x, var_1.b.x) % vec2<u32>(32u))), select(9897u, abs(4682u), var_1.a.a.x)));
    return Struct_2(var_1.a, max(~vec2<u32>(6761u, var_2.x), ~(~vec2<u32>(11400u, var_2.x))), _wgslsmith_div_i32(max(-14173i, var_1.c) ^ (-2147483647i ^ ~var_1.c), -2147483647i), Struct_1(select(var_1.a.d.xy, select(var_1.a.d.xz, select(var_1.d.d.xz, vec2<bool>(var_1.a.d.x, var_1.d.a.x), false), true), !vec2<bool>(var_1.d.d.x, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.b, var_1.d.b)) + 1714f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.d.c.x, var_1.a.b)), _wgslsmith_f_op_f32(135f - var_1.d.b))), var_1.d.a.x)), _wgslsmith_f_op_vec4_f32(-var_1.d.c), !select(vec3<bool>(var_1.d.a.x, false, var_1.a.d.x), global2[_wgslsmith_index_u32(var_2.x, 20u)], vec3<bool>(true, var_1.d.d.x, var_1.d.a.x))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

