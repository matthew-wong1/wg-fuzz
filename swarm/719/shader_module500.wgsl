struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 23>;

var<private> global2: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = select(u_input.b, ~(~u_input.b ^ ~(u_input.e | vec3<i32>(u_input.e.x, u_input.b.x, u_input.b.x))), arg_0.x);
    var var_1 = ~arg_2.x >> (0u % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-2041f - arg_1.x), arg_1.x, -637f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -682f, arg_1.x))), arg_0.x))), vec2<f32>(arg_1.x, 999f), _wgslsmith_dot_vec4_i32(vec4<i32>(-32779i, u_input.b.x >> (~u_input.d.x % 32u), _wgslsmith_dot_vec3_i32(u_input.e, -u_input.e), -u_input.b.x | ~(-32112i)), _wgslsmith_div_vec4_i32(vec4<i32>(-49529i, _wgslsmith_dot_vec3_i32(var_0, var_0), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -56532i, u_input.e.x, -1i), vec4<i32>(-56322i, -32119i, u_input.b.x, -2147483647i))), ~(-vec4<i32>(-20569i, 49736i, var_0.x, 2147483647i)))), ~var_0.x);
    let var_3 = ~_wgslsmith_mult_u32(u_input.c << (4294967295u % 32u), select(_wgslsmith_sub_u32(max(4294967295u, u_input.c), 32549u >> (u_input.d.x % 32u)), _wgslsmith_add_u32(reverseBits(u_input.a.x), ~4294967295u), !all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))));
    var var_4 = (_wgslsmith_dot_vec4_u32(reverseBits(~u_input.a), abs(u_input.a) | vec4<u32>(var_3, u_input.d.x, 40331u, u_input.d.x)) >> (~(~1u) % 32u)) | _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(max(arg_2.x, u_input.a.x), u_input.d.x), u_input.d.x), ~arg_2.x);
    return _wgslsmith_f_op_f32(var_2.b.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), arg_1.x));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-879f + arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec3<bool>(any(vec3<bool>(false, true, false)), true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b)), u_input.a.xw))))));
    global2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, ~arg_0), 1u), 17096u);
    var var_2 = arg_2;
    global0 = _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f) * _wgslsmith_f_op_f32(select(arg_2.a.x, 1290f, true))));
    return vec4<u32>(u_input.a.x, 7794u << (_wgslsmith_mult_u32(1u, ~arg_0) % 32u), u_input.c, 0u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(ceil(-531f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.b.b.x, arg_2.b.a.x), _wgslsmith_f_op_f32(-arg_2.a))), -111f)));
    global2 = firstTrailingBit(u_input.a.x);
    global0 = _wgslsmith_f_op_f32(arg_3 * -1015f);
    let var_1 = vec3<bool>(false, false, false && !var_0);
    var var_2 = _wgslsmith_mod_vec4_u32(func_2(~countOneBits(34906u), arg_3, arg_2.b), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a), vec4<u32>(~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(arg_0.x, 23u)], global1[_wgslsmith_index_u32(10542u, 23u)]), ~max(8672u, u_input.d.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 0u), abs(_wgslsmith_clamp_u32(28293u, u_input.c, u_input.d.x)))));
    return _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(62990i, -2302i), ~_wgslsmith_sub_i32(~u_input.b.x, -22728i), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>(2147483647i, -2147483647i ^ func_1(u_input.d.xy, vec3<i32>(u_input.e.x, 0i, u_input.e.x), Struct_2(988f, Struct_1(vec3<f32>(-1123f, -1477f, -1000f), vec2<f32>(448f, -651f), -2147483647i, u_input.e.x)), -1679f), countOneBits(-42705i)), vec3<i32>(-u_input.b.x, 29644i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.e)) & select(vec3<i32>(u_input.e.x, u_input.e.x, u_input.b.x), vec3<i32>(u_input.b.x, 1i, -2147483647i), true), false) | _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.b.x >> (4294967295u % 32u), u_input.e.x, _wgslsmith_div_i32(-34035i, u_input.b.x)), vec3<i32>(~u_input.b.x, 8787i, -2147483647i | (u_input.b.x | -14498i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1180f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, 53399u >= u_input.d.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2474f), -1814f), firstLeadingBit(u_input.a.yz))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-332f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1565f * -169f)), any(vec4<bool>(true, true, false, false))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 356f) * vec2<f32>(421f, 658f)), ~u_input.d.zx)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_div_f32(var_1.x, -365f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_div_f32(var_1.x, 282f), _wgslsmith_f_op_f32(var_1.x - 121f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - -188f) - var_1.x)), -_wgslsmith_mod_i32(0i, max(1i, ~23187i)), _wgslsmith_dot_vec2_i32(vec2<i32>(select(_wgslsmith_div_i32(u_input.e.x, var_0.x), _wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.zx), true), var_0.x), -firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.b.yx, u_input.b.yx))));
    global0 = var_2.a.x;
    let var_3 = !(!(!(1i <= firstLeadingBit(var_2.d))));
    global0 = _wgslsmith_f_op_f32(step(var_2.a.x, var_1.x));
    let var_4 = u_input.b;
    let var_5 = !var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-14644i, 32544u);
}

