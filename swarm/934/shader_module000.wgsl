struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 80138u;

var<private> global1: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(54891u, 4294967295u, 57506u, 1u), vec4<u32>(37087u, 83296u, 1u, 10213u), vec4<u32>(37075u, 4294967295u, 1u, 1u));

var<private> global2: array<bool, 9>;

var<private> global3: vec3<i32>;

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global2 = array<bool, 9>();
    global0 = 83962u ^ ~(~abs(arg_0.a.c.x));
    var var_0 = arg_0.b.d;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(668f, _wgslsmith_f_op_f32(sign(arg_0.b.d)), arg_0.b.d));
    var var_2 = false;
    return -global4.x;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: i32) -> vec3<bool> {
    let var_0 = select(select(select(vec2<bool>(!global2[_wgslsmith_index_u32(77465u, 9u)], 0u <= u_input.a), vec2<bool>(any(vec3<bool>(arg_0, true, arg_0)), select(true, true, false)), countOneBits(0i) > ~global4.x), select(vec2<bool>(arg_1, true), !select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], arg_0), vec2<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)])), vec2<bool>(any(vec3<bool>(false, true, true)), !arg_1)), vec2<bool>(true, global3.x == -48720i)), select(!vec2<bool>(true != arg_0, true), select(select(!vec2<bool>(arg_0, true), select(vec2<bool>(false, arg_1), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], arg_1), global2[_wgslsmith_index_u32(19716u, 9u)]), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 9u)]), vec2<bool>(true, true), vec2<bool>(arg_1, arg_1)), vec2<bool>(true, true)), any(select(select(!vec4<bool>(arg_0, true, arg_1, arg_1), !vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 9u)], arg_0, arg_0), global2[_wgslsmith_index_u32(24494u, 9u)]), vec4<bool>(true, true, true, true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(24570u, 9u)], true, false))));
    let var_1 = select(!vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a << (53340u % 32u), 9u)], all(vec4<bool>(false, arg_1, arg_1, true)) | false, true, !all(vec3<bool>(var_0.x, false, false))), vec4<bool>(true, arg_0, select(all(!vec3<bool>(arg_0, false, global2[_wgslsmith_index_u32(u_input.a, 9u)])), true & all(vec4<bool>(arg_1, false, true, var_0.x)), !global2[_wgslsmith_index_u32(32656u, 9u)] && !global2[_wgslsmith_index_u32(u_input.a, 9u)]), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 8982u) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, 1u)), 9u)]), true || !all(!vec2<bool>(arg_1, var_0.x)));
    var var_2 = vec2<u32>(4294967295u, ~0u);
    let var_3 = global3.x;
    global1 = array<vec4<u32>, 3>();
    return !(!(!var_1.wwy));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    global1 = array<vec4<u32>, 3>();
    global2 = array<bool, 9>();
    global3 = vec3<i32>(~select(_wgslsmith_add_i32(~(-38029i), -1i), global3.x >> (~arg_1 % 32u), false), -firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global4.x, global3.x), 4187i)), -15774i);
    var var_0 = vec2<u32>(abs(u_input.a), _wgslsmith_add_u32(~u_input.a, _wgslsmith_div_u32(4294967295u << (u_input.a % 32u), u_input.a)) ^ 15698u);
    global2 = array<bool, 9>();
    return Struct_1(!(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 9u)], global2[_wgslsmith_index_u32(var_0.x, 9u)], global2[_wgslsmith_index_u32(var_0.x, 9u)]))), func_4(!(!global2[_wgslsmith_index_u32(~4294967295u, 9u)]), true, func_3(Struct_3(Struct_2(arg_1, Struct_1(vec4<bool>(false, global2[_wgslsmith_index_u32(50138u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], true), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 9u)], global2[_wgslsmith_index_u32(arg_1, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)]), -2147483647i, -256f), global1[_wgslsmith_index_u32(10960u, 3u)]), Struct_1(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 9u)], true, global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 9u)], true, true), 8679i, arg_0), vec2<i32>(-1i, global3.x), _wgslsmith_mod_i32(global4.x, 25661i)))), -(global3.x << (abs(~u_input.a) % 32u)), _wgslsmith_f_op_f32(min(-1065f, _wgslsmith_f_op_f32(1f * 460f))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_1 {
    return arg_0.b;
}

fn func_1(arg_0: bool) -> Struct_1 {
    return func_5(Struct_2(min(u_input.a, 4294967295u), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1143f, 1000f)))), ~3674u), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(70476u, u_input.a), ~u_input.a, 0u, u_input.a), vec4<u32>(0u, firstTrailingBit(42083u), ~u_input.a, 10217u))), vec3<bool>(true, true, true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(700f, -311f) * _wgslsmith_f_op_f32(f32(-1f) * -937f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(937f + -2041f), 2124f)), _wgslsmith_f_op_f32(f32(-1f) * -158f)));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    global3 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-select(arg_0, arg_0, true), arg_0 & vec3<i32>(global4.x, 47443i, -78854i)), vec3<i32>(-arg_0.x ^ (arg_0.x << (arg_2.c.x % 32u)), global3.x, global4.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0, firstLeadingBit(~vec3<i32>(2147483647i, arg_2.b.c, -2147483647i))), -max(arg_0, arg_0), arg_0));
    global0 = min(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.c.x, arg_2.c.x), 3u)], reverseBits(vec4<u32>(arg_2.c.x, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(arg_2.a, 15391u, 78592u, 0u)), select(global1[_wgslsmith_index_u32(4294967295u, 3u)], arg_2.c, !global2[_wgslsmith_index_u32(4294967295u, 9u)])), ~0u);
    let var_0 = Struct_1(!(!(!(!arg_2.b.a))), !func_4(false, all(arg_2.b.a.zzy), _wgslsmith_dot_vec4_i32(vec4<i32>(-13800i, -2147483647i, arg_2.b.c, -41301i), vec4<i32>(-33060i, 0i, -65130i, arg_2.b.c)) ^ -17800i), 16052i, _wgslsmith_div_f32(-524f, 438f));
    var var_1 = var_0.d;
    global2 = array<bool, 9>();
    return Struct_1(arg_2.b.a, !select(var_0.a.zww, arg_2.b.b, var_0.a.wwz), -14555i, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(6694i, -14557i), _wgslsmith_add_i32(0i, global3.x)), -1i, 2147483647i), vec3<i32>(0i, global3.x, _wgslsmith_mod_i32(countOneBits(global4.x), abs(-28580i)))), !select(vec2<bool>(true, any(vec3<bool>(false, false, false))), vec2<bool>(true, true), vec2<bool>(!global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)])), Struct_2(16022u, func_1((global2[_wgslsmith_index_u32(u_input.a, 9u)] || global2[_wgslsmith_index_u32(0u, 9u)]) & global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 70466u, 1u), vec3<u32>(u_input.a, 1u, 4294967295u)), 9u)]), vec4<u32>(_wgslsmith_sub_u32(4774u ^ u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)), ~u_input.a, min(u_input.a, ~1u), ~(~1u))));
    var var_1 = Struct_2(~u_input.a, func_2(var_0.d, u_input.a), ~_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], ~vec4<u32>(u_input.a, 4294967295u, 24349u, u_input.a) | vec4<u32>(0u, 10517u, u_input.a, u_input.a)));
    let var_2 = func_6(countOneBits(_wgslsmith_div_vec3_i32(~(~vec3<i32>(-2147483647i, 13824i, var_1.b.c)), vec3<i32>(global4.x, global4.x, -15804i) >> (~var_1.c.zyw % vec3<u32>(32u)))), vec2<bool>(func_5(Struct_2(u_input.a, var_1.b, select(var_1.c, global1[_wgslsmith_index_u32(30022u, 3u)], var_1.b.a)), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], var_1.b.b.x, var_1.b.b.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1024f, var_1.b.d, -256f))))).b.x, false), Struct_2(~(~(~12892u)), var_0, vec4<u32>(~(u_input.a ^ 4294967295u), u_input.a, 21315u, 0u))).a.yxx;
    var var_3 = true;
    var var_4 = firstLeadingBit(var_1.c.wyx);
    var var_5 = !vec2<bool>(var_1.b.d != _wgslsmith_div_f32(func_5(Struct_2(4294967295u, Struct_1(var_1.b.a, vec3<bool>(true, var_0.a.x, var_1.b.b.x), -76380i, -188f), var_1.c), var_1.b.a.yzz, vec3<f32>(-1301f, -356f, -1904f)).d, _wgslsmith_f_op_f32(1184f * var_1.b.d)), global2[_wgslsmith_index_u32(4294967295u, 9u)]);
    var var_6 = func_2(_wgslsmith_f_op_f32(-var_1.b.d), ~0u).a;
    var var_7 = global3.x;
    global1 = array<vec4<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(var_1.b.c | -2147483647i) ^ _wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(1i, -2147483647i, var_1.b.c)), ~(vec3<i32>(-36185i, 30885i, -2848i) & vec3<i32>(1i, var_0.c, var_1.b.c))), min(var_4.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(122829u, 1993u)), countOneBits(abs(var_4.yx)))));
}

