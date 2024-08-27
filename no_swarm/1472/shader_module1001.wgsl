struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
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

var<private> global1: u32;

var<private> global2: f32;

var<private> global3: bool;

var<private> global4: Struct_2;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global0 = array<Struct_2, 15>();
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(0u ^ (global4.c.a.x >> (_wgslsmith_clamp_u32(1u, 4294967295u, arg_0.x ^ global4.c.a.x) % 32u)), 15u)], select(!vec4<bool>(false, all(vec2<bool>(true, true)), true, all(vec2<bool>(true, false))), select(vec4<bool>(any(vec4<bool>(true, true, false, true)), select(true, true, false), any(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, global4.d <= global4.d, all(vec3<bool>(false, true, false))), true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))))));
    global1 = ~(~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.x, var_0.a.a), 1u)));
    var var_1 = countOneBits((i32(-1i) * -1i) >> (_wgslsmith_sub_u32(~reverseBits(1u), _wgslsmith_clamp_u32(reverseBits(var_0.a.a), global4.a, 1u)) % 32u));
    var_1 = _wgslsmith_sub_i32(15958i, u_input.a.x);
    return ~min(4294967295u, global4.a);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.zxw | -u_input.b.yxw, ~vec3<i32>(~u_input.b.x, -global4.d, abs(18668i)), firstLeadingBit(u_input.a.wyw)), u_input.b.xwy);
    let var_1 = global4.c.a.x;
    global1 = ~global4.c.a.x << ((func_3(global4.c.a.yy) | select(global4.c.a.x, max(4294967295u, global4.a), true)) % 32u);
    global1 = ~(~func_3(~global4.c.a.yz));
    var_0 = -firstLeadingBit(u_input.b.xxz);
    return max(max(_wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a, global4.a, global4.c.a.x, 0u), vec4<u32>(19716u, 41575u, global4.a, 29063u))), 0u), max(global4.a >> (1u % 32u), 3178u)), global4.c.a.x);
}

fn func_1(arg_0: u32) -> u32 {
    global1 = firstTrailingBit(func_2() << (((~global4.a ^ 44533u) << (20279u % 32u)) % 32u));
    var var_0 = vec4<f32>(1027f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(483f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1611f + global4.c.c.x)))), 1393f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-674f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x + global4.c.c.x) * _wgslsmith_div_f32(global4.c.c.x, global4.b.x)))), global4.c.b);
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, 16358u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 48798u, arg_0, arg_0), vec4<u32>(73188u, arg_0, 1u, global4.c.a.x)))), 15u)], !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), false)));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(666f, var_1.a.b.x))));
    return ~(~global4.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32((countOneBits(func_1(31148u)) & global4.c.a.x) & 4294967295u, 15u)], !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)))));
    var var_1 = var_0.a.a;
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.d ^ ~global4.d, u_input.b.x), u_input.b.xw) ^ -reverseBits(1765i);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1570f, 1078f)), _wgslsmith_f_op_f32(f32(-1f) * -1683f));
    let var_3 = var_0.b.xzz;
    var var_4 = -679f;
    global2 = global4.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(912f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1649f))) - global4.c.c.x), -241f);
}

