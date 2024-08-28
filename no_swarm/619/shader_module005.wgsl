struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 3952i);

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32) -> u32 {
    return reverseBits(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), select(max(vec2<u32>(u_input.b, 11113u), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, u_input.b), true))));
}

fn func_2() -> i32 {
    var var_0 = u_input.a;
    let var_1 = ~(-(vec2<i32>(-1i) * -(var_0.xy << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)))));
    var_0 = -(-_wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(11155i, -13066i, -17661i))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(28111u, reverseBits(u_input.b), ~u_input.b), select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.b, 24138u), false) | max(vec3<u32>(0u, 9202u, 1u), vec3<u32>(0u, u_input.b, u_input.b))) % vec3<u32>(32u)));
    global1 = vec2<i32>(-max(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 546i), vec2<i32>(-66102i, global1.x)), -_wgslsmith_sub_i32(-1i, 1i)), countOneBits(-40968i));
    var var_2 = _wgslsmith_dot_vec3_i32(u_input.a, firstTrailingBit(_wgslsmith_div_vec3_i32(u_input.a, -u_input.a ^ -u_input.a)));
    return -5163i;
}

fn func_3() -> f32 {
    let var_0 = (~u_input.b << (13433u % 32u)) < _wgslsmith_add_u32(~func_1(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)), u_input.b);
    var var_1 = ~(~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(18724u, 11974u, 1u, 887u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(66295u, 0u, 4294967295u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))) >> (vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(950f * -1541f) - _wgslsmith_f_op_f32(f32(-1f) * -606f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f + -1143f)))) + _wgslsmith_f_op_f32(ceil(-749f)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> i32 {
    global1 = abs(select(vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(arg_0.x), ~(-2147483647i)), ~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, 1184i, -17197i))), arg_0, false));
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 31u)];
    let var_1 = Struct_1(arg_1.b.zxy, vec3<bool>(var_0.b.x, !(53422i <= arg_0.x), !(u_input.b < u_input.b) || false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.b.x)), _wgslsmith_f_op_f32(-207f * var_0.c))))));
    let var_2 = arg_1;
    var var_3 = vec2<bool>(var_1.b.x, var_1.b.x);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -70606i;
    let var_0 = vec2<u32>(u_input.b, firstLeadingBit(abs(func_1(u_input.b) & countOneBits(53237u))));
    global1 = vec2<i32>(-func_2(), -global1.x);
    global0 = u_input.a.x;
    var var_1 = _wgslsmith_div_i32(func_4(-reverseBits(vec2<i32>(0i, -1i)), Struct_2(_wgslsmith_f_op_f32(-131f * 385f), vec4<f32>(1518f, 558f, 478f, 1428f), _wgslsmith_f_op_f32(func_3()))), u_input.a.x) >= abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_sub_i32(-6824i, global1.x)), u_input.a.x));
    var var_2 = global2[_wgslsmith_index_u32(19183u, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(~8736u);
}

