struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32> = vec3<u32>(14439u, 12056u, 19028u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32) -> vec2<f32> {
    let var_0 = ~(~vec3<i32>(-arg_2, -49020i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_2, -19736i), vec3<i32>(1i, arg_2, -1i))) ^ -max(vec3<i32>(arg_2, arg_2, arg_2), vec3<i32>(arg_2, 2147483647i, -56694i)));
    let var_1 = max(38634u, min(~(global1.x ^ 38254u), _wgslsmith_dot_vec4_u32(u_input.a << (vec4<u32>(4294967295u, 4294967295u, 30149u, 16241u) % vec4<u32>(32u)), min(~vec4<u32>(1u, global1.x, u_input.a.x, 20314u), u_input.a))));
    global0 = Struct_1(global0.a, global0.b);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1182f)));
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(select(-394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1671f)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b.x * -1052f), 960f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(false), vec2<bool>(false, true), firstLeadingBit(1i))) - vec2<f32>(1000f, -167f))));
    let var_0 = !arg_0.a;
    global1 = _wgslsmith_clamp_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, u_input.a.x, global1.x) | vec3<u32>(u_input.a.x, u_input.a.x, 25539u), u_input.a.xxy) << (u_input.a.wxz % vec3<u32>(32u))), ~(~vec3<u32>(27142u, min(32511u, global1.x), 57885u)), ~u_input.a.wxz);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(all(vec2<bool>(true, true))), !vec2<bool>(true && var_0, all(vec3<bool>(var_0, true, true))), _wgslsmith_div_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -2147483647i, 0i), vec4<i32>(0i, -43798i, -44338i, -3613i)), select(-32438i, 33007i, true), arg_0.a), abs(_wgslsmith_clamp_i32(1350i, -28128i, 2147483647i))))).x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -707f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-701f, global0.b.x)) * -681f)), _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(474f - -563f))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-764f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206f * _wgslsmith_f_op_f32(ceil(769f)))), -1017f));
    return vec3<bool>(all(vec2<bool>(select(true, !var_0, true), !(global1.x >= u_input.a.x))), true, 23496u < _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), global1.yy & global1.xz), vec2<u32>(42265u | global1.x, 22720u)));
}

fn func_1() -> bool {
    let var_0 = !func_2(Struct_2(true));
    var var_1 = Struct_5(~1u);
    var_1 = Struct_5(abs(global1.x));
    let var_2 = 1i;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(554f, -442f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f)), global0.a))));
    return var_0.x;
}

fn func_4(arg_0: vec4<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(-1i, 1i), vec2<i32>(26530i, 2147483647i)), firstTrailingBit(vec2<i32>(-2147483647i, 37657i))), vec2<i32>(1i, _wgslsmith_mult_i32(16530i, -14747i))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 41033i, -2147483647i), vec4<i32>(23294i, -1i, 12156i, 0i)))), vec2<i32>(1i, 1i)), 49272i ^ _wgslsmith_add_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-1i, -2147483647i))), -(i32(-1i) * -2147483647i)));
    var var_1 = ~_wgslsmith_add_vec4_i32(~abs(-vec4<i32>(var_0, var_0, var_0, var_0)), ~(~(-vec4<i32>(-51513i, var_0, 7092i, var_0))));
    global0 = Struct_1(global0.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-532f, global0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 313f)) - global0.b), true))));
    let var_2 = vec2<i32>(var_0, firstTrailingBit(_wgslsmith_add_i32(10991i, _wgslsmith_clamp_i32(var_0 >> (global1.x % 32u), var_0, var_0))));
    let var_3 = Struct_4(arg_0.x);
    return StorageBuffer(var_2.x, vec3<f32>(global0.a, _wgslsmith_f_op_vec2_f32(func_3(Struct_2(any(vec3<bool>(true, arg_0.x, arg_0.x))), vec2<bool>(true, true), var_0)).x, global0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec4<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(any(vec4<bool>(false, true, true, true)), false, true, true)), !func_1(), !(func_2(Struct_2(false)).x & all(vec3<bool>(false, false, false)))));
}

