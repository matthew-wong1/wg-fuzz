struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<vec3<f32>, 9>;

var<private> global3: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(1u, 4294967295u), vec2<u32>(43662u, 0u), vec2<u32>(63557u, 4294967295u), vec2<u32>(19038u, 54642u), vec2<u32>(10152u, 18625u), vec2<u32>(0u, 845u), vec2<u32>(29844u, 1u), vec2<u32>(4294967295u, 10289u), vec2<u32>(1u, 84586u), vec2<u32>(72720u, 87500u), vec2<u32>(5269u, 1u), vec2<u32>(34792u, 981u), vec2<u32>(1u, 24793u), vec2<u32>(2943u, 15296u), vec2<u32>(14013u, 1u), vec2<u32>(31226u, 11643u), vec2<u32>(33810u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 14660u), vec2<u32>(9953u, 9605u), vec2<u32>(67066u, 4872u), vec2<u32>(60983u, 27605u), vec2<u32>(3684u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 13516u), vec2<u32>(4294967295u, 0u), vec2<u32>(17607u, 4294967295u), vec2<u32>(23699u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec2<bool>) -> vec4<u32> {
    global3 = array<vec2<u32>, 29>();
    global0 = Struct_1(_wgslsmith_clamp_vec2_i32(select(-arg_1.xx, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(arg_1.x, global0.a.x)), !vec2<bool>(arg_3.x, arg_3.x)), vec2<i32>(-67062i, abs(global0.a.x)), _wgslsmith_add_vec2_i32(firstTrailingBit(arg_1.zx), firstLeadingBit(arg_1.wy))) >> (vec2<u32>(arg_2.x, ~(~u_input.e)) % vec2<u32>(32u)));
    let var_0 = ~vec3<u32>(_wgslsmith_mult_u32(u_input.e, u_input.b) >> (~max(arg_2.x, 1u) % 32u), 4294967295u, arg_2.x);
    global2 = array<vec3<f32>, 9>();
    global3 = array<vec2<u32>, 29>();
    return ~_wgslsmith_add_vec4_u32(~(~arg_2) ^ select(_wgslsmith_mult_vec4_u32(arg_2, arg_2), vec4<u32>(0u, 4294967295u, var_0.x, 75683u), select(false, arg_3.x, arg_3.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(arg_2, vec4<u32>(4294967295u, var_0.x, 22050u, arg_2.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_2.x, 0u, arg_2.x), arg_2), vec4<u32>(~0u, var_0.x, 3999u | var_0.x, 35697u)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(arg_0, -27937i) << (_wgslsmith_add_u32(1u, max(u_input.e, u_input.e)) % 32u), arg_0, reverseBits(arg_0 << (~(~26415u) % 32u)), 1i);
    global3 = array<vec2<u32>, 29>();
    var var_1 = vec2<i32>(-1i) * -(-(~vec2<i32>(arg_0, arg_0)) << (select(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), global3[_wgslsmith_index_u32(26918u, 29u)]), global3[_wgslsmith_index_u32(u_input.e, 29u)] << (vec2<u32>(arg_2, 45171u) % vec2<u32>(32u)), true) % vec2<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-select(vec2<i32>(-27420i, global0.a.x), var_0.xx, vec2<bool>(true, false)), select(abs(global0.a), vec2<i32>(1i, 1i), true), vec2<i32>(var_1.x, -6648i) | vec2<i32>(arg_0, var_1.x)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, ~global0.a.x), var_0.ww)));
    let var_3 = var_2.a;
    return select(_wgslsmith_div_u32(arg_2 << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(25907u, 0u, 82198u, 29994u), vec4<u32>(arg_2, 87034u, arg_2, 49498u), false), func_3(arg_1.x, var_0, vec4<u32>(0u, arg_2, 49789u, 57065u), vec2<bool>(true, true))) % 32u), min(1u, arg_2)), u_input.b, !((_wgslsmith_f_op_f32(min(-919f, arg_1.x)) < _wgslsmith_f_op_f32(213f - arg_1.x)) || (_wgslsmith_f_op_f32(f32(-1f) * -214f) != _wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    global3 = array<vec2<u32>, 29>();
    let var_0 = Struct_1(select(-(~vec2<i32>(global0.a.x, 2147483647i)), global0.a, select(true, true, any(vec2<bool>(true, true)))));
    var var_1 = Struct_2(!select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), _wgslsmith_f_op_f32(f32(-1f) * -251f), var_0);
    let var_2 = max(vec3<i32>(u_input.c | (var_0.a.x >> (reverseBits(4294967295u) % 32u)), var_1.c.a.x, _wgslsmith_div_i32(var_0.a.x, global0.a.x >> (4294967295u % 32u)) << (u_input.e % 32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-5375i, -26565i, 0i)), ~vec3<i32>(global0.a.x, var_1.c.a.x, u_input.c)), vec3<i32>(8858i, _wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, var_0.a.x) ^ 2891i, _wgslsmith_div_i32(18593i, var_1.c.a.x)), -_wgslsmith_sub_vec3_i32(~vec3<i32>(1i, -18241i, -85503i), ~vec3<i32>(-1i, global0.a.x, 12050i))));
    let var_3 = any(!(!(!(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true)))));
    return var_1.c;
}

