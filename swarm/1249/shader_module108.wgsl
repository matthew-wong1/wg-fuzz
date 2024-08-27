struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_5) -> f32 {
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    var var_0 = Struct_2(Struct_1(~arg_1.c, arg_1.b, 0u, -923f, abs(-1i)));
    let var_1 = _wgslsmith_mod_u32(firstTrailingBit(~arg_1.c), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(firstTrailingBit(arg_1.a), 4294967295u, 1u)), ~(~(~vec3<u32>(var_0.a.c, 47954u, 6055u)))));
    return var_0.a.d;
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(4294967295u, vec2<u32>(u_input.b, ~u_input.b), u_input.b, _wgslsmith_f_op_f32(-104f * -731f), u_input.a), Struct_1(~1u, vec2<u32>(abs(4699u), u_input.b), u_input.b, -849f, abs(u_input.c)), _wgslsmith_div_u32(select(~u_input.b, ~1u, -24247i == u_input.a), u_input.b), Struct_5(-select(vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.c), vec4<i32>(u_input.c, -1i, u_input.c, u_input.c), vec4<bool>(false, false, false, true)), vec3<i32>(1i, min(49127i, 10349i), -2147483647i)))), 1f, -2421f);
    var var_1 = select(~1u >= ~abs(u_input.b << (4294967295u % 32u)), false, !select(false, any(vec4<bool>(false, true, true, true)) || any(vec4<bool>(true, true, false, true)), !any(vec3<bool>(true, true, false))));
    var_1 = any(select(vec4<bool>(true, true, all(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, false, false))), vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false))) & !all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), all(vec2<bool>(false, true))));
    let var_2 = vec4<i32>(u_input.a, ~(countOneBits(u_input.a) & abs(u_input.a)), u_input.c, min(-69148i, countOneBits(0i))) ^ (vec4<i32>(-11609i, -11541i, -u_input.a, _wgslsmith_sub_i32(0i, u_input.c)) | min(vec4<i32>(9980i, -u_input.c, -20779i, ~0i), ~vec4<i32>(-10962i, u_input.c, u_input.a, 0i) << (_wgslsmith_add_vec4_u32(vec4<u32>(38523u, 4294967295u, u_input.b, u_input.b), vec4<u32>(1u, 100494u, 1u, u_input.b)) % vec4<u32>(32u))));
    global0 = array<vec2<i32>, 15>();
    return Struct_4(select(~var_2.zyx, vec3<i32>(max(12430i, -var_2.x), firstTrailingBit(-2147483647i), u_input.a >> (u_input.b % 32u)), !(!any(vec2<bool>(true, false)))));
}

fn func_1() -> f32 {
    global0 = array<vec2<i32>, 15>();
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_1(u_input.b, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), abs(u_input.b)), countOneBits(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, 23515u))), firstLeadingBit(_wgslsmith_add_u32(max(31312u, u_input.b), u_input.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1398f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, ~var_0.a.x), vec2<i32>(-4857i, u_input.c << (u_input.b % 32u)))), Struct_1(1u, select(~(vec2<u32>(47183u, 11503u) >> (vec2<u32>(81328u, u_input.b) % vec2<u32>(32u))), abs(~vec2<u32>(u_input.b, 4294967295u)), vec2<bool>(true, all(vec4<bool>(true, true, false, false)))), u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -581f))))), min(u_input.c << (~u_input.b % 32u), i32(-1i) * -8127i)), u_input.b, Struct_5(firstTrailingBit(vec4<i32>(u_input.c, ~var_0.a.x, -var_0.a.x, 1i)), abs(var_0.a))));
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    return 830f;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_2.a.e, arg_2.a.e & u_input.a, u_input.a, arg_2.a.e ^ arg_2.a.e), ~select(firstLeadingBit(vec4<i32>(23376i, u_input.c, arg_2.a.e, u_input.c)), min(vec4<i32>(-27585i, -51424i, 2147483647i, -2147483647i), vec4<i32>(940i, arg_2.a.e, 66285i, u_input.a)), !vec4<bool>(true, arg_3.b.x, arg_3.b.x, false)));
    var var_1 = arg_3;
    global0 = array<vec2<i32>, 15>();
    let var_2 = func_2();
    var var_3 = Struct_1(0u, reverseBits(~(~vec2<u32>(8233u, 1u))) ^ vec2<u32>(arg_2.a.a, 59613u), 4294967295u, _wgslsmith_f_op_f32(-arg_0), -1i);
    return Struct_2(Struct_1(~arg_1.x | _wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(arg_2.a.b.x, arg_2.a.c)), vec2<u32>(u_input.b ^ 21845u, countOneBits(_wgslsmith_mod_u32(52047u, 33476u))), ~select(~62146u, arg_2.a.a, all(vec3<bool>(true, var_1.b.x, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1672f)), -169f, true)), _wgslsmith_f_op_f32(func_1()))), -var_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    var var_0 = func_4(_wgslsmith_f_op_f32(func_1()), vec3<u32>(~(~u_input.b), ~(_wgslsmith_div_u32(u_input.b, 11639u) >> (~u_input.b % 32u)), _wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, u_input.b)))), Struct_2(Struct_1(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(75673u, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 80285u, 17837u))), countOneBits(select(vec2<u32>(17876u, 4143u), vec2<u32>(u_input.b, u_input.b), false)), 21812u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) * 1034f), -_wgslsmith_sub_i32(-2147483647i, -44856i))), Struct_3(select(vec2<bool>(true, false), vec2<bool>(true, any(vec3<bool>(true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), false)));
    var var_1 = countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(u_input.c, -45838i, var_0.a.e, -1i)), abs(-max(vec4<i32>(-30044i, var_0.a.e, 70130i, -10112i), vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d, _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(var_1.x, -1i, 0i, var_1.x)), vec4<i32>(var_1.x, var_1.x, var_0.a.e, 1i))), min(vec4<i32>(_wgslsmith_mult_i32(u_input.a, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.e, var_1.x, -1i, var_0.a.e), vec4<i32>(var_1.x, 4313i, 2147483647i, u_input.a)), reverseBits(var_1.x), firstTrailingBit(11896i)), vec4<i32>(-2482i, firstLeadingBit(u_input.c), 1i, -1i)), ~vec4<i32>(var_1.x, _wgslsmith_div_i32(22567i, 36810i), ~var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(3577i, -7283i, -38827i), vec3<i32>(-19434i, 21166i, 39659i)))));
}

