struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: array<i32, 31> = array<i32, 31>(-40889i, 1i, 23276i, i32(-2147483648), 68547i, 1i, 0i, 2147483647i, 0i, i32(-2147483648), 2147483647i, i32(-2147483648), -47564i, -1i, 2147483647i, 1i, 0i, 2147483647i, -1i, 2147483647i, -12180i, 1i, 0i, i32(-2147483648), 2147483647i, 4610i, 2147483647i, 9026i, -4182i, -1i, -5924i);

var<private> global2: array<vec4<bool>, 3>;

var<private> global3: Struct_2;

var<private> global4: array<vec3<i32>, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<u32> {
    global4 = array<vec3<i32>, 30>();
    var var_0 = _wgslsmith_div_vec3_i32(firstLeadingBit(u_input.a.zww), global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(countOneBits(u_input.c.x), max(u_input.c.x, u_input.c.x)), 30u)] | vec3<i32>(_wgslsmith_div_i32(global3.a, global1[_wgslsmith_index_u32(abs(62786u), 31u)]), ~(-2147483647i) ^ global3.a, -2147483647i));
    let var_1 = true;
    global4 = array<vec3<i32>, 30>();
    let var_2 = vec3<i32>(2147483647i, ~min(_wgslsmith_div_i32(-global1[_wgslsmith_index_u32(30035u, 31u)], global3.a), 15531i), firstTrailingBit(-33783i | _wgslsmith_add_i32(2147483647i, global3.a)));
    return ~(~u_input.c);
}

fn func_2() -> u32 {
    var var_0 = 1i;
    global1 = array<i32, 31>();
    var var_1 = Struct_4(Struct_1(_wgslsmith_clamp_vec3_u32(~u_input.c, vec3<u32>(1u, abs(u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)))), 27159u);
    global2 = array<vec4<bool>, 3>();
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(~func_3(_wgslsmith_f_op_f32(-186f - -1381f)), var_1.a.a & _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.a.a, u_input.c), vec3<u32>(u_input.c.x, var_1.a.a.x, 36682u)), _wgslsmith_clamp_vec3_u32(var_1.a.a, ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.a.x, 0u, u_input.c.x), vec3<u32>(u_input.c.x, 0u, 72505u)), func_3(_wgslsmith_div_f32(1066f, -1407f)))));
    return u_input.c.x;
}

fn func_1() -> u32 {
    global1 = array<i32, 31>();
    let var_0 = Struct_1(_wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(abs(u_input.c), ~u_input.c), u_input.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-443f - 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(231f, 2703f)) * _wgslsmith_f_op_f32(702f - -323f)) + _wgslsmith_div_f32(-337f, _wgslsmith_div_f32(-1878f, -315f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 397f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(705f)) + 429f)), -1000f)));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = u_input.b | ~abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_div_i32(global3.a, 2147483647i)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec3_i32(reverseBits(u_input.a.yxw | vec3<i32>(1i, global3.a, global1[_wgslsmith_index_u32(0u, 31u)])), max(global4[_wgslsmith_index_u32(74926u, 30u)], u_input.a.yxw), countOneBits(~u_input.a.xxy) & countOneBits(abs(vec3<i32>(global3.a, u_input.b, -46810i))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(u_input.c, ~vec3<u32>(func_1(), ~0u, min(u_input.c.x, u_input.c.x))));
    let var_2 = ~(vec3<u32>(abs(u_input.c.x), _wgslsmith_div_u32(~u_input.c.x, u_input.c.x), ~var_1.a.x) >> ((~abs(vec3<u32>(14559u, 0u, u_input.c.x)) | (abs(var_1.a) >> (select(u_input.c, vec3<u32>(var_1.a.x, u_input.c.x, 4294967295u), vec3<bool>(false, true, false)) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global1 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yzz, -global3.a, countOneBits(u_input.c.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-122f)) - -702f), vec4<u32>(var_1.a.x, ~abs(u_input.c.x ^ 36376u), ~u_input.c.x, u_input.c.x));
}

