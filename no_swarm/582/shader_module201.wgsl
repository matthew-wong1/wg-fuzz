struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = select(select(!select(vec3<bool>(false, true, arg_0.a), vec3<bool>(true, arg_1.a, arg_1.a), false), !(!select(vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_1.a, true, true), arg_0.a)), true), select(select(vec3<bool>(!arg_1.a, true, false), vec3<bool>(arg_1.a, arg_0.a, true), vec3<bool>(true, true, arg_1.a)), select(!select(vec3<bool>(arg_0.a, true, false), vec3<bool>(false, arg_0.a, arg_1.a), true), select(vec3<bool>(false, true, arg_1.a), select(vec3<bool>(false, true, arg_1.a), vec3<bool>(true, arg_1.a, arg_0.a), vec3<bool>(arg_0.a, true, true)), select(vec3<bool>(true, arg_0.a, true), vec3<bool>(arg_0.a, true, true), vec3<bool>(true, arg_1.a, arg_1.a))), select(vec3<bool>(true, arg_0.a, arg_0.a), !vec3<bool>(arg_1.a, true, false), !arg_0.a)), all(vec2<bool>(select(arg_1.a, true, false), true))), true && all(select(!vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_1.a, false, false), select(vec3<bool>(arg_0.a, true, true), vec3<bool>(arg_1.a, arg_1.a, false), arg_0.a))));
    let var_1 = Struct_2(false);
    var var_2 = -1i;
    let var_3 = !(false | any(select(vec3<bool>(true, true, true), !var_0, vec3<bool>(true, true, arg_0.a))));
    var var_4 = !select(var_0.yz, !select(vec2<bool>(var_1.a, var_3), !vec2<bool>(var_0.x, arg_0.a), select(vec2<bool>(var_0.x, arg_0.a), var_0.xx, false)), u_input.b.x <= u_input.b.x);
    return reverseBits(u_input.c.zyw) ^ ~(~(-vec3<i32>(0i, u_input.a, u_input.c.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = func_3(Struct_2(arg_1.a), Struct_2(arg_1.a));
    global1 = ~(-2147483647i);
    var var_1 = any(vec4<bool>(u_input.c.x < 30394i, u_input.c.x != -1i, !arg_1.a, true));
    var_1 = false;
    global1 = i32(-1i) * -_wgslsmith_mult_i32(~(-u_input.a), ~(i32(-1i) * -11065i));
    return Struct_1(1u, 1u, arg_1.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(u_input.c) >> (~vec4<u32>(u_input.b.x, arg_2.x, 1u, u_input.b.x) % vec4<u32>(32u)), u_input.c), vec4<i32>(~(i32(-1i) * -28234i), ~_wgslsmith_sub_i32(1i, arg_0.x), u_input.a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.x, u_input.a), countOneBits(u_input.c.x)))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    global0 = array<Struct_3, 15>();
    let var_0 = Struct_4((1f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f - -119f) + _wgslsmith_f_op_f32(trunc(-1289f)))) != !all(!vec3<bool>(true, arg_2.c, arg_2.c)));
    let var_1 = arg_2;
    global0 = array<Struct_3, 15>();
    return Struct_3(Struct_1(u_input.b.x, 1u, !all(select(vec2<bool>(arg_2.c, true), vec2<bool>(true, arg_0), false)), -(~var_1.d)), !func_2(-abs(vec3<i32>(34227i, u_input.a, var_1.d)), var_0, _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(45364u, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-772f)))).c, u_input.c.xyy);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> bool {
    var var_0 = func_4(arg_1.x, u_input.b.x, func_2(u_input.c.zzw, Struct_4(arg_1.x), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.b.x), 1084f));
    var var_1 = Struct_3(Struct_1(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(92900u, 0u)), u_input.b), select(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(26387u, 0u)), u_input.b.x), _wgslsmith_mod_u32(var_0.a.a, 4294967295u), 0u <= _wgslsmith_mult_u32(var_0.a.b, u_input.b.x)), !var_0.a.c, u_input.c.x), !all(arg_1.yxz), u_input.c.xwx);
    var var_2 = func_2(_wgslsmith_mod_vec3_i32(u_input.c.wxz, -(select(vec3<i32>(1i, -54114i, -1i), var_1.c, true) << (vec3<u32>(1u, 61444u, u_input.b.x) % vec3<u32>(32u)))), Struct_4(func_4(!arg_1.x, u_input.b.x, func_2(vec3<i32>(-1i, -18072i, u_input.a), Struct_4(true), ~vec2<u32>(1u, 1830u), _wgslsmith_f_op_f32(f32(-1f) * -454f))).a.c), vec2<u32>(~_wgslsmith_div_u32(126383u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), countOneBits(~(~6964u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f + -982f))))));
    var_2 = func_4(any(!(!arg_1)), 4294967295u, Struct_1(9750u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 20228u, u_input.b.x, var_1.a.b), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.b, var_2.b, 1u, 67864u), vec4<u32>(46512u, 92205u, 0u, var_1.a.a))) & 23894u, var_1.b & true, select(12374i, -var_2.d, true))).a;
    global1 = ~min(var_0.c.x, u_input.c.x);
    return any(arg_1.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 15u)];
    var var_1 = select(!vec4<bool>(func_1(-var_0.a.d, !vec4<bool>(var_0.a.c, true, false, var_0.b)), all(vec3<bool>(var_0.b, var_0.a.c, var_0.a.c)), func_2(countOneBits(vec3<i32>(var_0.c.x, -2147483647i, 17725i)), Struct_4(var_0.a.c), vec2<u32>(u_input.b.x, 32757u), _wgslsmith_div_f32(-314f, 283f)).c, all(!vec4<bool>(var_0.b, false, true, false))), vec4<bool>(!(func_4(false, 4294967295u, var_0.a).a.a <= 4294967295u), func_4(!var_0.b & true, u_input.b.x, func_2(var_0.c, Struct_4(false), vec2<u32>(0u, 24586u) | vec2<u32>(var_0.a.a, u_input.b.x), -119f)).a.c, true, !(!var_0.b)), vec4<bool>(true, all(select(vec4<bool>(var_0.a.c, true, false, var_0.a.c), vec4<bool>(true, true, true, false), !vec4<bool>(var_0.b, true, var_0.a.c, var_0.a.c))), var_0.a.c, true));
    var_1 = vec4<bool>(select(var_1.x, ~(~u_input.b.x) > ~_wgslsmith_clamp_u32(1u, u_input.b.x, 53490u), !func_2(u_input.c.wxz, Struct_4(var_1.x), vec2<u32>(4294967295u, 29808u), 1000f).c | true), !(!var_1.x || any(!vec3<bool>(var_0.b, var_0.a.c, false))), true, !(var_0.b && !var_0.b));
    var var_2 = Struct_4(!(var_1.x && var_0.b));
    var_1 = select(vec4<bool>(any(!(!var_1.wyx)), func_4(u_input.b.x != _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(30265u, u_input.b.x)), _wgslsmith_div_u32(1u | u_input.b.x, ~var_0.a.b), var_0.a).b, var_0.b, !var_0.a.c), !vec4<bool>(true, func_1(1i, vec4<bool>(true, true, true, true)) & true, false, func_2(u_input.c.zzy, Struct_4(var_2.a), ~u_input.b, -851f).c), true);
    var var_3 = ~1u;
    var_0 = func_4(false, _wgslsmith_add_u32(min(u_input.b.x, firstTrailingBit(var_0.a.a)), 4294967295u), func_4((reverseBits(u_input.a) >> (select(u_input.b.x, 14030u, var_0.b) % 32u)) < u_input.c.x, abs(~0u), func_2(vec3<i32>(max(u_input.c.x, u_input.c.x), ~2147483647i, _wgslsmith_dot_vec3_i32(u_input.c.zzy, u_input.c.wxz)), Struct_4(var_2.a), _wgslsmith_add_vec2_u32(vec2<u32>(57814u, 4294967295u), vec2<u32>(var_0.a.b, 0u) & vec2<u32>(4294967295u, var_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-353f * 1000f)))).a);
    var var_4 = !vec3<bool>(true, !select(false, true, !var_0.b), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 32643u), var_0.a.b) <= _wgslsmith_mod_u32(var_0.a.a, ~90367u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a | _wgslsmith_sub_u32(func_4(var_4.x, ~var_0.a.a, var_0.a).a.b, firstLeadingBit(u_input.b.x) | ~4294967295u));
}

