struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, false, false, true, true, false, false, true, true, false, false, false, true, false, false, false);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = arg_0;
    let var_1 = Struct_5(Struct_4(arg_0.a, abs(_wgslsmith_sub_u32(~33622u, var_0.b)), _wgslsmith_f_op_vec3_f32(-var_0.c)), Struct_2(1i >> (arg_0.b % 32u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, select(4294967295u, 2481u, arg_0.a.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(48103u, arg_0.b), vec2<u32>(0u, var_0.b))), true, Struct_1(~(vec2<u32>(11915u, u_input.d) | vec2<u32>(1u, u_input.c)), -u_input.b.x & -2147483647i, ~u_input.a, vec2<bool>(var_0.a.x, global0[_wgslsmith_index_u32(min(30313u, 15943u), 16u)])), vec4<u32>(var_0.b, 1u, _wgslsmith_sub_u32(~10450u, ~var_0.b), abs(54303u) >> ((var_0.b ^ u_input.d) % 32u))), var_0.a.x, ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, ~55767u, ~86247u), vec3<u32>(u_input.d, 4294967295u, _wgslsmith_mod_u32(u_input.c, arg_0.b))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_div_vec2_u32(var_2.d.xz, vec2<u32>(min(~select(var_0.b, 24241u, true), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_2.b.e.xyy, vec3<u32>(var_2.d.x, u_input.d, 67595u)), var_0.b >> (var_2.d.x % 32u), _wgslsmith_mod_u32(u_input.d, var_2.b.b.x))), var_0.b));
    var var_4 = Struct_3((-299i == firstLeadingBit(~u_input.b.x)) || !arg_0.a.x, Struct_1(~var_2.d.yy, -(~(var_1.b.d.b | var_2.b.d.c)), _wgslsmith_add_i32(var_2.b.a, _wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(var_2.b.d.b, var_1.b.a, 6186i, var_2.b.a))), var_1.a.a.xy), ~(firstLeadingBit(u_input.b.xw) >> (~(~vec2<u32>(13867u, 4294967295u)) % vec2<u32>(32u))), Struct_1(var_2.b.b, var_2.b.a, 30212i, var_1.b.d.d), true);
    return ~2147483647i;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_5) -> vec4<bool> {
    var var_0 = Struct_1(arg_2.b.e.zy, countOneBits(firstLeadingBit(u_input.a)), (~(-2147483647i) | func_3(Struct_4(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 16u)], arg_2.c, arg_2.c), 29972u, arg_2.a.c))) ^ 1i, !vec2<bool>(!arg_2.a.a.x, any(arg_2.b.d.d)));
    let var_1 = arg_2.b;
    var var_2 = arg_2.b.d.d.x & true;
    var_0 = arg_2.b.d;
    var var_3 = arg_2.a.c.xx;
    return select(vec4<bool>(-414f <= _wgslsmith_f_op_f32(-arg_2.a.c.x), any(select(vec4<bool>(var_0.d.x, false, true, false), !vec4<bool>(var_0.d.x, arg_2.c, false, false), !vec4<bool>(true, var_0.d.x, arg_2.a.a.x, global0[_wgslsmith_index_u32(58433u, 16u)]))), select(any(vec4<bool>(var_0.d.x, false, true, false)), false, (1u > var_0.a.x) && arg_2.c), all(!arg_2.a.a) | all(var_1.d.d)), select(select(!(!vec4<bool>(false, arg_2.b.c, var_1.d.d.x, global0[_wgslsmith_index_u32(4294967295u, 16u)])), !vec4<bool>(arg_2.b.d.d.x, var_1.d.d.x, global0[_wgslsmith_index_u32(16340u, 16u)], var_1.c), select(select(vec4<bool>(var_1.d.d.x, false, global0[_wgslsmith_index_u32(var_1.d.a.x, 16u)], var_1.d.d.x), vec4<bool>(true, arg_2.a.a.x, false, var_0.d.x), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], true, var_1.d.d.x, false)), vec4<bool>(true, true, true, true), true)), !select(!vec4<bool>(var_1.c, true, arg_2.b.d.d.x, arg_2.c), vec4<bool>(true, false, true, true), 1i == u_input.a), var_0.d.x), select(select(select(select(vec4<bool>(arg_2.c, global0[_wgslsmith_index_u32(var_0.a.x, 16u)], false, false), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(arg_2.a.a.x, true, var_0.d.x, var_0.d.x)), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 16u)], var_1.d.d.x, false), vec4<bool>(true, false, var_0.d.x, true), var_0.d.x), vec4<bool>(var_0.d.x, arg_2.b.c, var_0.d.x, false)), vec4<bool>(all(vec3<bool>(var_0.d.x, true, false)), all(vec4<bool>(arg_2.b.c, var_0.d.x, false, false)), false, any(vec4<bool>(true, false, arg_2.a.a.x, true))), !any(vec4<bool>(false, arg_2.b.d.d.x, false, true))), !(!select(vec4<bool>(var_1.d.d.x, false, var_1.c, false), vec4<bool>(true, var_0.d.x, false, arg_2.b.d.d.x), true)), false));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = -u_input.b.yxz;
    let var_1 = !(!select(!func_2(arg_0.yw, u_input.a, Struct_5(Struct_4(vec3<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(13376u, 16u)], global0[_wgslsmith_index_u32(arg_0.x, 16u)]), 11053u, vec3<f32>(556f, -265f, -557f)), Struct_2(var_0.x, vec2<u32>(u_input.d, arg_0.x), global0[_wgslsmith_index_u32(24309u, 16u)], Struct_1(arg_0.yx, u_input.b.x, 1i, vec2<bool>(true, global0[_wgslsmith_index_u32(85047u, 16u)])), arg_0), false, vec3<u32>(u_input.d, arg_0.x, arg_0.x))), !func_2(vec2<u32>(25499u, 21689u), u_input.b.x, Struct_5(Struct_4(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 16u)], global0[_wgslsmith_index_u32(17907u, 16u)]), 4294967295u, vec3<f32>(-426f, -907f, 366f)), Struct_2(-7826i, vec2<u32>(arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(0u, 16u)], Struct_1(vec2<u32>(0u, u_input.d), 14673i, -16946i, vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 16u)])), vec4<u32>(0u, arg_0.x, 9502u, 48724u)), false, arg_0.yxy)), select(vec4<bool>(global0[_wgslsmith_index_u32(58043u, 16u)], global0[_wgslsmith_index_u32(u_input.d, 16u)], false, false), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], false, false, false), global0[_wgslsmith_index_u32(abs(arg_0.x), 16u)])));
    var var_2 = var_0.x >> (~countOneBits(~u_input.c ^ u_input.c) % 32u);
    let var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, ~var_0.x), var_0.xx, abs(vec2<i32>(4271i, 1i)));
    var var_4 = reverseBits(u_input.b.yxz);
    return !(!(!vec4<bool>(func_2(arg_0.yy, 0i, Struct_5(Struct_4(vec3<bool>(global0[_wgslsmith_index_u32(27736u, 16u)], var_1.x, false), 1u, vec3<f32>(106f, 373f, 1767f)), Struct_2(var_0.x, arg_0.zw, true, Struct_1(arg_0.wz, -23263i, -2147483647i, vec2<bool>(false, true)), arg_0), var_1.x, arg_0.xyx)).x, true, var_1.x, func_2(vec2<u32>(u_input.d, 52929u), -2147483647i, Struct_5(Struct_4(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(arg_0.x, 16u)]), 68101u, vec3<f32>(-1000f, -606f, 237f)), Struct_2(-61829i, vec2<u32>(1u, u_input.d), false, Struct_1(vec2<u32>(1u, arg_0.x), u_input.b.x, 0i, var_1.zy), vec4<u32>(u_input.c, 1u, 4294967295u, arg_0.x)), false, vec3<u32>(66695u, 1u, 1u))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    let var_0 = !(!(!select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], false), select(vec2<bool>(global0[_wgslsmith_index_u32(596u, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(32154u, 16u)]), global0[_wgslsmith_index_u32(4294967295u, 16u)]), global0[_wgslsmith_index_u32(4294967295u, 16u)])));
    global0 = array<bool, 16>();
    let var_1 = Struct_2(22283i, reverseBits((vec2<u32>(4294967295u, u_input.d) ^ countOneBits(vec2<u32>(0u, 1u))) ^ ~(~vec2<u32>(u_input.c, u_input.c))), select(all(!func_1(vec4<u32>(8770u, u_input.d, 4294967295u, 0u))), true, true), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(40667u, 52157u), vec2<u32>(u_input.d, 4294967295u))) >> (~vec2<u32>(25195u, u_input.c) % vec2<u32>(32u)), ~(~u_input.a), u_input.a | -(i32(-1i) * -2147483647i), vec2<bool>(true, -1i < (u_input.b.x | u_input.b.x))), max(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, 63221u, u_input.d, u_input.d), vec4<u32>(u_input.c, u_input.d, 0u, 1u) ^ vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.c)), ~(vec4<u32>(23455u, u_input.c, u_input.d, 4294967295u) >> (vec4<u32>(u_input.d, u_input.c, 18316u, u_input.d) % vec4<u32>(32u))) ^ ~(~vec4<u32>(1u, 0u, u_input.c, 1u))));
    let var_2 = ~vec2<u32>(countOneBits(_wgslsmith_clamp_u32(var_1.d.a.x, abs(u_input.c), max(var_1.e.x, 53427u))), u_input.c);
    let var_3 = _wgslsmith_mult_i32(~(~(-var_1.d.b >> (4294967295u % 32u))), ~(-2147483647i & -(var_1.a >> (0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_vec3_i32(reverseBits(max(vec3<i32>(0i, 21520i, var_1.d.c), vec3<i32>(19023i, var_1.d.b, var_1.a))), vec3<i32>(_wgslsmith_div_i32(var_1.d.c, var_1.d.b), _wgslsmith_div_i32(-1i, 52634i), -62738i))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * 1689f))), _wgslsmith_f_op_f32(f32(-1f) * -746f)), vec3<f32>(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-569f, -2119f))), _wgslsmith_f_op_f32(149f + _wgslsmith_f_op_f32(-1000f - 1044f))))), ~(~(~var_1.d.a.x) << (4294967295u % 32u)), _wgslsmith_clamp_u32(var_2.x, 4294967295u, ~114814u));
}

