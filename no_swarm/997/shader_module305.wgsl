struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(548f, 613f);

var<private> global1: bool = true;

var<private> global2: array<f32, 28>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = select(max(countOneBits(vec2<u32>(u_input.a, 110084u)) & countOneBits(~vec2<u32>(u_input.a, arg_0)), ~firstTrailingBit(vec2<u32>(0u, 21772u))), vec2<u32>(_wgslsmith_mod_u32(4375u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(arg_0, 0u))), 1u), vec2<bool>(any(select(select(vec2<bool>(arg_1.a, false), vec2<bool>(true, arg_1.a), vec2<bool>(true, arg_1.a)), vec2<bool>(true, arg_1.a), arg_1.a)), all(!vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a)) || all(!vec3<bool>(arg_1.a, arg_1.a, arg_1.a))));
    global0 = array<f32, 2>();
    var var_1 = -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-(~vec4<i32>(28874i, u_input.b, u_input.b, u_input.b)), select(vec4<i32>(15675i, u_input.b, u_input.b, 31190i), min(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<i32>(0i, -44231i, 15562i, u_input.b)), !vec4<bool>(true, arg_1.a, arg_1.a, false))), ~(-vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)));
    var var_2 = !(!(!(true & !arg_1.a)));
    global1 = !(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_0, 4203u) >> (((1u & arg_0) << (abs(arg_0) % 32u)) % 32u), 2u)] <= _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return ~(~vec2<u32>(arg_0, select(~u_input.a, 1u | u_input.a, false)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 2u)]) + 1038f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 2u)] - _wgslsmith_f_op_f32(-1042f - global0[_wgslsmith_index_u32(arg_0.d, 2u)]))) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.d, 2u)] + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-988f, 1000f) * _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(11240u, 28u)]))))));
    let var_1 = Struct_5(true, arg_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2247f * global0[_wgslsmith_index_u32(arg_0.d, 2u)]), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(27062u, 2u)], global2[_wgslsmith_index_u32(u_input.a, 28u)]))) - vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], 1137f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1554f, 216f))))), (~(vec2<u32>(arg_0.d, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)) ^ _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, arg_0.d)), ~vec2<u32>(1u, u_input.a))) << (~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) ^ func_3(4294967295u, Struct_1(arg_1.x))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))))));
    var var_2 = Struct_5(arg_1.x, Struct_1(!arg_0.b.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.e, -483f))) - var_1.c) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(11113u, 2u)], -845f))))), vec2<f32>(-2077f, _wgslsmith_f_op_f32(max(var_0, -840f))))), firstTrailingBit(vec2<u32>(arg_0.d, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11752u, 0u, 0u), vec3<u32>(4294967295u, var_1.d.x, u_input.a)), arg_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), -376f)) * -221f)));
    var var_3 = Struct_5(true, Struct_1(all(!vec4<bool>(false, false, arg_0.b.x, false))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c) * var_1.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c + vec2<f32>(-1261f, -198f)))))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), select(vec2<u32>(~4294967295u, 4294967295u), var_2.d, any(select(vec3<bool>(false, true, var_1.a), vec3<bool>(var_1.a, true, false), false)))), 1f);
    global1 = select(all(vec4<bool>(any(!vec3<bool>(true, arg_0.b.x, true)), true, true, true)), any(select(vec3<bool>(true, var_3.a, all(vec3<bool>(false, true, false))), vec3<bool>(arg_0.b.x && var_1.b.a, !var_2.a, true), _wgslsmith_mult_i32(-36730i, arg_0.e) == (-2147483647i | u_input.b))), var_2.a);
    return false;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> bool {
    let var_0 = !(func_2(Struct_2(firstLeadingBit(vec2<i32>(arg_1.a.x, -39156i)), vec2<bool>(true, true), Struct_1(true), _wgslsmith_mod_u32(arg_1.d, 54803u), _wgslsmith_add_i32(1i, arg_1.e)), arg_1.b) || select(false, any(select(vec2<bool>(true, true), arg_1.b, true)), !arg_1.b.x));
    let var_1 = select(-max(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.b, -1i), 0i, -2147483647i), ~abs(vec3<i32>(arg_1.a.x, arg_1.a.x, 0i))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.b, min(arg_1.e, arg_1.e)), ~select(vec3<i32>(1i, -34651i, arg_1.e) ^ vec3<i32>(u_input.b, -16200i, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, u_input.b), vec3<i32>(1i, 45231i, u_input.b)), all(vec4<bool>(var_0, false, false, arg_1.c.a)))), true);
    let var_2 = arg_0;
    var var_3 = select(select(vec4<bool>(var_0, all(!vec3<bool>(true, arg_1.b.x, var_0)), select(true, true, !arg_1.c.a), true), select(vec4<bool>(any(vec3<bool>(arg_1.c.a, false, arg_1.c.a)), arg_1.c.a, 4294967295u >= arg_0.x, true), select(vec4<bool>(false, true, false, arg_1.c.a), !vec4<bool>(false, false, arg_1.b.x, arg_1.b.x), !vec4<bool>(true, false, var_0, arg_1.b.x)), select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(arg_1.b.x, false, false, arg_1.c.a), select(vec4<bool>(var_0, arg_1.b.x, true, arg_1.c.a), vec4<bool>(arg_1.c.a, var_0, var_0, var_0), false))), vec4<bool>(!var_0, true, false, true)), vec4<bool>(all(select(!vec3<bool>(false, var_0, false), !vec3<bool>(arg_1.c.a, arg_1.b.x, arg_1.b.x), vec3<bool>(true, var_0, arg_1.b.x))), -(~(-2147483647i)) <= _wgslsmith_sub_i32(-13311i, min(var_1.x, u_input.b)), var_2.x < (1u & arg_0.x), var_0), vec4<bool>(any(!(!vec3<bool>(arg_1.c.a, true, var_0))), all(!select(vec4<bool>(true, false, true, arg_1.b.x), vec4<bool>(false, false, true, arg_1.b.x), arg_1.b.x)), true, true));
    let var_4 = arg_1.c;
    return !all(select(!select(vec3<bool>(true, false, true), var_3.wzy, vec3<bool>(true, true, var_4.a)), vec3<bool>(true, false, true), select(select(var_3.xwy, vec3<bool>(var_4.a, var_4.a, var_0), vec3<bool>(false, var_4.a, var_4.a)), !vec3<bool>(arg_1.b.x, true, false), var_3.zwy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(select(vec4<bool>(true, true, select(false, false, true), true), vec4<bool>(true, func_1(vec2<u32>(42712u, 4294967295u), Struct_2(vec2<i32>(11123i, 10310i), vec2<bool>(false, false), Struct_1(false), 751u, u_input.b)), true, true), true)));
    global3 = 1u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], 988f)), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global2[_wgslsmith_index_u32(2768u, 28u)])))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 28u)], -257f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(16440u, 28u)], global0[_wgslsmith_index_u32(32838u, 2u)]))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.a, 28u)])), _wgslsmith_f_op_f32(f32(-1f) * -118f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(806f, global2[_wgslsmith_index_u32(1u, 28u)]))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])))), all(!(!vec3<bool>(false, var_0.a, true))))));
    let var_2 = ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a, 9783u, 4294967295u) & vec3<u32>(0u, u_input.a, u_input.a), select(vec3<u32>(19969u, u_input.a, 55246u), vec3<u32>(1u, 16314u, u_input.a), var_0.a), all(vec4<bool>(var_0.a, var_0.a, true, false))) & (~vec3<u32>(1u, 55762u, 1u) >> (~vec3<u32>(u_input.a, 29934u, u_input.a) % vec3<u32>(32u))), vec3<u32>(~(~u_input.a), u_input.a, 95616u));
    let var_3 = Struct_2(-select(~vec2<i32>(u_input.b, -29914i) | ~vec2<i32>(-2510i, u_input.b), vec2<i32>(2147483647i ^ u_input.b, 1i), select(!vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false), true)), !(!vec2<bool>(true, true & var_0.a)), Struct_1(true), ~_wgslsmith_sub_u32(u_input.a, var_2.x), _wgslsmith_mod_i32(u_input.b >> (0u % 32u), u_input.b));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 2u)], -1512f, 249f, var_1.x)))))))), 328f, Struct_3(_wgslsmith_f_op_f32(round(var_1.x)) != -1204f, var_3.c, vec4<u32>(~76719u, ~75019u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), var_2.xx)), 4294967295u), vec4<u32>(~var_2.x, u_input.a, _wgslsmith_clamp_u32(_wgslsmith_add_u32(27839u, var_2.x), abs(12030u), ~var_3.d), _wgslsmith_mod_u32(u_input.a, var_3.d) ^ u_input.a)), select(~(~vec4<i32>(1i, -39642i, u_input.b, 2147483647i)), ~vec4<i32>(2147483647i, select(u_input.b, var_3.e, false), -2147483647i, -22845i), _wgslsmith_mod_i32(var_3.a.x, _wgslsmith_add_i32(var_3.a.x, var_3.e)) <= ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 28u)] + _wgslsmith_f_op_f32(var_4.a.x + -449f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1248f - var_4.b))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4294967295u, 28u)]))) + var_4.a.x));
}

