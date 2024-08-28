struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(7731i, -10205i), vec2<i32>(55228i, 4075i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(45817i, -39464i), vec2<i32>(-8153i, -58637i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, 20096i));

var<private> global1: array<vec3<i32>, 20>;

var<private> global2: f32 = 226f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_2(vec2<bool>(true || select(!arg_1, false, false), arg_1));
    global1 = array<vec3<i32>, 20>();
    global2 = 689f;
    global1 = array<vec3<i32>, 20>();
    global2 = _wgslsmith_f_op_f32(-1000f - arg_2);
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-401f + -1462f) * _wgslsmith_f_op_f32(max(243f, arg_2)))), 1158f), -1903f, _wgslsmith_f_op_f32(-582f + _wgslsmith_f_op_f32(arg_2 - -536f)), arg_2);
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(arg_0.b.x, ~u_input.b.x), false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, false)), 883f)), 1000f, true)), arg_0.b));
    var var_1 = abs(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x)) << (8626u % 32u)));
    let var_2 = var_0.yxz;
    return _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c, 53872u)), arg_0.b.zz) ^ _wgslsmith_mult_u32(u_input.b.x, u_input.a.x), ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, 4294967295u, 15862u, u_input.c), vec4<u32>(29075u, u_input.c, arg_0.b.x, 67556u)), u_input.c ^ u_input.c)), 32557u);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_3(arg_0.x, arg_3 & select(vec3<u32>(arg_3.x, arg_3.x, ~u_input.a.x), min(vec3<u32>(107691u, arg_3.x, u_input.b.x), u_input.b), select(vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, true, true), arg_1), vec3<bool>(arg_1, arg_1, true))));
    let var_1 = vec2<u32>(u_input.b.x, ~u_input.c >> ((3687u | (u_input.b.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 38423u, 1u, u_input.c), vec4<u32>(arg_3.x, 23672u, 0u, arg_3.x)))) % 32u));
    global0 = array<vec2<i32>, 9>();
    var var_2 = firstTrailingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(~var_0.b.x, max(0u, 4294967295u), func_2(Struct_3(411f, vec3<u32>(0u, 26929u, u_input.a.x)))), u_input.b));
    var var_3 = ((((26090i >> (var_0.b.x % 32u)) << (firstLeadingBit(var_1.x) % 32u)) << (1u % 32u)) & _wgslsmith_div_i32(~(-2147483647i) << (min(0u, var_1.x) % 32u), firstLeadingBit(-1i))) & (i32(-1i) * -41998i);
    return abs(~(_wgslsmith_clamp_u32(var_2.x, 52640u, var_2.x) & ~_wgslsmith_clamp_u32(var_0.b.x, var_1.x, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 20>();
    global0 = array<vec2<i32>, 9>();
    global1 = array<vec3<i32>, 20>();
    var var_0 = 1156f;
    let var_1 = u_input.c;
    var var_2 = vec2<u32>(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-670f, _wgslsmith_f_op_f32(f32(-1f) * -1883f), -483f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2003f, -595f, 1186f) + vec3<f32>(370f, -587f, 291f)))), (true & (60217u > u_input.c)) || true, 529f, u_input.b), ~var_1);
    var var_3 = min(firstLeadingBit(~31828u), var_2.x << (1u % 32u));
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(min(1i, select(1i, ~(-2147483647i), true)), abs(i32(-1i) * -5723i), max(0i, countOneBits(-33903i) >> (u_input.a.x % 32u))), -1i & _wgslsmith_dot_vec2_i32(firstTrailingBit(global0[_wgslsmith_index_u32(~61763u, 9u)]), _wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(var_1, 9u)], vec2<i32>(2147483647i, 21551i)) & _wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(0u, 9u)], vec2<i32>(-11577i, -1i), global0[_wgslsmith_index_u32(var_1, 9u)])), global0[_wgslsmith_index_u32(var_1, 9u)]);
}

