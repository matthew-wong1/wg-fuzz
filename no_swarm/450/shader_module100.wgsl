struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: u32;

var<private> global3: array<vec4<u32>, 29>;

var<private> global4: u32 = 1u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(abs(global1.a), _wgslsmith_div_vec2_u32(~global1.b, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(8795u, global1.a), ~global1.c.x), vec2<u32>(global1.e ^ 27536u, 1u))), select(_wgslsmith_add_vec2_u32(global1.b, vec2<u32>(global1.a, global1.c.x) << (global1.b % vec2<u32>(32u))) | global1.b, global1.c, false), u_input.c | 29599i, (max(152308u, 11776u & global1.c.x) & _wgslsmith_sub_u32(global1.c.x | 7388u, 6780u)) >> (max(23584u, global1.e) % 32u));
    global0 = vec4<f32>(-346f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1152f)))))));
    global2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, max(global1.e & 1039u, abs(4294967295u)) >> (global1.c.x % 32u)), global1.b.x << (~16009u % 32u));
    let var_1 = !select(select(true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), any(vec3<bool>(false, false, false)) & true), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), true);
    global4 = 38707u;
    return _wgslsmith_mult_vec2_u32(var_0.c, ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global1.c.x) << (global1.b % vec2<u32>(32u)), global1.b) ^ ~global1.b);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(global1.e, global1.b, countOneBits(vec2<u32>(4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(6385u, 1u), abs(global1.e)))), global1.d, global1.a);
    var var_1 = 1u;
    var var_2 = u_input.a;
    var var_3 = vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0.d, global1.d, global1.d) << (~vec4<u32>(global1.b.x, global1.b.x, 1u, global1.b.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(u_input.a << (vec4<u32>(var_0.a, var_0.b.x, 27120u, var_0.e) % vec4<u32>(32u)), vec4<i32>(1i, var_0.d, var_2.x, global1.d))), -_wgslsmith_dot_vec2_i32(-var_2.xw, -vec2<i32>(-2147483647i, 41543i)), -2147483647i, countOneBits(abs(~(-74361i))));
    var var_4 = Struct_1(4294967295u, vec2<u32>(~(~67044u), 14470u) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.a, 1u, 0u, global1.a), global3[_wgslsmith_index_u32(1u, 29u)]), firstTrailingBit(global3[_wgslsmith_index_u32(var_0.a, 29u)])), 1u) % vec2<u32>(32u)), func_3(), global1.d, _wgslsmith_clamp_u32(~0u, global1.e, global1.a));
    return Struct_1(~countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, 0u, var_4.b.x), vec3<u32>(40408u, global1.b.x, 47029u))), vec2<u32>(firstTrailingBit(min(global1.e, 1u)) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(18683u, global1.c.x), var_0.b) % 32u), 1u), var_0.b, global1.d | ~(-39603i), _wgslsmith_dot_vec2_u32(~min(~vec2<u32>(1u, var_0.e), global1.b), var_4.c));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = ~vec4<u32>(global1.e, max(global1.a, global1.b.x | 0u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15171u, 0u), vec3<u32>(global1.a, global1.c.x, global1.c.x)) ^ global1.e), _wgslsmith_sub_u32(1u, global1.c.x));
    var var_1 = func_2(!vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), (global0.x == arg_0.x) | false), arg_0.x);
    let var_2 = u_input.a;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(363f, global0.x, 272f, 512f), vec4<f32>(global0.x, arg_0.x, -465f, arg_0.x)), vec4<f32>(1812f, arg_0.x, -2923f, 391f))))));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_2.x | 1i, 29318i | var_1.d, _wgslsmith_add_i32(var_1.d, 2147483647i)), -2147483647i, 0i), u_input.b) << (_wgslsmith_div_u32(min(abs(~var_1.b.x), ~(~global1.b.x)), 12394u) % 32u);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1.b.x;
    var var_0 = -((u_input.a.wzw & u_input.b) ^ vec3<i32>(u_input.a.x, 1i, -1i));
    let var_1 = Struct_1(global1.a, global1.c, ~vec2<u32>(~_wgslsmith_mult_u32(global1.c.x, global1.e), global1.c.x), ~_wgslsmith_div_i32(min(_wgslsmith_div_i32(u_input.c, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 0i, global1.d), u_input.a.zyy)), func_1(global0.yz)), 4294967295u);
    var var_2 = max(select((vec4<u32>(0u, global1.e, 1u, 1u) & vec4<u32>(67002u, global1.e, var_1.b.x, global1.e)) | vec4<u32>(var_1.e, ~4294967295u, _wgslsmith_sub_u32(19836u, var_1.a), 23296u), abs(~vec4<u32>(0u, 31025u, 30626u, 1u)), true), ~(firstLeadingBit(~global3[_wgslsmith_index_u32(63017u, 29u)]) | abs(global3[_wgslsmith_index_u32(reverseBits(global1.b.x), 29u)])));
    let var_3 = var_1;
    global1 = func_2(vec2<bool>(true, true), -151f);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(468f, 701f)))), global0.x, 235f), global3[_wgslsmith_index_u32(~var_3.c.x, 29u)], -1534f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * global0.x))), 1526i);
}

