struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(-1i, 45534i, -44216i), vec3<i32>(-1i, -15425i, 13409i), vec3<i32>(-22740i, -1i, 0i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(1i, -8494i, 1i), vec3<i32>(91036i, -28629i, -1i), vec3<i32>(i32(-2147483648), -62313i, 0i), vec3<i32>(0i, 2147483647i, 15647i), vec3<i32>(2147483647i, -1i, 895i), vec3<i32>(-17933i, -61597i, 54430i), vec3<i32>(14769i, -15169i, 14810i), vec3<i32>(5492i, 0i, i32(-2147483648)), vec3<i32>(-49660i, 1i, -11851i), vec3<i32>(1i, 1i, -27662i), vec3<i32>(-14895i, 4942i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -19594i), vec3<i32>(-19701i, 0i, -12626i), vec3<i32>(0i, 1i, -1i), vec3<i32>(2147483647i, 2147483647i, -65397i), vec3<i32>(-11094i, 1i, 0i), vec3<i32>(21841i, 2147483647i, -1i), vec3<i32>(-1i, 15513i, 0i), vec3<i32>(36267i, -34116i, 2147483647i), vec3<i32>(21127i, 30551i, 34733i), vec3<i32>(4459i, -35331i, 2147483647i), vec3<i32>(0i, -16642i, 1i), vec3<i32>(3657i, -12947i, -27351i), vec3<i32>(4411i, 11828i, -49517i), vec3<i32>(46242i, 34541i, -1i));

