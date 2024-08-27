struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1223f);
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))), arg_1.a.a.x, !all(vec2<bool>(true, true))));
    var var_1 = 64729i;
    let var_2 = ~abs(arg_1.c & _wgslsmith_div_u32(_wgslsmith_add_u32(30353u, u_input.b), 92566u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(f32(-1f) * -289f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x) + -2129f) - 875f)));
    return !any(vec2<bool>(false, arg_1.b == true)) & all(vec4<bool>(false, !(!arg_1.b), arg_1.b | !arg_1.b, all(select(vec2<bool>(false, false), vec2<bool>(arg_1.b, false), true))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(arg_1.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a.a.x - arg_3.a.x) * _wgslsmith_f_op_f32(arg_1.b.a.a.x * arg_3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) + arg_1.b.a.a.x))) > _wgslsmith_f_op_f32(f32(-1f) * -225f), 4294967295u);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.a.x, var_0.a.a.x, 728f)))), max(vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, ~44805i), abs(-vec3<i32>(-1i, arg_3.b.x, u_input.c.x)))), !func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.a * arg_1.b.a.a)), Struct_2(Struct_1(arg_1.b.a.a, vec3<i32>(2147483647i, arg_0, -5682i)), var_0.b, _wgslsmith_div_u32(64316u, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1483f, -1000f, 760f, var_0.a.a.x))), 4294967295u);
    let var_2 = ~2147483647i;
    let var_3 = u_input.b;
    var var_4 = 8757i;
    return arg_1.b.a.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a.a.x;
    var var_1 = Struct_3(Struct_1(arg_0.a.a, func_4(~16909i, Struct_4(-254f, Struct_3(Struct_1(vec3<f32>(1000f, var_0, arg_1.x), vec3<i32>(arg_2.a.b.x, -12628i, u_input.c.x)), arg_0.a.b, vec4<u32>(0u, 2021u, arg_2.c, arg_0.c), vec2<f32>(1095f, 947f), vec2<bool>(true, arg_2.b)), func_3(vec3<f32>(arg_0.a.a.x, arg_1.x, -366f), Struct_2(arg_0.a, arg_2.b, arg_0.c), vec4<f32>(183f, var_0, arg_0.a.a.x, var_0)), _wgslsmith_add_u32(0u, 0u), !arg_0.b), _wgslsmith_add_i32(min(u_input.c.x, 22340i), u_input.c.x), arg_0.a)), vec3<i32>(-2147483647i, 1i, _wgslsmith_sub_i32(-2147483647i, arg_0.a.b.x)), vec4<u32>(u_input.b, ~(~(~u_input.d.x)), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.c, arg_2.c, 80595u, arg_0.c), vec4<u32>(u_input.d.x, 1u, u_input.d.x, 90796u), vec4<bool>(true, false, arg_0.b, arg_2.b)), abs(vec4<u32>(arg_0.c, 84496u, arg_0.c, 4294967295u)))), u_input.b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1295f, arg_2.a.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a.a.zx * vec2<f32>(-1114f, arg_0.a.a.x)) + _wgslsmith_f_op_vec2_f32(min(arg_2.a.a.yz, vec2<f32>(arg_2.a.a.x, 708f)))), vec2<bool>(arg_0.c == arg_0.c, arg_2.b))))), select(vec2<bool>(true, !arg_0.b), vec2<bool>(!func_3(arg_2.a.a, arg_0, vec4<f32>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x, 2193f)), arg_0.b), arg_2.b));
    var_1 = Struct_3(var_1.a, vec3<i32>(7550i, 4644i, -arg_0.a.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(min(_wgslsmith_mult_u32(arg_0.c, 4294967295u), firstTrailingBit(2954u)), _wgslsmith_dot_vec4_u32(var_1.c, var_1.c) & ~44449u, min(0u, var_1.c.x), _wgslsmith_dot_vec3_u32(var_1.c.wwy >> (vec3<u32>(4294967295u, arg_2.c, arg_0.c) % vec3<u32>(32u)), var_1.c.wyy ^ var_1.c.wzz)), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 0u, u_input.d.x, 2993u) << (var_1.c % vec4<u32>(32u)), vec4<u32>(~arg_0.c, _wgslsmith_dot_vec3_u32(var_1.c.yyz, var_1.c.wzz), 14874u, ~0u))), _wgslsmith_div_vec2_f32(arg_0.a.a.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(arg_2.a.a.yy)))))), vec2<bool>(!any(select(var_1.e, vec2<bool>(var_1.e.x, var_1.e.x), var_1.e)), !arg_0.b));
    var_1 = Struct_3(arg_2.a, vec3<i32>(19680i, select(_wgslsmith_div_i32(arg_0.a.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.a.x, arg_0.a.b.x), vec4<i32>(var_1.b.x, 47084i, u_input.c.x, arg_2.a.b.x))), -2147483647i, any(vec4<bool>(arg_0.b, true, true, var_1.e.x))), arg_2.a.b.x), ~countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 15117u, 44849u, arg_2.c), var_1.c), ~vec4<u32>(0u, var_1.c.x, 28799u, 1u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_div_f32(arg_1.x, -740f)) - arg_0.a.a.xx), vec2<bool>(false, false));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_2.a.a), arg_2.a.a)))), vec3<i32>(18167i, -10008i, ~u_input.c.x) ^ -(var_1.a.b | vec3<i32>(-38948i, -4954i, arg_2.a.b.x))), -var_1.b, var_1.c, arg_0.a.a.yz, vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a.x)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.d.x)))), arg_2.b));
    return arg_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.a.x - 1304f))))), Struct_3(Struct_1(arg_0.a.a, -var_0.a.b), var_0.a.b, _wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c, 1u, var_0.c, 1u), vec4<u32>(arg_0.c, var_0.c, 38741u, 32990u), vec4<u32>(arg_1.c, arg_1.c, 1u, 70246u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 1u), vec2<u32>(u_input.b, u_input.d.x)), var_0.c, _wgslsmith_sub_u32(arg_0.c, u_input.d.x), ~1u)), var_0.a.a.xy, select(select(!vec2<bool>(arg_3, arg_0.b), vec2<bool>(arg_2, false), select(vec2<bool>(arg_0.b, arg_1.b), vec2<bool>(arg_3, arg_1.b), false)), !select(vec2<bool>(true, var_0.b), vec2<bool>(arg_0.b, false), false), select(select(vec2<bool>(arg_2, arg_1.b), vec2<bool>(true, arg_3), arg_3), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, arg_3)), arg_0.b))), !any(!select(vec2<bool>(arg_2, false), vec2<bool>(arg_1.b, var_0.b), vec2<bool>(arg_2, arg_0.b))), ~(~_wgslsmith_add_u32(0u, u_input.b >> (0u % 32u))), var_0.b);
    var var_2 = Struct_3(Struct_1(vec3<f32>(-869f, _wgslsmith_f_op_f32(trunc(306f)), var_0.a.a.x), var_1.b.a.b), vec3<i32>(select(arg_0.a.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-2147483647i, u_input.a.x)), false && all(var_1.b.e)), firstTrailingBit(arg_0.a.b.x), 1i), abs(abs(reverseBits(~var_1.b.c))), var_1.b.a.a.xx, select(select(vec2<bool>(false, true), !(!var_1.b.e), var_1.b.e), select(!var_1.b.e, var_1.b.e, func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.a.x, 113f, 600f))), Struct_2(Struct_1(var_0.a.a, vec3<i32>(u_input.c.x, 26750i, arg_0.a.b.x)), true, var_1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-884f, 1170f, -786f, var_0.a.a.x) * vec4<f32>(1000f, -859f, 587f, arg_1.a.a.x)))), arg_1.b));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2569f + var_1.a)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1086f - 1000f))))), var_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-906f * _wgslsmith_f_op_f32(sign(var_2.a.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1606f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1318f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1891f, -1184f), var_0.a.a.x))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2.a.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1132f, 1764f, arg_1.a.a.x))))))));
    return Struct_2(func_2(arg_0, vec3<f32>(var_3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(484f, arg_1.a.a.x)))), _wgslsmith_f_op_f32(var_1.b.a.a.x * _wgslsmith_f_op_f32(round(-170f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a.a), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.b.x, 52824i, arg_0.a.b.x), arg_1.a.b)), true | var_2.e.x, arg_0.c)), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.a.a))), arg_1, vec4<f32>(func_2(arg_0, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a.a.x, var_0.a.a.x, 1105f))), Struct_2(arg_0.a, false, u_input.b)).a.x, -563f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + 738f), _wgslsmith_f_op_f32(min(var_0.a.a.x, var_2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.a.x))))), ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.x, var_1.d, 6762u, var_1.d), var_1.b.c), ~arg_0.c)));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_3.e.x;
    let var_1 = Struct_1(arg_3.a.a, arg_3.a.b);
    return arg_0.a;
}

