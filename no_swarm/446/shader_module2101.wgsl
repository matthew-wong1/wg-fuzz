struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-19926i);

var<private> global1: Struct_2 = Struct_2(vec4<i32>(0i, 0i, i32(-2147483648), 2147483647i), vec3<i32>(-38464i, -33282i, 17995i), vec2<u32>(8417u, 47359u));

var<private> global2: array<Struct_3, 2>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(select(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b & u_input.b), ~(~u_input.a), true), 4294967295u), 2u)];
    var var_1 = u_input.b & ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), var_0.a, u_input.c), vec3<u32>(~var_0.a, ~31329u, 21368u));
    global0 = Struct_1(-(~global1.a.x));
    var_1 = ~(u_input.b & _wgslsmith_mod_vec3_u32(min(vec3<u32>(var_1.x, 4294967295u, 59120u), vec3<u32>(var_0.a, var_1.x, 12564u)) | abs(vec3<u32>(95638u, 43550u, u_input.c)), u_input.b));
    global1 = Struct_2(vec4<i32>(reverseBits(~(-global0.a)), global0.a, global1.a.x, _wgslsmith_dot_vec2_i32(-countOneBits(global1.a.wy), vec2<i32>(global0.a >> (61120u % 32u), -2541i))), vec3<i32>(global1.b.x, ~_wgslsmith_add_i32(global0.a, _wgslsmith_mult_i32(-1i, global0.a)), global1.a.x), _wgslsmith_mod_vec2_u32(~select(~u_input.b.xy, ~var_1.zy, true), ~countOneBits(var_1.xy << (var_1.xy % vec2<u32>(32u)))));
    return 16491u ^ _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(u_input.a), ~43295u), _wgslsmith_add_u32(global1.c.x, ~var_1.x) >> (~(~var_0.a) % 32u), abs(var_0.a));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_1(global1.a.x);
    var var_1 = false;
    var var_2 = var_0;
    var var_3 = true;
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, _wgslsmith_f_op_f32(ceil(614f)), _wgslsmith_f_op_f32(trunc(349f)), 1424f))))));
    return global1.a.x;
}

fn func_2(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_4(max(12714i, func_4(min(func_3(), _wgslsmith_div_u32(4294967295u, global1.c.x)), Struct_3(62472u, any(vec4<bool>(true, false, true, arg_0.x))))), Struct_2(global1.a | global1.a, ~(abs(vec3<i32>(global0.a, global0.a, -16946i)) & (vec3<i32>(-2147483647i, global1.a.x, -1i) << (vec3<u32>(u_input.a, 0u, u_input.c) % vec3<u32>(32u)))), ~(reverseBits(u_input.b.yy) & u_input.b.zy)), global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c, 0u, 4294967295u), _wgslsmith_div_u32(u_input.c, 17983u))), 2u)], func_3());
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(countOneBits(u_input.b), vec3<u32>(4294967295u, 0u, 74749u)), ~(~216u)), 3549u), vec2<u32>(firstTrailingBit(4132u), _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 0u), u_input.a)) ^ reverseBits(~var_0.b.c));
}

fn func_1() -> u32 {
    let var_0 = Struct_2(firstLeadingBit(_wgslsmith_sub_vec4_i32(global1.a, global1.a) >> (_wgslsmith_clamp_vec4_u32(min(vec4<u32>(0u, 7930u, global1.c.x, 29439u), vec4<u32>(36367u, 4294967295u, u_input.b.x, 9444u)), abs(vec4<u32>(global1.c.x, 46260u, 29416u, 4294967295u)), ~vec4<u32>(u_input.a, 0u, 69931u, global1.c.x)) % vec4<u32>(32u))), vec3<i32>(-98160i, 1i, _wgslsmith_sub_i32(min(-1i, -53151i), 14628i)), abs(_wgslsmith_sub_vec2_u32((vec2<u32>(u_input.b.x, 0u) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))) & func_2(vec3<bool>(true, true, false)), min(reverseBits(u_input.b.xz), vec2<u32>(u_input.c, global1.c.x) & global1.c))));
    let var_1 = Struct_4(_wgslsmith_mult_i32(var_0.b.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(14598i, 26533i), vec2<i32>(-12597i, 1i)))), var_0, global2[_wgslsmith_index_u32(26435u, 2u)], 68793u);
    let var_2 = 1000f;
    global2 = array<Struct_3, 2>();
    global0 = Struct_1(-26654i);
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, ~var_1.c.a), 50294u, countOneBits(var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(abs(~countOneBits(vec4<i32>(global1.a.x, -2147483647i, global0.a, global0.a))), _wgslsmith_add_vec3_i32(-select(vec3<i32>(global0.a, 1607i, -1i), global1.b, true), global1.a.yxw) ^ vec3<i32>(~global0.a ^ 1i, -reverseBits(global0.a), -39792i), vec2<u32>(~(42066u >> (~u_input.c % 32u)), func_1()));
    let var_0 = global1.c.x;
    let var_1 = _wgslsmith_f_op_f32(ceil(619f));
    global0 = Struct_1(~14971i);
    global0 = Struct_1(-2147483647i);
    global0 = Struct_1(global0.a);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1, -419f)), _wgslsmith_f_op_f32(-var_1)), var_1)), 1596f), vec2<f32>(-517f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) - _wgslsmith_f_op_f32(ceil(998f)))))), vec2<bool>(select(any(vec3<bool>(var_2, false, var_2)), var_2, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global1.c.x, countOneBits(countOneBits(max(71256u, global1.c.x))), ~(~_wgslsmith_mult_u32(global1.c.x, 4294967295u)), abs(firstLeadingBit(28559u) ^ (37113u | global1.c.x))), global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_3.x, var_1)))))));
}

