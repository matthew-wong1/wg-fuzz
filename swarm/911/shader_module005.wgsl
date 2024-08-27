struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-15222i, i32(-2147483648), -59648i, 2147483647i), vec4<i32>(-1i, 2147483647i, 389i, 1i), vec4<i32>(2888i, i32(-2147483648), -1i, 1i), vec4<i32>(-50523i, 24137i, 33211i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(7047i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-25494i, -14015i, 64865i, 1i), vec4<i32>(-31818i, 30136i, 1i, 2147483647i), vec4<i32>(40363i, 0i, -18823i, 1280i), vec4<i32>(i32(-2147483648), 1i, -1i, -1324i), vec4<i32>(i32(-2147483648), 2364i, -2023i, 42612i), vec4<i32>(i32(-2147483648), -52911i, -3203i, 2147483647i), vec4<i32>(-27770i, -21559i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 11419i, -82993i, 0i), vec4<i32>(30188i, 1i, 0i, -383i));

var<private> global2: u32;

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    var var_0 = u_input.c.zy;
    let var_1 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), global3.x);
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-590f, var_1.x, false)), global3.x)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-392f - global3.x)))), _wgslsmith_f_op_f32(-global3.x));
    var var_2 = ~0u;
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-516f, -166f, -797f, var_1.x) * vec4<f32>(global3.x, var_1.x, 463f, 1118f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, -977f, -635f, var_1.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, var_1.x, _wgslsmith_f_op_f32(abs(-456f)), _wgslsmith_f_op_f32(ceil(var_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1311f, var_1.x, var_1.x, 1612f)))));
    return -460f;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3()), -486f)), _wgslsmith_mod_u32(~(~8180u), u_input.c.x), ~u_input.b, select(vec2<bool>(arg_0, true), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), false), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), !(!vec2<bool>(arg_0, arg_0))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1853f) * global3.zy) * _wgslsmith_f_op_vec2_f32(-global3.ww)))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1468f, -1000f) * vec2<f32>(global3.x, 169f)))), u_input.c.x, u_input.a, vec2<bool>(u_input.a < -1i, true & (global3.x != global3.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(206f * global3.x), -479f))), vec4<bool>(!any(!vec3<bool>(arg_0, false, arg_0)), all(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)), true)), (u_input.c.x & 0u) != ~u_input.c.x, all(!vec2<bool>(false, arg_0))));
    global2 = _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_div_u32(~u_input.c.x ^ u_input.c.x, abs(_wgslsmith_mult_u32(30825u, 1u))));
    var var_1 = 2147483647i;
    let var_2 = abs(vec2<u32>(u_input.c.x, 1u));
    global0 = array<Struct_3, 24>();
    return var_0.b.a;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = vec4<i32>(u_input.a, 47157i, u_input.a, _wgslsmith_sub_i32(-12115i, u_input.b)) | vec4<i32>(countOneBits(-258i), abs(-(~u_input.b)), u_input.a, _wgslsmith_mult_i32(-28844i, -37242i) & ((u_input.b << (u_input.c.x % 32u)) ^ u_input.a));
    let var_2 = Struct_2(func_2(!(true | (arg_1 != global3.x)), 1i), u_input.c.x, var_1.x, !vec2<bool>(global3.x < -602f, select(false, true, 4294967295u > u_input.c.x)), func_2(any(vec4<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, true)), false, true)), _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(~u_input.c.x | u_input.c.x, 15u)], vec4<i32>(min(-1i, -2147483647i), -u_input.b, max(u_input.a, 2147483647i), -var_1.x))));
    var_0 = _wgslsmith_f_op_f32(sign(637f));
    var var_3 = ~(~vec4<u32>(4294967295u << (max(var_2.b, 2727u) % 32u), _wgslsmith_mult_u32(u_input.c.x, var_2.b), ~(u_input.c.x ^ u_input.c.x), u_input.c.x));
    return Struct_2(arg_2, ~firstLeadingBit(firstTrailingBit(u_input.c.x)), _wgslsmith_clamp_i32(abs(_wgslsmith_mod_i32(min(var_2.c, var_1.x), 80564i ^ var_1.x)), firstLeadingBit(-_wgslsmith_div_i32(-75691i, var_1.x)), reverseBits(_wgslsmith_add_i32(-1262i, var_2.c))), !select(select(select(vec2<bool>(var_2.d.x, true), var_2.d, true), var_2.d, select(var_2.d, var_2.d, var_2.d)), vec2<bool>(true, true && var_2.d.x), true), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.a)));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = func_4(1000f, 1000f, func_2(false, 5873i));
    var var_1 = Struct_1(var_0.a.a);
    var var_2 = _wgslsmith_sub_vec3_u32(max(_wgslsmith_mod_vec3_u32(u_input.c.ywy, ~_wgslsmith_div_vec3_u32(arg_0.wzy, u_input.c.xzw)), _wgslsmith_mod_vec3_u32(~(~u_input.c.xyy), (vec3<u32>(arg_0.x, 0u, 0u) << (u_input.c.wyy % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_u32(arg_0.yxw, arg_0.zyz))), reverseBits(~_wgslsmith_div_vec3_u32(arg_0.xyx, arg_0.wzw)));
    let var_3 = firstTrailingBit(_wgslsmith_div_vec3_u32(abs(vec3<u32>(17262u, arg_0.x, arg_0.x)) >> (((arg_0.wwx | vec3<u32>(1u, 4294967295u, var_2.x)) & u_input.c.zwz) % vec3<u32>(32u)), vec3<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c.zzx, vec3<u32>(var_2.x, u_input.c.x, 4294967295u)), ~var_2.x) & _wgslsmith_mult_vec3_u32(arg_0.zyz, abs(vec3<u32>(4294967295u, 1u, 1u)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(func_4(_wgslsmith_f_op_f32(abs(-742f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1904f)), func_4(_wgslsmith_f_op_f32(-1149f + global3.x), -187f, var_0.e).e).e.a.x, _wgslsmith_f_op_f32(var_0.a.a.x + _wgslsmith_f_op_f32(sign(global3.x)))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.x, _wgslsmith_f_op_f32(exp2(global3.x))), var_0.e.a)));
    return vec4<bool>(global3.x <= global3.x, false, var_0.b < 1u, all(vec3<bool>(true, !all(vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-543f)), global3.x)) == -857f;
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    let var_1 = -1i;
    let var_2 = select(vec4<bool>(var_0, all(vec4<bool>(var_0, any(vec3<bool>(var_0, true, var_0)), true, var_0 || false)), !var_0, all(select(func_1(u_input.c), !vec4<bool>(true, var_0, false, var_0), !vec4<bool>(false, var_0, false, var_0)))), vec4<bool>(all(!vec4<bool>(true, var_0, false, true)), var_0 & true, (_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.yw) >= min(4294967295u, 4294967295u)) || !var_0, all(vec2<bool>(!var_0, var_0))), all(select(vec2<bool>(var_0, any(vec2<bool>(true, true))), vec2<bool>(true, false), vec2<bool>(var_0, var_0 && var_0))));
    var var_3 = global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(~0u, 20700u, u_input.c.x >> (4294967295u % 32u))), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec4<u32>(~1u, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(-1680f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, 2575f)), func_4(_wgslsmith_f_op_f32(ceil(global3.x)), 1f, func_4(310f, global3.x, Struct_1(vec2<f32>(global3.x, -563f))).e).a).b, 0u << (max(_wgslsmith_add_u32(64227u, 1u), ~u_input.c.x) % 32u), u_input.c.x), vec4<i32>(-countOneBits(~(-33842i)), var_1, countOneBits(0i), _wgslsmith_add_i32(~(var_3.x << (u_input.c.x % 32u)), -3350i)));
}

