struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> u32 {
    global1 = !global0[_wgslsmith_index_u32(~1u, 30u)];
    let var_0 = -2291i;
    global1 = vec2<bool>(~(~_wgslsmith_div_i32(14647i, u_input.b)) == u_input.b, true);
    var var_1 = Struct_1(vec3<i32>(-1i, u_input.b, _wgslsmith_dot_vec3_i32(-min(vec3<i32>(39538i, var_0, var_0), vec3<i32>(var_0, u_input.b, var_0)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, var_0, 2147483647i), -vec3<i32>(-69774i, -1i, var_0)))));
    var_1 = Struct_1(vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, 0i, -59391i) & firstTrailingBit(var_1.a), vec3<i32>(-1i) * -vec3<i32>(var_0, 1i, -1i)), -var_1.a.x));
    return _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(u_input.a), select(u_input.a, 1u, true)), u_input.a, firstTrailingBit(countOneBits(u_input.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(78848u, 74985u, 0u, u_input.a)), ~vec4<u32>(1u, u_input.a, 1u, 14163u)), vec4<u32>(75924u, 4294967295u, ~4294967295u, select(u_input.a, u_input.a, true)))));
}

fn func_3(arg_0: Struct_5) -> vec4<u32> {
    global1 = !vec2<bool>(all(vec3<bool>(all(vec3<bool>(true, false, true)), !global1.x, false)), select(u_input.a == ~arg_0.c.a, global1.x, global1.x));
    var var_0 = firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-47454i, 63194i, u_input.b, u_input.b) ^ firstTrailingBit(vec4<i32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, -1i)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-37972i, 2147483647i, u_input.b, 1i), vec4<i32>(17493i, 73138i, arg_0.a.a.x, -38615i)), vec4<i32>(11804i, 12766i, 1i, -1i) & vec4<i32>(arg_0.a.a.x, u_input.b, 15240i, arg_0.a.a.x))), u_input.b >> (max(u_input.a, 5714u) % 32u), arg_0.a.a.x));
    var_0 = arg_0.a.a;
    return ~firstTrailingBit(arg_0.d);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = func_3(Struct_5(Struct_1(vec3<i32>(u_input.b, u_input.b, -11122i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1173f))), Struct_2(u_input.a & u_input.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2252f, arg_0.x, -148f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -267f, arg_0.x) + vec4<f32>(-552f, 130f, -417f, -803f))), vec4<u32>(1u, _wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a), ~u_input.a), func_2() << (1u % 32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, ~52276u, func_2(), u_input.a >> (~1u % 32u)), max(vec4<u32>(u_input.a >> (u_input.a % 32u), _wgslsmith_add_u32(38417u, 36338u), ~u_input.a, 0u), ~(~vec4<u32>(1u, 0u, u_input.a, 4294967295u)))) % vec4<u32>(32u));
    global0 = array<vec2<bool>, 30>();
    var_0 = vec4<u32>(var_0.x, func_2(), 4294967295u, 1u);
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    return vec3<bool>(all(!vec4<bool>(all(vec4<bool>(true, arg_1.x, true, arg_1.x)), global1.x, var_0.x <= 1u, false)), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_1(vec2<f32>(-1000f, 443f), vec4<bool>(true, all(vec3<bool>(global1.x, global1.x, global1.x)), global1.x & true, global1.x)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-916f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1100f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -131f))) + 499f))));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(max(8290i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 19587i, 2147483647i, 1i), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)), -7086i), min(max(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(u_input.b, u_input.b, 64648i)), -vec3<i32>(u_input.b, u_input.b, -2147483647i))), select(vec3<i32>(-u_input.b, countOneBits(u_input.b), u_input.b), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-1i, 2147483647i, 21468i)), abs(vec3<i32>(21082i, u_input.b, u_input.b))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(814f, var_1)), vec4<bool>(global1.x, true, true, true)))), -1i);
    var var_3 = -1i;
    var var_4 = ~(~1u);
    let var_5 = (var_1 >= 908f) | var_0.x;
    let var_6 = Struct_1(-(~vec3<i32>(u_input.b, -u_input.b, u_input.b ^ u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-833f, 12881u, _wgslsmith_f_op_f32(287f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1f, 773f, false && var_5)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))), ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 19778u), vec2<u32>(u_input.a, u_input.a)))), -var_6.a);
}