fn func_1() -> bool {
    var var_0 = false || !any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), all(vec3<bool>(true, false, true))));
    var var_1 = Struct_3(func_6(func_5(Struct_2(func_2(Struct_2(Struct_1(vec3<f32>(-215f, -1127f, 829f), vec3<i32>(u_input.c.x, 54242i, -48519i)), false, 0u), vec3<f32>(550f, 201f, 1000f), Struct_2(Struct_1(vec3<f32>(-878f, -269f, 1488f), vec3<i32>(u_input.c.x, 2147483647i, -11496i)), false, 60108u)), true, ~29567u), Struct_2(Struct_1(vec3<f32>(189f, 233f, 801f), vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x)), false, 0u), true, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1217f, -337f)), Struct_2(Struct_1(vec3<f32>(-735f, -2583f, 1114f), vec3<i32>(u_input.c.x, -1i, 2147483647i)), false, 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(523f, 706f, 107f, 1162f) * vec4<f32>(371f, -1300f, 145f, 416f)))), vec2<bool>(~u_input.c.x == _wgslsmith_mod_i32(-13233i, -2147483647i), true), ~((u_input.b | 35615u) >> (1u % 32u)), Struct_3(func_5(Struct_2(Struct_1(vec3<f32>(-467f, -1000f, -1889f), vec3<i32>(0i, u_input.a.x, -2147483647i)), false, u_input.d.x), Struct_2(Struct_1(vec3<f32>(2066f, 308f, 322f), vec3<i32>(55964i, 87480i, 2147483647i)), true, u_input.b), false, any(vec2<bool>(false, false))).a, vec3<i32>(~u_input.c.x, ~(-33125i), _wgslsmith_clamp_i32(2147483647i, 628i, u_input.c.x)), ~reverseBits(vec4<u32>(u_input.d.x, u_input.b, 1u, u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(-1000f + 2344f), -927f), vec2<bool>(true, true))), abs(func_6(func_5(func_5(Struct_2(Struct_1(vec3<f32>(568f, -1000f, 1084f), vec3<i32>(-2147483647i, u_input.a.x, -23535i)), false, u_input.b), Struct_2(Struct_1(vec3<f32>(-1257f, 618f, -1434f), vec3<i32>(-5116i, u_input.a.x, u_input.c.x)), true, u_input.b), false, true), func_5(Struct_2(Struct_1(vec3<f32>(677f, 1727f, -2545f), vec3<i32>(u_input.a.x, 0i, u_input.c.x)), true, 1998u), Struct_2(Struct_1(vec3<f32>(-1001f, 833f, 162f), vec3<i32>(-1i, 2147483647i, u_input.a.x)), true, u_input.d.x), false, false), true, func_3(vec3<f32>(1271f, -585f, 386f), Struct_2(Struct_1(vec3<f32>(1165f, 574f, -603f), vec3<i32>(u_input.a.x, u_input.a.x, 0i)), true, u_input.d.x), vec4<f32>(1000f, 340f, 1605f, 1999f))), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), ~(~u_input.d.x), Struct_3(func_2(Struct_2(Struct_1(vec3<f32>(-619f, 376f, -1000f), vec3<i32>(-1i, 1i, 1i)), true, 19771u), vec3<f32>(1530f, 367f, 100f), Struct_2(Struct_1(vec3<f32>(2033f, -3510f, -160f), vec3<i32>(u_input.a.x, -11864i, -29921i)), true, 47896u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 52579i), vec3<i32>(u_input.c.x, 29356i, -22338i)), vec4<u32>(11642u, 28410u, 11259u, u_input.d.x) ^ vec4<u32>(58723u, 4284u, u_input.b, u_input.d.x), vec2<f32>(-860f, -233f), vec2<bool>(true, true))).b), firstTrailingBit(reverseBits(firstLeadingBit(countOneBits(vec4<u32>(42085u, u_input.d.x, u_input.b, 4294967295u))))), vec2<f32>(-2960f, func_6(func_5(Struct_2(Struct_1(vec3<f32>(-1284f, -250f, 404f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.c.x)), false, u_input.d.x), func_5(Struct_2(Struct_1(vec3<f32>(418f, 506f, -1507f), vec3<i32>(26588i, 12609i, -2147483647i)), true, 1u), Struct_2(Struct_1(vec3<f32>(-1000f, 213f, 1000f), vec3<i32>(1i, u_input.c.x, u_input.c.x)), true, 29884u), false, false), true, false), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), _wgslsmith_clamp_u32(0u, func_5(Struct_2(Struct_1(vec3<f32>(511f, -1590f, -611f), vec3<i32>(u_input.c.x, u_input.c.x, 0i)), true, 7018u), Struct_2(Struct_1(vec3<f32>(-1231f, 2397f, 1527f), vec3<i32>(-2147483647i, 1i, u_input.a.x)), false, 35439u), false, false).c, ~1u), Struct_3(Struct_1(vec3<f32>(399f, 1121f, -536f), vec3<i32>(u_input.a.x, u_input.a.x, -2878i)), vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), vec4<u32>(1u, u_input.b, u_input.d.x, u_input.d.x), func_2(Struct_2(Struct_1(vec3<f32>(-1014f, 295f, 649f), vec3<i32>(u_input.c.x, u_input.c.x, 0i)), true, 70633u), vec3<f32>(148f, 379f, -1000f), Struct_2(Struct_1(vec3<f32>(763f, 1935f, -273f), vec3<i32>(u_input.c.x, u_input.c.x, 16849i)), true, u_input.b)).a.yz, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))).a.x), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, all(vec3<bool>(false, true, false))), false));
    let var_2 = Struct_4(var_1.d.x, Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a.x + var_1.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(var_1.a.a.x - var_1.a.a.x)), ~vec3<i32>(2147483647i, var_1.b.x, var_1.b.x)), var_1.b << (vec3<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.d.x), var_1.c.x ^ 25046u, 1u) % vec3<u32>(32u)), ~(~vec4<u32>(var_1.c.x, u_input.d.x, u_input.b, 14484u)), _wgslsmith_f_op_vec2_f32(-func_2(func_5(Struct_2(Struct_1(var_1.a.a, var_1.a.b), true, 1u), Struct_2(Struct_1(vec3<f32>(-935f, -862f, var_1.d.x), vec3<i32>(-540i, -2147483647i, var_1.a.b.x)), var_1.e.x, 15924u), false, var_1.e.x), vec3<f32>(102f, 450f, var_1.a.a.x), func_5(Struct_2(var_1.a, var_1.e.x, 0u), Struct_2(var_1.a, false, 33871u), var_1.e.x, var_1.e.x)).a.xz), vec2<bool>(var_1.e.x, var_1.a.b.x >= func_4(u_input.a.x, Struct_4(1116f, Struct_3(var_1.a, vec3<i32>(2147483647i, var_1.a.b.x, var_1.b.x), var_1.c, var_1.a.a.yz, var_1.e), var_1.e.x, var_1.c.x, false), 17910i, var_1.a).x)), var_1.e.x, 4294967295u, var_1.e.x);
    let var_3 = func_6(func_5(func_5(func_5(Struct_2(Struct_1(vec3<f32>(var_2.b.a.a.x, var_1.d.x, var_1.a.a.x), var_1.b), var_2.e, var_1.c.x), func_5(Struct_2(Struct_1(vec3<f32>(var_1.d.x, 399f, 2151f), var_2.b.b), var_2.e, var_2.b.c.x), Struct_2(var_1.a, false, 4294967295u), var_2.b.e.x, var_2.b.e.x), false & var_1.e.x, var_2.e), Struct_2(func_6(Struct_2(Struct_1(vec3<f32>(-2014f, 1659f, var_1.d.x), var_2.b.a.b), var_2.c, 10331u), var_2.b.e, 0u, Struct_3(Struct_1(var_1.a.a, vec3<i32>(var_1.b.x, -9587i, var_2.b.b.x)), vec3<i32>(u_input.c.x, var_2.b.a.b.x, 19041i), vec4<u32>(31899u, 1u, var_1.c.x, 57876u), vec2<f32>(var_1.d.x, var_2.b.a.a.x), var_1.e)), true, var_2.d << (var_1.c.x % 32u)), ~(-13622i) >= (var_1.b.x & var_1.a.b.x), 1f >= var_2.b.a.a.x), func_5(Struct_2(var_1.a, true, 43479u >> (0u % 32u)), Struct_2(func_6(Struct_2(Struct_1(var_1.a.a, var_1.a.b), var_1.e.x, 0u), vec2<bool>(var_1.e.x, true), var_2.d, Struct_3(var_1.a, var_2.b.a.b, var_1.c, vec2<f32>(1000f, 1379f), var_1.e)), !var_2.e, var_1.c.x), !(var_1.e.x & var_2.b.e.x), var_2.b.e.x), !var_1.e.x, !any(vec4<bool>(false, false, false, false))), vec2<bool>(true, select(_wgslsmith_div_i32(u_input.a.x, u_input.c.x), 1843i, var_1.e.x) > -(-2147483647i | var_2.b.a.b.x)), ~0u, Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(890f, var_1.a.a.x, 506f), var_2.b.a.a)))), ~(~var_2.b.a.b)), var_1.a.b, _wgslsmith_mod_vec4_u32(var_1.c | vec4<u32>(var_1.c.x, u_input.d.x, var_1.c.x, 0u), var_2.b.c >> (vec4<u32>(u_input.b, var_2.b.c.x, 75093u, u_input.b) % vec4<u32>(32u))) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, var_1.c.x), vec4<u32>(8800u, 24792u, var_1.c.x, var_2.d), vec4<u32>(1u, var_1.c.x, 4294967295u, 53541u)), vec2<f32>(var_2.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-900f - 2354f))), var_2.b.e));
    let var_4 = vec3<bool>(!(0u > u_input.b), any(vec2<bool>(false, -1426f <= var_3.a.x)), false);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), all(vec2<bool>(true, all(vec4<bool>(false, false, true, true)))), true);
    var var_1 = u_input.a.x;
    var_0 = !select(vec3<bool>(var_0.x, true, true), select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, func_1(), u_input.c.x < u_input.c.x), func_5(Struct_2(Struct_1(vec3<f32>(-629f, -1620f, 1234f), vec3<i32>(u_input.a.x, -1i, -16356i)), var_0.x, 10969u), func_5(Struct_2(Struct_1(vec3<f32>(1295f, -1234f, 318f), vec3<i32>(u_input.a.x, u_input.c.x, 12565i)), true, 43987u), Struct_2(Struct_1(vec3<f32>(622f, -498f, 277f), vec3<i32>(u_input.a.x, u_input.c.x, 0i)), var_0.x, u_input.b), var_0.x, true), func_5(Struct_2(Struct_1(vec3<f32>(-172f, -979f, -1766f), vec3<i32>(1i, -1i, 67262i)), var_0.x, u_input.d.x), Struct_2(Struct_1(vec3<f32>(155f, -108f, 564f), vec3<i32>(-21987i, u_input.c.x, u_input.a.x)), var_0.x, 6542u), false, true).b, var_0.x).b), var_0.x);
    var var_2 = Struct_3(Struct_1(vec3<f32>(-1284f, _wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(floor(-1000f))), vec3<i32>(u_input.c.x << (~41217u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(9527i, -30016i, -38427i, -1i), reverseBits(vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, -1i))), func_5(func_5(Struct_2(Struct_1(vec3<f32>(-319f, 271f, 934f), vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x)), false, u_input.b), Struct_2(Struct_1(vec3<f32>(-239f, -908f, 1210f), vec3<i32>(u_input.a.x, -22348i, u_input.c.x)), true, u_input.d.x), true, true), Struct_2(Struct_1(vec3<f32>(1203f, 235f, -1000f), vec3<i32>(u_input.c.x, 1i, u_input.a.x)), var_0.x, u_input.d.x), func_1(), var_0.x).a.b.x)), vec3<i32>(u_input.a.x, _wgslsmith_div_i32(-u_input.c.x, u_input.a.x), ~(_wgslsmith_clamp_i32(1i, 2147483647i, 8527i) | u_input.c.x)), _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 17183u, u_input.d.x, 4294967295u), vec4<u32>(u_input.b, 0u, 4294967295u, 27104u), vec4<u32>(u_input.d.x, 31943u, u_input.b, 61099u)), firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 1u, 1u))), vec4<u32>(u_input.d.x, ~_wgslsmith_div_u32(u_input.b, 1u), u_input.b, u_input.d.x), ~firstLeadingBit(vec4<u32>(30747u, u_input.d.x, u_input.d.x, 20974u) >> (vec4<u32>(u_input.b, u_input.d.x, 117094u, u_input.d.x) % vec4<u32>(32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(288f, -1344f), vec2<f32>(-236f, 445f), true)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-570f, -874f), vec2<f32>(-1000f, -948f), true)))), vec2<f32>(_wgslsmith_f_op_f32(-1716f * 813f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(810f, 1000f)))), var_0.xx);
    var var_3 = Struct_3(Struct_1(var_2.a.a, max(vec3<i32>(-1i) * -var_2.a.b, vec3<i32>(u_input.c.x, -u_input.c.x, u_input.a.x))), abs(vec3<i32>(0i, -u_input.c.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(32209i, -1i)), var_2.a.b.yz << (u_input.d % vec2<u32>(32u))))), ~(~vec4<u32>(var_2.c.x, 1u, 1u, u_input.d.x)), var_2.a.a.yy, var_0.yx);
    let var_4 = ~_wgslsmith_mult_i32(var_2.b.x, ~var_3.b.x) ^ countOneBits(-1i);
    var_2 = Struct_3(Struct_1(vec3<f32>(-522f, _wgslsmith_f_op_f32(f32(-1f) * -535f), var_2.d.x), vec3<i32>(~_wgslsmith_mult_i32(59632i, var_3.a.b.x), var_4 & u_input.c.x, ~(var_3.b.x ^ -1i))), ~(_wgslsmith_mod_vec3_i32(-var_2.b, firstLeadingBit(var_2.a.b)) >> (~abs(var_3.c.zyy) % vec3<u32>(32u))), min(~(~vec4<u32>(4294967295u, 95643u, u_input.b, var_2.c.x)) << (vec4<u32>(u_input.d.x | var_3.c.x, 11937u, u_input.b, var_3.c.x | 0u) % vec4<u32>(32u)), var_3.c), vec2<f32>(528f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-585f)), 541f))), vec2<bool>(false, max(var_4, -var_2.a.b.x) < countOneBits(2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~(-28508i) & _wgslsmith_mult_i32(var_4, var_3.b.x), func_6(Struct_2(Struct_1(vec3<f32>(1000f, var_3.d.x, var_3.a.a.x), vec3<i32>(13589i, 1504i, -31341i)), false, var_2.c.x), !var_2.e, 34912u ^ var_3.c.x, Struct_3(var_3.a, vec3<i32>(var_3.b.x, u_input.a.x, -41287i), var_2.c, var_3.a.a.xy, vec2<bool>(var_0.x, true))).b.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_2.b.x, -17644i, 4468i) ^ vec4<i32>(var_4, var_3.a.b.x, var_4, u_input.c.x), vec4<i32>(1i, -2147483647i, -2147483647i, var_2.b.x)), _wgslsmith_mult_i32(var_3.b.x, -2697i | var_2.b.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, -52690i), -u_input.a.x), -_wgslsmith_div_i32(0i, -30533i), var_4), countOneBits(vec4<i32>(-2147483647i, abs(var_3.a.b.x), var_2.b.x, -34474i)), vec4<i32>(select(u_input.a.x << (u_input.d.x % 32u), -8128i, false), _wgslsmith_div_i32(abs(-29759i), _wgslsmith_mult_i32(var_4, -356i)), 40204i, -(~(-1i)))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-16908i, var_2.b.x, -19228i, u_input.a.x), vec4<i32>(1i, 1i, 1i, 1i)) & vec4<i32>(1i, var_3.b.x, u_input.a.x, ~u_input.a.x), vec4<i32>(_wgslsmith_sub_i32(func_5(Struct_2(Struct_1(var_2.a.a, var_2.b), true, var_3.c.x), Struct_2(var_2.a, false, 1u), var_0.x, false).a.b.x, ~28972i), 1i, reverseBits(-var_4), -28359i), !vec4<bool>(var_3.e.x, any(var_0.yx), true, !var_3.e.x)), var_2.a.a.x);
}

