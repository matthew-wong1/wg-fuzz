struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_2(arg_0, vec2<u32>(1u, 45201u), 0i);
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    let var_1 = Struct_1(max(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, arg_1, -2147483647i), vec3<i32>(u_input.d, 0i, u_input.d)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -2147483647i), vec2<i32>(-11155i, u_input.c.x)), var_0.c, var_0.c), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_i32(~arg_0.a, arg_0.a | vec3<i32>(u_input.c.x, arg_1, u_input.a.x)) | vec3<i32>(1i, 1i, 1i)), ~(~firstTrailingBit(var_0.a.b)));
    return firstTrailingBit(vec3<i32>(17936i, var_0.c, abs(min(reverseBits(arg_0.a.x), _wgslsmith_div_i32(u_input.d, var_1.a.x)))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.b, ~0u, ~4294967295u) << (1u % 32u), firstLeadingBit(u_input.b));
    var var_1 = Struct_4(Struct_3(countOneBits(abs(u_input.a | u_input.a))), Struct_1(_wgslsmith_add_vec3_i32(firstTrailingBit(~vec3<i32>(u_input.a.x, 35510i, -1i)), _wgslsmith_add_vec3_i32(func_3(Struct_1(u_input.c.zyw, vec3<u32>(1u, 0u, var_0)), u_input.c.x), vec3<i32>(u_input.c.x, u_input.d, 27190i) ^ vec3<i32>(u_input.c.x, u_input.d, 1i))), _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(4294967295u, 4294967295u, u_input.b)), vec3<u32>(var_0, 32629u, 70437u), firstTrailingBit(~vec3<u32>(26929u, var_0, var_0)))), ~abs(var_0));
    let var_2 = 1u;
    var_1 = Struct_4(Struct_3(var_1.a.a), var_1.b, var_1.c << ((1u ^ u_input.b) % 32u));
    var_1 = Struct_4(var_1.a, var_1.b, _wgslsmith_dot_vec3_u32(firstLeadingBit(~(vec3<u32>(var_1.b.b.x, 50502u, 1u) | vec3<u32>(1u, var_0, var_2))), _wgslsmith_add_vec3_u32(vec3<u32>(32412u | var_1.c, ~var_1.b.b.x, 1u), ~vec3<u32>(0u, var_2, var_1.c))));
    return -1i;
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    global1 = arg_0.a.a.x;
    let var_0 = select(global0[_wgslsmith_index_u32(arg_0.c, 24u)], vec4<bool>(false, true, true, false), vec4<bool>(!(!all(vec3<bool>(false, true, true))), true, true, true));
    global0 = array<vec4<bool>, 24>();
    let var_1 = vec4<i32>(~u_input.a.x, _wgslsmith_div_i32(u_input.d, u_input.d), u_input.d, -2147483647i);
    global1 = -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, arg_0.b.a.x, func_2()), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.x, -21832i, -2147483647i), ~arg_0.b.a), _wgslsmith_clamp_i32(-74305i, _wgslsmith_clamp_i32(30973i, u_input.c.x, var_1.x), ~(-1i)), ~abs(arg_0.b.a.x)));
    return Struct_4(arg_0.a, arg_0.b, ~_wgslsmith_mod_u32(u_input.b, u_input.b));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> vec3<u32> {
    var var_0 = !vec3<bool>(true, !any(!global0[_wgslsmith_index_u32(9413u, 24u)]), !all(vec2<bool>(true, true)));
    var var_1 = (vec3<i32>(firstTrailingBit(u_input.a.x) & firstLeadingBit(arg_0.b.a.x), -1i, -func_2()) >> (vec3<u32>(~countOneBits(0u), max(0u, 1u), 45630u) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(abs(arg_0.b.b), _wgslsmith_sub_vec3_u32(arg_0.b.b, vec3<u32>(u_input.b, arg_0.c, arg_0.c))), 39515u), ~arg_0.b.b ^ vec3<u32>(_wgslsmith_mod_u32(0u, 59463u), 1u, ~arg_0.c)) % vec3<u32>(32u));
    var_1 = -vec3<i32>(-1i, -(~0i), arg_0.a.a.x << (abs(4294967295u) % 32u)) | u_input.c.ywx;
    global1 = -13619i;
    global1 = -1i;
    return ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_0.b.b.x, u_input.b, arg_0.b.b.x) & vec4<u32>(6718u, u_input.b, arg_0.c, u_input.b), firstLeadingBit(vec4<u32>(arg_0.c, 0u, 62623u, 84502u))), func_1(Struct_4(Struct_3(arg_0.a.a), arg_0.b, u_input.b)).b.b.x, u_input.b), arg_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 24>();
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b)), abs(u_input.b)), abs(4294967295u)), _wgslsmith_div_vec3_u32(~func_4(func_1(Struct_4(Struct_3(vec3<i32>(1i, 4600i, 18529i)), Struct_1(u_input.c.zyw, vec3<u32>(4294967295u, 4294967295u, u_input.b)), 0u)), _wgslsmith_f_op_f32(702f - 288f)), vec3<u32>(_wgslsmith_mult_u32(1u, 47584u), 1u, 0u) >> (vec3<u32>(~u_input.b, 4294967295u >> (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(13220u, 1u), vec2<u32>(49439u, u_input.b))) % vec3<u32>(32u))), (~vec3<u32>(u_input.b, u_input.b, u_input.b) << (~vec3<u32>(u_input.b, u_input.b, 80362u) % vec3<u32>(32u))) >> (max(reverseBits(vec3<u32>(19160u, 9829u, u_input.b) ^ vec3<u32>(0u, u_input.b, 0u)), select(vec3<u32>(u_input.b, u_input.b, 4294967295u) | vec3<u32>(31144u, 23760u, u_input.b), ~vec3<u32>(u_input.b, 4294967295u, 1u), vec3<bool>(true, true, true))) % vec3<u32>(32u)));
    global1 = firstTrailingBit(~u_input.d);
    var var_1 = _wgslsmith_div_f32(-1169f, _wgslsmith_f_op_f32(sign(-763f)));
    var var_2 = Struct_1(~max(u_input.c.wwz, ~(-vec3<i32>(u_input.a.x, -9683i, 25982i))), abs(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1138f, -1520f, 391f) * vec3<f32>(325f, -317f, 523f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, _wgslsmith_f_op_f32(-843f + -1908f), 2081f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(839f, 1439f))), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-950f, 176f), vec2<f32>(-1052f, -363f)))))))), u_input.c.yx, vec4<u32>(u_input.b, 1u, _wgslsmith_mod_u32(~(~43331u), u_input.b), _wgslsmith_div_u32(var_0.x, max(var_2.b.x, 69134u) ^ (var_2.b.x << (49414u % 32u)))), var_0);
}

