struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_3, 13>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global0 = countOneBits(-(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 12193i, -6545i, 60188i), vec4<i32>(global0.x, global0.x, global0.x, global0.x)))));
    var var_0 = -(_wgslsmith_dot_vec2_i32(~vec2<i32>(-77680i, -2147483647i), global0.xx) | u_input.a);
    let var_1 = vec4<bool>(true, !any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(758f)))) - _wgslsmith_f_op_f32(max(-164f, 378f))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-549f, 1502f, arg_0 <= 4294967295u)), _wgslsmith_f_op_f32(380f + _wgslsmith_f_op_f32(round(-807f))))), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)));
    let var_2 = global1[_wgslsmith_index_u32(1u, 13u)];
    global0 = ~abs(~countOneBits(var_2.b << (vec4<u32>(15613u, arg_0, arg_0, 1u) % vec4<u32>(32u))));
    return firstTrailingBit(select(_wgslsmith_div_vec3_u32(vec3<u32>(select(4294967295u, arg_0, false), _wgslsmith_add_u32(var_2.a.x, var_2.d), _wgslsmith_mult_u32(54988u, 43701u)), firstTrailingBit(vec3<u32>(49416u, var_2.a.x, 1u))), ~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(61447u, var_2.d, arg_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(92465u, 111977u, arg_0), vec3<u32>(var_2.a.x, 40627u, 0u))), vec3<bool>(var_2.c.c.x, firstLeadingBit(u_input.a) >= _wgslsmith_sub_i32(1i, var_2.b.x), true)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_div_u32(abs(68489u), ~16034u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~15744u, reverseBits(11204u), 4915u), vec3<u32>(49163u, 7946u, _wgslsmith_div_u32(0u, 37078u))), 4294967295u), func_3(1u));
    var var_1 = arg_1;
    var var_2 = select(vec2<u32>(1u, 1u), ~(~select(vec2<u32>(1u, 1u), ~vec2<u32>(48483u, 24845u), !arg_3.b.c.zy)), vec2<bool>(any(vec2<bool>(arg_3.b.c.x, false)) || false, false));
    var_2 = vec2<u32>(~var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(10260u ^ var_2.x, 49517u), var_2.x, 18707u), vec3<u32>(52293u, 84436u, 12928u)));
    var var_3 = arg_2.c.a;
    return max(abs(reverseBits(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_2.x, var_2.x)), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, 35740u), vec2<u32>(5589u, 0u))))), ~vec2<u32>(11352u, ~firstLeadingBit(30440u)));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> u32 {
    var var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(abs(-1i), u_input.a, _wgslsmith_sub_i32(~20365i, firstLeadingBit(-2147483647i))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, u_input.a), max(-2147483647i, global0.x), _wgslsmith_dot_vec3_i32(global0.ywx, vec3<i32>(u_input.a, global0.x, u_input.a))), global0.yzy));
    let var_1 = arg_1.x;
    global1 = array<Struct_3, 13>();
    var_0 = countOneBits(global0.x);
    var_0 = ~(~u_input.a);
    return var_1;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-19180i, u_input.a), vec2<i32>(2147483647i, ~u_input.a)), ~vec2<i32>(1i, 0i)) & _wgslsmith_sub_vec2_i32(firstTrailingBit(~global0.zz | global0.yx), reverseBits(vec2<i32>(_wgslsmith_clamp_i32(5745i, -2147483647i, global0.x), ~u_input.a)));
    let var_1 = global1[_wgslsmith_index_u32(func_4(arg_0, _wgslsmith_div_vec2_u32(~vec2<u32>(~11942u, firstTrailingBit(31830u)), (abs(vec2<u32>(1u, 6625u)) >> (func_2(Struct_2(Struct_1(980f, 294f, vec4<bool>(true, true, false, false)), Struct_1(-317f, arg_0, vec4<bool>(true, true, false, true)), Struct_1(-524f, arg_0, vec4<bool>(true, false, false, true)), Struct_1(arg_0, arg_0, vec4<bool>(true, false, true, true))), true, Struct_2(Struct_1(arg_0, arg_0, vec4<bool>(false, false, false, true)), Struct_1(141f, 1295f, vec4<bool>(false, true, false, true)), Struct_1(arg_0, arg_0, vec4<bool>(true, false, true, false)), Struct_1(arg_0, -1063f, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(177f, arg_0, vec4<bool>(false, false, false, true)), Struct_1(-1074f, arg_0, vec4<bool>(true, true, false, true)), Struct_1(1000f, -1091f, vec4<bool>(true, true, true, false)), Struct_1(arg_0, -1606f, vec4<bool>(false, false, false, true)))) % vec2<u32>(32u))) & ~vec2<u32>(0u, 36239u)), ~0u), 13u)];
    var var_2 = var_1.c.a;
    let var_3 = -var_0.x;
    global1 = array<Struct_3, 13>();
    return _wgslsmith_div_i32(~firstLeadingBit(countOneBits(_wgslsmith_clamp_i32(1i, global0.x, -36982i))), countOneBits(1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(33007u, 13u)];
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(-1i), ((i32(-1i) * -13452i) >> (select(1u, var_0.d, false) % 32u)) << (_wgslsmith_add_u32(var_0.a.x, 30334u) % 32u)), func_1(var_0.c.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b, var_0.c.b, var_0.c.a) + vec3<f32>(var_0.c.b, 1146f, 1181f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b, var_0.c.a, var_0.c.b)), var_0.c.c.zxy)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1233f, var_0.c.a, -327f))))))));
    let var_3 = vec2<u32>(0u, ~firstTrailingBit(53323u >> (~4294967295u % 32u)));
    global0 = firstLeadingBit(firstTrailingBit(var_0.b));
    global0 = -var_0.b;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(-1i, -2147483647i, all(vec3<bool>(true, var_4, var_4))), var_0.b, countOneBits(var_0.a.x), global0.x);
}

