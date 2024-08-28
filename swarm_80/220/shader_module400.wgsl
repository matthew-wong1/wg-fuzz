struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<f32, 12>;

var<private> global2: u32 = 0u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: i32) -> Struct_3 {
    global1 = array<f32, 12>();
    global2 = 100492u;
    var var_0 = !(!(!vec2<bool>(all(vec4<bool>(true, arg_1, arg_1, arg_1)), !arg_1)));
    return Struct_3(_wgslsmith_div_i32(~arg_2 ^ arg_0.x, ~(~reverseBits(u_input.a))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    global0 = array<Struct_1, 14>();
    global2 = ~1u;
    global0 = array<Struct_1, 14>();
    var var_0 = Struct_1(true, arg_2.b.b, any(!(!select(vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(arg_2.b.c, arg_2.b.c, true), true))), arg_2.b.d);
    var var_1 = _wgslsmith_f_op_f32(round(-455f));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(913f)), arg_2.b.d.x));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u >> (firstLeadingBit(u_input.c) % 32u), 12u)] - _wgslsmith_f_op_f32(func_3(func_2(min(vec4<i32>(arg_0, u_input.a, u_input.a, arg_1.x), vec4<i32>(8857i, u_input.b, -1i, 0i)), true, arg_0), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(12104u, 12u)], global1[_wgslsmith_index_u32(u_input.c, 12u)], false))), Struct_2(true, global0[_wgslsmith_index_u32(abs(0u), 14u)], ~u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(13064u, 12u)], global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(u_input.c, 12u)]))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, arg_1.x, arg_0), vec4<i32>(-3979i, -42045i, u_input.b, u_input.a)), firstTrailingBit(vec4<i32>(-2147483647i, arg_1.x, 17796i, arg_1.x)))))));
    global1 = array<f32, 12>();
    global2 = ~(~((u_input.c ^ ~53839u) << (u_input.c % 32u)));
    global2 = u_input.c;
    var var_1 = vec4<u32>(min(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 41405u), firstTrailingBit(vec2<u32>(u_input.c, 0u))), _wgslsmith_sub_u32(1u, u_input.c << (11348u % 32u))), u_input.c), ~u_input.c, ~(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.c), vec3<u32>(u_input.c, 48826u, u_input.c)))), 0u);
    return select(!vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), !(864f < global1[_wgslsmith_index_u32(4294967295u, 12u)]), true || all(vec4<bool>(false, true, false, false))), select(!vec3<bool>(any(vec2<bool>(false, false)), -139f < global1[_wgslsmith_index_u32(7246u, 12u)], 35673u != var_1.x), vec3<bool>(true, true, true), select(true, true, true)), vec3<bool>((var_1.x | _wgslsmith_div_u32(u_input.c, 21971u)) <= 1u, (_wgslsmith_add_i32(u_input.a, arg_1.x) != _wgslsmith_add_i32(u_input.a, -2147483647i)) | true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 12>();
    global1 = array<f32, 12>();
    global1 = array<f32, 12>();
    let var_0 = Struct_1(any(func_1(u_input.b, _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-2147483647i, u_input.b)), ~vec2<i32>(u_input.b, -29428i), ~vec2<i32>(-63i, -40712i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.b, -31i), countOneBits(u_input.a), -1i, u_input.a) | -abs(vec4<i32>(u_input.a, -32915i, 2147483647i, u_input.b)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, u_input.b, u_input.a, -27302i) ^ (vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b) | vec4<i32>(u_input.a, u_input.b, 62614i, -1i)), reverseBits(vec4<i32>(u_input.b, 34751i, u_input.a, 1i)) & -vec4<i32>(u_input.a, u_input.b, -2147483647i, u_input.a), ~vec4<i32>(u_input.b, 1885i, 12585i, 1i))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(123504u, 12u)], -209f, -2191f, 1070f))))));
    let var_1 = var_0.d.x;
    let var_2 = vec2<u32>(86685u, 67803u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1090f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 12u)]), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8496u, 12u)] - global1[_wgslsmith_index_u32(var_2.x, 12u)]), _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(sign(var_0.d.x)))) - var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec4<u32>(5009u & (~8715u | var_2.x), ~u_input.c, ~((var_2.x & u_input.c) << (~7314u % 32u)), ~(~u_input.c)));
}

