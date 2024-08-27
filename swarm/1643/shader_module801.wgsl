struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_3) -> f32 {
    var var_0 = -2147483647i;
    var var_1 = arg_2.c;
    let var_2 = Struct_4(arg_2.d.zy, select(!vec4<bool>(true, var_1.b, true, false), !vec4<bool>(any(arg_2.d.zy), arg_2.a.a.b, arg_2.d.x, any(vec4<bool>(true, var_1.b, false, false))), !(u_input.d <= 20345u)));
    let var_3 = arg_2;
    let var_4 = 1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1259f))) * _wgslsmith_f_op_f32(f32(-1f) * -1611f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = firstLeadingBit(26293i);
    let var_1 = arg_2.x;
    return Struct_1(any(vec4<bool>(false, true, true, !var_1 && all(vec4<bool>(arg_2.x, var_1, false, true)))), _wgslsmith_f_op_f32(min(arg_0.x, -1419f)) >= _wgslsmith_f_op_f32(func_3(~2147483647i, min(vec2<i32>(u_input.a.x, -20703i), abs(vec2<i32>(-11657i, 2147483647i))), Struct_3(Struct_2(Struct_1(false, var_1), u_input.b), 4294967295u, Struct_1(false, arg_2.x), vec3<bool>(var_1, false, arg_2.x), Struct_2(Struct_1(false, arg_2.x), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: f32, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = firstLeadingBit(60123u);
    var_0 = 21715u;
    var var_1 = countOneBits(2147483647i);
    let var_2 = all(!vec4<bool>(all(select(vec4<bool>(arg_3.x, arg_0.d.x, false, arg_3.x), vec4<bool>(arg_0.c.b, arg_3.x, arg_3.x, arg_0.d.x), vec4<bool>(arg_3.x, true, arg_0.a.a.a, false))), false, false, !arg_0.c.a));
    var_0 = arg_0.b;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0i, vec2<i32>(arg_0.a.b.x, u_input.b.x), arg_0))) < _wgslsmith_f_op_f32(-arg_2), true), arg_0.e.b);
}

