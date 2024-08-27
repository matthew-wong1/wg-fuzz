struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = Struct_2(~arg_0.d.a, Struct_1(~arg_0.a));
    let var_1 = u_input.a.xy & vec2<u32>(~_wgslsmith_sub_u32(48107u, u_input.b), ~0u);
    var var_2 = abs(arg_0.d.a);
    var var_3 = vec2<bool>(true, !(!arg_1));
    var_3 = !select(vec2<bool>(true, true), vec2<bool>(true, false), select(!select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_1, false), vec2<bool>(false, arg_0.b)), !(!vec2<bool>(false, var_3.x)), vec2<bool>(true, arg_1)));
    return _wgslsmith_mult_u32(~(~u_input.b), var_1.x) << (~(~0u) % 32u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> vec4<bool> {
    let var_0 = u_input.c;
    var var_1 = Struct_1(func_3(Struct_3(~0u, arg_3, ~u_input.a.yxx, Struct_2(0i, Struct_1(u_input.b))), all(select(vec2<bool>(arg_3, false), vec2<bool>(arg_3, true), vec2<bool>(false, arg_3)))) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(8908u, 22160u, 42821u) << (u_input.a.yww % vec3<u32>(32u)), vec3<u32>(1u, u_input.b, 28756u)));
    var var_2 = _wgslsmith_mod_vec2_u32((firstLeadingBit(u_input.a.xz) >> (~vec2<u32>(54346u, 4294967295u) % vec2<u32>(32u))) ^ ~u_input.a.xx, firstLeadingBit(u_input.a.yz ^ u_input.a.wz)) ^ (u_input.a.yw >> (_wgslsmith_add_vec2_u32(~vec2<u32>(var_1.a, arg_2), abs(~u_input.a.wx)) % vec2<u32>(32u)));
    var_2 = _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(var_1.a << (10519u % 32u), _wgslsmith_dot_vec3_u32(u_input.a.zwz, u_input.a.xxx))), max(u_input.a.yx, vec2<u32>(var_1.a, var_1.a)));
    let var_3 = Struct_3(var_2.x, true, vec3<u32>(u_input.b | var_2.x, 82698u, ~(~_wgslsmith_mult_u32(var_1.a, var_2.x))), Struct_2(42860i, Struct_1(4294967295u)));
    return vec4<bool>(any(vec4<bool>(var_0 != 47773i, true, true, any(vec3<bool>(true, false, var_3.b)))) != ((2147483647i <= _wgslsmith_div_i32(arg_1.x, 0i)) || !(!var_3.b)), arg_0.x <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 2680f) + _wgslsmith_f_op_f32(arg_0.x + -399f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))) - 1536f), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = select(_wgslsmith_div_vec4_u32(select(min(_wgslsmith_mod_vec4_u32(vec4<u32>(11642u, u_input.b, arg_2.x, 23349u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u)), u_input.a), countOneBits(vec4<u32>(30308u, arg_2.x, arg_0.a, arg_0.a)), true), vec4<u32>(select(u_input.b, ~u_input.a.x, true), 25762u, 1u, 18861u)), vec4<u32>(44791u, ~(~u_input.b), u_input.b, firstLeadingBit(u_input.a.x)), select(vec4<bool>(true, true, true, true), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(885f, 1579f, 1175f, -1000f) + vec4<f32>(arg_1.x, arg_1.x, -651f, -591f)) - vec4<f32>(869f, 703f, arg_1.x, 512f)), vec4<i32>(0i, -2147483647i, 7716i, -27257i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, u_input.a.x, arg_2.x, u_input.b), u_input.a) % vec4<u32>(32u)), arg_2.x, true), false));
    var_0 = ~vec4<u32>(u_input.a.x, _wgslsmith_div_u32(25109u, u_input.b), u_input.b, ~abs(0u));
    var_0 = u_input.a;
    let var_1 = Struct_4(!select(vec3<bool>(true, true, false), vec3<bool>(false, all(vec4<bool>(false, false, true, true)), true), false), Struct_2(u_input.c, arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1716f + 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-609f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))), any(!func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-728f, -1149f, arg_1.x, arg_1.x), vec4<f32>(2001f, 1000f, 724f, arg_1.x))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -1i, arg_3.x, 17667i), vec4<i32>(arg_3.x, u_input.c, -29270i, arg_3.x)), arg_2.x, any(vec2<bool>(true, true)))), vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, arg_2.x), 4294967295u, 58593u));
    var_0 = vec4<u32>(1u, ~u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.b.a, ~11444u, 0u), _wgslsmith_mod_vec3_u32(var_1.e << (u_input.a.xww % vec3<u32>(32u)), ~u_input.a.xww)) % 32u), max(0u, u_input.b), ~(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, 40837u, 0u, var_1.b.b.a), arg_2), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 32225u, arg_2.x, 2662u), arg_2)) >> (u_input.a.x % 32u)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(310f, arg_1.x) + _wgslsmith_f_op_f32(round(arg_1.x))), var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 745f;
    let var_1 = select(vec2<bool>(all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true), !vec2<bool>(false, _wgslsmith_f_op_f32(func_1(Struct_1(51795u), vec2<f32>(-1388f, 1195f), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 1u), vec3<i32>(7857i, 0i, u_input.c))) < _wgslsmith_f_op_f32(max(2154f, 1358f))), true);
    var_0 = 702f;
    let var_2 = !select(vec4<bool>(true, !var_1.x, all(!var_1), false), select(vec4<bool>(true, u_input.b < 0u, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, !var_1.x, true), !var_1.x), true);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(741f))), 1130f, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1934u), vec2<u32>(11076u, 41234u)), ~4294967295u), _wgslsmith_clamp_u32(~u_input.a.x, firstLeadingBit(0u), firstTrailingBit(1u))) == firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, u_input.b))));
    var var_3 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-11284i, 1i, u_input.c, 2147483647i), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 0i, -26006i, u_input.c), vec4<i32>(10909i, 2147483647i, -2147483647i, u_input.c)), -vec4<i32>(u_input.c, -64070i, u_input.c, 1i))), 0i, 13351i);
    var var_4 = _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(u_input.c, i32(-1i) * -1i, 8614i)), vec3<i32>(firstTrailingBit(-1i), var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.c, -2147483647i, var_3.x), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(40178i, u_input.c, 3289i), vec3<i32>(u_input.c, u_input.c, 0i)), vec3<i32>(1i, var_3.x, 1i)))));
    var var_5 = Struct_3(1u, !var_2.x, ~u_input.a.wwx, Struct_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(max(2326i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c), vec4<i32>(-2147483647i, -2147483647i, var_3.x, -1i))), u_input.c), Struct_1(37016u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 3174f, 1000f), vec3<f32>(-202f, -302f, 560f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(402f, -455f, -473f)), !var_2.zzz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1524f, -1123f, 1124f)), var_2.x))), 28615i);
}

