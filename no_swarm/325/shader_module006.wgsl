struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9>;

var<private> global1: u32 = 29639u;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> u32 {
    let var_0 = Struct_2(true, Struct_1(1i, firstLeadingBit(reverseBits(79415u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-894f, 1000f)) - _wgslsmith_f_op_f32(-950f + -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-205f, -132f, -124f, -1230f))))), arg_0.x), false, ~((firstTrailingBit(arg_0.x) & u_input.a) ^ u_input.a));
    var var_1 = Struct_3(Struct_2(var_0.a, var_0.b, any(!(!vec2<bool>(true, var_0.c))), _wgslsmith_dot_vec4_u32(arg_0, ~vec4<u32>(arg_0.x, 1u, 2497u, 0u))), vec4<i32>(17661i, -1i, var_0.b.a ^ var_0.b.a, -var_0.b.a & _wgslsmith_sub_i32(1i, -u_input.b.x)), !select(vec4<bool>(true, false || var_0.a, !var_0.c, var_0.c), select(!vec4<bool>(var_0.c, var_0.a, var_0.c, false), !vec4<bool>(var_0.c, false, false, true), vec4<bool>(true, var_0.a, true, var_0.c)), false));
    global0 = array<vec2<u32>, 9>();
    var var_2 = Struct_4(~(~(~(arg_0 >> (vec4<u32>(4294967295u, var_1.a.d, 4294967295u, var_1.a.b.e) % vec4<u32>(32u))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.b.d))), Struct_3(var_0, var_1.b, var_1.c));
    let var_3 = var_2.c.c.wy;
    return 1u;
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = ~_wgslsmith_mod_vec4_i32(-max(vec4<i32>(arg_0.x, arg_0.x, -25613i, u_input.b.x), vec4<i32>(arg_0.x, arg_0.x, 0i, 0i)), ~vec4<i32>(2147483647i, u_input.b.x, arg_0.x, 2147483647i)) ^ _wgslsmith_add_vec4_i32(abs(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, 29423i, 63724i, u_input.b.x), vec4<i32>(u_input.b.x, arg_0.x, -2147483647i, u_input.b.x) >> (vec4<u32>(u_input.a, 4294967295u, u_input.c.x, 0u) % vec4<u32>(32u)))), vec4<i32>(u_input.b.x, 0i, max(~arg_0.x, u_input.b.x), _wgslsmith_div_i32(64590i, -u_input.b.x)));
    var_0 = -vec4<i32>(-_wgslsmith_sub_i32(-12788i, u_input.b.x) << (u_input.c.x % 32u), _wgslsmith_sub_i32(-u_input.b.x, ~max(u_input.b.x, 90824i)), -min(u_input.b.x, arg_0.x), arg_0.x);
    var var_1 = func_3(u_input.c, ~(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, 24593i), u_input.b.x)));
    let var_2 = select(~u_input.c.x, ~u_input.a, true);
    global0 = array<vec2<u32>, 9>();
    return select(vec4<bool>((_wgslsmith_add_i32(arg_0.x, -2147483647i) != _wgslsmith_div_i32(var_0.x, -80231i)) | all(vec4<bool>(true, false, true, true)), ~select(u_input.c.x, 23571u, true) < (0u >> (var_2 % 32u)), ~86918u != ~(~u_input.a), !any(vec2<bool>(false, true))), select(!vec4<bool>(true, var_2 == var_2, true, any(vec3<bool>(true, false, true))), vec4<bool>(all(vec3<bool>(false, false, false)), !any(vec2<bool>(false, true)), true, true), all(vec4<bool>(true, true, all(vec2<bool>(false, false)), all(vec3<bool>(false, false, true))))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, 2922u != var_2, any(vec3<bool>(true, true, false)))));
}

fn func_1() -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-1326f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-857f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1090f, -1005f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1051f * -926f))))))));
    var var_1 = _wgslsmith_mult_vec3_i32(u_input.b, max(u_input.b ^ u_input.b, max(-_wgslsmith_sub_vec3_i32(u_input.b, u_input.b), _wgslsmith_mult_vec3_i32(u_input.b, _wgslsmith_div_vec3_i32(u_input.b, u_input.b)))));
    var var_2 = select(!select(func_2(u_input.b ^ u_input.b), vec4<bool>(var_1.x <= 2147483647i, true, any(vec2<bool>(true, false)), true), true), !vec4<bool>(false, !any(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), true), true);
    let var_3 = var_2.x;
    let var_4 = Struct_4(max(~(~vec4<u32>(u_input.c.x, u_input.a, 36550u, 0u)), u_input.c), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-140f - 2254f), _wgslsmith_f_op_f32(-var_0.x), var_0.x))), Struct_3(Struct_2(true, Struct_1(select(-17270i, var_1.x, var_2.x), _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, -260f), vec4<f32>(256f, var_0.x, 433f, 1015f), false)), max(34770u, u_input.a)), true & var_2.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, 4294967295u)), countOneBits(global0[_wgslsmith_index_u32(32953u, 9u)]))), select(vec4<i32>(var_1.x >> (u_input.c.x % 32u), u_input.b.x | -8734i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.x, -1i, 0i), vec4<i32>(var_1.x, var_1.x, 907i, -2147483647i))), abs(-vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.b.x)), true), select(!(!vec4<bool>(var_2.x, var_2.x, false, var_2.x)), func_2(vec3<i32>(var_1.x, 8181i, var_1.x)), !var_2.x)));
    return max(~vec3<u32>(~(~28118u), u_input.a, u_input.c.x & var_4.c.a.b.b), select(_wgslsmith_clamp_vec3_u32(u_input.c.wyz, vec3<u32>(1u, 4294967295u, ~98948u), ~(~u_input.c.zyz)), reverseBits(var_4.a.zxz), var_2.yyx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 9>();
    global1 = _wgslsmith_clamp_u32(~u_input.a, u_input.c.x, _wgslsmith_dot_vec3_u32(func_1(), ~vec3<u32>(47259u, abs(u_input.c.x), max(22814u, u_input.a))));
    global1 = 4294967295u;
    global1 = 39169u | u_input.a;
    var var_0 = Struct_2(!(!any(vec3<bool>(true, true, true))), Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.a, 1u, 37281u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(10392i, u_input.b.x, u_input.b.x, 1i), vec4<i32>(u_input.b.x, 2147483647i, -44780i, 2147483647i))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1188f, _wgslsmith_div_f32(1007f, 916f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-772f, -159f, -396f, _wgslsmith_f_op_f32(max(-1718f, -453f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1149f, 206f, -874f, -396f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(121f, 1112f, 759f, 982f) * vec4<f32>(487f, 683f, -319f, -1870f))))), abs(34140u)), !func_2(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))).x, _wgslsmith_clamp_u32(1u, u_input.c.x, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 32921i), vec4<i32>(-2068i, var_0.b.a, var_0.b.a, u_input.b.x)), ~firstTrailingBit(vec4<i32>(-35838i, 0i, var_0.b.a, u_input.b.x))), _wgslsmith_dot_vec2_i32(~countOneBits(u_input.b.xy), u_input.b.xy), -var_0.b.a), u_input.a, u_input.b.x >> (_wgslsmith_dot_vec2_u32(u_input.c.wz, vec2<u32>(_wgslsmith_div_u32(0u, u_input.a), countOneBits(11325u))) % 32u), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 4294967295u), var_0.b.b), firstTrailingBit(u_input.c));
}

