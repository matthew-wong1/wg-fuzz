struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> vec2<i32> {
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    let var_0 = -888f;
    let var_1 = global0[_wgslsmith_index_u32(4906u << (~min(u_input.c.x, ~(~1u)) % 32u), 13u)];
    var var_2 = -992f;
    return countOneBits(arg_2.xy);
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(199f, 1076f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-805f, 539f) + vec2<f32>(448f, -360f)))))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, true), vec3<bool>(true, true, true)), select(u_input.b, _wgslsmith_mult_vec4_i32(vec4<i32>(-43449i, u_input.b.x, u_input.b.x, u_input.b.x), -vec4<i32>(u_input.b.x, 2147483647i, 0i, 0i)), false) & u_input.b);
    let var_1 = global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 71619u, u_input.c.x, 24238u), min(u_input.c, u_input.c)), ~u_input.a.x) << (0u % 32u)), 13u)];
    let var_2 = Struct_3(max(4294967295u, _wgslsmith_mod_u32(max(4294967295u, 68453u | var_1.c), ~4294967295u)), u_input.a);
    var var_3 = var_2;
    return var_1.a;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(func_2(), func_2(), reverseBits(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.c.x), vec3<u32>(4294967295u, 4294967295u, 0u)), ~1u)), -32256i, vec2<bool>(true, false));
    var_0 = Struct_2(var_0.b, func_2(), var_0.c, var_0.d, vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)) == _wgslsmith_f_op_f32(-var_0.a.a.x)));
    var_0 = Struct_2(func_2(), func_2(), 0u, ~_wgslsmith_clamp_i32(~2147483647i, var_0.d, 2577i), select(var_0.e, vec2<bool>(var_0.a.b.x != (var_0.a.a.x >= var_0.a.a.x), select(true, true, var_0.a.b.x)), true));
    let var_1 = _wgslsmith_mod_u32(46506u, firstTrailingBit(~(~firstLeadingBit(var_0.c))));
    var_0 = Struct_2(var_0.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(-var_0.b.a.x), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.b.a.x))))), func_2().b), 4957u, var_0.d, !vec2<bool>(true, !func_2().b.x));
    return Struct_3(var_1, u_input.c.zyx);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(-1433f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-307f, _wgslsmith_f_op_f32(f32(-1f) * -2586f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f * 1279f))))))));
    global0 = array<Struct_2, 13>();
    var var_1 = select(select(select(func_2().b, vec4<bool>(1u < u_input.a.x, false, true, u_input.c.x >= 14452u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false))), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), true), vec4<bool>(any(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true)), true, true, all(vec2<bool>(true, true))), !select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), vec4<bool>(any(vec4<bool>(false, true, true, false)), any(vec3<bool>(false, false, true)), true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, false))));
    global0 = array<Struct_2, 13>();
    let var_2 = !vec2<bool>(-722f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) + -1202f), var_0 >= var_0);
    return global0[_wgslsmith_index_u32(~(~u_input.c.x), 13u)];
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    let var_0 = ~(reverseBits(reverseBits(arg_2.b.x)) >> (9320u % 32u));
    var var_1 = Struct_3(arg_1.c, _wgslsmith_sub_vec3_u32(~min(vec3<u32>(var_0, u_input.c.x, 59482u) & vec3<u32>(0u, arg_1.c, 3212u), ~arg_2.b), ~vec3<u32>(1u, _wgslsmith_mult_u32(0u, 1u), 1u >> (u_input.c.x % 32u))));
    global0 = array<Struct_2, 13>();
    let var_2 = !arg_0.x & arg_1.a.b.x;
    var var_3 = Struct_3(~(~(~_wgslsmith_mod_u32(arg_1.c, arg_2.a))), max(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_2.b.x, arg_1.c, 1366u) << (vec3<u32>(u_input.a.x, arg_2.b.x, u_input.a.x) % vec3<u32>(32u))), ~arg_2.b), var_1.b));
    return _wgslsmith_f_op_f32(arg_1.a.a.x - _wgslsmith_f_op_f32(-arg_1.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec4<bool>(true, true, true, select(true, false, true)), func_4(func_1()), Struct_3(u_input.a.x, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, u_input.c.x), vec3<u32>(u_input.a.x, u_input.c.x, 1654u))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-212f - 1081f), _wgslsmith_f_op_f32(-1000f + 195f), all(vec2<bool>(true, false))))))));
    let var_1 = Struct_3(firstLeadingBit(~(u_input.c.x | _wgslsmith_mod_u32(5054u, 1u))), firstLeadingBit(vec3<u32>(~func_1().b.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, 65450u)), ~vec2<u32>(0u, 1u)), ~18639u)));
    let var_2 = !any(vec4<bool>(false, select(func_4(var_1).e.x, all(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, true, true, true))), true, all(func_2().b.zxw)));
    let var_3 = vec2<bool>(func_4(var_1).b.b.x, _wgslsmith_f_op_f32(func_5(vec4<bool>(!var_2, false, true, false), func_4(var_1), func_1())) <= var_0);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, vec3<i32>(_wgslsmith_div_i32(0i, u_input.b.x) << (u_input.c.x % 32u), -47531i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 26525i) & vec4<i32>(u_input.b.x, 73522i, u_input.b.x, u_input.b.x), u_input.b)) | u_input.b.zxx, reverseBits(_wgslsmith_mod_i32(43769i, _wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, 2147483647i, 1i), u_input.b.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, -698f, func_2().a.x))))));
}

