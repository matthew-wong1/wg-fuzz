struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(1u, 4556u, 112905u, 1u), vec4<u32>(19596u, 1u, 1u, 22769u), vec4<u32>(67013u, 72668u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 42414u, 22279u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(1u, 4294967295u, 24427u, 63817u), vec4<u32>(4294967295u, 0u, 5245u, 37119u), vec4<u32>(173u, 28867u, 7861u, 1u), vec4<u32>(18109u, 6829u, 4294967295u, 50941u), vec4<u32>(1u, 4014u, 4294967295u, 9303u), vec4<u32>(0u, 12374u, 101646u, 45945u), vec4<u32>(1u, 17068u, 46374u, 3452u), vec4<u32>(4294967295u, 4294967295u, 15139u, 940u), vec4<u32>(1u, 136723u, 37183u, 18403u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(vec3<u32>(1u, (_wgslsmith_clamp_u32(u_input.b.x, u_input.c, arg_3.e) & u_input.c) << ((_wgslsmith_add_u32(30363u, 42333u) ^ ~u_input.b.x) % 32u), 5728u), any(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, arg_3.b, arg_3.b)), all(vec2<bool>(arg_3.b, arg_1.b))), !(!arg_3.b))), reverseBits(~_wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, 0u)), ~vec2<u32>(71703u, 0u))), _wgslsmith_add_vec4_u32(arg_3.d, ~(vec4<u32>(arg_1.d.x, arg_3.d.x, arg_3.d.x, 528u) ^ ~vec4<u32>(34536u, arg_3.d.x, u_input.b.x, 0u))), arg_3.c.x);
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(firstLeadingBit(min(~arg_3.a, arg_1.d.xwz << (arg_1.d.wxw % vec3<u32>(32u)))), max(~arg_1.a << (firstTrailingBit(var_0.d.xzw) % vec3<u32>(32u)), ~(arg_3.a | vec3<u32>(11621u, 36848u, arg_1.c.x))), var_0.a), all(!select(select(vec3<bool>(false, arg_3.b, true), vec3<bool>(var_0.b, false, var_0.b), false), !vec3<bool>(true, false, arg_1.b), vec3<bool>(true, var_0.b, arg_1.b))), ~(~(~var_0.d.zw)) ^ ~(~firstTrailingBit(var_0.a.zz)), vec4<u32>(~((arg_1.c.x | 0u) ^ arg_1.c.x), firstTrailingBit(u_input.b.x) << (4294967295u % 32u), ~1u, 61926u), _wgslsmith_mod_u32(select(~12630u, ~_wgslsmith_add_u32(var_0.d.x, 0u), true), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.x, arg_3.e), arg_3.d.wy) << ((u_input.c ^ 16010u) % 32u))));
    global0 = array<vec4<u32>, 14>();
    var var_2 = Struct_1(vec3<u32>(~(~firstLeadingBit(9761u)), _wgslsmith_mod_u32(firstLeadingBit(63152u), 1u) | arg_1.d.x, 4294967295u), select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(260f)))) >= -840f, !(!(var_0.b || arg_1.b)), !(!var_1.b)), arg_1.a.xx | u_input.b, arg_3.d | ~select(vec4<u32>(1u, arg_1.a.x, 0u, arg_3.a.x) >> (arg_3.d % vec4<u32>(32u)), global0[_wgslsmith_index_u32(arg_1.c.x, 14u)], arg_1.b), arg_1.d.x);
    let var_3 = abs(var_2.c);
    return select(vec2<u32>(var_3.x | var_3.x, var_0.e >> (u_input.b.x % 32u)) ^ min(vec2<u32>(var_1.a.x, 44133u), var_2.c), arg_3.c, !(true && (4294967295u > var_2.a.x))) & min(arg_1.d.yz, ~_wgslsmith_mult_vec2_u32(~arg_3.a.zz, vec2<u32>(1u, 1u) | vec2<u32>(arg_3.d.x, var_0.c.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    global0 = array<vec4<u32>, 14>();
    var var_0 = arg_1;
    let var_1 = Struct_1(vec3<u32>(~arg_1.d.x, min(_wgslsmith_div_u32(arg_0, _wgslsmith_sub_u32(20752u, 0u)), ~arg_1.d.x ^ 4294967295u), (~arg_1.e ^ ~u_input.b.x) ^ _wgslsmith_div_u32(42800u, ~44703u)), all(!arg_2.zz), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(43915u, arg_1.d.x), vec2<u32>(arg_1.c.x, 1u)) << (var_0.d.xx % vec2<u32>(32u)), func_3(~vec2<i32>(u_input.a.x, 2147483647i), arg_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-280f, arg_3, arg_3), vec3<f32>(-169f, -201f, -472f), arg_2)), vec3<f32>(229f, 1500f, -1838f), !arg_2)), arg_1)), firstLeadingBit(vec4<u32>(arg_0, _wgslsmith_clamp_u32(arg_1.d.x, arg_0, arg_1.a.x), u_input.b.x, _wgslsmith_dot_vec2_u32(arg_1.c, vec2<u32>(var_0.a.x, 109348u))) | _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_0.d, vec4<u32>(36718u, 79518u, 0u, var_0.d.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 0u, u_input.b.x, 27006u), arg_1.d), 14u)])), (arg_0 << (abs(7416u) % 32u)) >> (_wgslsmith_dot_vec2_u32(reverseBits(~u_input.b), vec2<u32>(~arg_0, var_0.e)) % 32u));
    var var_2 = 0i;
    var_2 = u_input.a.x;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-28819i, -6404i, u_input.a.x)), _wgslsmith_mult_vec3_i32(firstLeadingBit(abs(u_input.a)), vec3<i32>(u_input.a.x >> (u_input.b.x % 32u), _wgslsmith_div_i32(-21925i, u_input.a.x), _wgslsmith_mod_i32(-2147483647i, u_input.a.x)))), 1i);
    var var_1 = false;
    let var_2 = -12165i;
    var var_3 = vec3<u32>(~(~28296u), _wgslsmith_mod_u32(2399u, firstTrailingBit(arg_0.c.x & 1u)), u_input.c) >> (_wgslsmith_add_vec3_u32(func_2(1u, func_2(~u_input.b.x, Struct_1(vec3<u32>(u_input.b.x, 2001u, 101304u), true, arg_0.a.yy, vec4<u32>(1u, arg_0.e, 26924u, u_input.c), arg_0.c.x), !vec3<bool>(false, true, arg_0.b), -679f), !select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(620f, 449f))).a, _wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(arg_0.a.x, 4294967295u, arg_0.d.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(34912u, 0u, 1u), vec3<u32>(arg_0.c.x, 1u, 33987u)), vec3<u32>(arg_0.d.x, u_input.b.x, 29855u)))) % vec3<u32>(32u));
    global0 = array<vec4<u32>, 14>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(656f, 1346f))))), -1000f), _wgslsmith_f_op_f32(max(918f, -179f))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(1106f)), _wgslsmith_f_op_f32(func_4(func_2(3369u, Struct_1(vec3<u32>(0u, u_input.b.x, 4294967295u), false, vec2<u32>(102969u, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 14u)], u_input.b.x), vec3<bool>(true, false, true), 349f))), -1237f, 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1437f - -820f) * -1132f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-502f))), 560f, 1f) - vec4<f32>(633f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -210f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f * 315f)))), any(vec2<bool>(true, true))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(countOneBits(u_input.c), u_input.c, func_1()), any(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec2<u32>(u_input.b.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, firstTrailingBit(min(1u, u_input.c)), u_input.b.x, u_input.c), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, u_input.b.x), ~vec4<u32>(0u, 1u, 0u, u_input.c)), vec4<u32>(46394u, 47404u, 1u, u_input.b.x) | vec4<u32>(u_input.b.x, 5544u, u_input.c, 1u))), 1u);
    let var_1 = 1i;
    var_0 = Struct_1(vec3<u32>(var_0.e, _wgslsmith_dot_vec3_u32(var_0.d.wzz, ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), var_0.a)), reverseBits(_wgslsmith_sub_u32(u_input.c << (33396u % 32u), var_0.e))), 2147483647i <= var_1, vec2<u32>(~(~1u), u_input.b.x), vec4<u32>(1u, 32665u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, u_input.b.x)) & 1u, 26942u) << (~(~var_0.d << (global0[_wgslsmith_index_u32(1u, 14u)] % vec4<u32>(32u))) % vec4<u32>(32u)), ~4294967295u);
    global0 = array<vec4<u32>, 14>();
    var var_2 = _wgslsmith_mod_i32(select(var_1, u_input.a.x, abs(min(var_1, var_1)) <= abs(-var_1)), abs(var_1));
    var_2 = countOneBits(0i);
    let x = u_input.a;
    s_output = StorageBuffer(1558f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(472f, 1395f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1455f, 1417f, -713f), vec3<f32>(2400f, -489f, 272f))), vec3<f32>(_wgslsmith_div_f32(286f, -1554f), -283f, _wgslsmith_f_op_f32(select(-514f, 1082f, var_0.b)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 453f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1236f - 693f), _wgslsmith_f_op_f32(-1054f + -703f), false)), 1016f)), 1u);
}

