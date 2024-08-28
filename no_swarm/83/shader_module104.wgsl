struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<f32> {
    global0 = array<vec3<f32>, 29>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 141f), vec2<f32>(-1330f, 847f), vec2<bool>(false, true)))))))), vec4<u32>(reverseBits(4967u) | ~firstTrailingBit(84235u), 66804u, ~u_input.a, reverseBits((31520u << (u_input.a % 32u)) ^ ~u_input.b)));
    global0 = array<vec3<f32>, 29>();
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.a)));
}

fn func_2(arg_0: vec3<f32>) -> vec4<i32> {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, 35867i, -13248i), 2147483647i), 39341i);
    let var_1 = ~0i;
    global0 = array<vec3<f32>, 29>();
    var var_2 = Struct_1(14247i, vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a), 1u, ~27122u, ~4294967295u & u_input.b), ~u_input.a, _wgslsmith_f_op_vec2_f32(func_3()));
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f)) + _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(step(511f, arg_0.x))))), arg_0.x), ~var_2.b);
    return abs(reverseBits(reverseBits(vec4<i32>(var_1, var_2.a, var_2.a, var_0.x)) ^ (vec4<i32>(var_2.a, var_2.a, var_1, 1i) & vec4<i32>(-1i, var_2.a, 1i, var_1))) >> (countOneBits(countOneBits(select(var_3.b, var_2.b, vec4<bool>(true, false, false, true)))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = -_wgslsmith_add_vec4_i32(~func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1480f, 791f, -367f)))), vec4<i32>(firstLeadingBit(arg_3.a), ~arg_3.a, -arg_3.a, ~arg_3.a) & _wgslsmith_add_vec4_i32(vec4<i32>(-29788i, 38233i, arg_3.a, arg_3.a), vec4<i32>(arg_3.a, arg_3.a, -40869i, arg_3.a)));
    return ~(-vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(var_0.x, arg_3.a), -24059i), 4633i, _wgslsmith_sub_i32(var_0.x, arg_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(abs(func_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true))), 1686f, Struct_2(vec2<f32>(899f, 106f), vec4<u32>(u_input.b, 84975u, u_input.b, 4294967295u) ^ vec4<u32>(25754u, 2423u, u_input.a, u_input.b)), Struct_1(-3644i, ~vec4<u32>(1u, u_input.b, u_input.a, u_input.b), u_input.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(966f, -823f)))))), func_2(global0[_wgslsmith_index_u32(1u, 29u)]).ywx);
    var var_1 = vec3<bool>(any(vec2<bool>(true, true)), true, false);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1260f * 1315f), -1092f, _wgslsmith_f_op_f32(round(-1368f))))))) * global0[_wgslsmith_index_u32(8799u, 29u)]);
    var_1 = select(vec3<bool>(!((var_2.x < var_2.x) | true), var_1.x, all(!vec4<bool>(false, var_1.x, var_1.x, var_1.x))), !(!(!(!vec3<bool>(var_1.x, true, var_1.x)))), vec3<bool>(true, true, any(!(!vec4<bool>(true, false, var_1.x, var_1.x)))));
    let var_3 = -_wgslsmith_div_vec2_i32(func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2)))).xx, vec2<i32>(_wgslsmith_mod_i32(func_1(vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_2.x, Struct_2(vec2<f32>(-1443f, var_2.x), vec4<u32>(u_input.b, 0u, 0u, u_input.b)), Struct_1(var_0, vec4<u32>(29068u, u_input.b, 0u, 28382u), u_input.a, var_2.xy)).x, firstLeadingBit(0i)), reverseBits(_wgslsmith_sub_i32(var_0, -2147483647i))));
    var_1 = !select(select(!select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, false, false), false), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, false), select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, false, false), vec3<bool>(true, var_1.x, var_1.x))), u_input.b == 78258u), select(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), var_1.x), vec3<bool>(var_2.x < var_2.x, false, true), !select(vec3<bool>(false, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x), true)), vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_div_f32(var_2.x, -862f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 1472f))))), vec4<u32>(43259u, ~max(_wgslsmith_mult_u32(u_input.b, u_input.a), u_input.b), u_input.b, reverseBits(~_wgslsmith_add_u32(1u, u_input.a))));
}

