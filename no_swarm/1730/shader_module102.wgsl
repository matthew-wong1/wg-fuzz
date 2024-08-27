struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: vec3<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    global0 = array<Struct_1, 7>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.xx, _wgslsmith_add_vec2_u32(vec2<u32>(global2.x, reverseBits(50978u)), vec2<u32>(u_input.c, global2.x))), 7u)];
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(117f + 1959f), 311f);
    let var_2 = 2147483647i;
    global0 = array<Struct_1, 7>();
    return ~u_input.a << (global1[_wgslsmith_index_u32(firstTrailingBit(13695u), 18u)] % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = abs((u_input.b ^ _wgslsmith_add_i32(~u_input.a.x, -u_input.b)) | u_input.a.x);
    var var_1 = all(vec4<bool>(false, true, false, any(vec2<bool>(0u >= u_input.c, all(vec4<bool>(true, true, true, true))))));
    var var_2 = select(max(-abs(u_input.b), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, -17397i, var_0), vec4<i32>(-72693i, 1i, u_input.a.x, -2147483647i)), u_input.a ^ u_input.a)) ^ (_wgslsmith_dot_vec4_i32(func_3(), -u_input.a) & select(_wgslsmith_mult_i32(9160i, var_0), var_0, true)), var_0, !(!(all(vec2<bool>(true, false)) & true)));
    var var_3 = var_0;
    var var_4 = Struct_1(~u_input.c);
    return vec3<bool>(true, true, true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: u32) -> vec3<bool> {
    var var_0 = true;
    let var_1 = func_2(Struct_1(_wgslsmith_mult_u32(u_input.c, arg_3)), Struct_1(_wgslsmith_add_u32(1u, u_input.c)), arg_1.x, Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, u_input.c, 14959u), global1[_wgslsmith_index_u32(arg_3, 18u)] >> (global1[_wgslsmith_index_u32(global2.x, 18u)] % vec4<u32>(32u))), ~abs(65292u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.zyz - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(431f, arg_2.x, arg_1.x), arg_1.zxw))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-901f, -2068f, 1000f)) - _wgslsmith_f_op_vec3_f32(floor(arg_1.yzw))))));
    global1 = array<vec4<u32>, 18>();
    let var_3 = Struct_1(0u);
    return var_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = any(!func_4(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), func_2(Struct_1(43486u), Struct_1(u_input.c), 297f, Struct_1(arg_1.a)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, -964f, -217f), vec4<f32>(-1379f, arg_0.x, 782f, -363f)))), _wgslsmith_f_op_vec2_f32(exp2(arg_0)), _wgslsmith_sub_u32(global2.x, 52499u ^ arg_1.a)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(u_input.a.x, u_input.b, u_input.a.x);
    let var_1 = !select(true, true, true);
    global1 = array<vec4<u32>, 18>();
    let var_2 = global2.yx >> ((vec2<u32>(global2.x, ~u_input.c) | global2.zy) % vec2<u32>(32u));
    var var_3 = Struct_1(reverseBits(~var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-1469f)), _wgslsmith_sub_vec4_i32(~func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-837f, -480f))), global0[_wgslsmith_index_u32(var_2.x ^ var_3.a, 7u)]), (_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b)) & u_input.a) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -71903i, -65296i), func_1(vec2<f32>(1483f, -277f), Struct_1(16769u)))), vec4<i32>(~(u_input.b >> (var_2.x % 32u)), _wgslsmith_add_i32(abs(u_input.a.x), func_1(vec2<f32>(-2227f, 808f), global0[_wgslsmith_index_u32(var_2.x, 7u)]).x), 1i, 1i) ^ vec4<i32>(u_input.a.x, -_wgslsmith_mult_i32(u_input.b, -17008i), -countOneBits(1i), firstTrailingBit(u_input.b)), abs(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -8408i), u_input.a.zx)), firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 2147483647i, 7755i), ~vec3<i32>(u_input.b, u_input.a.x, -3287i)))));
}

