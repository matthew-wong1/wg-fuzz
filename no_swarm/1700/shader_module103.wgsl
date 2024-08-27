struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
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

var<private> global0: vec3<bool>;

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(true, vec3<i32>(-11805i, 2147483647i, 49773i)), Struct_3(true, vec3<i32>(1i, -24409i, 59164i)), Struct_3(true, vec3<i32>(1i, 15130i, 0i)), Struct_3(true, vec3<i32>(-22274i, i32(-2147483648), 0i)), Struct_3(false, vec3<i32>(-1819i, -3756i, 8331i)), Struct_3(false, vec3<i32>(-55017i, 101865i, 1i)), Struct_3(false, vec3<i32>(-1i, 0i, -21991i)), Struct_3(false, vec3<i32>(23995i, 0i, -40864i)), Struct_3(false, vec3<i32>(2147483647i, -10520i, 11264i)), Struct_3(true, vec3<i32>(-16379i, 38467i, 2199i)), Struct_3(false, vec3<i32>(0i, i32(-2147483648), -16649i)), Struct_3(false, vec3<i32>(-52653i, -43976i, 1i)), Struct_3(true, vec3<i32>(1i, 59817i, i32(-2147483648))), Struct_3(false, vec3<i32>(-13531i, 1i, 1i)), Struct_3(false, vec3<i32>(1i, -1i, 62399i)), Struct_3(true, vec3<i32>(1i, 2121i, -1i)), Struct_3(true, vec3<i32>(0i, i32(-2147483648), -18257i)), Struct_3(true, vec3<i32>(-1i, 1i, -23033i)), Struct_3(false, vec3<i32>(2147483647i, -89654i, 1i)), Struct_3(false, vec3<i32>(43642i, 1i, 44381i)), Struct_3(false, vec3<i32>(i32(-2147483648), 1i, 55179i)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<u32>) -> f32 {
    global2 = array<Struct_3, 21>();
    global2 = array<Struct_3, 21>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), -414f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.d)), 1223f));
    var var_1 = -vec3<i32>(u_input.b.x, _wgslsmith_add_i32(~abs(0i), ~(-29798i)), -8995i);
    var_1 = firstTrailingBit(firstLeadingBit(vec3<i32>(2147483647i, var_1.x, ~(~arg_0.b.x))));
    return var_0.x;
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<f32>(-833f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(~u_input.b.x, -u_input.b, true, _wgslsmith_div_f32(-1438f, -1893f)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(4294967295u, 53930u, 5932u), vec3<u32>(20426u, 0u, 7604u), vec3<bool>(true, false, false)), vec3<u32>(0u, 393u, 4294967295u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(52000u, 13303u), vec2<u32>(36798u, 1u)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1968f + -2276f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(289f, 963f, 925f) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1113f, var_0.x, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-346f * var_0.x), var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -546f)), 1431f));
    let var_2 = Struct_1(u_input.b.x >> (max(_wgslsmith_add_u32(~41255u, 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 38344u), ~vec2<u32>(4607u, 36975u))) % 32u), u_input.b, !global0.x, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f * _wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = var_1.yx;
    let var_3 = min(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -1i, var_2.a), vec3<i32>(-1i, 2147483647i, 22200i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 99848i, 5571i), u_input.b.xxy)) | _wgslsmith_mod_i32(19560i, ~u_input.b.x), u_input.a.x, -min(u_input.b.x, var_2.a)), select(var_2.b.xwy, vec3<i32>(~u_input.a.x, _wgslsmith_dot_vec2_i32(var_2.b.zy, select(vec2<i32>(13586i, -21170i), vec2<i32>(2147483647i, var_2.b.x), global0.yx)), 1i), false || all(vec3<bool>(global0.x, true, false))));
    return Struct_3(!global0.x, -vec3<i32>(select(i32(-1i) * -28261i, var_2.b.x, true), -u_input.a.x, var_3.x));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_clamp_i32(u_input.b.x, -_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(u_input.b, u_input.b, true), vec4<i32>(0i, arg_2.b.x, u_input.b.x, 0i)), ~(vec4<i32>(arg_2.b.x, 32240i, -7558i, 49113i) >> (vec4<u32>(4294967295u, 5042u, 4294967295u, 1u) % vec4<u32>(32u)))), u_input.a.x);
    global0 = vec3<bool>(!arg_1.x, any(global0.yy), !select(false, func_2().a, any(!global0.zy)));
    var var_1 = func_2().b.yz;
    global0 = arg_1.zwz;
    global1 = true;
    return ~arg_2.b;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global1 = any(vec3<bool>(select(global0.x, true && arg_0.x, global0.x & (-12614i < u_input.b.x)), !(!all(vec4<bool>(true, false, true, false))), arg_0.x));
    global1 = true;
    let var_0 = _wgslsmith_sub_i32(u_input.b.x, countOneBits(firstLeadingBit(abs(1i))));
    global0 = vec3<bool>(true, arg_0.x, !any(select(vec4<bool>(true, global0.x, true, global0.x), arg_0, global0.x)) || false);
    var var_1 = reverseBits(~func_4(var_0, !arg_0, func_2(), -800f));
    return Struct_1(-_wgslsmith_sub_i32(2147483647i, (-2147483647i | var_0) ^ var_0), min(_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(~u_input.a.x, -1i, ~u_input.b.x, select(var_1.x, -1i, global0.x))), vec4<i32>(-1i, firstLeadingBit(_wgslsmith_sub_i32(u_input.a.x, var_0)), i32(-1i) * -1i, -1i)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1181f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(vec4<bool>(true, true, all(vec3<bool>(false, global0.x, global0.x)) || global0.x, any(vec3<bool>(true, global0.x, global0.x)) || false), select(!select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, true, global0.x, false), global0.x), !(!vec4<bool>(false, global0.x, global0.x, global0.x)), !select(vec4<bool>(false, false, global0.x, false), vec4<bool>(true, true, false, global0.x), false)), !(!select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, true, global0.x, global0.x), true))));
    let var_1 = Struct_1(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_add_i32(-var_0.b.x, 1i)), select(vec4<i32>(-2147483647i, u_input.a.x, func_2().b.x, var_0.a), vec4<i32>(~_wgslsmith_mod_i32(-1i, u_input.b.x), -(~1i), 0i, -_wgslsmith_sub_i32(-49980i, -2178i)), true), global0.x, 1219f);
    global2 = array<Struct_3, 21>();
    var var_2 = global2[_wgslsmith_index_u32(~63536u, 21u)];
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-690f)) * -277f));
    let var_4 = 1u;
    let var_5 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~var_4, var_4, ~16957u, ~40135u) | countOneBits(vec4<u32>(560u, ~48281u, var_4, _wgslsmith_div_u32(57163u, var_4))), select(firstLeadingBit(min(vec4<u32>(1u, 1u, var_4, 9712u), vec4<u32>(1u, var_4, 0u, var_4))) << (reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_4, 0u, var_4, 0u), vec4<u32>(var_4, var_4, var_4, var_4))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_4, var_4, var_4, 18480u) | vec4<u32>(var_4, 26448u, var_4, var_4), vec4<u32>(85634u, 0u, 8142u, var_4) | vec4<u32>(0u, 0u, var_4, 1u)) << ((abs(vec4<u32>(119103u, var_4, 49756u, 1u)) ^ ~vec4<u32>(var_4, var_4, 10134u, var_4)) % vec4<u32>(32u)), select(select(!vec4<bool>(var_1.c, var_1.c, true, var_2.a), !vec4<bool>(var_2.a, var_2.a, false, false), !vec4<bool>(true, false, var_0.c, var_2.a)), select(!vec4<bool>(true, true, true, var_0.c), vec4<bool>(true, false, false, true), select(vec4<bool>(var_2.a, false, var_1.c, false), vec4<bool>(true, true, global0.x, true), vec4<bool>(false, false, var_2.a, var_2.a))), !select(vec4<bool>(var_2.a, var_0.c, var_2.a, false), vec4<bool>(true, false, var_0.c, false), vec4<bool>(var_2.a, false, false, var_1.c)))));
    var_2 = Struct_3(var_2.a, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, 1i, -2147483647i), var_2.b) ^ var_0.b.x, _wgslsmith_add_i32(9239i, -(~(-386i))), ~var_1.b.x));
    let var_6 = Struct_2(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~var_5.yww, var_5.zyw), _wgslsmith_clamp_vec3_u32(var_5.wzz, ~var_5.zxy, vec3<u32>(var_4, 30999u, var_4))));
}

