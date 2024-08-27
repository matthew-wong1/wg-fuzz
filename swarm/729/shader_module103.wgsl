struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec3<bool>, 17>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(vec4<u32>(abs(4294967295u), ~(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(33970u, 4294967295u), max(vec2<u32>(0u, 89333u), vec2<u32>(4294967295u, 83885u))) ^ ~reverseBits(4294967295u), 1u));
    var var_1 = Struct_1(vec4<u32>(~(29504u ^ var_0.a.x), _wgslsmith_div_u32(0u, var_0.a.x) ^ ~22269u, 38153u, 4294967295u) & _wgslsmith_mult_vec4_u32(~vec4<u32>(19796u, var_0.a.x, var_0.a.x, 4294967295u), ~(var_0.a | var_0.a)));
    global1 = array<vec3<bool>, 17>();
    var var_2 = vec3<bool>(false, select(true, -u_input.a != _wgslsmith_mult_i32(_wgslsmith_sub_i32(43544i, u_input.a), abs(20107i)), true), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(114f, -303f, -1000f) - vec3<f32>(-1124f, -1000f, -1045f)))))))));
    return 14581i;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = vec2<bool>(true, true);
    let var_1 = (~arg_0.a << (arg_3.a % vec4<u32>(32u))) | abs(vec4<u32>(~(arg_2 << (arg_0.a.x % 32u)), 2143u, ~_wgslsmith_dot_vec2_u32(arg_0.a.yw, vec2<u32>(1880u, 0u)), min(_wgslsmith_mod_u32(10523u, 1162u), _wgslsmith_mod_u32(16068u, arg_0.a.x))));
    var var_2 = _wgslsmith_f_op_f32(969f - _wgslsmith_f_op_f32(402f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1601f - _wgslsmith_div_f32(-739f, -169f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2052f, -1001f, true)) + _wgslsmith_f_op_f32(abs(1269f))))));
    let var_3 = false && var_0.x;
    let var_4 = ~(~((vec2<u32>(arg_0.a.x, arg_3.a.x) & arg_3.a.yx) & (var_1.yz | var_1.zz)) & firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.a.xyw, vec3<u32>(arg_3.a.x, arg_3.a.x, arg_0.a.x)), arg_0.a.x ^ 4294967295u)));
    return vec4<i32>(select(i32(-1i) * -33501i, global0.x, !all(vec2<bool>(var_0.x, true))), min(u_input.a, func_3()), abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1, global0.x), u_input.a)), ~1i);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0;
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a, global0.x, u_input.a, -2147483647i)), func_2(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 4294967295u)), u_input.a, 4294967295u, Struct_1(vec4<u32>(0u, 4294967295u, 15380u, 0u)))), ~(-vec4<i32>(16773i, 0i, -5871i, u_input.a))) ^ countOneBits(countOneBits(vec4<i32>(-16585i, global0.x, u_input.a, -786i))), (firstTrailingBit(-vec4<i32>(global0.x, global0.x, 22074i, -2147483647i)) | vec4<i32>(-1i >> (0u % 32u), _wgslsmith_div_i32(-26204i, 30653i), u_input.a, u_input.a)) & vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(global0.x, 37132i)), u_input.a, -firstTrailingBit(u_input.a), firstTrailingBit(u_input.a)));
    global1 = array<vec3<bool>, 17>();
    let var_1 = select(!select(!vec4<bool>(true, arg_1, arg_1, arg_1), !vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1 & arg_1, -786f >= arg_0)), select(select(select(!vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, false), all(vec4<bool>(true, arg_1, arg_1, arg_1))), !vec4<bool>(false, arg_1, false, arg_1), any(!vec4<bool>(false, arg_1, false, arg_1))), !vec4<bool>(arg_1, true, !arg_1, true), arg_1), !(!select(!vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(step(1742f, var_0)))), arg_0));
    return Struct_1(vec4<u32>(1u, 4294967295u, _wgslsmith_clamp_u32(0u, 67939u, 0u), 1u) | reverseBits(~select(vec4<u32>(1u, 84167u, 1u, 1u), vec4<u32>(1u, 54424u, 14344u, 0u), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(-2147483647i, firstLeadingBit(global0.x), 0i, global0.x);
    var var_0 = vec2<f32>(125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(1328f * -133f))), 149f, false)) - _wgslsmith_f_op_f32(select(1968f, 1751f, false))));
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 291f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1820f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-695f - var_0.x)))), ((0i <= -u_input.a) | true) | true);
    var_0 = vec2<f32>(-1500f, 932f);
    let var_2 = _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(func_2(var_1, global0.x, 0u, var_1), abs(vec4<i32>(-37541i, 8563i, global0.x, 40413i))), ~vec4<i32>(21569i, 17383i, global0.x, 37881i)), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -194f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(102f, var_0.x, -850f), vec3<f32>(var_0.x, -1000f, 233f), vec3<bool>(false, true, false))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 804f))))));
}

