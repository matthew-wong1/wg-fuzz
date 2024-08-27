struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 2>;

var<private> global3: array<vec3<u32>, 26>;

var<private> global4: array<Struct_3, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1288f * -186f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))));
    global3 = array<vec3<u32>, 26>();
    global3 = array<vec3<u32>, 26>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, -140f) - arg_0.x);
    let var_1 = -796f;
    return var_0;
}

fn func_2() -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1747f, 1448f))))), -1492f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1696f, -530f, 364f)), global2[_wgslsmith_index_u32(u_input.c.x, 2u)], 11422u))), _wgslsmith_mult_i32(31260i, max(var_0, _wgslsmith_dot_vec3_i32(~vec3<i32>(48633i, 0i, -1i), vec3<i32>(var_0, 35053i, -1i)))), vec4<u32>(~_wgslsmith_dot_vec3_u32(max(u_input.e.wyz, global3[_wgslsmith_index_u32(50476u, 26u)]), vec3<u32>(u_input.e.x, 0u, 64579u)), firstLeadingBit(18479u), abs(~u_input.e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d.x, u_input.a.x, 0u << (u_input.a.x % 32u)), vec3<u32>(u_input.c.x, 1u, 82070u) << ((vec3<u32>(u_input.e.x, u_input.e.x, u_input.a.x) | vec3<u32>(u_input.c.x, u_input.c.x, 50491u)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1915f, 396f, false)))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1493f)));
    global0 = array<Struct_4, 6>();
    let var_3 = ~(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], vec3<u32>(16135u, u_input.e.x, 76593u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(var_1.c.x, 22667u, u_input.c.x)), ~global3[_wgslsmith_index_u32(49419u, 26u)])) >> ((_wgslsmith_dot_vec4_u32(~vec4<u32>(66386u, 55188u, 10564u, 0u), vec4<u32>(85626u, u_input.d.x, 0u, 10663u)) & _wgslsmith_div_u32(1u, firstLeadingBit(var_1.c.x))) % 32u));
    return 1u;
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    return (func_2() | u_input.c.x) | 17431u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<i32>(-57087i, 14881i, u_input.b.x))) << (~vec3<u32>(func_1(false, u_input.b.x), min(u_input.e.x, 4294967295u), u_input.e.x ^ 2201u) % vec3<u32>(32u)));
    let var_1 = vec3<bool>(u_input.c.x < abs(_wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(0u, 0u, 1u, 1u))), !(!(-var_0.x > -var_0.x)), any(select(vec4<bool>(true, any(vec3<bool>(true, true, false)), select(true, true, false), false), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true))));
    let var_2 = abs(abs(reverseBits(-vec4<i32>(var_0.x, 2147483647i, u_input.b.x, -49886i)))) & _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -22862i, -(~u_input.b.x), -27642i), vec4<i32>(_wgslsmith_mult_i32(43265i, -u_input.b.x), u_input.b.x, -select(u_input.b.x, -49522i, false), var_0.x));
    global3 = array<vec3<u32>, 26>();
    let var_3 = global2[_wgslsmith_index_u32(countOneBits(0u), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.yxy, _wgslsmith_f_op_f32(sign(-960f)));
}

