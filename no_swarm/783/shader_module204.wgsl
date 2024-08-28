struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(16910i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(35957i, 40725i, -1i, 1i), vec4<i32>(12240i, -23767i, -39979i, -13435i), vec4<i32>(-1i, 2147483647i, 0i, 41163i), vec4<i32>(27754i, 58639i, -1i, i32(-2147483648)), vec4<i32>(-1i, -10263i, 2147483647i, -39343i), vec4<i32>(1i, i32(-2147483648), 35891i, -7400i), vec4<i32>(-1i, -1i, -34195i, -1i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = array<vec4<i32>, 8>();
    var var_0 = ~min(arg_0.c.ywz, u_input.a);
    var var_1 = 4294967295u;
    let var_2 = vec3<f32>(-874f, -1400f, 802f);
    var_0 = countOneBits(reverseBits(_wgslsmith_mult_vec3_u32(countOneBits(min(vec3<u32>(var_0.x, u_input.b, 0u), vec3<u32>(20214u, var_0.x, u_input.b))), ~(arg_0.c.wxy << (vec3<u32>(18940u, 4294967295u, 44182u) % vec3<u32>(32u))))));
    return true;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(vec4<bool>(!select(true, true, all(vec2<bool>(false, true))), true, any(vec3<bool>(true, true, true)), true != func_3(Struct_1(vec3<bool>(false, false, false), 18462i, vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), false), 1i)), ~1u, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), any(vec2<bool>(false, false)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(14297i, 18330i), 1i, 231i), _wgslsmith_mult_vec4_u32(vec4<u32>(8771u, reverseBits(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(5886u, 0u), u_input.a.yx), min(24304u, 85414u)), vec4<u32>(44980u, 0u, u_input.a.x, 1u) >> (~vec4<u32>(u_input.b, 1u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), true), Struct_1(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), true), abs(1i), vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x << (u_input.a.x % 32u), 17123u), ~u_input.a.x, u_input.b, u_input.a.x), true));
    let var_1 = ~(~_wgslsmith_clamp_vec3_u32(var_0.d.c.wzy, min(vec3<u32>(1u, 1u, var_0.c.c.x), u_input.a), var_0.d.c.wwx));
    var var_2 = Struct_1(var_0.a.zxy, _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(31595i, var_0.c.b), ~vec2<i32>(var_0.c.b, var_0.c.b)), _wgslsmith_add_vec2_i32(~(vec2<i32>(var_0.d.b, var_0.c.b) << (vec2<u32>(var_0.d.c.x, var_0.d.c.x) % vec2<u32>(32u))), -min(vec2<i32>(7534i, var_0.c.b), vec2<i32>(var_0.c.b, var_0.c.b)))), _wgslsmith_mod_vec4_u32(var_0.d.c, var_0.d.c), u_input.a.x < 4294967295u);
    var var_3 = _wgslsmith_f_op_f32(abs(401f));
    let var_4 = -1000f;
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, var_2.b ^ -1i, 20883i), _wgslsmith_mult_vec3_i32(max(vec3<i32>(46415i, var_0.d.b, var_2.b), vec3<i32>(-1i, var_0.d.b, -15423i)), ~vec3<i32>(var_2.b, var_2.b, var_0.c.b))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_2.b, var_0.c.b)), vec2<i32>(0i, 1i)) << (max(~var_1.x, u_input.a.x) % 32u)) << (min(~4294967295u, _wgslsmith_add_u32(~var_2.c.x, _wgslsmith_add_u32(u_input.b, 167u)) ^ var_0.d.c.x) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = vec3<u32>(1u, 0u, arg_0.c.x);
    let var_1 = abs(vec3<u32>(countOneBits(_wgslsmith_mult_u32(~arg_0.c.x, firstTrailingBit(7518u))), ~4294967295u, ~select(~arg_0.c.x, ~20369u, !arg_0.d)));
    var var_2 = vec3<bool>(any(vec4<bool>(true, true, true, true)), (_wgslsmith_mult_u32(121433u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), var_0.xy)) ^ countOneBits(75500u << (var_0.x % 32u))) <= 9913u, arg_0.a.x);
    let var_3 = arg_0.a.x && (~arg_1.x == ~(~_wgslsmith_clamp_i32(arg_0.b, arg_1.x, arg_1.x)));
    var_2 = arg_0.a;
    return Struct_1(select(select(!(!vec3<bool>(false, arg_0.d, false)), vec3<bool>(true, true, all(vec4<bool>(false, true, true, false))), arg_0.a), vec3<bool>(1u <= max(arg_0.c.x, var_1.x), true, (arg_1.x << (u_input.a.x % 32u)) > arg_0.b), vec3<bool>(true, var_2.x, true | any(var_2.zx))), ~abs(~arg_1.x), firstTrailingBit(countOneBits(_wgslsmith_sub_vec4_u32(arg_0.c << (vec4<u32>(var_1.x, 64977u, var_0.x, arg_0.c.x) % vec4<u32>(32u)), select(vec4<u32>(var_0.x, 4294967295u, 6216u, 91084u), arg_0.c, var_2.x)))), true);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> vec3<f32> {
    let var_0 = Struct_2(arg_0, 1u, func_4(Struct_1(vec3<bool>(all(arg_0.wx), false, false), func_2(), max(~vec4<u32>(22638u, arg_1, 41759u, 1451u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 32523u, 0u, u_input.b), vec4<u32>(48201u, 58275u, arg_1, 56595u))), false), vec2<i32>(1i, 1i)), func_4(Struct_1(vec3<bool>(arg_0.x & arg_0.x, true, all(vec2<bool>(arg_0.x, false))), reverseBits(36878i), ~abs(vec4<u32>(4294967295u, 163991u, u_input.a.x, arg_1)), arg_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(abs(1i), i32(-1i) * -1i), ~vec2<i32>(952i, 10530i))));
    var var_1 = abs(~var_0.c.c.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-525f, -2022f, any(var_0.d.a.yx))), _wgslsmith_f_op_f32(trunc(-1538f))))), _wgslsmith_f_op_f32(round(1172f)));
    let var_3 = !func_4(func_4(Struct_1(arg_0.yzz, -1i, var_0.c.c, true), vec2<i32>(-11159i >> (arg_1 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.b, 1i, 284i), vec3<i32>(var_0.d.b, 55802i, 2147483647i)))), ~vec2<i32>(var_0.d.b, var_0.c.b)).a.yy;
    let var_4 = select(_wgslsmith_sub_i32(var_0.d.b, var_0.d.b), var_0.c.b, (_wgslsmith_mod_i32(13783i >> (0u % 32u), var_0.d.b ^ var_0.d.b) < ~func_2()) & !var_0.c.a.x);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-508f, _wgslsmith_f_op_f32(-891f * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(true, all(vec2<bool>(false, true)), true, true), 4294967295u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2204f, 466f, 167f), vec3<f32>(1000f, -755f, -1264f), false)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), -225f))));
    var var_1 = Struct_2(vec4<bool>(select(true, true, false), true, true, !(func_4(Struct_1(vec3<bool>(false, false, true), 11136i, vec4<u32>(4294967295u, 47888u, u_input.b, u_input.a.x), true), vec2<i32>(14513i, -78669i)).a.x & true)), firstLeadingBit(firstLeadingBit(~abs(64219u))), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), max(1i, ~(~(-2147483647i))), ~vec4<u32>(~46631u, ~u_input.b, ~30872u, 1u), func_3(Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), 1i, ~vec4<u32>(74745u, u_input.b, 57970u, u_input.b), true), -2147483647i)), Struct_1(vec3<bool>(true, true, true), func_4(func_4(func_4(Struct_1(vec3<bool>(true, true, false), 41144i, vec4<u32>(46009u, 4294967295u, u_input.b, 1u), false), vec2<i32>(0i, 1i)), vec2<i32>(-2147483647i, 48117i)), ~(~vec2<i32>(-84791i, 33824i))).b, _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(16566u, 2106u, u_input.b, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(~u_input.a.x, 1u, ~u_input.b, _wgslsmith_div_u32(4638u, u_input.b))), true));
    let var_2 = !vec3<bool>(!var_1.d.d, var_1.a.x, false);
    let var_3 = firstTrailingBit(~(~u_input.b)) << (var_1.b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(var_1.d.b, 28655i), var_3, var_1.d.c.x, 632f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)));
}

