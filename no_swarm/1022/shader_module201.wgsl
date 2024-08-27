struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(1u, 54924u, 51337u), vec3<u32>(76952u, 4294967295u, 1u), vec3<u32>(30244u, 0u, 28121u), vec3<u32>(0u, 23842u, 43477u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1() -> vec3<u32> {
    let var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(~25054u, ~_wgslsmith_clamp_u32(0u, 0u, 81243u), _wgslsmith_clamp_u32(countOneBits(15523u), 1u, ~38269u)), ~vec3<u32>(_wgslsmith_add_u32(52144u, 0u), ~14527u, _wgslsmith_div_u32(4294967295u, 59457u)));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a, 22642i), max(21013i, u_input.a)) & ~(-vec2<i32>(-1i, u_input.a)), vec2<i32>(-51466i, 28937i)), u_input.a, 1u);
    var var_2 = ~vec4<u32>(_wgslsmith_clamp_u32(var_0.x, ~_wgslsmith_mult_u32(31882u, var_0.x), ~var_1.c), ~reverseBits(firstLeadingBit(1u)), var_0.x, reverseBits(max(countOneBits(var_0.x), firstLeadingBit(var_0.x))));
    global1 = array<vec3<u32>, 4>();
    let var_3 = Struct_3(_wgslsmith_add_i32(u_input.a, ~u_input.a), vec3<i32>(-88782i, ~firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a, var_1.b), var_1.a), vec2<i32>(1i, var_1.b << (30424u % 32u)))), _wgslsmith_mult_vec3_u32(~var_2.yxz, _wgslsmith_sub_vec3_u32(~max(vec3<u32>(9218u, 68597u, var_0.x), global1[_wgslsmith_index_u32(13471u, 4u)]), var_2.xyz ^ _wgslsmith_mult_vec3_u32(var_2.yxx, vec3<u32>(var_2.x, var_2.x, 0u)))), -20788i);
    return _wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3.c.x, var_3.c.x) << (1u % 32u), 4u)], vec3<u32>(~(~var_3.c.x), 978u, ~var_3.c.x));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global0 = !all(vec3<bool>(!all(vec2<bool>(false, false)), !select(false, true, false), all(vec2<bool>(false, true))));
    let var_0 = select(vec3<u32>(arg_0.c.x, _wgslsmith_div_u32(arg_0.c.x, ~_wgslsmith_mult_u32(arg_0.c.x, 6492u)), _wgslsmith_clamp_u32(~14745u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.c.x, 20168u, arg_0.c.x), vec4<u32>(7415u, arg_0.c.x, arg_0.c.x, 30277u)), arg_0.c.x)), vec3<u32>(firstLeadingBit(34621u), arg_0.c.x, _wgslsmith_mult_u32(17669u, 0u) ^ (34304u << (~arg_0.c.x % 32u))), any(!vec3<bool>(any(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(false, false, false, true)))));
    let var_1 = Struct_2(_wgslsmith_mod_i32(abs(-14066i), ~arg_0.a), arg_0.a, 4294967295u);
    let var_2 = ~(-1i);
    return _wgslsmith_f_op_f32(ceil(-568f));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<f32>) -> bool {
    let var_0 = 0u;
    var var_1 = Struct_3(u_input.a, vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(29890i, u_input.a), vec2<i32>(-1i, u_input.a)), -vec2<i32>(u_input.a, arg_2)), min(vec2<i32>(arg_2, u_input.a) & vec2<i32>(0i, 0i), -vec2<i32>(u_input.a, arg_2))), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(4117i, 39968i, -2147483647i) | vec3<i32>(-1i, u_input.a, arg_2), ~vec3<i32>(1i, u_input.a, u_input.a))), u_input.a), vec3<u32>(arg_0.x, arg_0.x, select(firstLeadingBit(var_0) ^ _wgslsmith_add_u32(0u, var_0), 4294967295u, all(vec2<bool>(true, false)) && any(vec3<bool>(true, true, false)))), u_input.a);
    let var_2 = Struct_2(1i, ~countOneBits(u_input.a), var_1.c.x);
    global1 = array<vec3<u32>, 4>();
    global1 = array<vec3<u32>, 4>();
    return any(select(select(vec2<bool>(u_input.a >= 60395i, true), vec2<bool>(true, true), _wgslsmith_div_f32(508f, -1835f) <= arg_3.x), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(true, true)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> u32 {
    global0 = !func_4(~(vec2<u32>(arg_1.c.x, arg_1.c.x) & arg_1.c.xz), vec4<f32>(1f, 1f, 1f, 1f), i32(-1i) * -58574i, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2495f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1)) + _wgslsmith_f_op_f32(-326f - 2596f)), _wgslsmith_f_op_f32(func_3(arg_1)), 1000f));
    let var_0 = Struct_2((_wgslsmith_mult_i32(-16986i | arg_1.a, u_input.a) & -(-23631i | u_input.a)) << (83448u % 32u), ~(-(i32(-1i) * -2147483647i)), arg_0);
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global1 = array<vec3<u32>, 4>();
    global0 = func_2(~var_0, Struct_3(u_input.a, vec3<i32>(-1i, _wgslsmith_sub_i32(u_input.a, -46463i), _wgslsmith_sub_i32(u_input.a, 14695i)), reverseBits(func_1()), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -41034i, 21765i, 1i), vec4<i32>(u_input.a, 31941i, u_input.a, 15838i))), u_input.a) != countOneBits(~49138u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(-439f, _wgslsmith_f_op_f32(ceil(-237f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-206f, 636f) - _wgslsmith_f_op_f32(max(-410f, -567f))), -836f))));
    let var_2 = !vec2<bool>(countOneBits(var_0 ^ var_0) > 0u, ~1i <= u_input.a);
    var var_3 = Struct_2(-1i, ~max(_wgslsmith_dot_vec3_i32(vec3<i32>(-40755i, -26441i, 36891i) & vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, 23681i, 9139i) << (vec3<u32>(4294967295u, var_0, 3845u) % vec3<u32>(32u))), -_wgslsmith_sub_i32(u_input.a, -2147483647i)), ~_wgslsmith_div_u32(var_0, _wgslsmith_mod_u32(reverseBits(0u), var_0)));
    var var_4 = reverseBits(abs(vec2<i32>(-27003i, -1i) >> (vec2<u32>(var_3.c, var_0 & var_3.c) % vec2<u32>(32u))));
    let var_5 = global1[_wgslsmith_index_u32(81593u, 4u)];
    var var_6 = Struct_2(i32(-1i) * -1i, ~_wgslsmith_mult_i32(-26767i ^ (var_4.x | var_3.b), var_3.a), func_2(~1u, Struct_3(~var_3.a, vec3<i32>(30423i, 35321i, 22864i), ~vec3<u32>(1u, var_3.c, 74239u), 3184i), -(u_input.a & var_3.b)) | func_1().x);
    let x = u_input.a;
    s_output = StorageBuffer(~(1u ^ ~var_5.x), firstLeadingBit(vec3<i32>(-1i, var_6.b & 2147483647i, -1i) ^ -vec3<i32>(var_6.b, var_3.a, 17365i)), min(_wgslsmith_add_u32(~(~4562u), var_0), select(abs(var_5.x ^ 19648u), _wgslsmith_dot_vec2_u32(var_5.zy, vec2<u32>(var_0, var_6.c)) << (78493u % 32u), func_4(vec2<u32>(var_3.c, var_3.c), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 198f, var_1.x, var_1.x), vec4<f32>(-1802f, -1194f, var_1.x, -1228f)), select(-1i, u_input.a, var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 856f, 1064f, 1199f) + vec4<f32>(763f, var_1.x, var_1.x, var_1.x))))), _wgslsmith_mult_vec4_i32(select(-vec4<i32>(-14922i, -2147483647i, 2147483647i, var_3.a), vec4<i32>(var_3.a, 1i, ~var_6.a, reverseBits(95596i)), !(!vec4<bool>(var_2.x, false, true, var_2.x))), _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(8700i, -225i, var_6.a, -2147483647i), vec4<i32>(1i, 7284i, -2147483647i, 19839i)), vec4<i32>(var_4.x >> (4294967295u % 32u), ~var_3.a, u_input.a, 15003i), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_3.b, 2147483647i, var_4.x), vec4<i32>(var_6.a, var_6.a, var_4.x, -18809i), vec4<i32>(var_6.b, -62117i, -23496i, -72790i))))));
}

