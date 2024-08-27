struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 4294967295u, 1u, 71219u);

var<private> global2: Struct_2 = Struct_2(1491f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global2 = Struct_2(_wgslsmith_f_op_f32(abs(global2.a)));
    var var_0 = vec3<bool>(false, !any(vec2<bool>(u_input.a > -26051i, true)), !(!select(all(vec3<bool>(true, false, false)), true, true)));
    let var_1 = global2.a;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~global1.yz, arg_0.zx), arg_0.x), 15u)];
    var var_3 = -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(20810i, 20470i, u_input.a, u_input.b)), ~_wgslsmith_add_vec4_i32(vec4<i32>(13203i, 41672i, u_input.a, u_input.a), vec4<i32>(u_input.b, 21804i, u_input.a, u_input.b))), abs(vec4<i32>(1i, ~17740i, i32(-1i) * -30371i, u_input.b)));
    return 0u;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    let var_0 = -_wgslsmith_mod_i32(9811i, i32(-1i) * -u_input.a);
    global1 = vec4<u32>(abs(~_wgslsmith_dot_vec2_u32(reverseBits(global1.zy), global1.zw & global1.yz)), firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, global1.x, ~global1.x), ~abs(~global1.zwy)), 34300u);
    global0 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(524f, 2004f)) + _wgslsmith_f_op_f32(step(1434f, -1000f))) * arg_0.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.xz + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.wx - vec2<f32>(-1000f, 1746f)), _wgslsmith_f_op_vec2_f32(ceil(arg_1.wz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zx)))));
    return arg_1.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_0.x, 15u)];
    global1 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, ~global1.x, func_2(vec4<u32>(0u, arg_0.x, 4294967295u, 33617u)), ~4294967295u >> (global1.x % 32u)), ~(~(~vec4<u32>(12716u, 0u, global1.x, 0u)))) >> (((vec4<u32>(_wgslsmith_dot_vec3_u32(global1.zzz, global1.yxz), 53641u, 73103u, firstLeadingBit(global1.x)) & vec4<u32>(54501u, _wgslsmith_mult_u32(arg_0.x, arg_0.x), 1u, 1u)) << ((_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, global1.x, 38722u, global1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(10952u, 0u, 4294967295u, global1.x), vec4<u32>(26061u, 0u, 10100u, global1.x))) & ~(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 1u) ^ vec4<u32>(82738u, 0u, arg_0.x, 2118u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-1595f * _wgslsmith_f_op_f32(func_3(Struct_4(global2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, -1880f, -1103f, var_0.a), vec4<f32>(global2.a, 1585f, global2.a, 123f)))), vec2<i32>(-6761i, -2147483647i) ^ -vec2<i32>(0i, arg_2), 10863i))));
    let var_2 = all(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(false, true), false))) && ((var_0.a < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.a.a, arg_1.a.a))))) && false);
    global0 = array<Struct_2, 15>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 15>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_1 = vec3<i32>(u_input.b, 0i, -2147483647i) & vec3<i32>(1i, (-1i ^ u_input.b) >> (1u % 32u), _wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.b, u_input.a), func_1(select(vec2<u32>(global1.x, 1u), global1.xy, vec2<bool>(true, true)), Struct_3(Struct_2(global2.a)), u_input.b)));
    var var_2 = Struct_4(1000f);
    let var_3 = _wgslsmith_mult_u32(~global1.x, ~global1.x);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a, global2.a) - _wgslsmith_f_op_f32(865f - -455f)))), _wgslsmith_f_op_f32(825f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + -1000f) - _wgslsmith_f_op_f32(round(var_2.a))))), _wgslsmith_f_op_f32(select(global2.a, 349f, false)));
    let var_5 = Struct_3(Struct_2(2206f));
    var var_6 = 40302u;
    let var_7 = ~var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global2.a, -532f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(474f + 237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-602f)) - 467f))), var_0.a, -994f);
}

