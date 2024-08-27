struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14>;

var<private> global1: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = firstTrailingBit(select(arg_0.a | arg_0.a, _wgslsmith_add_u32(~(arg_0.a >> (56451u % 32u)), arg_0.a), all(!select(vec2<bool>(false, arg_1.a), vec2<bool>(true, arg_1.a), arg_1.a))));
    global0 = array<vec2<f32>, 14>();
    let var_1 = Struct_2(~(~abs(arg_0.a) << (0u % 32u)), arg_0.b, vec4<i32>(min(max(1i, arg_0.c.x), 1i), ~(-3185i), _wgslsmith_mult_i32(select(~u_input.d.x, u_input.d.x, true), _wgslsmith_add_i32(1i, arg_0.c.x ^ -18709i)), 2147483647i));
    var var_2 = Struct_1(any(select(vec3<bool>(arg_1.a, select(false, arg_1.a, arg_1.a), true), select(vec3<bool>(false, arg_1.a, true), !vec3<bool>(false, arg_1.a, arg_1.a), select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(arg_1.a, false, false))), arg_1.a)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -448f);
    return ~(~abs(73875u));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = vec4<i32>(abs(u_input.c.x), -14811i, ~(~firstTrailingBit(u_input.c.x)), ~u_input.d.x);
    global1 = func_3(Struct_2(_wgslsmith_div_u32(~18074u, ~1850u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(447f, arg_0, 758f, -1917f) * vec4<f32>(arg_0, arg_1, -1006f, arg_0)) * vec4<f32>(arg_0, -1720f, -1000f, 1215f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(427f, arg_1, arg_1, -773f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -614f, arg_0, arg_0) - vec4<f32>(arg_1, arg_0, arg_1, arg_1))))), u_input.d), Struct_1(true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1000f)), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~1u, 14u)] - vec2<f32>(-262f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + -1000f))));
    global1 = 57949u;
    var var_1 = Struct_2(~(1u >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(25329u, 4294967295u, 4411u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1106f, 1000f, arg_0, arg_1), vec4<f32>(arg_0, arg_0, 578f, 723f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, 915f, 567f, arg_1))))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -1800f), -1545f, _wgslsmith_f_op_f32(min(-886f, _wgslsmith_f_op_f32(arg_0 - arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, arg_1)) * -1000f))), var_0);
    let var_2 = vec2<bool>(!(!(_wgslsmith_add_u32(var_1.a, 50998u) < 1u)), u_input.c.x < _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, var_0.x), ~vec2<i32>(var_1.c.x, var_1.c.x)), (var_1.c.x >> (var_1.a % 32u)) << (1u % 32u)));
    return Struct_1(var_2.x);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: bool, arg_3: f32) -> Struct_2 {
    global0 = array<vec2<f32>, 14>();
    var var_0 = ~24034i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(809f)))) - arg_3), _wgslsmith_f_op_f32(f32(-1f) * -2125f)));
    var var_2 = func_2(_wgslsmith_f_op_f32(round(920f)), 585f);
    global0 = array<vec2<f32>, 14>();
    return Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(88639u >> (_wgslsmith_div_u32(arg_1.x, arg_1.x) % 32u), 26415u), ~(~vec2<u32>(1u, arg_1.x))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-989f, var_1.x)), -596f)), _wgslsmith_f_op_f32(var_1.x + 2334f), -316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + arg_3))))), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 54151i, u_input.c.x, 1i), u_input.d)), ~0i, select(_wgslsmith_clamp_i32(reverseBits(-1i), _wgslsmith_mod_i32(-51135i, 6839i), -2147483647i ^ u_input.b), _wgslsmith_add_i32(u_input.b, u_input.d.x), false || arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, _wgslsmith_sub_vec4_u32(max(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(10050u, 24076u, 53312u, 4294967295u), vec4<u32>(26675u, 4294967295u, 4294967295u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec4<u32>(67842u, 1u, 63632u, 168u))), max(abs(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))), true, _wgslsmith_f_op_f32(sign(-1702f)));
    let var_1 = vec3<bool>(select(!(u_input.a <= -25240i), true, false) || !(true & all(vec2<bool>(false, false))), true, any(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)))));
    var_0 = func_1(_wgslsmith_add_i32(1i, (2147483647i & u_input.c.x) << (27278u % 32u)) >= -(~u_input.d.x), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(max(~vec4<u32>(var_0.a, 31103u, 21774u, var_0.a), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 76317u, 0u, var_0.a), vec4<u32>(0u, 0u, 13921u, var_0.a))), select(~vec4<u32>(4294967295u, 42907u, 53860u, 24840u), vec4<u32>(1u, 1u, 0u, var_0.a) & vec4<u32>(89838u, var_0.a, 4294967295u, var_0.a), vec4<bool>(true, true, true, true))), vec4<u32>(var_0.a, _wgslsmith_div_u32(6296u, ~var_0.a), ~4294967295u, 34457u)), !all(var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -550f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x)))))));
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))));
    var var_3 = var_0.b;
    var var_4 = firstLeadingBit(-39018i);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

