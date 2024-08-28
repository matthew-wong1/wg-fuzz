struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: Struct_4;

var<private> global2: i32;

var<private> global3: vec3<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> f32 {
    let var_0 = select(~u_input.a, (u_input.b & ~global1.c) ^ 44842u, false);
    global3 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(min(max(vec3<i32>(arg_1, -11848i, 2147483647i), vec3<i32>(u_input.d, global3.x, -1i)), vec3<i32>(global3.x, global3.x, 2147483647i)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 41333i, 2147483647i), vec3<i32>(arg_1, global3.x, 8537i)), _wgslsmith_mult_vec3_i32(vec3<i32>(21009i, u_input.d, arg_1), vec3<i32>(u_input.c, 12129i, 11175i)), !arg_0.a.zwy));
    let var_1 = _wgslsmith_sub_u32(40905u, 1u);
    global0 = array<Struct_4, 28>();
    let var_2 = ~(~arg_1);
    return global1.a;
}

fn func_2(arg_0: i32) -> vec4<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1623f) + _wgslsmith_f_op_f32(func_3(Struct_5(vec4<bool>(true, true, false, true), _wgslsmith_f_op_f32(f32(-1f) * -322f)), -64038i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1063f)), global1.b.x, any(vec2<bool>(false, false)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + global1.a)))), 138f);
    global1 = global0[_wgslsmith_index_u32(u_input.a, 28u)];
    let var_1 = _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(arg_0, _wgslsmith_clamp_i32(countOneBits(67306i), u_input.d, arg_0))), vec2<i32>(global3.x, ~(i32(-1i) * -11888i)));
    global2 = firstLeadingBit(-(1i & arg_0));
    var var_2 = Struct_5(vec4<bool>(any(vec2<bool>(all(vec3<bool>(true, false, false)), u_input.e.x > u_input.a)), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), all(vec3<bool>(true, all(vec3<bool>(true, false, false)), true)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b.x + var_0.x)))) * _wgslsmith_f_op_f32(-global1.b.x)));
    return vec4<i32>(max(-2147483647i, -u_input.d), ~_wgslsmith_sub_i32(0i, 1i), ~min(_wgslsmith_div_i32(26977i, 67479i), global3.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-5752i, -5227i), ~(reverseBits(vec2<i32>(40213i, -53598i)) | -vec2<i32>(u_input.d, -16328i))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1) -> vec3<f32> {
    global0 = array<Struct_4, 28>();
    var var_0 = arg_1.a << (~arg_1.b % 32u);
    let var_1 = ~(~(~func_2(~arg_1.a)));
    var var_2 = firstLeadingBit(u_input.e);
    var_0 = i32(-1i) * -_wgslsmith_dot_vec3_i32(firstLeadingBit(var_1.www) << (~u_input.e.yww % vec3<u32>(32u)), min(reverseBits(vec3<i32>(arg_1.a, 0i, arg_1.a)), var_1.yxz ^ var_1.xyz));
    return vec3<f32>(1831f, arg_0, -1664f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(-376f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.b.x)), _wgslsmith_f_op_f32(min(-477f, global1.b.x)), _wgslsmith_f_op_f32(exp2(global1.b.x))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(432f, -1000f, -673f), _wgslsmith_f_op_vec3_f32(func_1(global1.b.x, Struct_3(-1i, 4294967295u), Struct_1(global1.b.x, global1.c)))))))), 1u);
    let var_0 = !(!vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.e.x, global1.c), ~u_input.e), u_input.e | (vec4<u32>(global1.c, global1.c, 62543u, 11198u) ^ u_input.e)), select(~_wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, 24681i, -2147483647i, u_input.d) | vec4<i32>(u_input.c, global3.x, global3.x, u_input.d), vec4<i32>(global3.x, 27139i, u_input.c, global3.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(1i, u_input.d, -11913i, 2147483647i) & -vec4<i32>(global3.x, 16647i, 0i, -2147483647i), vec4<i32>(15245i, 0i | global3.x, _wgslsmith_div_i32(global3.x, -1i), 1i)), var_0.x & true), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.e, u_input.e), min(u_input.e, u_input.e)), 633i, global1.a);
}

