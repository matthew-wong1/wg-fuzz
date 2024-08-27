struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(28182u, 0u, 53408u, 27513u);

var<private> global1: array<f32, 23>;

var<private> global2: Struct_3;

var<private> global3: vec2<f32> = vec2<f32>(1000f, 1384f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> u32 {
    global1 = array<f32, 23>();
    return min(~u_input.c.x, ~_wgslsmith_div_u32(global0.x, _wgslsmith_clamp_u32(63451u, global0.x, _wgslsmith_sub_u32(u_input.b.x, 4294967295u))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_2(max(~29899u, global0.x << (max(1u, reverseBits(u_input.c.x)) % 32u)), (~0u ^ (~global2.a << ((global2.a ^ global2.a) % 32u))) >= _wgslsmith_dot_vec2_u32(global0.zw << (~vec2<u32>(1u, 0u) % vec2<u32>(32u)), vec2<u32>(~0u, ~4294967295u)), vec2<u32>(arg_1.a, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(4294967295u, global2.a))), -1i);
    var var_1 = var_0.b;
    global1 = array<f32, 23>();
    let var_2 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(var_0.d), -4260i, 2147483647i), -_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(6011i, 582i, var_0.d), vec3<i32>(arg_1.d, 2147483647i, 20655i)), vec3<i32>(0i, -2147483647i, var_0.d), -vec3<i32>(-2147483647i, arg_1.d, 20096i)), select(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 2147483647i, arg_1.d), vec3<i32>(8282i, 6861i, -2147483647i))), min(countOneBits(vec3<i32>(-2147483647i, global2.d, arg_1.d)), -vec3<i32>(var_0.d, var_0.d, 2147483647i)), vec3<bool>(arg_0.x, all(vec4<bool>(true, true, var_0.b, false)), arg_0.x)));
    global3 = vec2<f32>(1f, global2.b);
    return global2.d;
}

fn func_1() -> StorageBuffer {
    let var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(-global2.d, _wgslsmith_add_i32(16946i, global2.d)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global2.d, 0i), 0i), ~global2.d, global2.d)) ^ vec4<i32>(-global2.d, func_3(vec3<bool>(true, true, true), Struct_3(func_2(), global2.b, _wgslsmith_f_op_f32(abs(-1219f)), global2.d)), global2.d, global2.d);
    global2 = Struct_3(u_input.c.x, global2.c, _wgslsmith_div_f32(1076f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f - 916f)))), i32(-1i) * -42002i);
    let var_1 = ~27915u & global0.x;
    global1 = array<f32, 23>();
    global3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 23u)]), global3.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(254f, -243f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, global1[_wgslsmith_index_u32(global2.a, 23u)]) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 23u)], 3108f))))), vec2<f32>(212f, -889f), func_2() > reverseBits(69105u)));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(622u), 23u)]) * -145f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.x, 499f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1209f, global2.c)), vec2<bool>(true, true)))))), 0u, firstTrailingBit(vec2<i32>(~global2.d, 1i)), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -124f), 253f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 484f) + vec2<f32>(583f, global2.b))))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1176f));
    let x = u_input.a;
    s_output = func_1();
}

