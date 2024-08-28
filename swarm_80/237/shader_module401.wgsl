struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_5(global0.c);
    var var_1 = vec4<u32>(1u, _wgslsmith_sub_u32(u_input.d, u_input.d), ~1u, _wgslsmith_div_u32(u_input.d, ~(~u_input.d))) << (vec4<u32>(select(u_input.d, ~(u_input.a & u_input.d), false), 13271u, _wgslsmith_dot_vec2_u32(firstLeadingBit(global0.c.a.xz) ^ vec2<u32>(43572u, u_input.d), global0.c.a.yw), 14601u) % vec4<u32>(32u));
    let var_2 = !arg_3;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0)));
    var var_4 = -1724f;
    return arg_3.x;
}

fn func_2() -> u32 {
    var var_0 = vec3<u32>(~(~(~1u)), global0.d, global0.d);
    let var_1 = vec4<f32>(853f, -1000f, global0.e.x, global0.e.x);
    global1 = select(_wgslsmith_mod_vec4_i32(firstTrailingBit(-(vec4<i32>(u_input.c, 2147483647i, u_input.b, u_input.b) ^ vec4<i32>(u_input.b, u_input.c, u_input.b, 0i))), firstTrailingBit(vec4<i32>(global1.x, 1452i, global1.x, global1.x)) << (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 21403u, global0.d, global0.b), vec4<u32>(65329u, 31837u, u_input.a, 35231u), vec4<u32>(29008u, var_0.x, global0.c.a.x, 0u)), _wgslsmith_mult_vec4_u32(global0.c.a, global0.c.a)) % vec4<u32>(32u))), reverseBits(vec4<i32>(_wgslsmith_clamp_i32(global1.x, global1.x, global1.x), ~global1.x, global1.x, 1i) & countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.b, global1.x))), select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(201f, 1038f)), Struct_3(true), var_1.xw, vec3<bool>(false, true, true))), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), global1.x == global1.x), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)))));
    var var_2 = Struct_1(vec4<u32>(66015u << (~(global0.c.a.x & u_input.d) % 32u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.c.a.x, 4294967295u), 0u), 4294967295u, ~21831u), vec2<f32>(_wgslsmith_div_f32(-2408f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f * -1078f))), _wgslsmith_f_op_f32(f32(-1f) * -379f));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(var_2.c * global0.a.x), _wgslsmith_f_op_f32(-167f + 650f)))), u_input.a, global0.c, _wgslsmith_mult_u32(~_wgslsmith_mod_u32(var_2.a.x, ~1u), var_0.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c, 644f))))));
    return abs(min(var_3.d, 1u));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_3(false);
    let var_1 = reverseBits(reverseBits(~(vec2<u32>(arg_0.x, 4294967295u) & ~vec2<u32>(u_input.a, global0.d))));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.b.x, 1089f, 1010f, 429f), vec4<f32>(-952f, global0.a.x, -640f, -918f))) * vec4<f32>(-865f, global0.e.x, 1571f, global0.e.x))) - _wgslsmith_f_op_vec4_f32(sign(global0.a))), ~1u, global0.c, arg_0.x, vec3<f32>(_wgslsmith_f_op_f32(global0.c.b.x * global0.e.x), global0.c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x + global0.a.x) - _wgslsmith_f_op_f32(abs(global0.c.b.x)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(612f, _wgslsmith_f_op_f32(ceil(-1865f)), _wgslsmith_f_op_f32(-654f + _wgslsmith_f_op_f32(-557f * global0.a.x)), -1000f))), _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, global0.d, 1u, reverseBits(1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(60058u & var_1.x, 52818u, arg_0.x, arg_0.x), _wgslsmith_add_vec4_u32(global0.c.a, reverseBits(global0.c.a)), vec4<u32>(~22605u, ~global0.d, _wgslsmith_dot_vec4_u32(global0.c.a, global0.c.a), ~0u))), Struct_1(abs(reverseBits(global0.c.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.c, 2498f))), global0.e.x), 8252u, vec3<f32>(global0.e.x, 1000f, _wgslsmith_f_op_f32(-global0.c.b.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.a.x, var_2.a.x) * var_2.a.zyz)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1767f, 1296f, global0.a.x) + vec3<f32>(global0.a.x, global0.c.b.x, -857f)) * var_2.e) - vec3<f32>(-477f, -352f, 270f)))));
    return var_2.c;
}