fn func_1() -> Struct_1 {
    let var_0 = firstLeadingBit(~(~vec4<i32>(1i, -31008i, global0.a.x, u_input.c)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 61229u, 26302u, u_input.e), vec4<u32>(u_input.b, 25009u, 4294967295u, u_input.e)), vec4<u32>(43923u, 116333u, u_input.e, 1u)) % vec4<u32>(32u))) & -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.x, abs(u_input.d), global0.a.x | 36524i, 1i), select(select(vec4<i32>(-6529i, -1937i, 2147483647i, 2147483647i), vec4<i32>(32436i, -1i, global0.a.x, u_input.d), false), -vec4<i32>(global0.a.x, -1i, 19529i, global0.a.x), any(vec2<bool>(false, false))), select(vec4<i32>(global0.a.x, u_input.d, -41165i, 4951i), ~vec4<i32>(global0.a.x, global0.a.x, -1632i, global0.a.x), vec4<bool>(false, true, true, false)));
    global3 = array<vec2<u32>, 29>();
    var var_1 = func_4(vec4<u32>(10024u << ((~78612u >> (min(u_input.b, u_input.e) % 32u)) % 32u), ~u_input.b, func_2(-27868i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(175f, 1440f, -1500f, 1000f) + vec4<f32>(1000f, -428f, -463f, -845f))), ~(~u_input.e)), u_input.e));
    var var_2 = Struct_1(global0.a);
    let var_3 = func_4(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b & abs(u_input.b), 1u, 19474u, 1u), ((vec4<u32>(u_input.b, u_input.e, 4529u, u_input.b) & vec4<u32>(u_input.b, u_input.b, 0u, u_input.e)) | select(vec4<u32>(u_input.e, 0u, u_input.e, u_input.e), vec4<u32>(0u, u_input.b, u_input.b, 69306u), vec4<bool>(false, false, false, false))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 1u, u_input.b), vec4<u32>(94370u, 80093u, 13654u, u_input.b)), select(vec4<u32>(4294967295u, 0u, u_input.e, u_input.b), vec4<u32>(0u, u_input.e, u_input.b, u_input.e), true)) % vec4<u32>(32u))));
    return func_4(vec4<u32>(_wgslsmith_div_u32(1u, select(47145u << (u_input.e % 32u), 4294967295u, true)), firstTrailingBit(_wgslsmith_sub_u32(u_input.b, ~u_input.e)), 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 1u, 27845u), countOneBits(vec3<u32>(u_input.e, u_input.e, u_input.e)))));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    global1 = arg_0;
    var var_0 = Struct_2(vec2<bool>(!(u_input.b > 61333u) & true, u_input.b != ~u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1589f) * 1f)) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1024f, _wgslsmith_f_op_f32(216f - 1289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-844f)) - _wgslsmith_f_op_f32(-1703f * 1004f)), false))), func_4(vec4<u32>(u_input.b & u_input.b, ~55071u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 12776u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, 39829u, 21865u)), u_input.b), ~0u)));
    let var_1 = true;
    global1 = var_0.a.x;
    var var_2 = Struct_2(!(!vec2<bool>(!var_0.a.x, !var_1)), 1000f, func_4(func_3(var_0.b, vec4<i32>(arg_1.a.x, _wgslsmith_sub_i32(-38759i, arg_1.a.x), _wgslsmith_clamp_i32(-2147483647i, -8190i, var_0.c.a.x), ~(-193i)), vec4<u32>(u_input.e, 0u, 4038u, min(19672u, u_input.b)), var_0.a)));
    return vec3<bool>(var_0.a.x, any(!vec3<bool>(var_2.a.x || arg_0, false, u_input.b <= 0u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(firstTrailingBit(vec2<i32>(global0.a.x, -1i)));
    global1 = all(vec2<bool>(true, true));
    var var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(false, global0.a.x < -26690i, all(vec3<bool>(false, true, false))), 21844i < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 29732i, global0.a.x, global0.a.x), vec4<i32>(u_input.d, global0.a.x, global0.a.x, u_input.a.x))), select(func_5(true, func_1()), vec3<bool>(true, true, true), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), func_5(false, Struct_1(vec2<i32>(0i, 27187i))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), true);
    global1 = func_5(false, func_4(firstTrailingBit(vec4<u32>(~51968u, u_input.e >> (0u % 32u), ~u_input.e, _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.e, 29u)], global3[_wgslsmith_index_u32(1u, 29u)]))))).x;
    var var_1 = abs(37302u);
    global3 = array<vec2<u32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.d, global0.a.x, u_input.a.x, u_input.a.x), ~vec4<i32>(global0.a.x, 0i, 1i, -1i), var_0.x), -(~vec4<i32>(global0.a.x, 1i, -49545i, global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1298f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f + -319f) - _wgslsmith_f_op_f32(max(-358f, -875f))))));
}

