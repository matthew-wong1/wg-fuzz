struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-1i, 288f, vec3<bool>(false, false, false)), Struct_1(-41710i, -1530f, vec3<bool>(true, false, true)), Struct_1(21758i, -533f, vec3<bool>(true, false, false)), Struct_1(35241i, -951f, vec3<bool>(false, false, true)), Struct_1(-20534i, -1012f, vec3<bool>(true, false, true)), Struct_1(31256i, 2355f, vec3<bool>(true, true, false)), Struct_1(-26359i, 760f, vec3<bool>(true, false, true)), Struct_1(i32(-2147483648), -1284f, vec3<bool>(true, true, true)), Struct_1(0i, 1108f, vec3<bool>(true, true, true)), Struct_1(26446i, -1165f, vec3<bool>(false, false, false)), Struct_1(-1i, -415f, vec3<bool>(true, true, true)), Struct_1(-11329i, 1171f, vec3<bool>(false, false, true)), Struct_1(-38339i, -652f, vec3<bool>(true, false, true)), Struct_1(2147483647i, -787f, vec3<bool>(true, true, true)), Struct_1(-19771i, -1000f, vec3<bool>(false, false, false)), Struct_1(26239i, 150f, vec3<bool>(true, true, true)), Struct_1(-51986i, -797f, vec3<bool>(true, false, true)), Struct_1(i32(-2147483648), -488f, vec3<bool>(true, true, false)), Struct_1(0i, -1653f, vec3<bool>(false, true, false)), Struct_1(2147483647i, 460f, vec3<bool>(true, false, false)), Struct_1(0i, 571f, vec3<bool>(false, false, true)), Struct_1(58123i, -412f, vec3<bool>(true, true, true)), Struct_1(18415i, 183f, vec3<bool>(true, true, true)), Struct_1(i32(-2147483648), -461f, vec3<bool>(true, false, false)), Struct_1(i32(-2147483648), -1155f, vec3<bool>(false, false, false)), Struct_1(i32(-2147483648), 314f, vec3<bool>(false, false, false)), Struct_1(0i, -1276f, vec3<bool>(false, true, true)));

var<private> global1: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> bool {
    global1 = Struct_1(reverseBits(global1.a), -1653f, !select(vec3<bool>(all(vec2<bool>(global1.c.x, true)), true, all(vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x))), !global1.c, global1.c.x));
    return true;
}

fn func_2() -> f32 {
    let var_0 = Struct_3(_wgslsmith_mult_vec4_i32(~(~(-u_input.c)), vec4<i32>(abs(-u_input.c.x), u_input.c.x, global1.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, global1.a), u_input.e.x >> (5371u % 32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, 1736f) * vec2<f32>(-434f, global1.b))) - vec2<f32>(-1141f, -1451f))), vec2<i32>(u_input.c.x, _wgslsmith_sub_i32(-2147483647i, -_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(0i, u_input.c.x, 0i)))));
    let var_1 = any(vec4<bool>(select(all(global1.c.zx) || select(global1.c.x, global1.c.x, global1.c.x), func_3(Struct_3(u_input.c, vec2<f32>(507f, global1.b), u_input.c.zx)), global1.c.x), any(select(vec2<bool>(global1.c.x, global1.c.x), vec2<bool>(global1.c.x, false), global1.c.xz)) || func_3(var_0), global1.c.x, !(!(-1i <= u_input.e.x))));
    var var_2 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(round(var_0.b)), var_0.c);
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_2.a.yyz ^ vec3<i32>(0i, u_input.c.x, -5207i), ~vec3<i32>(global1.a, -2147483647i, var_0.c.x)), -24744i >> (u_input.d.x % 32u), ~firstLeadingBit(var_2.a.x)), vec3<i32>(-var_0.a.x, _wgslsmith_div_i32(-2147483647i, global1.a), var_0.a.x) | u_input.c.xyz), -u_input.e.x);
    let var_4 = false;
    return _wgslsmith_f_op_f32(max(127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1292f) - var_0.b.x)));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(func_2()), 49478i, global1.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b)))) - global1.b), 1738f, -1068f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(602f)))), _wgslsmith_f_op_f32(arg_0.x - -672f)))));
    let var_2 = !select(!vec4<bool>(arg_0.x == -1000f, false, true, global1.c.x), vec4<bool>(false, global1.c.x, 1u <= (u_input.d.x & u_input.a.x), any(!vec3<bool>(false, global1.c.x, global1.c.x))), !select(select(vec4<bool>(true, true, global1.c.x, false), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false)), vec4<bool>(global1.c.x, true, true, false), select(global1.c.x, false, global1.c.x)));
    var var_3 = _wgslsmith_f_op_f32(func_2());
    var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * var_1.x))), max(~1i, global1.a), _wgslsmith_dot_vec4_i32(~(u_input.c >> (vec4<u32>(4294967295u, 0u, 4294967295u, u_input.d.x) % vec4<u32>(32u))), ~vec4<i32>(global1.a, var_0.c, var_0.b, 0i)) ^ -(~2147483647i));
    return abs(29393u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: i32) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(0u, 27u)];
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, ~arg_0.x), 27u)];
    global0 = array<Struct_1, 27>();
    let var_0 = Struct_2(u_input.e, Struct_1(~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f))))), select(global1.c, select(global1.c, !global1.c, select(vec3<bool>(global1.c.x, global1.c.x, global1.c.x), global1.c, global1.c)), true | (1i >= arg_2.c))), arg_0.ww);
    return global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_0.c.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, var_0.c.x), arg_0.xxw)), _wgslsmith_sub_u32(arg_0.x, ~(~u_input.a.x))), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -306f;
    let var_1 = func_4(select(vec4<u32>(1u, select(12655u, u_input.d.x, global1.c.x), 0u ^ u_input.a.x, u_input.b.x), ~reverseBits(vec4<u32>(u_input.a.x, 26337u, u_input.d.x, u_input.d.x)), !all(vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x))) << ((reverseBits(vec4<u32>(11177u, 41829u, u_input.a.x, u_input.b.x)) ^ vec4<u32>(func_1(vec2<f32>(2032f, global1.b)), ~3325u, ~u_input.d.x, u_input.d.x)) % vec4<u32>(32u)), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.b, var_0, -267f), vec3<f32>(global1.b, var_0, var_0))) - vec3<f32>(813f, var_0, 866f))), Struct_5(539f, -firstLeadingBit(firstLeadingBit(u_input.c.x)), ~_wgslsmith_div_i32(-2136i, ~38773i)), _wgslsmith_mod_i32(global1.a, 2147483647i));
    global0 = array<Struct_1, 27>();
    let var_2 = vec2<i32>(global1.a, _wgslsmith_dot_vec3_i32(firstTrailingBit(~u_input.e), -u_input.c.xxx));
    let var_3 = Struct_3(vec4<i32>(var_2.x, 1i, ~1i, _wgslsmith_sub_i32(var_2.x, ~var_1.a)) << (vec4<u32>(43388u, u_input.a.x ^ u_input.d.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(46301u, 37336u, u_input.a.x), vec3<u32>(1u, u_input.d.x, 65686u)), 1u) % vec4<u32>(32u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(297f, -117f, global1.c.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b, 2076f), vec2<f32>(-704f, global1.b))) - _wgslsmith_div_vec2_f32(vec2<f32>(global1.b, global1.b), vec2<f32>(1649f, var_0))), vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.b)), _wgslsmith_f_op_f32(var_0 * global1.b)), global1.c.x))), vec2<i32>(0i, ~var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, _wgslsmith_mult_i32(-35250i, 0i), firstTrailingBit(u_input.b.x));
}

