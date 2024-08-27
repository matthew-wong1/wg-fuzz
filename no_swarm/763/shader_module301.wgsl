struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true));

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: vec3<i32> = vec3<i32>(1i, 600i, 0i);

var<private> global3: vec2<u32> = vec2<u32>(1u, 0u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(-min((u_input.b & global2.x) >> (u_input.a.x % 32u), _wgslsmith_mult_i32(global2.x, global2.x)), any(vec3<bool>(true, all(vec2<bool>(true, true)) && true, false)), firstLeadingBit(countOneBits(_wgslsmith_clamp_i32(abs(global2.x), reverseBits(global2.x), firstTrailingBit(25765i)))), 0u);
    var var_1 = ~vec4<u32>(0u, _wgslsmith_add_u32(47648u, ~global3.x), firstTrailingBit(~global3.x), global3.x);
    var var_2 = vec2<i32>(-global2.x, u_input.b);
    global0 = array<vec4<bool>, 28>();
    var var_3 = 250f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-646f)) + _wgslsmith_f_op_f32(851f * 1f)));
    return _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c, var_2.x, var_2.x), vec3<i32>(-23433i, _wgslsmith_add_i32(_wgslsmith_add_i32(global2.x, 24412i), _wgslsmith_add_i32(1i, var_0.c)), global2.x)), vec3<i32>(2147483647i, -_wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, 62201i), global1[_wgslsmith_index_u32(70265u, 8u)], false), reverseBits(global2.zz)), var_2.x >> ((global3.x & (var_1.x ^ 0u)) % 32u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> bool {
    global2 = vec3<i32>(global2.x, u_input.b, ~(-7482i));
    let var_0 = arg_3;
    var var_1 = 793f;
    let var_2 = 4498u;
    global2 = -_wgslsmith_clamp_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.b, 1i, 13329i)) ^ select(vec3<i32>(-2147483647i, global2.x, 2147483647i) | vec3<i32>(-6265i, -1915i, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_3.c, arg_3.c), vec3<i32>(-36597i, global2.x, -9813i)), !arg_0), _wgslsmith_div_vec3_i32(~vec3<i32>(global2.x, var_0.a, 37297i), max(vec3<i32>(arg_1, -1i, var_0.a), vec3<i32>(arg_1, 2147483647i, arg_1))) | func_3(), reverseBits(-firstTrailingBit(vec3<i32>(12774i, 36636i, global2.x))));
    return arg_0.x;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec2<u32> {
    global1 = array<vec2<i32>, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_1);
    var_0 = arg_1;
    var var_1 = select(vec2<bool>(true, false | (false && all(vec2<bool>(false, false)))), vec2<bool>(true, true), select(vec2<bool>(select(false, true, all(vec3<bool>(false, true, false))), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))), vec2<bool>(!(u_input.a.x != global3.x), false), any(vec4<bool>(true, func_2(vec3<bool>(true, false, true), -16427i, true, Struct_1(global2.x, false, -13923i, 39333u)), any(vec2<bool>(true, true)), true))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-832f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.x, arg_0, var_1.x))))))));
    return max(_wgslsmith_div_vec2_u32(~(vec2<u32>(4294967295u, u_input.a.x) << ((u_input.a | vec2<u32>(global3.x, 69260u)) % vec2<u32>(32u))), vec2<u32>(~u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, global3.x)))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(38663u, global3.x) & vec2<u32>(global3.x, 8528u)), u_input.a, abs(select(u_input.a, u_input.a, vec2<bool>(false, true)))), vec2<u32>(~56114u | (u_input.a.x << (113096u % 32u)), 131466u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~u_input.a);
    let var_0 = -220f;
    var var_1 = select(global3.x, ~4294967295u, any(global0[_wgslsmith_index_u32(u_input.a.x, 28u)]));
    let var_2 = select(vec3<u32>(~u_input.a.x, 6159u, 1u), vec3<u32>(global3.x, _wgslsmith_dot_vec2_u32(func_1(1265f, vec4<f32>(222f, var_0, var_0, var_0)) ^ ~u_input.a, vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(global3.x, u_input.a.x))), 1u), all(global0[_wgslsmith_index_u32(~u_input.a.x, 28u)]));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(floor(-698f)))), var_2);
}

