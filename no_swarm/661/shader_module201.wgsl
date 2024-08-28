struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec2<i32>(-4060i, 1i), 769f);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 5>;

var<private> global3: vec2<f32> = vec2<f32>(781f, -465f);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_sub_u32(arg_1.a, 0u), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(-23035i, 63781i), u_input.d.wz >> (vec2<u32>(1u, 12027u) % vec2<u32>(32u))), global0.c);
    global1 = Struct_1(~(4294967295u & firstTrailingBit(reverseBits(u_input.a.x))), firstLeadingBit(min(-firstTrailingBit(vec2<i32>(global1.b.x, -39498i)), vec2<i32>(-1i) * -global0.b)), -195f);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1274f, global3.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-235f, -127f)))))));
    global1 = Struct_1(global1.a, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -56003i), ~arg_1.b), global0.c);
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.zx, vec2<u32>(_wgslsmith_mult_u32(1u, ~(~1u)), 20806u)), 5u)];
    return global2[_wgslsmith_index_u32(arg_1.a, 5u)];
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = global0.b.x;
    let var_1 = vec2<bool>(all(vec2<bool>(all(vec2<bool>(true, true)), true)), false);
    let var_2 = _wgslsmith_f_op_f32(ceil(global0.c));
    global0 = func_2(~vec4<u32>(global0.a, ~global0.a, global0.a, 1u), Struct_1(~(~56213u >> (~u_input.e.x % 32u)), countOneBits(global1.b ^ _wgslsmith_mult_vec2_i32(global0.b, arg_1.xy)), var_2));
    let var_3 = global2[_wgslsmith_index_u32(min(53467u, min(29264u >> (global0.a % 32u), global1.a)), 5u)];
    return func_2(vec4<u32>(firstLeadingBit(24954u), var_3.a, abs(_wgslsmith_sub_u32(64022u, u_input.e.x) | global1.a), ~u_input.e.x), global2[_wgslsmith_index_u32(14447u, 5u)]);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c)));
    global0 = func_1(_wgslsmith_f_op_f32(-1409f * func_2(~(~vec4<u32>(global1.a, 20119u, arg_1.a, 4294967295u)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e.x ^ 1u, firstLeadingBit(global1.a)), 5u)]).c), min(u_input.d.xzy, vec3<i32>(~global1.b.x << (u_input.a.x % 32u), max(-1i, ~(-13291i)), reverseBits(1i))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-550f)))), _wgslsmith_f_op_f32(floor(-1780f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(368f)), global0.c));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, arg_1.c)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.c, 121f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, _wgslsmith_f_op_f32(min(874f, global3.x)))), all(vec4<bool>(true, true, true, true)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.c)), -818f)));
    let var_1 = func_1(global0.c, vec3<i32>(-2186i ^ firstLeadingBit(~global1.b.x), _wgslsmith_mult_i32((i32(-1i) * -2950i) | u_input.d.x, _wgslsmith_sub_i32(global1.b.x << (arg_1.a % 32u), 16074i)), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(309f - arg_1.c), _wgslsmith_f_op_f32(-2432f + -179f)), vec3<i32>(global1.b.x & 1i, global0.b.x, global0.b.x)).b.x));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(u_input.c, _wgslsmith_mult_i32(min(global0.b.x, 2147483647i), reverseBits(1i))), func_3(func_1(_wgslsmith_f_op_f32(1084f + 1021f), countOneBits(u_input.d.xzx)), Struct_1(u_input.e.x, u_input.d.yz, _wgslsmith_div_f32(2101f, global0.c)))) >> (~vec2<u32>(~abs(global0.a), ~u_input.e.x & (global0.a ^ u_input.a.x)) % vec2<u32>(32u));
    let var_1 = abs(~_wgslsmith_sub_vec4_i32(u_input.d, _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(14063i, u_input.c, global0.b.x, -51893i), u_input.d), vec4<i32>(u_input.c, global0.b.x, var_0.x, global0.b.x))));
    var var_2 = func_2(abs(~firstLeadingBit(~vec4<u32>(global1.a, global0.a, u_input.e.x, 1u))), Struct_1(4294967295u ^ _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 1u, global1.a), vec3<u32>(37993u, 25815u, global0.a))), ~firstLeadingBit(vec2<i32>(u_input.c, -2147483647i)), global1.c));
    var var_3 = var_0.x;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c, global3.x))))) * _wgslsmith_div_f32(1341f, _wgslsmith_f_op_f32(-global3.x)));
    var var_5 = 109923i;
    let x = u_input.a;
    s_output = StorageBuffer(0i, global0.b, _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-17918i, u_input.c, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, u_input.d.x, -27850i), vec3<i32>(var_2.b.x, global1.b.x, var_1.x))), ~(~var_1.x)), ~(-9123i)));
}

