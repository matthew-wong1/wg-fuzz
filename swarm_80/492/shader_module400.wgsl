struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    return 11823u;
}

fn func_1() -> u32 {
    var var_0 = vec4<i32>(~1i, 1i, _wgslsmith_sub_i32(min(countOneBits(~(-28885i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 1i, 1i, 56732i), -vec4<i32>(u_input.a, -1i, 3279i, u_input.b))), 2147483647i), abs(u_input.b));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1792f), -975f);
    global0 = true;
    global0 = all(vec3<bool>(!all(vec2<bool>(true, true)), !select(true, any(vec4<bool>(true, false, false, true)), true), false));
    global2 = array<Struct_1, 9>();
    return func_2(global2[_wgslsmith_index_u32(~(~73464u), 9u)], ~var_0.x);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    var var_0 = 4294967295u;
    var_0 = 96529u | select(_wgslsmith_div_u32(42183u, 54157u), _wgslsmith_mod_u32(firstLeadingBit(firstTrailingBit(40365u)), 0u), true);
    global1 = array<Struct_1, 16>();
    let var_1 = global2[_wgslsmith_index_u32(~70498u, 9u)];
    let var_2 = -_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, -41623i, u_input.b)), vec3<i32>(2147483647i, u_input.a, u_input.a)), ~vec3<i32>(abs(3249i), 1i, min(u_input.c.x, -1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(750f + arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a;
    var var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(36029u, 1u), ~vec2<u32>(28425u, 45047u)) >> (107182u % 32u), ~(~func_1())));
    var var_2 = _wgslsmith_f_op_f32(-2262f * 894f);
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(~26571u, ~var_1.a), var_1.a), ~vec2<u32>(39628u, ~_wgslsmith_add_u32(var_1.a, 89365u)));
    var var_4 = (0i ^ u_input.c.x) >> (26735u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec2<u32>(1u, var_3.x), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, var_1.a) | var_3, vec2<u32>(var_1.a, 18690u)) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, var_1.a), vec2<u32>(4294967295u, var_1.a)) % vec2<u32>(32u))), ~(~(~12444u) & var_1.a), _wgslsmith_f_op_f32(-437f + 156f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(319f)) + 1376f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)), _wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-144f, -1250f) + vec2<f32>(-195f, -2063f)), var_1.a >= 1u)), -2254f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1720f, 196f, 299f) - vec4<f32>(1842f, -132f, 274f, -610f)))) + vec4<f32>(_wgslsmith_f_op_f32(step(-1203f, 711f)), _wgslsmith_f_op_f32(287f - 888f), 303f, _wgslsmith_f_op_f32(-104f + -1075f)))));
}

