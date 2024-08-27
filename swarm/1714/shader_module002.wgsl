struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<f32, 2> = array<f32, 2>(1188f, 1912f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    var var_0 = Struct_4(Struct_2(Struct_1(~u_input.c.zzy), 2147483647i, _wgslsmith_mod_u32(100846u & u_input.d, _wgslsmith_dot_vec2_u32(select(u_input.a.zy, vec2<u32>(u_input.a.x, u_input.d), vec2<bool>(false, arg_0)), ~u_input.a.zz)), u_input.a, Struct_1(vec3<i32>(-47112i, u_input.c.x, u_input.c.x) & (u_input.c.yxy >> (u_input.a % vec3<u32>(32u))))), Struct_3(Struct_1(reverseBits(u_input.c.zwz)), !(!(arg_0 & arg_0)), _wgslsmith_div_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(36705u, 69220u, 65698u, 59045u), vec4<u32>(0u, 14415u, u_input.b, u_input.d)), ~u_input.b), ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-672f, global1[_wgslsmith_index_u32(1u, 2u)]) * vec2<f32>(global0.x, global1[_wgslsmith_index_u32(29376u, 2u)]))) + vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 2u)]), _wgslsmith_div_f32(global0.x, 210f)))), _wgslsmith_add_vec2_u32(vec2<u32>(~35224u, ~select(u_input.b, 6096u, false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, ~34825u), select(u_input.a.yy, u_input.a.xz, !arg_0), vec2<u32>(u_input.b, u_input.b))), ~countOneBits(u_input.a.xy));
    var_0 = Struct_4(var_0.a, var_0.b, vec2<f32>(global0.x, -886f), abs(reverseBits(min(u_input.a.zx, ~u_input.a.zy))), vec2<u32>(reverseBits(~_wgslsmith_mod_u32(22853u, 1u)), u_input.b));
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 4294967295u, ~var_0.a.d.x >> ((0u & u_input.b) % 32u), 37198u), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_0.e.x, var_0.a.c, var_0.e.x, var_0.b.c) & vec4<u32>(u_input.d, 0u, u_input.b, var_0.b.c)), ~(~vec4<u32>(75640u, 84397u, 1u, 4294967295u)), ~vec4<u32>(13208u, 4294967295u, 314u, 4294967295u)));
    var var_2 = vec2<i32>(~(~(min(var_0.a.a.a.x, u_input.c.x) ^ (u_input.c.x | u_input.c.x))), i32(-1i) * -2147483647i);
    let var_3 = Struct_3(var_0.b.a, any(!(!select(vec2<bool>(var_0.b.b, true), vec2<bool>(arg_0, arg_0), vec2<bool>(false, true)))), ~select(23370u, 1u, !any(vec2<bool>(arg_0, var_0.b.b))));
    return vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(1i, max(2147483647i, ~(~var_2.x))), -32374i);
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_add_u32(countOneBits(~u_input.d), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.yy), firstTrailingBit(firstTrailingBit(countOneBits(vec2<u32>(0u, u_input.b))))));
    var var_1 = Struct_2(Struct_1(func_3(true)), -2147483647i, min(~select(u_input.a.x, u_input.b, true), u_input.a.x), u_input.a, Struct_1(vec3<i32>(_wgslsmith_div_i32(1i, ~0i), -(~u_input.c.x), firstTrailingBit(u_input.c.x))));
    var var_2 = var_1.e.a.zx;
    let var_3 = Struct_1(select(-var_1.e.a, max(vec3<i32>(-var_1.e.a.x, _wgslsmith_div_i32(1i, var_1.b), -15380i), ~firstTrailingBit(vec3<i32>(var_1.e.a.x, u_input.c.x, u_input.c.x))), true));
    let var_4 = vec3<u32>(max(~(~u_input.d), 32578u), _wgslsmith_div_u32(16273u, ~var_1.d.x), _wgslsmith_mod_u32(~(~4294967295u), 0u ^ min(0u, ~var_1.c)));
    return Struct_5(Struct_1(u_input.c.zyx), select(vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), true, !select(false, true, true)), !select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, false), 0u != u_input.a.x), vec4<bool>(true, true, true, true), false)), min(_wgslsmith_div_i32(2147483647i, var_2.x), -23407i), ~_wgslsmith_add_u32(~(~u_input.b), _wgslsmith_add_u32(~1u, var_4.x)), Struct_2(var_3, firstTrailingBit(firstTrailingBit(u_input.c.x << (16748u % 32u))), 1u, vec3<u32>(u_input.a.x, u_input.b, var_1.d.x), var_3));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = Struct_1(vec3<i32>(2147483647i << (firstTrailingBit(_wgslsmith_mod_u32(1u, 4294967295u)) % 32u), -select(abs(4579i), u_input.c.x, !var_0.b.x), var_0.e.e.a.x));
    global1 = array<f32, 2>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-202f * 1810f), arg_0.x, _wgslsmith_div_f32(746f, -807f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, global1[_wgslsmith_index_u32(36799u, 2u)], global0.x) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], arg_0.x, global0.x))))))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1137f)), _wgslsmith_f_op_f32(-2201f + -412f), global1[_wgslsmith_index_u32(4294967295u, 2u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, global1[_wgslsmith_index_u32(55935u, 2u)], arg_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -671f, arg_0.x) + vec3<f32>(1f, 1f, 1f)))));
    return Struct_3(var_1, select(true, !all(vec4<bool>(true, true, var_0.b.x, false)), all(func_2().b)), ~firstLeadingBit(~_wgslsmith_mod_u32(53311u, u_input.a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_3 {
    return func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(696f - -526f) + -370f), _wgslsmith_f_op_f32(ceil(399f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global1[_wgslsmith_index_u32(30282u, 2u)]))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> Struct_5 {
    var var_0 = Struct_2(arg_1.a, select(firstTrailingBit(arg_1.a.a.x) | _wgslsmith_sub_i32(16599i & arg_1.a.a.x, arg_1.a.a.x), u_input.c.x, !any(!vec2<bool>(arg_0.x, arg_1.b))), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.xz), _wgslsmith_mod_vec2_u32(~u_input.a.xz, vec2<u32>(firstLeadingBit(u_input.a.x), arg_1.c))), abs(u_input.a), arg_1.a);
    var var_1 = u_input.d;
    let var_2 = 1f;
    var_0 = func_2().e;
    global0 = vec2<f32>(2068f, -1016f);
    return Struct_5(Struct_1(vec3<i32>(_wgslsmith_add_i32(~27250i, 12876i), func_2().a.a.x, _wgslsmith_mult_i32(arg_1.a.a.x, arg_1.a.a.x) | (i32(-1i) * -1i))), func_2().b, _wgslsmith_mod_i32(2147483647i, ((arg_1.a.a.x & arg_1.a.a.x) << ((u_input.d | var_0.d.x) % 32u)) & ~(-2147483647i)), 9161u, func_2().e);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_5) -> Struct_4 {
    let var_0 = func_5(arg_2.b, arg_1.b, reverseBits(-_wgslsmith_add_i32(arg_1.b.a.a.x, arg_0.a.a.x)) <= 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(709f, _wgslsmith_f_op_f32(step(-582f, 763f))))))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~u_input.d, 2u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(arg_1.b.c, 2u)])) * -886f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(155f)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.e.d.x, 2u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) * -587f));
    global1 = array<f32, 2>();
    let var_2 = arg_0.b;
    let var_3 = func_2().e;
    return Struct_4(arg_0.e, func_4(arg_1.b, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_2.d) ^ arg_1.e, ~vec2<u32>(arg_1.b.c, var_3.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(41994u, 2u)], 1436f), var_1.yx)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c.x, 1000f), vec2<f32>(global1[_wgslsmith_index_u32(101847u, 2u)], -2594f), arg_0.b.yy)))))) - _wgslsmith_f_op_vec2_f32(arg_1.c + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x))), arg_1.c, arg_0.b.zw)))), vec2<u32>(arg_0.d, u_input.a.x), _wgslsmith_clamp_vec2_u32(var_3.d.yy, arg_1.d, ~arg_1.e));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = arg_3;
    var var_1 = !(!(!var_0.b.b));
    global1 = array<f32, 2>();
    let var_2 = arg_2;
    var_0 = arg_3;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-321f, -520f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.c, arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(func_7(~vec3<u32>(1u, abs(u_input.a.x), ~reverseBits(12796u)), func_6(func_5(vec4<bool>(true, true, true, true), func_4(func_1(vec2<f32>(-106f, global1[_wgslsmith_index_u32(23252u, 2u)])), reverseBits(vec2<u32>(u_input.a.x, u_input.d))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f))), Struct_4(Struct_2(func_4(Struct_3(Struct_1(vec3<i32>(-9080i, -1i, u_input.c.x)), false, 0u), vec2<u32>(u_input.d, u_input.a.x)).a, u_input.c.x, u_input.a.x | u_input.b, u_input.a, Struct_1(vec3<i32>(-1i, 0i, 2147483647i))), Struct_3(func_5(vec4<bool>(false, true, false, false), Struct_3(Struct_1(u_input.c.wzx), true, u_input.b), true, global0.x).a, all(vec2<bool>(true, false)), u_input.a.x), vec2<f32>(-1662f, 1000f), select(_wgslsmith_sub_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, 45337u)), vec2<u32>(u_input.a.x, u_input.a.x), true), func_5(func_2().b, func_1(vec2<f32>(global0.x, 1322f)), true, _wgslsmith_f_op_f32(415f + global1[_wgslsmith_index_u32(306u, 2u)])).e.d.xy), Struct_5(func_4(Struct_3(Struct_1(u_input.c.wyz), false, u_input.b), ~u_input.a.xy).a, vec4<bool>(func_2().b.x, all(vec2<bool>(true, false)), true, true), _wgslsmith_mod_i32(u_input.c.x, func_2().a.a.x), ~(~u_input.d), Struct_2(Struct_1(vec3<i32>(-38902i, -10582i, u_input.c.x)), ~u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.b, u_input.b)), reverseBits(u_input.a), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i))))), min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, u_input.d, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.d, 4294967295u) | vec4<u32>(3661u, u_input.d, 4294967295u, 47957u)) & (countOneBits(vec4<u32>(u_input.a.x, 3555u, 0u, u_input.d)) | ~vec4<u32>(1u, u_input.a.x, u_input.d, 22833u)), _wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(66441u, 1u, 45119u, u_input.d), vec4<u32>(u_input.b, 1u, 0u, 45702u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d, 0u, u_input.d, 28195u)), ~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)), ~vec4<u32>(4294967295u, 17334u, u_input.b, 0u))), Struct_4(Struct_2(func_2().e.e, -65063i, func_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(104800u, 2u)], 1000f)))).c, u_input.a << (vec3<u32>(u_input.b, 37728u, 8850u) % vec3<u32>(32u)), Struct_1(-u_input.c.wwx)), Struct_3(Struct_1(vec3<i32>(-1i, -1i, u_input.c.x)), func_2().b.x, ~(~0u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-540f, global1[_wgslsmith_index_u32(u_input.d, 2u)]) * _wgslsmith_div_vec2_f32(vec2<f32>(-553f, 520f), vec2<f32>(global0.x, -1197f))))), ~(vec2<u32>(u_input.a.x, u_input.a.x) & (vec2<u32>(u_input.a.x, 30697u) | u_input.a.yy)), vec2<u32>(47202u, ~_wgslsmith_sub_u32(u_input.a.x, u_input.b)))));
    let var_0 = ~(~u_input.d);
    var var_1 = func_6(func_5(!func_5(vec4<bool>(true, true, true, true), func_6(Struct_5(Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec4<bool>(false, false, true, true), -1i, var_0, Struct_2(Struct_1(vec3<i32>(1i, u_input.c.x, 0i)), -22571i, u_input.d, u_input.a, Struct_1(vec3<i32>(1i, 2671i, u_input.c.x)))), Struct_4(Struct_2(Struct_1(u_input.c.yzz), -2147483647i, var_0, vec3<u32>(u_input.d, var_0, 1u), Struct_1(vec3<i32>(-6296i, -9292i, u_input.c.x))), Struct_3(Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, -4098i)), false, u_input.b), vec2<f32>(global0.x, global1[_wgslsmith_index_u32(var_0, 2u)]), u_input.a.xx, u_input.a.yy), Struct_5(Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec4<bool>(false, false, true, false), u_input.c.x, 1u, Struct_2(Struct_1(vec3<i32>(-1i, 25133i, u_input.c.x)), u_input.c.x, var_0, u_input.a, Struct_1(u_input.c.yxy)))).b, global1[_wgslsmith_index_u32(0u, 2u)] != 1286f, global1[_wgslsmith_index_u32(21972u, 2u)]).b, func_6(func_2(), Struct_4(func_6(Struct_5(Struct_1(vec3<i32>(-2147483647i, u_input.c.x, -2147483647i)), vec4<bool>(true, false, true, true), u_input.c.x, 0u, Struct_2(Struct_1(vec3<i32>(u_input.c.x, 35171i, 0i)), u_input.c.x, u_input.a.x, u_input.a, Struct_1(vec3<i32>(2147483647i, -39378i, -6771i)))), Struct_4(Struct_2(Struct_1(vec3<i32>(-13344i, u_input.c.x, 1i)), 18731i, 54164u, u_input.a, Struct_1(u_input.c.zyx)), Struct_3(Struct_1(vec3<i32>(-1i, 1i, u_input.c.x)), false, 62406u), vec2<f32>(global0.x, global0.x), vec2<u32>(1u, var_0), vec2<u32>(var_0, 0u)), Struct_5(Struct_1(u_input.c.zwz), vec4<bool>(false, false, true, true), -24159i, 1u, Struct_2(Struct_1(u_input.c.wzx), u_input.c.x, u_input.b, u_input.a, Struct_1(u_input.c.yzy)))).a, func_1(vec2<f32>(1825f, global0.x)), vec2<f32>(1f, 1f), u_input.a.yx ^ u_input.a.yx, ~u_input.a.xx), func_2()).b, !(true || (223f == global0.x)), global0.x), func_6(func_2(), Struct_4(func_5(vec4<bool>(true, false, false, false), func_1(vec2<f32>(1000f, global1[_wgslsmith_index_u32(var_0, 2u)])), true, global0.x).e, func_6(Struct_5(Struct_1(u_input.c.yxz), vec4<bool>(true, false, false, true), u_input.c.x, 0u, Struct_2(Struct_1(u_input.c.yyw), 2147483647i, u_input.d, u_input.a, Struct_1(vec3<i32>(u_input.c.x, 25350i, 1i)))), func_6(Struct_5(Struct_1(u_input.c.xzz), vec4<bool>(false, false, false, false), u_input.c.x, 10756u, Struct_2(Struct_1(u_input.c.xwy), 0i, var_0, u_input.a, Struct_1(vec3<i32>(0i, -2147483647i, -53012i)))), Struct_4(Struct_2(Struct_1(vec3<i32>(u_input.c.x, -10431i, u_input.c.x)), 57145i, u_input.a.x, vec3<u32>(0u, 4294967295u, 6314u), Struct_1(u_input.c.xzy)), Struct_3(Struct_1(u_input.c.yyw), false, 73359u), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 2u)], -1394f), vec2<u32>(u_input.a.x, 0u), u_input.a.zy), Struct_5(Struct_1(u_input.c.xzz), vec4<bool>(false, false, true, false), 60344i, var_0, Struct_2(Struct_1(vec3<i32>(u_input.c.x, -1i, 2147483647i)), u_input.c.x, u_input.a.x, vec3<u32>(0u, 26866u, 8276u), Struct_1(u_input.c.wwx)))), Struct_5(Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, 32853i)), vec4<bool>(true, false, true, true), u_input.c.x, 10687u, Struct_2(Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, 12912i)), u_input.c.x, u_input.b, vec3<u32>(u_input.d, var_0, var_0), Struct_1(u_input.c.yww)))).b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global1[_wgslsmith_index_u32(var_0, 2u)]) * vec2<f32>(-544f, global0.x)))), u_input.a.xy, select(~vec2<u32>(11237u, var_0), ~u_input.a.xx, vec2<bool>(true, true))), Struct_5(func_6(Struct_5(Struct_1(u_input.c.zyy), vec4<bool>(false, false, true, true), -1413i, 0u, Struct_2(Struct_1(u_input.c.wwz), u_input.c.x, var_0, u_input.a, Struct_1(u_input.c.yxx))), func_6(Struct_5(Struct_1(vec3<i32>(u_input.c.x, -17623i, -47799i)), vec4<bool>(false, false, true, true), 43868i, var_0, Struct_2(Struct_1(vec3<i32>(6271i, u_input.c.x, u_input.c.x)), 1i, 0u, u_input.a, Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, 1i)))), Struct_4(Struct_2(Struct_1(u_input.c.xxz), u_input.c.x, 1u, vec3<u32>(u_input.b, var_0, 46102u), Struct_1(u_input.c.wzy)), Struct_3(Struct_1(u_input.c.xzx), true, 4294967295u), vec2<f32>(global0.x, global0.x), u_input.a.zz, u_input.a.yy), Struct_5(Struct_1(vec3<i32>(1i, -2147483647i, 1i)), vec4<bool>(true, false, false, true), 37245i, u_input.a.x, Struct_2(Struct_1(vec3<i32>(12132i, u_input.c.x, 0i)), 31630i, 4294967295u, vec3<u32>(1u, 4294967295u, var_0), Struct_1(vec3<i32>(-30220i, u_input.c.x, u_input.c.x))))), func_2()).b.a, !func_2().b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), ~vec4<i32>(u_input.c.x, 45326i, 0i, u_input.c.x)), ~u_input.d & u_input.d, Struct_2(Struct_1(u_input.c.zyy), ~2147483647i, 1u, ~vec3<u32>(0u, u_input.d, 20941u), func_1(vec2<f32>(global0.x, -1020f)).a))), func_2());
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(720f + _wgslsmith_f_op_f32(-195f - global1[_wgslsmith_index_u32(4294967295u, 2u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c.x))) - _wgslsmith_f_op_f32(exp2(global0.x)))), 187f, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(round(-2111f)));
    let var_3 = func_5(!vec4<bool>(var_1.b.b, func_1(_wgslsmith_f_op_vec2_f32(sign(var_2.wx))).b, !all(vec2<bool>(true, var_1.b.b)), all(vec3<bool>(true, var_1.b.b, true))), var_1.b, !(u_input.c.x != u_input.c.x), 1000f);
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_2.xx, _wgslsmith_f_op_vec2_f32(-var_2.xx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 2u)], 2332f)))))), -(firstLeadingBit(u_input.c.wyx) | (_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, var_1.a.a.a.x, -1i), vec3<i32>(u_input.c.x, u_input.c.x, -32133i), vec3<i32>(2147483647i, var_3.a.a.x, 20856i)) | var_3.e.e.a)), -26928i, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.c, var_1.a.a.a.x, 52793i), vec3<i32>(-87503i, 45784i ^ var_1.a.b, -2335i), -u_input.c.xxz) & (~var_1.b.a.a ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.e.a.x, -41963i, 64951i) & u_input.c.zzz, func_1(vec2<f32>(var_1.c.x, global0.x)).a.a, select(vec3<i32>(-8215i, var_3.c, -2147483647i), vec3<i32>(-13961i, -2147483647i, var_1.a.e.a.x), var_4.zzz))));
}