var<private> global2: array<f32, 6>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = vec3<u32>(abs(max(arg_2.c.a.a, u_input.e.x)), 4294967295u, abs(u_input.e.x));
    global0 = vec3<i32>(global0.x, _wgslsmith_div_i32(0i, _wgslsmith_add_i32(~_wgslsmith_add_i32(1i, u_input.b.x), -2147483647i | -u_input.c.x)), firstLeadingBit(_wgslsmith_dot_vec2_i32(reverseBits(global0.zy), -vec2<i32>(-2147483647i, arg_1))) | -1i);
    global1 = array<vec3<i32>, 29>();
    var var_1 = Struct_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-2365f))))), global2[_wgslsmith_index_u32(max(54696u, ~select(85809u, u_input.e.x, arg_2.e)), 6u)], arg_2.d, Struct_2(Struct_1(60720u, 53351u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 4294967295u, arg_2.d.b.x, u_input.e.x), vec4<u32>(arg_2.d.b.x, var_0.x, 4294967295u, 31958u))), !arg_0.x));
    let var_2 = ~4294967295u;
    return var_1.a.c.b;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_5 {
    let var_0 = countOneBits(-19020i);
    let var_1 = -68737i;
    global1 = array<vec3<i32>, 29>();
    global1 = array<vec3<i32>, 29>();
    let var_2 = Struct_2(Struct_1(36796u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0, 4294967295u >> (0u % 32u)), u_input.e.x)), max(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(26760u, u_input.e.x, u_input.e.x, 30760u) << (vec4<u32>(u_input.e.x, 42066u, 4294967295u, u_input.e.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.e.x, 0u), vec4<u32>(arg_0, arg_0, 1u, u_input.e.x)))), abs(func_3(vec2<bool>(false, false), -1i, Struct_3(arg_1.yz, 1253f, Struct_2(Struct_1(arg_0, 4294967295u), vec4<u32>(0u, u_input.e.x, 12551u, 4294967295u)), Struct_2(Struct_1(arg_0, arg_0), vec4<u32>(0u, u_input.e.x, 110316u, arg_0)), true)))));
    return Struct_5(any(select(vec4<bool>(false, true, false, any(vec4<bool>(false, true, true, true))), vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, true), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) * arg_1.x), global2[_wgslsmith_index_u32(~(~(~4294967295u)), 6u)]);
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: u32) -> Struct_1 {
    let var_0 = func_2(u_input.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1400f, global2[_wgslsmith_index_u32(0u, 6u)], arg_1.c), vec3<f32>(-1082f, global2[_wgslsmith_index_u32(0u, 6u)], arg_1.c)))))))).a;
    var var_1 = false;
    global2 = array<f32, 6>();
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.e.x, 6u)], arg_1.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 6u)], -2601f)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2[_wgslsmith_index_u32(u_input.e.x, 6u)], arg_1.b))))), _wgslsmith_f_op_f32(min(-571f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 211f))), Struct_2(Struct_1(_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), ~61362u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, arg_2, 4294967295u, 90156u) ^ vec4<u32>(arg_2, u_input.e.x, 0u, arg_0), max(vec4<u32>(arg_2, arg_2, 0u, arg_2), vec4<u32>(18624u, arg_0, u_input.e.x, arg_0)))), Struct_2(Struct_1(u_input.e.x, 37777u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, arg_0, 0u, 56207u), ~vec4<u32>(arg_2, 25196u, arg_2, arg_0), vec4<u32>(arg_2, arg_2, 75500u, arg_2))), var_0));
    var_1 = (~arg_0 | ~11267u) != u_input.e.x;
    return Struct_1(4294967295u, ~reverseBits(arg_0));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    global2 = array<f32, 6>();
    var var_0 = Struct_2(func_4(u_input.e.x, func_2(countOneBits(firstTrailingBit(u_input.e.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yxw) + vec3<f32>(437f, 1027f, 1000f))), ~_wgslsmith_div_u32(u_input.e.x, _wgslsmith_dot_vec2_u32(u_input.e.zx, vec2<u32>(u_input.e.x, 0u)))), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(abs(u_input.e.x), u_input.e.x, ~57417u, u_input.e.x)), ~(~(vec4<u32>(4294967295u, 1u, 70394u, u_input.e.x) >> (vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 69972u) % vec4<u32>(32u))))));
    var var_1 = _wgslsmith_mod_vec2_i32(~(-global0.zx), -max(-global0.xx, u_input.b)) >> (vec2<u32>(var_0.b.x, u_input.e.x) % vec2<u32>(32u));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1966f, -2042f))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 6u)])), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.b.x, 6u)]), arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zy) - _wgslsmith_f_op_vec2_f32(arg_0.zw * arg_0.yy)))))), global2[_wgslsmith_index_u32(u_input.e.x, 6u)], Struct_2(func_4(~(u_input.e.x >> (u_input.e.x % 32u)), Struct_5(true, _wgslsmith_div_f32(arg_0.x, global2[_wgslsmith_index_u32(u_input.e.x, 6u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b), 6u)]), 99090u), select(vec4<u32>(select(0u, 38428u, false), countOneBits(48362u), 1u, var_0.a.b), min(var_0.b, vec4<u32>(var_0.a.a, 29392u, u_input.e.x, 84297u)), true)), Struct_2(Struct_1(~_wgslsmith_add_u32(0u, 20126u), _wgslsmith_add_u32(~var_0.b.x, var_0.a.b)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.e.x, 4294967295u, 19220u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.e.x, 150716u, u_input.e.x), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, u_input.e.x))), var_0.b)), func_2(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, global2[_wgslsmith_index_u32(var_0.b.x, 6u)], arg_0.x) + arg_0.yxw)) * arg_0.zzy)).a);
    var var_3 = var_2.c;
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, func_4(~21283u, Struct_5(true, global2[_wgslsmith_index_u32(var_3.a.a, 6u)], global2[_wgslsmith_index_u32(12273u, 6u)]), var_2.d.a.a).a, var_3.b.x), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~(max(u_input.e, _wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<u32>(u_input.e.x, 3004u, u_input.e.x))) >> (vec3<u32>(u_input.e.x, ~0u, ~57542u) % vec3<u32>(32u))));
    let var_1 = Struct_1(max(0u, 112371u), ~select(59817u, _wgslsmith_mult_u32(16406u, countOneBits(1u)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))));
    var var_2 = Struct_1(u_input.e.x, func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(var_1.b, 6u)], global2[_wgslsmith_index_u32(17592u, 6u)], -252f, -1932f), vec4<f32>(global2[_wgslsmith_index_u32(var_0.x, 6u)], 1415f, -306f, global2[_wgslsmith_index_u32(1u, 6u)]))))))));
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1170f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1366f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 6u)]))))))));
    global1 = array<vec3<i32>, 29>();
    global2 = array<f32, 6>();
    var var_5 = Struct_4(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4), _wgslsmith_f_op_vec2_f32(-var_4)), var_4.x, Struct_2(Struct_1(28553u, 0u << (0u % 32u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b, var_0.x, var_0.x, u_input.e.x), vec4<u32>(var_2.b, var_2.a, var_2.a, 41522u)))), Struct_2(func_4(max(0u, 10725u), func_2(837u, vec3<f32>(-693f, -645f, 1251f)), 121630u), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(23675u, 53214u, u_input.e.x, 4294967295u), vec4<u32>(u_input.e.x, 35421u, u_input.e.x, var_2.a)))), true));
    var_2 = func_4(~countOneBits(_wgslsmith_mod_u32(firstTrailingBit(var_2.b), _wgslsmith_add_u32(var_0.x, 35598u))), func_2((var_5.a.d.b.x & ~var_5.a.d.b.x) << (_wgslsmith_div_u32(var_0.x << (var_5.a.c.a.b % 32u), 4294967295u) % 32u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, 1289f, 524f) + vec3<f32>(669f, var_5.a.a.x, -1596f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1801f, var_5.a.a.x, -431f) - vec3<f32>(var_5.a.a.x, -1284f, -127f)))))), ~0u >> (~(~(u_input.e.x ^ 0u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1468f - 954f)), _wgslsmith_f_op_f32(select(var_4.x, _wgslsmith_f_op_f32(select(var_5.a.a.x, var_5.a.a.x, var_5.a.e)), var_5.a.e)), global2[_wgslsmith_index_u32(1u, 6u)], -1094f)), -_wgslsmith_sub_vec3_i32(~u_input.c.yyz, global1[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_5.a.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-359f, var_5.a.a.x, var_4.x) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_5.a.b, 691f, var_5.a.b), vec3<f32>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(var_5.a.c.a.b, 6u)], global2[_wgslsmith_index_u32(1u, 6u)]))))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(322f, -1747f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(14547u, 6u)], 618f, false))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.x, -148f, var_4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.b, 1000f, -1072f))))))));
}

