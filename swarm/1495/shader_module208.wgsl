struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    global0 = Struct_1(vec4<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), 49909u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-895f - 1200f) + _wgslsmith_f_op_f32(min(1000f, global0.a.x))) * _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(global0.a.x - global0.a.x), any(vec4<bool>(false, false, true, true))))))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.a * global0.a), _wgslsmith_f_op_vec4_f32(global0.a - global0.a), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, true, false), true))), ~firstLeadingBit(45968u), _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), all(vec4<bool>(false, true, true, true)))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.a))), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0.b, arg_0.a.x, arg_0.b.x, 23927u)), arg_0.b), -159f);
    let var_0 = !any(vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    let var_1 = _wgslsmith_f_op_f32(ceil(global0.c));
    return ~(~arg_0.b.xzy) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(arg_0.a.x, arg_0.a.x, 0u), firstLeadingBit(66335u)), u_input.a);
}

fn func_2(arg_0: Struct_5) -> Struct_2 {
    var var_0 = vec4<u32>(54938u, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.b.x, 4294967295u), u_input.a.x >> (0u % 32u)) << (~(~(arg_0.b.x >> (u_input.a.x % 32u))) % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.b.x, arg_0.b.x), ~14695u), _wgslsmith_dot_vec3_u32(countOneBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b.x, u_input.a.x, arg_0.b.x), u_input.a)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.b.x, 0u, arg_0.b.x)), ~u_input.a), func_3(Struct_2(vec2<u32>(u_input.a.x, 1u), vec4<u32>(1u, u_input.a.x, 65509u, u_input.a.x), vec3<i32>(1i, -1i, -60645i))))));
    let var_1 = vec4<u32>(arg_0.b.x, _wgslsmith_mod_u32(~8205u & (_wgslsmith_mult_u32(u_input.a.x, 60809u) ^ ~global0.b), ~3268u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, ~min(global0.b, 76525u)), ~vec2<u32>(16164u, 11914u)), arg_0.b.x);
    var var_2 = !(!any(select(!vec4<bool>(arg_0.a.a, true, arg_0.a.b.x, false), vec4<bool>(true, false, false, arg_0.a.b.x), !vec4<bool>(arg_0.a.a, false, true, arg_0.a.a))));
    var_0 = var_1;
    var_2 = arg_0.a.b.x;
    return Struct_2(u_input.a.xx, vec4<u32>(func_3(Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(20439u, 6213u), u_input.a.zx), var_1, vec3<i32>(-2147483647i, 0i, 22365i) << (var_1.yxz % vec3<u32>(32u)))).x, ~var_1.x, (_wgslsmith_mod_u32(global0.b, 4294967295u) >> (4294967295u % 32u)) & 1u, arg_0.b.x), vec3<i32>(firstTrailingBit(~(-1i)), 1i, ~1i << (arg_0.b.x % 32u)) ^ min(~vec3<i32>(113178i, -2147483647i, 36892i), select(-vec3<i32>(11515i, -1i, 6075i), vec3<i32>(57752i, 2147483647i, 2147483647i), arg_0.a.a)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    global0 = arg_3.c;
    return arg_2.c.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec3<i32>(~arg_1, reverseBits(max(-2147483647i, func_4(-vec3<i32>(arg_1, -2147483647i, arg_2), func_2(Struct_5(Struct_4(arg_3.a.x, vec2<bool>(false, false), -1000f), vec2<u32>(arg_3.c.b, arg_3.c.b), global0.a)), Struct_2(u_input.a.zz, arg_0, vec3<i32>(-34249i, 1i, 44943i)), Struct_3(vec2<bool>(arg_3.a.x, false), u_input.a.x, arg_3.c)))), select(arg_1, arg_1, arg_3.a.x || true));
    var var_1 = arg_3.c.a.wyz;
    var var_2 = u_input.a;
    let var_3 = arg_3.a.x;
    var_1 = _wgslsmith_f_op_vec3_f32(arg_3.c.a.zzy * _wgslsmith_f_op_vec3_f32(step(arg_3.c.a.wwz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1320f, global0.a.x))))));
    return arg_3.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    let var_0 = Struct_4(!select(arg_1.b.x && arg_1.a, true, all(vec4<bool>(arg_1.a, arg_1.b.x, true, true))) | arg_1.b.x, !arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f) * global0.a.x));
    var var_1 = firstTrailingBit(vec3<i32>(1i, 2147483647i, ~firstTrailingBit(-26864i)));
    var_1 = vec3<i32>(_wgslsmith_mod_i32(var_1.x, 53949i), _wgslsmith_mult_i32(~func_2(Struct_5(Struct_4(true, vec2<bool>(var_0.b.x, arg_1.a), -1055f), u_input.a.zy, arg_0.a)).c.x, 1i), _wgslsmith_mult_i32(firstTrailingBit(-1i), var_1.x));
    var_1 = abs(abs(vec3<i32>(min(2147483647i, _wgslsmith_sub_i32(var_1.x, -1i)), firstLeadingBit(var_1.x), ~2147483647i)));
    global0 = func_1(vec4<u32>(global0.b & global0.b, ~(~min(4294967295u, 48758u)), arg_0.b, arg_0.b), var_1.x, -(i32(-1i) * -select(var_1.x, var_1.x, var_0.b.x)), Struct_3(vec2<bool>(select(!arg_1.a, arg_1.a, false), var_0.a), global0.b, func_1(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.b, u_input.a.x, global0.b), vec4<u32>(4294967295u, arg_0.b, 7047u, 13403u)), var_1.x, var_1.x, Struct_3(select(var_0.b, arg_1.b, arg_1.b), ~1u, arg_0))));
    return _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))) + -829f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, ~global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(vec4<u32>(0u, global0.b, 2848u, u_input.a.x), -13532i, -6382i, Struct_3(vec2<bool>(true, false), 13646u, Struct_1(global0.a, global0.b, 230f))), Struct_4(true, vec2<bool>(true, false), global0.c))) * -1000f)));
    let var_0 = 0u;
    let var_1 = true || !all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true));
    let var_2 = select(vec2<bool>(var_1, all(select(!vec3<bool>(false, var_1, var_1), select(vec3<bool>(var_1, false, true), vec3<bool>(false, var_1, var_1), true), !var_1))), vec2<bool>(true, var_1), vec2<bool>(!var_1, true));
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, -898f, global0.a.x, global0.c), global0.a, vec4<bool>(var_1, true, var_2.x, true)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1119f - -138f), _wgslsmith_f_op_f32(sign(-324f)), _wgslsmith_f_op_f32(round(global0.a.x)), -639f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(global0.a, global0.a)))))), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(-global0.c))))), _wgslsmith_f_op_f32(f32(-1f) * -333f)));
    let var_3 = global0.c;
    global0 = func_1(vec4<u32>(func_3(func_2(Struct_5(Struct_4(var_2.x, vec2<bool>(var_2.x, var_2.x), -368f), u_input.a.xy, vec4<f32>(-1666f, -1000f, global0.c, 1689f)))).x, global0.b, ~u_input.a.x, _wgslsmith_mod_u32(min(~global0.b, max(u_input.a.x, u_input.a.x)), max(1u, 4294967295u) ^ global0.b)), firstLeadingBit(0i), 71128i, Struct_3(vec2<bool>(all(select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_2.x, var_1, var_2.x), true)), true), 35709u, func_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.b, 1u, var_0, global0.b), vec4<u32>(71182u, 42388u, var_0, global0.b) << (vec4<u32>(u_input.a.x, 0u, 34044u, 19135u) % vec4<u32>(32u)), vec4<u32>(4294967295u, global0.b, 58852u, global0.b)), i32(-1i) * -16693i, min(14997i, -6622i), Struct_3(vec2<bool>(false, var_2.x), 18639u >> (u_input.a.x % 32u), Struct_1(global0.a, 108617u, -1625f)))));
    var var_4 = Struct_3(select(vec2<bool>(var_2.x, !var_2.x), !select(!vec2<bool>(var_2.x, var_2.x), var_2, !vec2<bool>(var_2.x, true)), true), 36731u, func_1(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, global0.b, var_0, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 42420u, 29973u), vec4<u32>(global0.b, 20487u, global0.b, 4294967295u)), vec4<u32>(4294967295u, var_0, 75950u, global0.b)), func_4(-vec3<i32>(0i, 1i, 0i), func_2(Struct_5(Struct_4(var_1, vec2<bool>(var_2.x, var_2.x), global0.a.x), u_input.a.zy, global0.a)), func_2(Struct_5(Struct_4(false, var_2, global0.c), vec2<u32>(global0.b, global0.b), vec4<f32>(global0.a.x, global0.c, global0.c, -2154f))), Struct_3(var_2, 1u >> (u_input.a.x % 32u), Struct_1(vec4<f32>(global0.a.x, 484f, 314f, global0.c), global0.b, global0.c))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(35914i, abs(2147483647i))), Struct_3(select(vec2<bool>(var_2.x, var_2.x), !var_2, var_2), 1u | ~var_0, Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(-global0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(i32(-1i) * -35692i, ~1i));
}

