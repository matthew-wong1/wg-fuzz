struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, (arg_0.a.x >> (4294967295u % 32u)) ^ 0i, u_input.d.x), arg_0.a.zxw);
    global0 = u_input.b;
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    global0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(max(~(~1u), arg_2), 72124u), arg_2, arg_2);
    return arg_0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1259f)))), 965f)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-1f))));
    let var_1 = max(countOneBits(firstTrailingBit(abs(u_input.c))), vec4<u32>(~1u, ~(~u_input.c.x), ~(~26897u), ~4294967295u)) & vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(9415u, 1u)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 48121u, u_input.c.x, 47926u), vec4<u32>(u_input.b, u_input.b, 13920u, u_input.c.x)), 0u) & u_input.b, max(~34719u, 1u), _wgslsmith_div_u32(~12557u ^ countOneBits(u_input.b), ~(~u_input.c.x)));
    var var_2 = vec4<bool>(true, !(u_input.c.x >= 1u), false, any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    var_2 = select(vec4<bool>(select(all(vec3<bool>(false, true, var_2.x)), var_2.x, !(var_2.x && var_2.x)), var_2.x, false, var_2.x), !select(select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(true, false, false, true), select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), var_2.x)), vec4<bool>(var_2.x, false | var_2.x, true, any(var_2.yww)), var_2.x), !(!vec4<bool>(var_2.x, false, !var_2.x, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-584f, -388f, 1475f, -391f) * vec4<f32>(var_0.x, var_0.x, var_0.x, 797f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1517f, var_0.x, var_0.x) * vec4<f32>(-312f, var_0.x, -1000f, var_0.x))))))));
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = ~(func_4(func_3(Struct_1(vec4<i32>(2147483647i, arg_1.a.x, 2147483647i, -22331i)), all(vec2<bool>(true, true)), _wgslsmith_add_u32(u_input.b, u_input.b)), 29754i, arg_1) & min(26629u, countOneBits(~u_input.b)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1003f)), _wgslsmith_f_op_f32(abs(1015f)), _wgslsmith_f_op_f32(select(379f, -393f, false)))), select(vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true), vec3<bool>(true, all(vec3<bool>(false, false, true)), true), select(false, true, true)))));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), ~vec2<u32>(u_input.c.x, 12552u)), vec2<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), u_input.c.x)) << (1u % 32u), _wgslsmith_sub_u32(u_input.b >> (func_4(vec4<i32>(arg_1.a.x, 2253i, 33751i, arg_1.a.x), 1i, Struct_1(vec4<i32>(arg_0.a.x, 29549i, 0i, -1i))) % 32u), u_input.c.x) ^ u_input.c.x, firstLeadingBit(~((u_input.c.x ^ 4294967295u) << (~u_input.b % 32u))), u_input.b << (~4294967295u % 32u));
    let var_2 = Struct_1(vec4<i32>(arg_0.a.x, -(~5518i), arg_0.a.x, select(_wgslsmith_add_i32(1658i, -u_input.d.x), 0i, abs(1i) > (u_input.a.x | -26255i))));
    global0 = ~1u;
    return countOneBits(1i);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_sub_i32(~func_2(Struct_1(select(vec4<i32>(arg_1.x, -11269i, 2147483647i, -1i), u_input.d, vec4<bool>(false, true, false, true))), global1[_wgslsmith_index_u32(~u_input.b, 16u)]), -21636i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-145f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -867f)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1763f, -403f)) - _wgslsmith_f_op_f32(f32(-1f) * -1401f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(757f)))))));
    global1 = array<Struct_1, 16>();
    var var_3 = abs(abs(-vec3<i32>(-19605i, 0i, -22540i)) & u_input.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2 + -1312f), 963f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2))))) - var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_clamp_i32(23082i, u_input.a.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a.x, -383i, u_input.d.x), _wgslsmith_mod_i32(u_input.a.x, u_input.d.x))) << (_wgslsmith_mult_u32(~(47969u >> (u_input.c.x % 32u)), 1u) % 32u)) | 33145i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)) + _wgslsmith_f_op_f32(func_1(u_input.b & 29249u, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, 1i), u_input.d.ww)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f * 1700f)), -1000f))), -1048f);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, var_1.x)))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(51836u, u_input.a.yx)), _wgslsmith_div_f32(var_1.x, 1000f)))));
    let var_2 = Struct_1(u_input.d);
    global0 = ~(~74086u);
    var_0 = _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(u_input.a.x, var_2.a.x) & vec2<i32>(-1i, -var_2.a.x)), vec2<i32>(1i, -18219i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(var_2.a.yyy, -vec3<i32>(~u_input.a.x, u_input.a.x, var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(201f * -1486f) - _wgslsmith_f_op_f32(floor(1122f))), func_3(Struct_1(vec4<i32>(min(u_input.a.x, u_input.a.x), ~(-32294i), -2147483647i, ~(-11961i))), select(any(vec3<bool>(true, true, false)) | false, true, all(vec4<bool>(true, true, true, true))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 56236u), select(4294967295u, u_input.c.x, true)) >> (_wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_mult_vec4_u32(vec4<u32>(12913u, 94592u, 0u, u_input.c.x), vec4<u32>(u_input.b, 26555u, u_input.b, u_input.c.x))) % 32u)).x, abs(1u), max(func_4(abs(u_input.d), 0i, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-26575i, 30004i, -1i, -28698i), vec4<i32>(var_2.a.x, u_input.d.x, -2147483647i, u_input.d.x)))), u_input.c.x >> (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, 4294967295u, 0u), _wgslsmith_dot_vec2_u32(u_input.c.wy, vec2<u32>(u_input.b, 44911u))) % 32u)));
}

