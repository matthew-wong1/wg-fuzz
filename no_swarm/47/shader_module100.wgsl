struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(43219u, 24247u, 1u, 62980u), vec4<u32>(4294967295u, 1u, 24594u, 4294967295u), vec4<u32>(1u, 67577u, 0u, 11144u), vec4<u32>(4294967295u, 4294967295u, 45028u, 1u), vec4<u32>(16021u, 54276u, 11529u, 4294967295u), vec4<u32>(23891u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 72109u), vec4<u32>(124641u, 0u, 23136u, 53951u), vec4<u32>(4294967295u, 42699u, 9498u, 25723u), vec4<u32>(4294967295u, 0u, 0u, 41993u), vec4<u32>(0u, 10826u, 14410u, 23466u), vec4<u32>(1u, 32905u, 42100u, 65767u));

var<private> global1: bool = true;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = select(vec2<u32>(u_input.d, select(~1362u | min(4294967295u, u_input.a.x), 16497u, 4294967295u <= _wgslsmith_mod_u32(28951u, u_input.d))), ~u_input.a.xx, vec2<bool>(select(!any(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false))), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false))));
    global0 = array<vec4<u32>, 12>();
    global0 = array<vec4<u32>, 12>();
    global0 = array<vec4<u32>, 12>();
    return reverseBits(_wgslsmith_mult_i32(-firstTrailingBit(19832i), countOneBits(u_input.e ^ u_input.e)) & u_input.e);
}

fn func_2(arg_0: vec3<u32>) -> vec3<i32> {
    var var_0 = select(-(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, u_input.e, -10227i, 1i), vec4<i32>(59966i, -2147483647i, 1i, u_input.e))), ~vec4<i32>(~u_input.e, ~u_input.e, 1i, func_3()), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), all(vec2<bool>(false, true))))) << (~vec4<u32>(u_input.c.x, arg_0.x, 59716u, 4294967295u >> (~arg_0.x % 32u)) % vec4<u32>(32u));
    var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(u_input.e, u_input.e), select(~var_0.x, select(2147483647i, -3866i, true), true)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.zyx >> (vec3<u32>(u_input.c.x, u_input.d, 0u) % vec3<u32>(32u)), var_0.zxw, _wgslsmith_mult_vec3_i32(var_0.zyw, var_0.xzy)), var_0.wyw), min(~15205i >> (u_input.c.x % 32u), abs(-34378i))), -_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(0i, var_0.x, u_input.e, 0i)), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.e, var_0.x), vec4<i32>(u_input.e, 21232i, u_input.e, 11681i)))), ~vec4<i32>(~countOneBits(-1i), -11925i, -2147483647i, u_input.e));
    var var_1 = select(vec2<bool>(false, true), vec2<bool>(false, true), (_wgslsmith_sub_i32(2147483647i >> (arg_0.x % 32u), -u_input.e) | var_0.x) > 9467i);
    var var_2 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-(u_input.e >> (1u % 32u)), var_0.x, firstTrailingBit(var_0.x << (u_input.a.x % 32u)), _wgslsmith_sub_i32(-2147483647i, u_input.e)), vec4<i32>(2147483647i, _wgslsmith_mod_i32(-var_0.x, func_3()), -59104i, max(_wgslsmith_div_i32(-1186i, -16200i), 1i)), abs(vec4<i32>(2147483647i, var_0.x, u_input.e, reverseBits(var_0.x)))));
    var_1 = !(!select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, true)), vec2<bool>(true, u_input.e > u_input.e), select(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false), var_1.x), vec2<bool>(var_1.x, var_1.x), true)));
    return ~(~(~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(var_2.ywz, var_2.xzy, var_0.xzy), vec3<i32>(0i, 10029i, 1i) | var_2.ywz)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f + arg_0.e), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-1063f * -422f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec3<f32>(arg_0.e, arg_0.e, -141f));
    return ~func_2(select(vec3<u32>(4294967295u, u_input.d, 63335u) << (u_input.c % vec3<u32>(32u)), ~vec3<u32>(1u, 70163u, u_input.b.x), vec3<bool>(arg_0.c.x, true, true))) | vec3<i32>(1i, 0i, u_input.e);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    let var_0 = Struct_1(!all(vec2<bool>(true, true)), -max(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, arg_1.x, -11521i), vec3<i32>(arg_1.x, 53698i, 45313i)), arg_0), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-379f, -1462f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f + 921f) + -703f))), 1f));
    var var_1 = var_0.c.x;
    var var_2 = arg_3;
    let var_3 = Struct_2(-firstTrailingBit(-2147483647i) >> ((u_input.d << (_wgslsmith_mult_u32(~11046u, arg_2.x) % 32u)) % 32u));
    global0 = array<vec4<u32>, 12>();
    return _wgslsmith_f_op_f32(f32(-1f) * -945f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(170f, 1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * -760f), _wgslsmith_f_op_f32(step(765f, -311f)))), _wgslsmith_f_op_f32(func_4(func_1(Struct_3(Struct_2(-18803i), Struct_2(u_input.e), vec4<bool>(false, false, false, false), true, 625f), vec3<u32>(u_input.b.x, 54247u, u_input.c.x), u_input.e), -vec4<i32>(u_input.e, u_input.e, -12137i, u_input.e), abs(u_input.a.xy), u_input.e))))), vec2<f32>(_wgslsmith_f_op_f32(abs(-431f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2066f, _wgslsmith_f_op_f32(f32(-1f) * -1135f))))));
    global0 = array<vec4<u32>, 12>();
    global1 = !(!(_wgslsmith_sub_u32(min(u_input.d, u_input.d), ~16280u) >= u_input.a.x));
    var var_1 = Struct_2(-23471i);
    var var_2 = max(-u_input.e, ~(_wgslsmith_div_i32(var_1.a, -1i) | 30719i)) << (u_input.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec3<i32>(var_1.a, 35964i, 0i)) | abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a, 0i, var_1.a), vec3<i32>(-1i, -25988i, 0i)))), _wgslsmith_f_op_f32(var_0.x + var_0.x), select(~global0[_wgslsmith_index_u32(u_input.b.x, 12u)], ~vec4<u32>(1u, countOneBits(91723u), u_input.c.x, 1u), false));
}

