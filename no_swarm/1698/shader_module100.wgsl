struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: array<i32, 23> = array<i32, 23>(38183i, -1i, -1i, -78545i, 0i, i32(-2147483648), -12110i, 0i, -1i, -1i, 2147483647i, 22126i, 2147483647i, 1i, 53675i, -2134i, 2147483647i, 26142i, -54569i, i32(-2147483648), -8309i, 40920i, -1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(30606u, 0u), ~u_input.c.x, u_input.d.x), ~u_input.d), 23u)], u_input.b.x), abs(reverseBits(-1i)));
    var var_1 = Struct_2(Struct_1(vec3<f32>(520f, _wgslsmith_f_op_f32(max(1322f, -292f)), 170f), !any(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(-813f * _wgslsmith_f_op_f32(f32(-1f) * -1238f)), select(u_input.a.x, 4294967295u, true), firstLeadingBit(~u_input.c.zx)), vec4<bool>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.xy), _wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, u_input.a.x))) > firstLeadingBit(~u_input.a.x), !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false)), false, all(vec2<bool>(true, true))));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, ((var_1.a.e.x ^ 50824u) >> (max(31126u, 24082u) % 32u)) ^ u_input.c.x, u_input.c.x), _wgslsmith_mod_vec3_u32(firstLeadingBit(~u_input.a.xxz), vec3<u32>(0u, var_1.a.d, min(~var_1.a.e.x, u_input.a.x))));
    var var_3 = var_1.a.e.x;
    global1 = array<i32, 23>();
    return _wgslsmith_dot_vec4_u32(abs(u_input.c | _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 17898u, 49018u, 54040u), u_input.c), _wgslsmith_div_vec4_u32(u_input.c, u_input.a))), select(firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.a.e.x, 25989u, 0u, u_input.d.x), _wgslsmith_div_vec4_u32(u_input.a, u_input.a))), vec4<u32>(~4294967295u, select(_wgslsmith_dot_vec2_u32(var_1.a.e, vec2<u32>(24023u, var_1.a.d)), _wgslsmith_sub_u32(0u, var_1.a.e.x), true), ~(~1u), 1u), select(true, !all(vec4<bool>(true, var_1.a.b, var_1.a.b, true)), var_1.b.x)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = array<i32, 23>();
    var var_0 = u_input.c;
    let var_1 = !(!(!all(vec3<bool>(false, false, true))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + 2473f), -2721f, arg_0))), true, arg_0, ~99760u, vec2<u32>(~u_input.c.x, func_3())), !select(!(!vec4<bool>(var_1, false, true, var_1)), !vec4<bool>(false, var_1, true, var_1), !(!vec4<bool>(true, var_1, false, var_1))));
    let var_3 = var_1;
    return Struct_2(var_2.a, !vec4<bool>(true, !(!var_3), false, any(select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_2.a.b, var_2.b.x, var_3), true))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> f32 {
    global0 = array<vec4<f32>, 2>();
    var var_0 = -786f;
    var var_1 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(737f, 1000f) - 574f) * -1132f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -412f))))));
    let var_2 = max(~countOneBits(max(vec4<u32>(8967u, var_1.a.d, 4294967295u, var_1.a.d) | u_input.c, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, var_1.a.d, u_input.d.x, arg_0.x), vec4<u32>(u_input.a.x, 0u, var_1.a.d, arg_0.x)))), abs(_wgslsmith_add_vec4_u32(~u_input.a, ~(~vec4<u32>(18008u, 0u, arg_0.x, 4294967295u)))));
    var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -149f));
    return -666f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.c.xxx, -18565i)) * _wgslsmith_f_op_f32(-699f + 806f)) < _wgslsmith_f_op_f32(abs(-969f))), false, !(!any(vec4<bool>(false, false, true, false))));
    global0 = array<vec4<f32>, 2>();
    var var_1 = var_0.x;
    var var_2 = select(select(!var_0, select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !var_0, var_0), vec3<bool>(var_0.x, !(u_input.e >= 0i), all(vec3<bool>(var_0.x, true, true)))), func_2(216f).b.www, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.c.x, ~(0u ^ u_input.a.x), ~47389u), abs(vec4<i32>(~(-2147483647i), min(-1i, global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), _wgslsmith_div_i32(u_input.e, global1[_wgslsmith_index_u32(4294967295u, 23u)]), 2147483647i)) << ((~(~vec4<u32>(0u, u_input.c.x, 23791u, 0u)) | vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 50798u, u_input.c.x)), 6366u, _wgslsmith_add_u32(u_input.c.x, u_input.d.x))) % vec4<u32>(32u)), -1461i, func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.c.ywx, global1[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_f32(-1000f * -1810f))))).a.e.x);
}

