struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<vec3<bool>, 13>;

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    global0 = array<Struct_2, 31>();
    var var_0 = vec3<bool>(true, false, true);
    return ~67763u;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_2 {
    global1 = array<vec3<bool>, 13>();
    var var_0 = u_input.b.x;
    global0 = array<Struct_2, 31>();
    global1 = array<vec3<bool>, 13>();
    var var_1 = arg_1;
    return global0[_wgslsmith_index_u32(abs(32586u), 31u)];
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<i32>) -> vec3<u32> {
    var var_0 = ~(u_input.d ^ arg_0);
    let var_1 = select(false, any(!global1[_wgslsmith_index_u32(u_input.d, 13u)]), true || any(vec3<bool>(true, true, true)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - vec3<f32>(arg_1.x, arg_1.x, 425f)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, 881f), vec3<f32>(arg_1.x, arg_1.x, arg_1.x)), true || var_1)) + vec3<f32>(_wgslsmith_f_op_f32(787f + arg_1.x), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))), ~(vec2<u32>(arg_0, 4294967295u) | (vec2<u32>(113965u, arg_0) | vec2<u32>(1u, 0u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, var_1)), -264f, arg_1.x))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f * arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) + arg_1.x), arg_1.x)), ~firstTrailingBit(vec3<u32>(u_input.c, arg_0, u_input.d) >> (min(vec3<u32>(4294967295u, 42882u, 0u), vec3<u32>(u_input.d, arg_0, 4294967295u)) % vec3<u32>(32u))), 428f);
    let var_3 = ~abs(u_input.b);
    var var_4 = func_2(-388f, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, -1237f) * 1000f)), select(var_1, any(!global1[_wgslsmith_index_u32(arg_0 & var_2.c.x, 13u)]), true), ~var_2.c.x);
    return max(countOneBits(var_2.c), ~_wgslsmith_mod_vec3_u32(abs(var_2.c), vec3<u32>(arg_0, 4294967295u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-13716i, 2147483647i, max(abs(max(-1i, ~5647i)), -3236i ^ (u_input.a.x << (~u_input.d % 32u))));
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1162f))), 409f, false || (func_1(Struct_2(vec3<f32>(251f, -684f, 727f), Struct_1(vec3<f32>(-267f, -1000f, -768f), vec2<u32>(u_input.c, 13825u))), ~vec4<u32>(u_input.c, u_input.d, 21278u, u_input.c)) > u_input.c), u_input.c);
    global0 = array<Struct_2, 31>();
    global2 = true;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.x) + _wgslsmith_f_op_f32(1341f - 204f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1354f) - var_1.b.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1721f, var_1.b.a.x), _wgslsmith_div_f32(724f, var_1.b.a.x), var_1.b.a.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, var_1.a.x, var_1.b.a.x))), true)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-256f + _wgslsmith_f_op_f32(-var_1.b.a.x)) + -1049f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2024f, var_1.b.a.x))), any(vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(func_3(0u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-781f, 1000f))), u_input.a), _wgslsmith_sub_vec3_u32(func_3(4294967295u, var_1.b.a.yz, vec2<i32>(var_0.x, 1i)), reverseBits(vec3<u32>(u_input.c, u_input.d, 55366u))))).b);
    global0 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(var_0.x, -32870i), ~abs(reverseBits(u_input.a.x)), u_input.a.x));
}

