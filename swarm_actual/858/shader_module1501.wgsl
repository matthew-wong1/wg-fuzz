struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(135f, 2506f, 600f, 186f, -1000f, 966f, -1000f, 1112f, 815f, -1400f, 512f, 387f, 1000f);

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = array<f32, 13>();
    let var_0 = ~vec2<u32>(reverseBits(~u_input.b), 0u);
    let var_1 = ~(~(~var_0.x));
    var var_2 = i32(-1i) * -(~(-29638i));
    let var_3 = true;
    return u_input.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(~(~4294967295u), u_input.e, u_input.e), vec3<u32>(9297u, u_input.e, (u_input.e << (u_input.e % 32u)) >> (1u % 32u))), global1[_wgslsmith_index_u32(u_input.c.x, 14u)]);
    var_0 = Struct_2(~(~max(vec3<u32>(1u, u_input.e, 90978u), vec3<u32>(32316u, 4953u, var_0.b.b))) & countOneBits(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 34847u), ~16990u, u_input.e)), Struct_1(!(!var_0.b.a), u_input.b << (0u % 32u), -var_0.b.c & arg_0.x, true, _wgslsmith_f_op_f32(min(710f, _wgslsmith_f_op_f32(arg_1.x - var_0.b.e)))));
    var_0 = Struct_2(vec3<u32>(~min(var_0.b.b, 50896u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~u_input.c.zy, vec2<u32>(u_input.c.x, 42648u)), var_0.a.x), min(abs(var_0.a.x), var_0.b.b)), Struct_1(true, u_input.b, func_3(1i), !any(vec3<bool>(true, var_0.b.d, false)) || (all(vec3<bool>(true, false, var_0.b.d)) || true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2309f)))));
    let var_1 = abs(~vec4<u32>(var_0.b.b, firstLeadingBit(~var_0.b.b), 0u, var_0.b.b));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-924f - _wgslsmith_f_op_f32(675f * arg_1.x))))) - var_0.b.e);
    return !select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(all(vec3<bool>(true, true, true)), var_0.b.d, true), !(u_input.b != ~var_1.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(u_input.c, Struct_1(!func_2(select(vec4<i32>(3540i, u_input.d.x, -1i, u_input.d.x), vec4<i32>(-2147483647i, 8982i, -1i, 0i), arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(323f, global0[_wgslsmith_index_u32(u_input.c.x, 13u)], global0[_wgslsmith_index_u32(arg_2.x, 13u)], 970f))).x, ~(~(~arg_2.x)), -77575i, !any(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), arg_1));
    let var_1 = Struct_2(~vec3<u32>(var_0.b.b, 1u, ~firstLeadingBit(1u)), var_0.b);
    var var_2 = Struct_3(var_0.b.e, select(select(select(arg_0.zy, !arg_0.yz, true), vec2<bool>(true, var_0.b.a), !arg_0.yx), select(!arg_0.xy, !arg_0.xx, func_2(~vec4<i32>(var_0.b.c, var_1.b.c, -1i, u_input.d.x), vec4<f32>(-1137f, arg_1, arg_1, -1000f)).xx), vec2<bool>(arg_0.x, true)), Struct_2(u_input.c, var_1.b), Struct_1(true, _wgslsmith_div_u32(~(~arg_2.x), ~4294967295u >> ((57306u & var_0.a.x) % 32u)), _wgslsmith_sub_i32(var_0.b.c, 1i), false, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(firstLeadingBit(29799u) | min(0u, u_input.c.x), 13u)]))));
    let var_3 = var_2.b;
    let var_4 = Struct_1(var_0.b.a, 53965u, min(func_3(0i), -17783i << (~var_0.b.b % 32u)) << (u_input.b % 32u), var_3.x, 951f);
    return Struct_1(arg_0.x, arg_2.x, -firstLeadingBit(var_0.b.c), all(select(!vec4<bool>(true, true, true, var_4.d), !select(vec4<bool>(true, var_0.b.d, true, var_3.x), vec4<bool>(var_2.c.b.a, var_3.x, var_3.x, var_2.b.x), var_1.b.a), vec4<bool>(all(arg_0), true, !arg_0.x, !arg_0.x))), _wgslsmith_f_op_f32(sign(var_2.a)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(735f * 1382f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, arg_1 & arg_1), 13u)])));
    var var_1 = true;
    global1 = array<Struct_1, 14>();
    let var_2 = vec2<u32>(abs(u_input.b), 27979u);
    var_1 = true;
    return Struct_2(_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b, _wgslsmith_clamp_u32(var_2.x, 24160u, 50320u), ~6895u)), ~_wgslsmith_div_vec3_u32(~u_input.c, select(vec3<u32>(10520u, u_input.b, arg_1), u_input.c, vec3<bool>(true, true, false)))), func_4(select(func_2(min(arg_2, vec4<i32>(arg_0.x, u_input.d.x, 0i, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(29984u, 13u)], 1554f, 193f, global0[_wgslsmith_index_u32(15187u, 13u)]))), vec3<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(false, false)), true), true), global0[_wgslsmith_index_u32(min(14545u, 1u), 13u)], var_2));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> vec2<f32> {
    global0 = array<f32, 13>();
    var var_0 = _wgslsmith_f_op_f32(select(arg_1.a, arg_1.d.e, any(vec3<bool>(true, all(arg_1.b) != true, (arg_1.d.e <= 1423f) || true))));
    var var_1 = Struct_3(_wgslsmith_div_f32(2732f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(13352u, 13u)]))) + global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.c.b.b, u_input.c.x), 13u)])), arg_1.b, func_1(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(2147483647i, arg_1.c.b.c, u_input.d.x, arg_0)), firstTrailingBit(vec4<i32>(arg_0, arg_1.d.c, -1i, 1i))), 4294967295u, -(~(~vec4<i32>(2147483647i, 2147483647i, arg_0, -8677i)))), arg_1.c.b);
    var_0 = arg_1.d.e;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_1.d.b, 13u)], arg_1.c.b.e)) * func_4(vec3<bool>(false, func_1(vec4<i32>(arg_1.c.b.c, 2147483647i, 0i, var_1.d.c), arg_1.d.b, vec4<i32>(arg_1.d.c, var_1.c.b.c, 2147483647i, -1i)).b.d, true), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(reverseBits(arg_1.c.a.x), 13u)])), arg_1.c.a.xx & ~arg_1.c.a.xx).e), -405f, func_1(~_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_1.d.c, arg_0, 0i, 51595i), vec4<i32>(-16899i, arg_1.c.b.c, arg_1.c.b.c, u_input.a.x) | vec4<i32>(arg_1.c.b.c, 2147483647i, var_1.d.c, 0i)), 86400u, vec4<i32>(~0i, arg_1.d.c, u_input.a.x ^ -16715i, -1i)).b.e);
    return var_2.xz;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_u32(~u_input.c, vec3<u32>(~10615u, arg_1.a.x, arg_3.x)), arg_1.b);
    var var_1 = firstTrailingBit(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(1u, var_0.a.x)), 83349u, ~1u)) | func_1(vec4<i32>(_wgslsmith_mult_i32(var_0.b.c, 1i), 2147483647i, -1i, arg_1.b.c), min(_wgslsmith_mod_u32(arg_3.x, u_input.b), arg_3.x), abs(vec4<i32>(-43061i, u_input.a.x, -2147483647i, var_0.b.c))).a);
    var var_2 = arg_1;
    var_0 = arg_1;
    var var_3 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_2, _wgslsmith_clamp_i32(var_2.b.c, u_input.d.x & var_2.b.c, reverseBits(0i)), arg_2)), vec3<i32>(25717i, select(-1i, -var_0.b.c, true), -4529i));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(func_5(u_input.a.x, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -127f), vec2<bool>(true, true), func_1(-vec4<i32>(u_input.a.x, u_input.d.x, u_input.d.x, -1i), firstLeadingBit(4294967295u), select(vec4<i32>(u_input.a.x, -66454i, 16593i, u_input.d.x), vec4<i32>(9014i, -1i, u_input.a.x, u_input.a.x), vec4<bool>(false, true, true, true))), func_4(vec3<bool>(true, true, true), 175f, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.b, u_input.c.x)))))), Struct_2(u_input.c, Struct_1(!func_2(vec4<i32>(2351i, 10106i, u_input.d.x, 2147483647i), vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 13u)], global0[_wgslsmith_index_u32(36074u, 13u)], -111f, 281f)).x, ~u_input.e, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d.x, u_input.a.x), _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(-10467i, 3339i))), any(vec3<bool>(false, true, true)) & true, -860f)), -u_input.d.x, vec2<u32>(_wgslsmith_clamp_u32(u_input.e, ~select(25729u, u_input.c.x, true), func_4(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(u_input.c.x, 13u)], vec2<u32>(u_input.c.x, 1u)).b & u_input.c.x), min(_wgslsmith_sub_u32(0u, u_input.c.x), u_input.b) | u_input.c.x));
    global1 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(var_0.a.x, 1u) >> ((_wgslsmith_dot_vec3_u32(var_0.a, u_input.c) << (max(var_0.b.b, 4294967295u) % 32u)) % 32u), ~(~4294967295u)), var_0.a.x);
    var var_2 = ~min(func_1(vec4<i32>(-17728i << (var_1 % 32u), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.c, -2147483647i, u_input.a.x, var_0.b.c), vec4<i32>(var_0.b.c, var_0.b.c, var_0.b.c, 20780i)), var_0.b.c), _wgslsmith_dot_vec2_u32(u_input.c.zx, _wgslsmith_mult_vec2_u32(var_0.a.yy, vec2<u32>(8772u, 20199u))), vec4<i32>(-81264i, -2147483647i, var_0.b.c ^ 61903i, -40575i)).a, ~(~(~u_input.c)));
    let var_3 = ~(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_2.x, var_0.b.b, var_1, 123278u), vec4<u32>(74861u, 0u, 4294967295u, 0u), vec4<bool>(true, true, var_0.b.d, true)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 0u, var_2.x, var_2.x), vec4<u32>(var_0.b.b, u_input.b, var_2.x, var_1)), firstTrailingBit(vec4<u32>(217u, var_1, u_input.e, 37771u))), countOneBits(select(vec4<u32>(var_0.a.x, var_0.b.b, 57864u, 0u), vec4<u32>(4186u, 87842u, 61217u, var_2.x), vec4<bool>(true, true, false, var_0.b.d)))));
    var_0 = Struct_2(vec3<u32>(firstLeadingBit(var_0.b.b & 8636u) | ~(~0u), ~5497u, ~(~u_input.e)), func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1024f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(10995u, 13u)], -192f))), Struct_2(max(vec3<u32>(0u, var_2.x, 0u), vec3<u32>(56831u, var_0.a.x, var_3.x)) ^ u_input.c, func_4(func_2(vec4<i32>(-2147483647i, -14397i, 54138i, 0i), vec4<f32>(var_0.b.e, 848f, 2094f, -107f)), -268f, vec2<u32>(0u, var_0.a.x))), func_1(_wgslsmith_div_vec4_i32(vec4<i32>(-10145i, 2147483647i, u_input.d.x, var_0.b.c), vec4<i32>(-17947i, 75377i, var_0.b.c, -6923i)), var_2.x, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.c, u_input.d.x, -7364i, 0i), vec4<i32>(-64014i, 2147483647i, -2147483647i, var_0.b.c)) ^ -vec4<i32>(u_input.a.x, 27255i, u_input.d.x, u_input.d.x)).b.c, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.e), ~var_0.a.yx), _wgslsmith_mod_vec2_u32(abs(u_input.c.yz), var_3.zx))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_0.b.c, var_0.b.c), var_0.b.c << (66786u % 32u), -10221i), min(vec3<i32>(-1i) * -vec3<i32>(var_0.b.c, var_0.b.c, -1i), vec3<i32>(func_1(vec4<i32>(-2147483647i, u_input.a.x, var_0.b.c, var_0.b.c), 4294967295u, vec4<i32>(2147483647i, u_input.d.x, u_input.a.x, -2147483647i)).b.c, 2147483647i, _wgslsmith_sub_i32(12269i, u_input.d.x)))), ~firstLeadingBit(vec2<i32>(var_0.b.c, u_input.d.x) << (select(vec2<u32>(39266u, var_0.b.b), vec2<u32>(var_3.x, 38262u), true) % vec2<u32>(32u))));
}

