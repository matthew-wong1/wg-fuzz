struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

var<private> global3: array<vec2<u32>, 32>;

var<private> global4: array<Struct_1, 17>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a.x + -1033f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.x)))));
    let var_1 = (_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(abs(global2.yz), reverseBits(vec2<u32>(u_input.a.x, global2.x)))) | firstLeadingBit(~4294967295u)) ^ 0u;
    return abs(6293i);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global1.a);
    global4 = array<Struct_1, 17>();
    let var_1 = arg_1.x;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(global1.a.x * arg_0.a.x), 1000f));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = arg_0.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a + _wgslsmith_f_op_vec3_f32(-arg_1.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3(global4[_wgslsmith_index_u32(23253u, 17u)], vec3<bool>(true, false, arg_1.e.x), 1i)), vec3<f32>(global1.a.x, global1.a.x, arg_1.a.x))))), ~u_input.a.x, arg_2, select(func_1() | 0i, arg_1.d, false), vec2<bool>(false, !(min(-1i, global1.d) != (i32(-1i) * -1i))));
    let var_2 = !vec3<bool>(global1.e.x, arg_1.e.x, false);
    var var_3 = global4[_wgslsmith_index_u32(abs(u_input.a.x), 17u)];
    global1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_3.c.x, countOneBits(~0u)), 17u)];
    return _wgslsmith_sub_vec3_i32(max(_wgslsmith_div_vec3_i32(~(-vec3<i32>(global1.d, var_1.d, -11438i)), -vec3<i32>(global1.d, 0i, var_3.d) & vec3<i32>(var_1.d, var_1.d, var_1.d)), vec3<i32>(1i, _wgslsmith_clamp_i32(arg_1.d, 2147483647i, -44245i), abs(-var_3.d))), abs(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_1.d, -2147483647i, arg_1.d)) << ((vec3<u32>(var_1.c.x, global2.x, 66634u) & vec3<u32>(4294967295u, arg_1.b, var_3.c.x)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -670i, -1i) ^ vec3<i32>(var_3.d, var_1.d, 0i), vec3<i32>(var_1.d, 1i, 20094i)))));
}

fn func_4(arg_0: vec3<i32>) -> vec4<bool> {
    global0 = _wgslsmith_div_i32(1i, min(global1.d, _wgslsmith_dot_vec2_i32(arg_0.zy, _wgslsmith_sub_vec2_i32(~vec2<i32>(0i, -43026i), vec2<i32>(arg_0.x, arg_0.x)))));
    let var_0 = ~countOneBits(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, u_input.a.x))));
    var var_1 = global1.d;
    let var_2 = vec2<f32>(global1.a.x, 417f);
    global2 = min(~vec4<u32>(~18442u, firstLeadingBit(~var_0.x), min(33738u, 0u), ~var_0.x), ~firstTrailingBit(select(global1.c, vec4<u32>(global2.x, var_0.x, 0u, 47317u), vec4<bool>(true, global1.e.x, global1.e.x, global1.e.x))));
    return !vec4<bool>(!(946f >= _wgslsmith_f_op_f32(-var_2.x)), !all(global1.e), !global1.e.x, !(all(global1.e) | global1.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.a.x)))) * 1806f)));
    var var_1 = global4[_wgslsmith_index_u32(54250u, 17u)];
    var var_2 = ~(~vec4<u32>(global2.x, var_1.c.x, var_1.c.x, 0u)) & ~var_1.c;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), firstTrailingBit(26153u ^ (u_input.a.x ^ (0u | var_2.x))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~1u, var_1.b, global1.c.x, global2.x), global1.c), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 0u, 42830u, var_1.c.x), abs(firstLeadingBit(var_1.c)))), _wgslsmith_dot_vec2_i32(-max(max(vec2<i32>(89116i, 1i), vec2<i32>(global1.d, -1i)), vec2<i32>(-30279i, global1.d)), vec2<i32>(1i, func_1())), select(global1.e, vec2<bool>(!global1.e.x, !(var_1.e.x || false)), !(!var_1.e)));
    global1 = global4[_wgslsmith_index_u32(~firstLeadingBit(abs(~global2.x)), 17u)];
    global3 = array<vec2<u32>, 32>();
    let var_4 = select(!vec4<bool>(global1.e.x, !(!var_3.e.x), all(vec3<bool>(false, var_1.e.x, var_1.e.x)), !global1.e.x), vec4<bool>(true, var_3.e.x, true, !(_wgslsmith_sub_i32(0i, var_3.d) >= var_1.d)), !func_4(func_2(vec4<u32>(var_2.x, var_3.b, global1.b, global1.c.x), Struct_1(var_1.a, u_input.a.x, global1.c, 0i, global1.e), var_1.c)));
    var var_5 = global4[_wgslsmith_index_u32(1u, 17u)];
    let var_6 = var_1.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~0u), reverseBits(~u_input.a.x), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_3.b, global2.x)), global2.zx)), select(vec3<u32>(global2.x & 4294967295u, 0u, ~4294967295u), vec3<u32>(4294967295u, 1u, 0u) << (u_input.a % vec3<u32>(32u)), select(select(var_4.xwx, vec3<bool>(true, global1.e.x, true), var_4.x), select(var_4.zwy, vec3<bool>(var_3.e.x, false, true), vec3<bool>(var_4.x, var_4.x, var_1.e.x)), false))), vec3<i32>(global1.d, var_5.d, global1.d), _wgslsmith_add_vec4_u32(global1.c, global1.c) & ~vec4<u32>(11875u, ~10759u, select(global2.x, 0u, false), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)));
}

