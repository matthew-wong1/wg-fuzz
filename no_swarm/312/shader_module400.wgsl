struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = Struct_1(select(vec2<bool>(all(select(vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, true))), true), vec2<bool>(false, true), !select(select(vec2<bool>(arg_2, false), vec2<bool>(true, arg_2), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(arg_2, false), false), u_input.d >= 75330u)), ~_wgslsmith_add_i32(u_input.c, _wgslsmith_dot_vec2_i32(~arg_0, u_input.a.xz)), vec2<i32>(~u_input.c, -arg_0.x), (firstLeadingBit(abs(vec2<i32>(2147483647i, arg_0.x))) ^ ((vec2<i32>(-26141i, 0i) >> (vec2<u32>(u_input.d, 29386u) % vec2<u32>(32u))) & vec2<i32>(arg_3.x, arg_0.x))) ^ vec2<i32>(70222i, 1i), _wgslsmith_f_op_f32(trunc(2284f)));
    global0 = array<Struct_1, 12>();
    var var_1 = global0[_wgslsmith_index_u32(min(arg_1, 1u) | ~u_input.d, 12u)];
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1918f))));
    global1 = array<Struct_1, 15>();
    return ~(var_0.c & reverseBits(u_input.b.wy));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>) -> vec2<i32> {
    return _wgslsmith_mult_vec2_i32(((func_3(vec2<i32>(u_input.a.x, -28148i), 1u, true, arg_2) >> (vec2<u32>(u_input.d, 0u) % vec2<u32>(32u))) ^ ~u_input.a.wy) ^ vec2<i32>(-38790i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), u_input.b.xy), arg_0.b)), vec2<i32>(_wgslsmith_mult_i32(17950i | _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 27952i, arg_0.c.x, u_input.a.x), u_input.a), -(~arg_2.x)), 2147483647i));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1985f - -1452f) - _wgslsmith_div_f32(611f, 1000f)), -3805f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1732f)), _wgslsmith_f_op_f32(f32(-1f) * -924f)))))));
    var var_1 = ~func_2(global0[_wgslsmith_index_u32(4294967295u, 12u)], vec3<u32>(_wgslsmith_mod_u32(~u_input.d, arg_2), 58857u, 8057u), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-13787i, -2147483647i), _wgslsmith_sub_i32(-38662i, -2147483647i), u_input.a.x), reverseBits(u_input.b.xxx)));
    var var_2 = vec3<bool>(arg_1.x, true, select(any(arg_1), true, arg_0));
    var var_3 = min(vec3<u32>(arg_2, min(~_wgslsmith_div_u32(10245u, u_input.d), select(_wgslsmith_mod_u32(3344u, arg_2), ~4294967295u, true)), arg_2), vec3<u32>(1u, 76182u, 1u));
    var var_4 = global0[_wgslsmith_index_u32(~max(reverseBits(_wgslsmith_clamp_u32(u_input.d, ~arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(29643u, 1u, arg_2, 30087u), vec4<u32>(0u, 16918u, 4294967295u, var_3.x)))), var_3.x), 12u)];
    return Struct_1(arg_1.yz, select(func_3(var_4.d, ~u_input.d, select(arg_1.x, true, true), countOneBits(vec3<i32>(2147483647i, 2147483647i, var_4.c.x))).x ^ -32472i, ~var_1.x ^ _wgslsmith_dot_vec3_i32(~u_input.b.xzx, u_input.b.zyw), true), _wgslsmith_mult_vec2_i32(~var_4.d, var_4.d) ^ ~var_4.d, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(var_4.c, ~_wgslsmith_div_vec2_i32(vec2<i32>(-56402i, u_input.b.x), u_input.b.wx)), var_4.c, ~firstLeadingBit(vec2<i32>(arg_3, 1i))), -832f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = false;
    global1 = array<Struct_1, 15>();
    let var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_2 = !(!select(select(vec3<bool>(true, arg_0.a.x, arg_2.a.x), select(vec3<bool>(arg_2.a.x, arg_0.a.x, arg_2.a.x), vec3<bool>(arg_2.a.x, false, true), vec3<bool>(false, false, true)), !vec3<bool>(arg_0.a.x, true, true)), vec3<bool>(false, !arg_2.a.x, false), (u_input.c > 0i) || true));
    let var_3 = Struct_1(var_2.xy, (arg_2.b | -reverseBits(2147483647i)) | -func_3(~arg_0.d, u_input.d, arg_2.a.x, vec3<i32>(arg_0.d.x, -1i, u_input.c)).x, arg_0.d, vec2<i32>(-1i) * -func_3(-vec2<i32>(u_input.c, 2147483647i), ~1u, true, u_input.a.xzw), var_1);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(false, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), u_input.d, _wgslsmith_dot_vec4_i32(-(u_input.b >> (vec4<u32>(26691u, 10957u, 32323u, 0u) % vec4<u32>(32u))), u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1232f, 1428f) + vec2<f32>(-360f, 641f))))), func_1(true, vec4<bool>((1694u >> (u_input.d % 32u)) >= _wgslsmith_mod_u32(u_input.d, u_input.d), true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), true), ~0u, ~(-u_input.a.x)));
    global0 = array<Struct_1, 12>();
    let var_1 = countOneBits(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.d, 51658u, 0u)), vec3<u32>(u_input.d, u_input.d, u_input.d) << (vec3<u32>(u_input.d, u_input.d, 4294967295u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_div_u32(26233u, u_input.d), u_input.d, u_input.d & u_input.d)));
    let var_2 = firstLeadingBit(select(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 0u, var_1.x, var_1.x), vec4<u32>(19313u, 4294967295u, 4294967295u, 16412u)), vec4<u32>(u_input.d, var_1.x, var_1.x, 63241u), vec4<bool>(false, true, var_0.a.x, true)), _wgslsmith_mod_vec4_u32(max(countOneBits(vec4<u32>(1u, 8934u, 0u, 0u)), ~vec4<u32>(0u, var_1.x, 4294967295u, var_1.x)), firstLeadingBit(firstLeadingBit(vec4<u32>(0u, 88745u, var_1.x, 1u)))), var_0.a.x));
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let var_3 = _wgslsmith_sub_vec4_i32(u_input.a << (vec4<u32>(firstTrailingBit(var_2.x), 1u ^ min(u_input.d, 52723u), var_1.x, ~80701u) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, var_0.d.x, _wgslsmith_mult_i32(u_input.b.x, -(var_0.c.x & 0i)), 12387i));
    var var_4 = func_1(!func_1(!func_1(var_0.a.x, vec4<bool>(false, false, var_0.a.x, var_0.a.x), var_1.x, var_3.x).a.x, select(select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), false), !vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, true, false, false)), ~(0u << (u_input.d % 32u)), i32(-1i) * -3006i).a.x, vec4<bool>(var_0.a.x, true, func_4(func_4(global0[_wgslsmith_index_u32(abs(var_1.x), 12u)], vec2<f32>(var_0.e, -277f), global1[_wgslsmith_index_u32(abs(21291u), 15u)]), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.e, -196f), vec2<f32>(var_0.e, var_0.e)))), global0[_wgslsmith_index_u32(4294967295u, 12u)]).a.x, !(!var_0.a.x) | (_wgslsmith_dot_vec2_i32(var_0.c, u_input.b.zx) <= firstLeadingBit(var_0.d.x))), reverseBits(_wgslsmith_dot_vec2_u32(countOneBits(var_1.zx), vec2<u32>(4294967295u, 4294967295u))) ^ 4294967295u, -15062i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(select(vec4<u32>(12937u, 42958u, 0u, var_1.x), var_2, var_0.a.x), var_2) | select(firstLeadingBit(vec4<u32>(0u, u_input.d, var_2.x, var_1.x)), ~vec4<u32>(var_1.x, 14376u, 44770u, var_1.x) << (var_2 % vec4<u32>(32u)), !select(vec4<bool>(var_0.a.x, var_4.a.x, var_4.a.x, var_0.a.x), vec4<bool>(false, false, false, true), vec4<bool>(var_0.a.x, var_4.a.x, var_4.a.x, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.e, -601f, -708f, 331f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(300f, var_0.e, 191f, 714f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(459f, 1456f, -1653f, var_0.e))))), !(0u <= var_1.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1558f, 1325f, var_0.e, var_0.e) * vec4<f32>(263f, var_0.e, var_4.e, 480f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(882f, var_4.e, var_0.e, var_0.e)), vec4<bool>(var_0.a.x, true, false, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-917f, 1486f, 492f, 1000f) - vec4<f32>(var_0.e, 811f, var_4.e, var_0.e)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.e, 1823f, var_0.e, -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.e, var_0.e))))), min(var_2 | vec4<u32>(reverseBits(var_1.x), 86570u | var_2.x, firstTrailingBit(var_1.x), abs(u_input.d)), vec4<u32>(~_wgslsmith_mult_u32(1u, var_2.x), var_2.x, ~abs(var_1.x), select(_wgslsmith_mod_u32(36526u, 184u), ~var_1.x, true))), vec4<i32>(~(-1i), 2147483647i, max(1i, _wgslsmith_dot_vec3_i32(var_3.yxw, var_3.zyy)) >> (abs(var_2.x) % 32u), -(var_3.x | var_0.d.x)));
}

