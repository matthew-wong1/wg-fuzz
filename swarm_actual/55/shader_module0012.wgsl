struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = u_input.a;
    let var_1 = Struct_2(Struct_1(all(vec3<bool>(false, true, false)) && (all(vec3<bool>(true, false, true)) & true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, false)), true, !all(vec3<bool>(false, true, false)), u_input.a));
    var_0 = 1u;
    let var_2 = arg_0;
    var var_3 = 0u;
    return -1058f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(-1i, 1i) == u_input.b.x, !(!select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(arg_0.c, false), arg_0.b)), any(!select(vec2<bool>(arg_0.d, arg_1.a.a), vec2<bool>(false, false), arg_1.a.c)), !any(vec3<bool>(true, true, true)), 13778u));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1463f + _wgslsmith_div_f32(-552f, -864f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2010f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2327f - _wgslsmith_f_op_f32(func_2(-147f))))), _wgslsmith_f_op_f32(f32(-1f) * -610f));
    let var_2 = 0i;
    var var_3 = -970f;
    let var_4 = Struct_2(Struct_1(!any(select(vec3<bool>(var_0.a.d, true, false), vec3<bool>(false, arg_0.d, arg_0.c), vec3<bool>(arg_1.a.b.x, false, var_0.a.d))), !select(!arg_1.a.b, vec2<bool>(true, false), arg_0.c), all(!vec4<bool>(true, var_0.a.d, arg_0.c, arg_1.a.a)), false, _wgslsmith_clamp_u32(0u, arg_0.e, ~4294967295u)));
    return ~u_input.b.x;
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(1151f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-787f * -267f)))));
    var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1324f + _wgslsmith_f_op_f32(f32(-1f) * -797f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1725f + 2309f) - _wgslsmith_f_op_f32(round(-313f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(641f))))) - _wgslsmith_f_op_f32(f32(-1f) * -2358f));
    var_0 = 939f;
    var var_1 = arg_1;
    return select(!select(!vec4<bool>(arg_1.a.x, arg_0, arg_1.b.a.c, arg_0), vec4<bool>(!arg_0, all(vec2<bool>(var_1.c.a, arg_0)), true, true), select(!vec4<bool>(var_1.c.b.x, var_1.b.a.c, arg_1.a.x, true), vec4<bool>(true, true, true, true), var_1.b.a.c)), !vec4<bool>(select(arg_0, true, 7645u >= arg_1.c.e), true, arg_1.c.c, arg_0), arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~u_input.a));
    var var_1 = min(_wgslsmith_dot_vec4_i32(firstTrailingBit(-_wgslsmith_mult_vec4_i32(u_input.b, u_input.b)), vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(func_1(Struct_1(true, vec2<bool>(true, false), true, true, 1u), Struct_2(Struct_1(true, vec2<bool>(false, true), false, true, 0u))), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), -31181i ^ -u_input.b.x, u_input.b.x)), i32(-1i) * -u_input.b.x);
    var_0 = select(~u_input.c, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(~84038u, ~32905u), firstLeadingBit(u_input.a) << (abs(u_input.a) % 32u)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), true, true, true), func_3(true, Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(true, vec2<bool>(false, true), false, true, 0u)), Struct_1(false, vec2<bool>(false, false), true, true, u_input.a))))));
    var var_2 = !all(vec2<bool>(any(vec3<bool>(true, true, true)), true));
    let var_3 = ~abs(u_input.b.zz & ~(u_input.b.zy >> (vec2<u32>(u_input.c, 16062u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(-1i) * -u_input.b.wzx) & (~countOneBits(vec3<i32>(var_3.x, 1i, var_3.x)) ^ _wgslsmith_add_vec3_i32(u_input.b.xxy & vec3<i32>(var_3.x, var_3.x, var_3.x), u_input.b.wyw << (vec3<u32>(u_input.c, 82318u, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1129f - _wgslsmith_f_op_f32(1198f - 370f)), -1122f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1374f, -1242f, true)))), !(!all(vec2<bool>(false, true))))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32((u_input.b.yxx & vec3<i32>(28008i, -51297i, var_3.x)) & vec3<i32>(var_3.x, -20484i, u_input.b.x), _wgslsmith_mod_vec3_i32(~u_input.b.zxz, _wgslsmith_add_vec3_i32(u_input.b.wxx, vec3<i32>(0i, -8055i, 1i)))), 0i, -1i), u_input.b.x);
}

