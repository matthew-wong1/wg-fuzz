struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_2(u_input.a.x, Struct_1(arg_0.x || any(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_2.b.a, arg_0.x, arg_2.b.a))), abs(arg_2.b.b)));
    var_0 = arg_2;
    var_0 = Struct_2(abs(-_wgslsmith_div_i32(3561i, u_input.a.x)), arg_2.b);
    var_0 = arg_2;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1221f - arg_1.x))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -1000f)))), 1000f, 866f);
    return vec4<bool>(any(!(!arg_0.xx)) && false, !var_0.b.a, arg_2.b.a && true, true);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_i32(u_input.a.x << (arg_2.c % 32u), arg_2.d ^ arg_1);
    let var_1 = Struct_1(!all(!func_3(vec3<bool>(arg_2.b, arg_2.e.x, false), arg_3.zyz, Struct_2(arg_1, Struct_1(arg_2.b, vec4<u32>(arg_2.c, 0u, arg_2.c, 0u))), arg_0.zy)), select(_wgslsmith_add_vec4_u32(abs(vec4<u32>(2704u, 4294967295u, arg_2.c, 4294967295u) >> (vec4<u32>(arg_2.c, 105228u, arg_2.c, 4294967295u) % vec4<u32>(32u))), firstLeadingBit(~vec4<u32>(arg_2.c, 82357u, 0u, arg_2.c))), (vec4<u32>(arg_2.c, 0u, arg_2.c, 4294967295u) ^ countOneBits(vec4<u32>(arg_2.c, arg_2.c, 51561u, 41068u))) >> (firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.c, arg_2.c, arg_2.c, 4294967295u), vec4<u32>(1u, 4294967295u, arg_2.c, arg_2.c))) % vec4<u32>(32u)), true));
    var var_2 = -1000f;
    let var_3 = var_1;
    let var_4 = arg_2;
    return Struct_1(false, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~var_4.c, 4294967295u), 0u, ~(~0u), var_3.b.x), _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 29965u, 12595u), vec4<u32>(2017u, var_3.b.x, 1u, var_4.c))), ~max(vec4<u32>(var_1.b.x, var_3.b.x, var_1.b.x, 0u), vec4<u32>(var_1.b.x, var_1.b.x, 27272u, arg_2.c)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_2(-1i, arg_1);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-985f, -919f)), _wgslsmith_f_op_f32(abs(-284f)), _wgslsmith_f_op_f32(940f * arg_0.x)), _wgslsmith_div_vec3_f32(arg_0.wyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-755f, -1409f, 566f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1197f, -974f) - vec3<f32>(-842f, -1000f, arg_0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, -523f, arg_0.x), arg_0.www))))), !select(vec3<bool>(arg_1.a, arg_1.a, var_0.b.a), select(vec3<bool>(true, var_0.b.a, var_0.b.a), vec3<bool>(var_0.b.a, true, var_0.b.a), vec3<bool>(true, true, false)), var_0.b.a))), -u_input.a.x, Struct_3(false, false, ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 30636u, 19726u, 1u)), abs(var_0.b.b)), -u_input.a.x << (4294967295u % 32u), vec2<bool>(true, all(!vec3<bool>(true, var_0.b.a, false)))), _wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(524f, -992f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) + -820f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = vec3<i32>(-1i, ~17866i, ~(abs(-u_input.a.x) >> (43919u % 32u)));
    var var_3 = true;
    var var_4 = Struct_3(true, all(!select(!vec2<bool>(var_0.b.a, var_1.a), !vec2<bool>(var_1.a, arg_1.a), !vec2<bool>(var_0.b.a, false))), abs(_wgslsmith_add_u32(max(1u, 1u), 0u)), u_input.a.x, !global0[_wgslsmith_index_u32(~(~(arg_1.b.x ^ arg_3)), 20u)]);
    return Struct_3(var_1.a, arg_1.a, 4294967295u, -25145i, select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_3, 1u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(3662u, 1u), arg_1.b.xy), min(~4294967295u, var_1.b.x)), 20u)], select(vec2<bool>(!var_0.b.a, true), !vec2<bool>(var_4.e.x, true), func_3(!vec3<bool>(var_1.a, var_4.e.x, true), vec3<f32>(-1060f, 628f, 504f), var_0, arg_0.ww).xy), !vec2<bool>(!var_4.a, !var_0.b.a)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<f32>) -> u32 {
    let var_0 = -_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(max(u_input.a.x, u_input.a.x)), u_input.a.x, u_input.a.x), u_input.a.zzz);
    global0 = array<vec2<bool>, 20>();
    var var_1 = Struct_3(true, firstTrailingBit(abs(abs(20337u))) <= firstTrailingBit(~(~10952u)), abs(1u), _wgslsmith_div_i32(1i, -abs(1i)), !select(!select(global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_1.zz, vec2<bool>(true, arg_0)), global0[_wgslsmith_index_u32(~1u, 20u)], !(arg_1.x || false)));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -1260f)), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x - arg_2.x))), _wgslsmith_f_op_f32(ceil(arg_2.x)))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, -163f, _wgslsmith_f_op_f32(max(1621f, arg_2.x)))), max(33460i, u_input.a.x), Struct_3(select(all(vec4<bool>(false, false, arg_0, arg_0)), true, 1311f == arg_2.x), any(!vec3<bool>(arg_1.x, false, false)), var_1.c << (var_1.c % 32u), abs(-18130i), vec2<bool>(var_1.e.x, true)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, 124f, -169f, 850f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 915f, 1244f), vec4<f32>(arg_2.x, arg_2.x, -1000f, -1651f)))))), max(select(_wgslsmith_clamp_vec2_i32(var_0.yy, vec2<i32>(21279i, u_input.a.x) | vec2<i32>(36699i, 16406i), -var_0.xx), -abs(vec2<i32>(u_input.a.x, var_0.x)), func_3(vec3<bool>(false, true, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(616f, arg_2.x, 1401f)), Struct_2(-10799i, Struct_1(true, vec4<u32>(4294967295u, var_1.c, var_1.c, var_1.c))), _wgslsmith_f_op_vec2_f32(-arg_2)).wy), min(~_wgslsmith_sub_vec2_i32(vec2<i32>(9452i, u_input.a.x), vec2<i32>(-2147483647i, u_input.a.x)), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, -1i)), vec2<i32>(-14202i, u_input.a.x)))), ~34104u);
    let var_3 = u_input.a.yz;
    return ~34103u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(min(~vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(1u, 1u, 51131u, 0u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(65430u, 4294967295u, 2703u, 1646u), vec4<u32>(1u, countOneBits(26332u), func_1(var_0, vec3<bool>(var_0, false, var_0), vec2<f32>(243f, -700f)), 1u), vec4<u32>(firstTrailingBit(1u), ~1u, ~18081u, _wgslsmith_mult_u32(4294967295u, 0u)))));
    let var_2 = var_1.x;
    global0 = array<vec2<bool>, 20>();
    let var_3 = ~vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-35183i | u_input.a.x, ~2831i), ~u_input.a.x), -1i << (var_1.x % 32u), _wgslsmith_mod_i32(firstTrailingBit(~u_input.a.x), abs(-8085i)));
    let var_4 = ~u_input.a.zy;
    let var_5 = ~_wgslsmith_div_u32(1u, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(1u, var_1.x, var_1.x, var_5)), ~min(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5, 1u, 4294967295u, 0u), vec4<u32>(28807u, var_5, 4294967295u, 1u)), firstLeadingBit(4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 0u), func_2(vec3<f32>(-1000f, 992f, -425f), var_4.x, Struct_3(var_0, var_0, var_5, 2147483647i, vec2<bool>(var_0, true)), vec4<f32>(439f, 1000f, -1459f, 403f)).b.wy)), (var_4.x ^ 1i) | max(-1805i, -1i), 56485u);
}

