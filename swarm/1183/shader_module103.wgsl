struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<f32>(-1000f, 358f), 46261u, 0u, -1172f, vec2<i32>(15789i, 0i)), Struct_1(vec2<f32>(1055f, -801f), 1u, 75474u, -415f, vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<f32>(-1211f, -208f), 4294967295u, 1u, -1000f, vec2<i32>(1i, -1i)), Struct_1(vec2<f32>(395f, -722f), 1u, 1u, 570f, vec2<i32>(-28564i, 1i)), Struct_1(vec2<f32>(-3110f, -531f), 37557u, 40619u, -1994f, vec2<i32>(67875i, 20836i)), Struct_1(vec2<f32>(614f, 860f), 1u, 0u, -816f, vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<f32>(-174f, -1056f), 1u, 86649u, -1000f, vec2<i32>(2147483647i, 2868i)), Struct_1(vec2<f32>(-423f, -158f), 0u, 1u, -360f, vec2<i32>(37067i, 0i)), Struct_1(vec2<f32>(-1520f, -2024f), 4294967295u, 28727u, -907f, vec2<i32>(1i, 2147483647i)), Struct_1(vec2<f32>(847f, 266f), 49230u, 0u, 139f, vec2<i32>(-40837i, 14456i)), Struct_1(vec2<f32>(1508f, -1000f), 1u, 30803u, 1193f, vec2<i32>(-21315i, -1i)), Struct_1(vec2<f32>(-165f, 1129f), 4294967295u, 17602u, -355f, vec2<i32>(8999i, 50183i)), Struct_1(vec2<f32>(-592f, 1831f), 0u, 71026u, -662f, vec2<i32>(-38250i, -14540i)), Struct_1(vec2<f32>(-1000f, 1674f), 34176u, 0u, 723f, vec2<i32>(i32(-2147483648), -1i)));

var<private> global1: array<Struct_1, 22>;

var<private> global2: vec4<u32>;

var<private> global3: array<i32, 18> = array<i32, 18>(2147483647i, 2147483647i, 25775i, -6034i, 2147483647i, -48843i, -1i, i32(-2147483648), i32(-2147483648), 0i, 36749i, 31672i, -1i, 1i, -13656i, 2654i, 4215i, -20574i);

var<private> global4: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1855f * 806f) + -585f), _wgslsmith_f_op_f32(max(153f, 1405f)))), firstTrailingBit(min(~(~4294967295u), u_input.b >> (_wgslsmith_mult_u32(4294967295u, global2.x) % 32u))), 4294967295u, -222f, select(-_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_0, -1i), -vec2<i32>(44298i, global3[_wgslsmith_index_u32(1u, 18u)])), select((vec2<i32>(global3[_wgslsmith_index_u32(1u, 18u)], arg_0) | vec2<i32>(global3[_wgslsmith_index_u32(54983u, 18u)], -12589i)) >> (~vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)), vec2<i32>(~arg_0, 0i), vec2<bool>(true, true)), select(1u, global2.x, all(vec4<bool>(true, true, true, true))) <= ~select(0u, global2.x, false)));
    var var_1 = global1[_wgslsmith_index_u32(var_0.c, 22u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.a * var_1.a), var_1.a)), var_1.a, vec2<bool>(true, false))))), 1u, countOneBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 1u, global2.x), abs(1u)) | ((9744u & u_input.a) ^ u_input.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1027f, var_0.a.x, true))))))), var_1.e);
    global1 = array<Struct_1, 22>();
    let var_3 = var_1.a.x;
    return reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, reverseBits(u_input.c.x), ~var_0.c), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.wxx & global2.ywz, vec3<u32>(var_1.b, var_1.c, var_0.b), ~global2.zzy), ~global2.zxx, countOneBits(vec3<u32>(11145u, 28635u, u_input.c.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    let var_0 = Struct_1(vec2<f32>(-599f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(ceil(-131f)))), ~0u, ~_wgslsmith_sub_u32(833u, abs(~global2.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(337f))), -775f, arg_1.x))), vec2<i32>(51214i, firstTrailingBit(global3[_wgslsmith_index_u32(func_3(global3[_wgslsmith_index_u32(u_input.c.x >> (arg_2 % 32u), 18u)]), 18u)])));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(209f, _wgslsmith_f_op_f32(-593f + 330f)))), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(4294967295u, var_0.c))), vec2<u32>(39614u, global2.x)), u_input.b, var_0.a.x, arg_0);
    var var_2 = vec4<f32>(1176f, -209f, 1657f, _wgslsmith_f_op_f32(abs(-1469f)));
    let var_3 = 1u;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1649f, 1711f, 845f, -191f))) - vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), -783f, _wgslsmith_f_op_f32(f32(-1f) * -797f), -1000f))));
    return _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-410f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + 762f) - _wgslsmith_f_op_f32(-var_2.x))), var_1.d)));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 18u)], global3[_wgslsmith_index_u32(0u, 18u)]) ^ vec2<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], 2147483647i), vec3<bool>(true, true, true), ~0u)))), -803f, -130f, _wgslsmith_f_op_f32(step(496f, _wgslsmith_div_f32(-565f, _wgslsmith_f_op_f32(f32(-1f) * -416f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(152f, -546f, 1011f, 203f), vec4<f32>(-503f, -1613f, 1692f, -1100f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-559f, -533f, 1015f, -1000f) * vec4<f32>(832f, 978f, -607f, -382f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-660f, _wgslsmith_f_op_f32(ceil(1000f)), -807f, _wgslsmith_f_op_f32(-787f + -994f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-366f, 405f, 1153f, -1593f) * vec4<f32>(-872f, 510f, -758f, 193f)), vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, true))))));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(var_0.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(var_0.ww, vec2<f32>(1169f, -120f))))))), firstLeadingBit(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(79573u, 0u, global2.x, 32742u), vec4<u32>(1u, u_input.b, 54225u, u_input.a)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, abs(u_input.c.x), reverseBits(u_input.a)), _wgslsmith_add_vec3_u32(max(vec3<u32>(96121u, global2.x, u_input.c.x), vec3<u32>(global2.x, 4294967295u, global2.x)), _wgslsmith_mult_vec3_u32(global2.zwy, global2.wxz))), -594f, vec2<i32>(-_wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.b, 18u)], -1i), abs(~5715i)) & ~vec2<i32>(global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 18u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global3[_wgslsmith_index_u32(u_input.a, 18u)]), vec3<i32>(2147483647i, -37405i, global3[_wgslsmith_index_u32(1u, 18u)]))));
    var var_2 = Struct_1(var_1.a, _wgslsmith_dot_vec3_u32(~(~global2.xzw), vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, select(var_1.c, 9441u, true)), ~_wgslsmith_add_u32(0u, global2.x), u_input.a)), u_input.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(401f))), false)), var_1.e);
    global0 = array<Struct_1, 14>();
    var var_3 = var_1.a.x;
    return StorageBuffer(_wgslsmith_mult_vec2_u32(global2.zz, vec2<u32>(_wgslsmith_mult_u32(min(var_1.b, 4294967295u), ~0u), 73659u & (var_1.b ^ 0u))), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