fn func_1() -> i32 {
    let var_0 = func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(599u, u_input.d, global0.c.a.x, 33548u), global0.c.a), _wgslsmith_sub_u32(u_input.a, global0.d), func_2()), 1u, 0u >> ((global0.d << (45872u % 32u)) % 32u)), max(~global0.c.a.wyz, _wgslsmith_mult_vec3_u32(~vec3<u32>(6766u, 62421u, 30990u), reverseBits(global0.c.a.wwx)))), select(vec3<i32>(~(12407i | u_input.b), ~abs(-44117i), _wgslsmith_mod_i32(global1.x, 8338i)), vec3<i32>(~38272i, _wgslsmith_mod_i32(global1.x, global1.x), u_input.c), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), false, true))));
    var var_1 = select(global0.c.a, countOneBits(vec4<u32>(global0.b, var_0.a.x, abs(var_0.a.x) & 0u, 4226u)), !vec4<bool>(~global1.x == -2343i, any(vec4<bool>(true, false, true, false)), true, true));
    global1 = firstTrailingBit(vec4<i32>(u_input.b, global1.x, _wgslsmith_div_i32(-u_input.b, -global1.x), ~_wgslsmith_clamp_i32(-28479i, 6671i, -1i)));
    let var_2 = var_0.a;
    var var_3 = vec3<i32>(~(~42097i), ~abs(u_input.c) >> (~1u % 32u), min(_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, max(u_input.b, u_input.b)), ~1i, u_input.b), 1i));
    return select(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.yx, vec2<i32>(-26934i, -33576i)) | -var_3.yz, -global1.ww)), 1i, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(~func_1(), min(~u_input.c, 50440i), u_input.c) | vec3<i32>(u_input.b, 2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, u_input.c, 0i), global1.zxw)), _wgslsmith_div_vec3_i32(global1.zzy, -vec3<i32>(reverseBits(-2147483647i), _wgslsmith_mod_i32(0i, global1.x), countOneBits(-25601i))));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.yz, vec2<i32>(global1.x, -29144i)), firstTrailingBit(global1.yz))), global1.xw));
    let var_2 = Struct_5(func_4(vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(~global0.c.a.zx, global0.c.a.yx), _wgslsmith_add_u32(1u, u_input.d)), vec3<i32>(abs(1i), u_input.b, global1.x)));
    let var_3 = _wgslsmith_clamp_i32(abs(select(_wgslsmith_dot_vec2_i32(~global1.zy, var_0.xx), global1.x, true)), _wgslsmith_add_i32(-max(~1i, -45385i), 42493i), i32(-1i) * -_wgslsmith_dot_vec3_i32(global1.zxw, reverseBits(var_0)));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, vec4<bool>(any(vec3<bool>(false, false, false)) | (var_2.a.c != global0.e.x), true, all(vec4<bool>(true, true, true, true)), true && func_3(vec2<f32>(var_2.a.b.x, var_2.a.b.x), Struct_3(false), global0.c.b, vec3<bool>(false, true, true))))), 61714u, Struct_1(global0.c.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-885f, var_2.a.c))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c.c + var_2.a.b.x)))), var_2.a.a.x, global0.a.xxz);
    let var_4 = var_2;
    let var_5 = var_4.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(func_4(max(~global0.c.a.yyz, min(vec3<u32>(0u, 1u, 1048u), var_2.a.a.xzy)), var_0).b.x)));
}

