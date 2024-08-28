struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: array<f32, 14> = array<f32, 14>(-391f, -858f, 526f, 708f, 547f, 572f, 1371f, -360f, -1706f, -285f, -435f, 1598f, 562f, 371f);

var<private> global2: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(29021i, 17077i, 0i, -1i), vec4<i32>(0i, -45796i, 20170i, 78690i), vec4<i32>(-6678i, 6142i, -8980i, 1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = vec2<u32>(4294967295u, reverseBits(u_input.a));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.x, ~(~(var_0.x >> (1u % 32u)))) >> (_wgslsmith_mod_u32(var_0.x, u_input.b.x) % 32u), 20u)];
    return true;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<f32, 14>();
    global1 = array<f32, 14>();
    var var_0 = Struct_2(Struct_1(select(true, true, 53779u == u_input.a) && (select(false, true, false) | true), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1335f, 521f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], 142f))))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), true), global1[_wgslsmith_index_u32(~arg_0, 14u)]));
    global0 = array<vec3<u32>, 20>();
    var var_1 = var_0.a.a;
    return var_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1315f))), -945f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 14>();
    var var_0 = Struct_1((func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-727f, global1[_wgslsmith_index_u32(u_input.b.x, 14u)], -517f))) && true) | false, _wgslsmith_f_op_vec2_f32(func_3(func_2(52825u), u_input.c.x)), vec2<bool>(true, true), -611f);
    var_0 = Struct_1(var_0.a, func_2(0u >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b), abs(u_input.a)) % 32u)).b, !(!var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))))));
    var var_1 = vec4<u32>(75704u, _wgslsmith_mult_u32(abs(32608u), reverseBits(u_input.a)), ~u_input.a, 1u ^ u_input.b.x);
    var var_2 = u_input.c.ww;
    var var_3 = func_2(~_wgslsmith_mult_u32(0u, ~var_1.x));
    var_3 = func_2(1u);
    let var_4 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(34114u, u_input.b.x, var_1.x)), global0[_wgslsmith_index_u32(59347u, 20u)]) & vec3<u32>(1u, 4294967295u, 10446u), ~abs(reverseBits(~var_1.xxy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_0.b.x)), var_4.xx, var_2.x, _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(0i, -27499i)) << (var_4.yx % vec2<u32>(32u)), select(vec2<i32>(var_2.x, u_input.c.x), vec2<i32>(var_2.x, var_2.x), vec2<bool>(var_3.c.x, var_3.a)) & ~firstLeadingBit(u_input.e.yy)));
}