fn func_1() -> vec2<bool> {
    let var_0 = u_input.b;
    let var_1 = func_4(Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1005f, -1000f, 2253f, 933f)), u_input.d, vec2<bool>(true, true), select(u_input.c.x, var_0.x, false)), -var_0), reverseBits(u_input.d), func_2(vec4<f32>(_wgslsmith_f_op_f32(func_3(20482i, vec2<i32>(0i, u_input.a.x), Struct_3(Struct_2(Struct_1(true, false), var_0), 1u, Struct_1(true, false), vec3<bool>(true, false, false), Struct_2(Struct_1(true, true), vec3<i32>(u_input.c.x, var_0.x, 2147483647i))))), -713f, 298f, _wgslsmith_f_op_f32(ceil(-685f))), ~_wgslsmith_clamp_u32(94749u, 79103u, u_input.d), vec2<bool>(true, func_2(vec4<f32>(-1543f, -1067f, -394f, 512f), u_input.d, vec2<bool>(false, false), var_0.x).a), _wgslsmith_mult_i32(-76359i, var_0.x)), vec3<bool>(true, select(true, true, all(vec3<bool>(true, false, false))), true), Struct_2(Struct_1(true, true), vec3<i32>(~(-2147483647i), _wgslsmith_clamp_i32(u_input.a.x, var_0.x, -1i), _wgslsmith_add_i32(1742i, 15712i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-922f - 530f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)), vec3<bool>(true, true, true));
    var var_2 = 1u;
    let var_3 = Struct_4(select(vec2<bool>(func_4(Struct_3(var_1, u_input.d, Struct_1(true, true), vec3<bool>(var_1.a.a, false, true), Struct_2(var_1.a, vec3<i32>(var_0.x, 37854i, 8681i))), vec2<f32>(1f, 1f), -900f, select(vec3<bool>(var_1.a.a, var_1.a.b, false), vec3<bool>(false, var_1.a.a, false), var_1.a.b)).a.b, false), !vec2<bool>(var_1.a.a, true), vec2<bool>(true, var_1.a.b)), vec4<bool>(!(!var_1.a.a), true, all(vec4<bool>(false, var_1.a.b, var_1.a.a, var_1.a.a)) && (var_1.a.b || all(vec3<bool>(var_1.a.a, false, false))), false));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-996f, -1000f))) * 671f), _wgslsmith_f_op_f32(f32(-1f) * -135f));
    return var_3.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec2<bool>(true, true), !vec4<bool>(true, all(vec3<bool>(true, false, false)), 19205i != u_input.c.x, true));
    var_0 = Struct_4(func_1(), !select(var_0.b, !var_0.b, !vec4<bool>(true, true, var_0.a.x, var_0.a.x)));
    var var_1 = ~u_input.b.x;
    var var_2 = Struct_4(vec2<bool>(true, true), !var_0.b);
    var var_3 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, 0i), select(u_input.c, vec4<i32>(1i, 1i, 1i, u_input.c.x), vec4<bool>(var_2.b.x, var_0.a.x, var_0.a.x, var_0.b.x))), u_input.c) | vec4<i32>(0i, ~firstTrailingBit(firstTrailingBit(-2147483647i)), -1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(7504u, u_input.d, u_input.d, u_input.d), vec4<u32>(65528u, u_input.d, 1u, 5401u)) % 32u), _wgslsmith_dot_vec4_i32(u_input.c, ~u_input.c));
    var_1 = 22700i;
    let var_4 = func_4(Struct_3(Struct_2(func_2(vec4<f32>(198f, 623f, -816f, 548f), firstTrailingBit(0u), !var_2.b.xx, firstLeadingBit(-2277i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, 10020i, u_input.a.x), ~u_input.b)), _wgslsmith_mod_u32(~(~0u), ~55825u), Struct_1(false, false), select(var_0.b.xzx, !(!var_0.b.xyz), func_2(vec4<f32>(1f, 1f, 1f, 1f), 1u, var_0.a, ~var_3.x).b), func_4(Struct_3(Struct_2(Struct_1(true, true), u_input.c.wyy), ~1u, func_4(Struct_3(Struct_2(Struct_1(false, var_0.a.x), vec3<i32>(var_3.x, var_3.x, -15859i)), u_input.d, Struct_1(var_2.a.x, var_0.b.x), vec3<bool>(false, false, var_2.a.x), Struct_2(Struct_1(var_0.a.x, false), u_input.b)), vec2<f32>(-316f, 239f), 331f, var_2.b.xzx).a, !vec3<bool>(var_2.b.x, var_2.a.x, true), func_4(Struct_3(Struct_2(Struct_1(true, var_0.a.x), vec3<i32>(var_3.x, u_input.b.x, u_input.c.x)), 14716u, Struct_1(var_0.b.x, var_2.b.x), var_2.b.yyz, Struct_2(Struct_1(true, false), vec3<i32>(-2147483647i, var_3.x, u_input.a.x))), vec2<f32>(644f, 905f), 645f, vec3<bool>(false, var_0.b.x, true))), vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.a.x, var_3.wy, Struct_3(Struct_2(Struct_1(false, var_2.b.x), u_input.b), u_input.d, Struct_1(var_2.a.x, true), var_0.b.yyw, Struct_2(Struct_1(false, true), var_3.wxw)))), -1742f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-316f)) + -335f), vec3<bool>(-6976i < var_3.x, true, var_2.b.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-863f, 684f) * vec2<f32>(-1838f, 983f)))))))), -1000f, vec3<bool>(!(~u_input.d == 4294967295u), !var_0.a.x, !all(vec2<bool>(var_0.a.x, true)))).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-702f, _wgslsmith_f_op_f32(f32(-1f) * -422f)) - vec2<f32>(-363f, 1045f)), vec2<f32>(_wgslsmith_f_op_f32(select(741f, _wgslsmith_f_op_f32(f32(-1f) * -520f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-856f, 1179f)) + _wgslsmith_f_op_f32(955f * 1000f))), func_1())), var_3.x);
}

