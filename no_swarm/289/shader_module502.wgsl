struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, -1532f, -339f);

var<private> global1: f32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-134f, 375f, arg_1.x) * _wgslsmith_f_op_vec3_f32(trunc(arg_1.xzy))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(arg_1.yxy, vec3<f32>(arg_1.x, -699f, arg_0.c.x), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x))))))))));
    global0 = arg_1.xww;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x - arg_1.x), _wgslsmith_f_op_f32(global0.x - -1280f), arg_0.c.x, 1490f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(840f, arg_1.x, 764f, -1282f)) + vec4<f32>(arg_0.c.x, global0.x, -567f, 753f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(494f, arg_0.c.x, -240f, arg_0.c.x) - arg_1), arg_1) - vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), 838f, global0.x, -705f)))), _wgslsmith_f_op_vec4_f32(arg_0.c + vec4<f32>(-1282f, arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.c.x, arg_1.x)), _wgslsmith_f_op_f32(round(-415f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1.x, 1011f)), arg_1.x)))), !arg_0.b.x));
    var var_1 = Struct_2(Struct_1(u_input.c, vec3<bool>(~arg_0.a.x < arg_0.a.x, true, all(select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, true), vec4<bool>(false, arg_0.b.x, true, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, 1033f, global0.x, 2451f) + arg_1), !vec4<bool>(false, arg_0.b.x, true, true))))), true);
    let var_2 = arg_0.c.x;
    return !var_1.a.b;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    var var_0 = !all(select(!arg_1.e.b, select(func_3(arg_1.c, arg_2.c.c, vec4<u32>(4294967295u, 0u, 0u, 1u)), func_3(Struct_1(arg_2.c.a, vec3<bool>(false, arg_2.e.b.x, arg_2.e.b.x), arg_2.e.c), vec4<f32>(global0.x, 430f, arg_2.e.c.x, 822f), vec4<u32>(arg_1.c.a.x, 9539u, arg_1.e.a.x, arg_0)), true), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-165f)))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -910f), arg_2.c.c.x, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(-806f, arg_1.e.c.x), _wgslsmith_f_op_f32(ceil(arg_1.c.c.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1079f * 806f) * _wgslsmith_f_op_f32(arg_1.c.c.x + var_1.x)), 692f))));
    var_1 = _wgslsmith_div_vec3_f32(arg_2.c.c.xyx, arg_1.c.c.yww);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_2.e.c.x, -118f) - _wgslsmith_f_op_vec3_f32(arg_1.e.c.wwx - vec3<f32>(_wgslsmith_f_op_f32(-855f * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1128f * global0.x)), -701f)));
    return false;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = vec2<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - -763f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.e.c.x, _wgslsmith_f_op_f32(select(1544f, arg_0.c.c.x, true))), global0.x))));
    let var_1 = 2590f;
    let var_2 = func_2(~(0u ^ arg_0.e.a.x) ^ 57153u, arg_0, arg_0);
    return Struct_2(Struct_1(u_input.c, arg_0.c.b, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - 1362f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(903f)))), -708f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-2267f)))))), var_2);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1((_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.a.x, 1u, u_input.a, arg_0.a.a.x), vec4<u32>(u_input.a, 1u, 0u, 75048u)) ^ ~_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(4294967295u, 93024u, 14164u, 0u))) ^ ~arg_0.a.a, vec3<bool>(any(vec4<bool>(true, arg_0.a.b.x, arg_0.b, false)) && arg_0.b, !(-2043f == func_1(Struct_4(false, 38127i, Struct_1(u_input.c, arg_0.a.b, vec4<f32>(152f, arg_0.a.c.x, arg_0.a.c.x, -808f)), arg_0.b, Struct_1(arg_0.a.a, arg_0.a.b, vec4<f32>(arg_0.a.c.x, -1279f, 1166f, global0.x))), 0i, arg_0.a.c).a.c.x), !(!arg_0.a.b.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(arg_0.a.c, arg_0.a.c))));
    var var_1 = vec4<bool>(true, any(select(!(!vec4<bool>(false, false, var_0.b.x, true)), vec4<bool>(true, var_0.b.x, !var_0.b.x, true), arg_0.a.b.x)), true, max(var_0.a.x, 1u) != ~(arg_0.a.a.x >> (~arg_0.a.a.x % 32u)));
    var_0 = func_1(Struct_4(var_1.x, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(-24408i, -16992i, 1i)), vec3<i32>(~17191i, _wgslsmith_add_i32(19973i, -2147483647i), 1i)), arg_0.a, true, Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, arg_0.a.a), vec4<u32>(4294967295u, 10390u, 72838u, arg_0.a.a.x)), select(func_3(Struct_1(arg_0.a.a, vec3<bool>(false, var_1.x, true), arg_0.a.c), var_0.c, vec4<u32>(56823u, 0u, 4294967295u, 20270u)), var_0.b, all(var_0.b.zz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.c.x, var_0.c.x, global0.x, -894f)))))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(~(-14196i), -2147483647i)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(36968i, 1i), vec2<i32>(-26491i, -1i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(75024i, -20590i), vec2<i32>(-1i, -40390i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(-743f, 1427f, global0.x, -2576f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(arg_0.a.c))))))).a;
    global1 = 164f;
    var_1 = !(!vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, var_1.x)), all(vec4<bool>(var_1.x, arg_0.a.b.x, true, var_0.b.x)), !(!arg_0.a.b.x), all(!vec2<bool>(var_0.b.x, var_1.x))));
    return Struct_3((0u ^ ~u_input.b.x) << (~(~(~0u)) % 32u), var_1.x, var_0.a.xwy, arg_0.a);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = min(1i, 41010i);
    let var_1 = -1000f;
    let var_2 = vec4<u32>(arg_2, reverseBits((abs(arg_3.a) << (arg_3.d.a.x % 32u)) >> (arg_2 % 32u)), arg_2, ~0u);
    var var_3 = ~vec4<u32>(_wgslsmith_sub_u32(~(~0u), _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(1u, arg_2))), func_1(Struct_4(false, -1i, func_4(Struct_2(arg_3.d, true)).d, true, Struct_1(u_input.c, arg_3.d.b, vec4<f32>(arg_0, global0.x, arg_3.d.c.x, 1558f))), var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_3.d.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1914f, var_1, 129f, 1000f)))).a.a.x, _wgslsmith_dot_vec2_u32(arg_3.c.xz, max(arg_3.c.xy, vec2<u32>(56153u, arg_1))) << (~var_2.x % 32u), ~4294967295u);
    var var_4 = u_input.c.xww;
    return Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, min(4294967295u, arg_2), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, arg_2), vec2<u32>(u_input.c.x, arg_1)), _wgslsmith_clamp_u32(0u, 40423u, 4294967295u)), arg_3.d.a), vec3<bool>(true, false, _wgslsmith_mult_i32(select(2147483647i, -24624i, false), ~9692i) <= _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, var_0, var_0, -2147483647i), vec4<i32>(19370i, var_0, var_0, var_0)), -vec4<i32>(-1i, 0i, var_0, var_0))), func_4(Struct_2(func_1(Struct_4(true, var_0, arg_3.d, arg_3.d.b.x, arg_3.d), _wgslsmith_sub_i32(var_0, var_0), vec4<f32>(var_1, arg_0, var_1, arg_3.d.c.x)).a, func_1(Struct_4(arg_3.d.b.x, var_0, Struct_1(vec4<u32>(1u, u_input.b.x, 53207u, 1u), arg_3.d.b, arg_3.d.c), arg_3.b, Struct_1(vec4<u32>(var_4.x, 1u, 33224u, 1825u), arg_3.d.b, arg_3.d.c)), var_0, arg_3.d.c).a.c.x >= arg_3.d.c.x)).d.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = Struct_3(_wgslsmith_sub_u32(~min(~26083u, 46266u), _wgslsmith_sub_u32(_wgslsmith_div_u32(0u & u_input.a, abs(26731u)), u_input.b.x)), true, vec3<u32>(_wgslsmith_div_u32(reverseBits(_wgslsmith_div_u32(u_input.c.x, 0u)), select(0u, 1u, true)), u_input.a, reverseBits(4294967295u)), func_5(-995f, _wgslsmith_div_u32(u_input.c.x, 1u), _wgslsmith_dot_vec2_u32(u_input.c.xy, ~vec2<u32>(54504u, 1u)) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 0u), func_4(func_1(Struct_4(false, 18419i, Struct_1(u_input.c, vec3<bool>(false, false, true), vec4<f32>(-1188f, -1000f, 948f, 386f)), true, Struct_1(u_input.c, vec3<bool>(true, false, false), vec4<f32>(486f, 1320f, -1278f, 409f))), i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1777f, 244f, global0.x, 175f), vec4<f32>(global0.x, -342f, global0.x, 926f), false))))));
    let var_2 = vec2<i32>(-2147483647i, -(select(-4028i, _wgslsmith_clamp_i32(39046i, -1i, 10815i), any(vec2<bool>(var_1.b, var_1.b))) >> (1u % 32u)));
    var var_3 = Struct_3(u_input.c.x ^ (~_wgslsmith_clamp_u32(1u, 46814u, u_input.b.x) >> (1u % 32u)), !(var_1.d.b.x & (false && !var_1.b)), u_input.c.xyz, func_1(Struct_4(var_1.d.b.x, _wgslsmith_sub_i32(i32(-1i) * -1i, 1i), func_1(Struct_4(var_1.d.b.x, 1i, Struct_1(u_input.c, vec3<bool>(var_1.b, false, var_1.d.b.x), var_1.d.c), false, Struct_1(vec4<u32>(u_input.a, 37518u, u_input.a, 52565u), var_1.d.b, var_1.d.c)), 1i, func_4(Struct_2(Struct_1(var_1.d.a, var_1.d.b, vec4<f32>(222f, 163f, global0.x, -1661f)), var_1.d.b.x)).d.c).a, true, Struct_1(~vec4<u32>(var_1.c.x, u_input.a, 8718u, u_input.b.x), var_1.d.b, var_1.d.c)), 11443i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1296f, var_1.d.c.x, -132f, global0.x))) + _wgslsmith_f_op_vec4_f32(exp2(var_1.d.c)))).a);
    var var_4 = _wgslsmith_div_vec4_i32(-abs(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<i32>(max(min(i32(-1i) * -2147483647i, _wgslsmith_add_i32(var_2.x, -36885i)), var_2.x), 1i, -(var_2.x >> (u_input.b.x % 32u)) ^ _wgslsmith_div_i32(var_2.x, var_2.x >> (u_input.b.x % 32u)), _wgslsmith_add_i32(min(_wgslsmith_mult_i32(-18537i, var_2.x), var_2.x), reverseBits(-16496i))));
    var_3 = Struct_3(var_1.d.a.x, !func_3(var_3.d, _wgslsmith_f_op_vec4_f32(-func_5(2005f, 56046u, u_input.c.x, Struct_3(u_input.a, true, var_3.c, var_3.d)).c), ~(vec4<u32>(var_1.c.x, 4294967295u, var_3.a, 4294967295u) << (vec4<u32>(var_3.c.x, 42226u, var_1.a, 0u) % vec4<u32>(32u)))).x, _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(var_3.d.a.wyy, select(~u_input.c.wwx, u_input.c.wxy << (vec3<u32>(4294967295u, var_1.a, 6667u) % vec3<u32>(32u)), false)), ~(~vec3<u32>(105273u, 10188u, 1u))), var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(var_4.xz, abs(var_2)), _wgslsmith_sub_vec2_i32(var_4.ww, var_4.ww));
}

