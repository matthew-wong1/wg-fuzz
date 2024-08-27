struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = u_input.b.x < (u_input.b.x | 1u);
    var_0 = any(vec3<bool>(all(vec3<bool>(true, all(vec3<bool>(true, true, false)), u_input.a == u_input.a)), true, !all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-335f, -329f, -531f, 815f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f + -646f)), _wgslsmith_f_op_f32(step(-1032f, _wgslsmith_f_op_f32(max(-902f, 741f)))), -1021f, -144f), vec4<bool>(true, select(true, true, select(true, false, false)), true, true))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -1172f, 1293f, var_1.x)));
    var_0 = all(!select(vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false)) || any(vec2<bool>(true, true))));
    return select(!select(vec3<bool>(true, true, u_input.b.x > u_input.b.x), vec3<bool>(true, true, u_input.a < u_input.a), vec3<bool>(true, true, true)), vec3<bool>(min(34854u, reverseBits(u_input.b.x)) == firstLeadingBit(u_input.b.x), true, true), true);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    let var_0 = Struct_1(select(!arg_2.c.a.x, arg_1.b.b, false), all(select(!(!arg_1.a.d), arg_1.a.d, true)), arg_1.b.c, select(vec3<u32>(arg_1.b.d.x, ~1u, ~arg_1.a.b.d.x), min(vec3<u32>(arg_1.b.d.x, ~16949u, ~u_input.b.x), countOneBits(vec3<u32>(1u, arg_1.a.b.d.x, arg_2.c.e.d.x))), func_3()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a.e.e.x, arg_1.a.e.e.x, arg_2.c.c))) - arg_2.c.b.e) - _wgslsmith_f_op_vec3_f32(-arg_1.b.e)));
    let var_1 = arg_2.c.b.d.xx;
    var var_2 = _wgslsmith_f_op_f32(arg_2.c.e.e.x - arg_2.c.b.e.x);
    var var_3 = _wgslsmith_mult_vec4_i32(firstLeadingBit(~firstTrailingBit(vec4<i32>(2218i, arg_2.c.b.c, var_0.c, -12126i))), vec4<i32>(-_wgslsmith_add_i32(arg_2.c.e.c, u_input.a), ~_wgslsmith_clamp_i32(-10726i, -2147483647i, arg_2.c.b.c), abs(~1i), _wgslsmith_add_i32(~4259i, ~22717i))) >> (vec4<u32>((var_1.x | arg_2.a) << (~_wgslsmith_clamp_u32(26206u, u_input.b.x, arg_2.c.e.d.x) % 32u), _wgslsmith_clamp_u32(~var_0.d.x, ~65419u, var_0.d.x & u_input.b.x) >> (~u_input.b.x % 32u), 1u, ~_wgslsmith_dot_vec3_u32(var_0.d << (vec3<u32>(u_input.b.x, var_1.x, 26544u) % vec3<u32>(32u)), vec3<u32>(65432u, var_0.d.x, 36411u))) % vec4<u32>(32u));
    var var_4 = arg_1.b;
    return -1i;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = Struct_2(vec2<bool>(arg_3.x >= arg_3.x, !any(vec2<bool>(true, true))), Struct_1(true, all(func_3()), _wgslsmith_dot_vec4_i32(select(min(vec4<i32>(-11590i, u_input.a, -19509i, 2113i), vec4<i32>(arg_2, 4779i, 2147483647i, -15481i)), firstLeadingBit(vec4<i32>(-3237i, 26809i, u_input.a, 2147483647i)), false), min(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), select(vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a), vec4<i32>(-10036i, u_input.a, -43960i, -72900i), vec4<bool>(false, true, false, true)))), arg_0.zxx, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(sign(arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, -753f, 418f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-945f, arg_3.x, arg_3.x)), true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.x))), !vec4<bool>(true, true, u_input.b.x <= 54208u, true), Struct_1(min(arg_1.x, 90663u) >= ~u_input.b.x, !(countOneBits(u_input.b.x) < 1u), arg_2, ~arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-574f, arg_3.x, 243f)) - vec3<f32>(1062f, 359f, arg_3.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1500f, 957f, arg_3.x) - vec3<f32>(arg_3.x, arg_3.x, 127f))))));
    var_0 = Struct_2(var_0.d.xz, Struct_1(false, (-283f <= _wgslsmith_f_op_f32(-var_0.e.e.x)) & any(!var_0.d), 0i, ~reverseBits(select(vec3<u32>(arg_1.x, var_0.e.d.x, arg_0.x), var_0.b.d, var_0.d.zzw)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.x))), _wgslsmith_div_f32(var_0.e.e.x, -144f))), -749f, select(!vec4<bool>(var_0.a.x, var_0.d.x, !var_0.a.x, var_0.e.c >= arg_2), select(vec4<bool>(!var_0.b.b, all(vec4<bool>(true, var_0.e.a, true, var_0.e.b)), all(var_0.d.yxz), true), !(!vec4<bool>(var_0.e.a, false, var_0.b.a, var_0.a.x)), false), vec4<bool>(true, true, var_0.b.b, true)), Struct_1(all(!var_0.d.yx) | true, all(select(!vec3<bool>(var_0.b.a, true, var_0.a.x), var_0.d.zwz, true)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~2147483647i, var_0.b.c >> (14686u % 32u), firstTrailingBit(u_input.a)), u_input.a), vec3<u32>(~(var_0.e.d.x & u_input.b.x), 74731u, arg_0.x), _wgslsmith_f_op_vec3_f32(sign(var_0.e.e))));
    let var_1 = Struct_4(var_0.b.d.x | (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, var_0.b.d.x), vec2<u32>(arg_1.x, arg_0.x)), firstLeadingBit(u_input.b.x)) & var_0.b.d.x), var_0.d.xzy, Struct_2(vec2<bool>(func_3().x, var_0.e.b), var_0.b, arg_3.x, var_0.d, var_0.b));
    let var_2 = -vec3<i32>(~(~0i ^ ~arg_2), var_1.c.e.c, -2147483647i);
    var_0 = var_1.c;
    return Struct_4(_wgslsmith_add_u32(~4294967295u, 108019u), select(var_0.d.wwy, func_3(), var_0.d.wxz), Struct_2(var_1.c.a, var_0.e, 658f, select(var_1.c.d, !vec4<bool>(var_0.d.x, true, var_0.a.x, var_1.c.a.x), vec4<bool>(any(vec3<bool>(var_1.b.x, var_1.c.a.x, var_0.d.x)), var_1.c.d.x, any(var_0.d.wyz), var_0.e.b & true)), var_0.e));
}

fn func_1() -> u32 {
    let var_0 = ~vec2<i32>(u_input.a >> (~(~u_input.b.x) % 32u), -38127i);
    let var_1 = ~(~vec3<u32>(_wgslsmith_clamp_u32(abs(80459u), 4294967295u, ~0u), u_input.b.x, u_input.b.x));
    let var_2 = func_4(vec4<u32>((~u_input.b.x << (70624u % 32u)) & ((u_input.b.x ^ u_input.b.x) | ~4294967295u), 11872u, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(0u, 43096u, 0u), 43945u), ~u_input.b.x), var_1, i32(-1i) * -func_2(-1578f, Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(true, true, u_input.a, var_1, vec3<f32>(877f, -158f, -1012f)), -896f, vec4<bool>(false, true, false, false), Struct_1(true, true, -33624i, var_1, vec3<f32>(-498f, 869f, 790f))), Struct_1(true, false, 2147483647i, var_1, vec3<f32>(1316f, 455f, 1705f))), Struct_4(var_1.x, vec3<bool>(false, false, false), Struct_2(vec2<bool>(false, false), Struct_1(false, false, var_0.x, vec3<u32>(33734u, u_input.b.x, 4294967295u), vec3<f32>(-1374f, -135f, -152f)), 1274f, vec4<bool>(false, true, true, true), Struct_1(true, false, var_0.x, var_1, vec3<f32>(1360f, 394f, 1000f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1149f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1731f + -306f) - _wgslsmith_div_f32(646f, _wgslsmith_f_op_f32(f32(-1f) * -328f)))));
    var var_3 = Struct_1(all(func_4(vec4<u32>(var_1.x, u_input.b.x, ~var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 4294967295u, var_1.x), var_2.c.b.d)), var_1, ~(60341i << (var_2.a % 32u)), var_2.c.e.e.yy).c.d.wx), false, _wgslsmith_clamp_i32(var_0.x >> (var_1.x % 32u), -var_2.c.e.c, abs(~1i)), ~(~select(var_2.c.e.d, ~vec3<u32>(u_input.b.x, var_1.x, 76605u), var_2.b)), vec3<f32>(var_2.c.b.e.x, 580f, -1389f));
    let var_4 = -1368f;
    return 27851u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x >> (func_1() % 32u);
    var var_1 = Struct_2(vec2<bool>(false, !(any(vec2<bool>(true, true)) & true)), Struct_1(true, false, i32(-1i) * -2147483647i, abs(~vec3<u32>(u_input.b.x, 66891u, 4294967295u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, -1099f, 435f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1010f, 196f, -184f) + vec3<f32>(1103f, -271f, -844f))))), -499f, select(vec4<bool>(any(func_3().xz), false, func_3().x, true), func_4(~vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u), ~(~vec3<u32>(u_input.b.x, u_input.b.x, 33847u)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, -24920i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, -1i, -24989i))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 743f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(700f, 1884f) * vec2<f32>(-181f, -1064f)), vec2<bool>(true, true)))).c.d, (reverseBits(u_input.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 75615u, 4294967295u), vec4<u32>(0u, 1u, u_input.b.x, 9662u)) % 32u)) > u_input.a), func_4(~(~vec4<u32>(90476u, 14272u, u_input.b.x, 54444u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(65821u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 51790u, 17752u, u_input.b.x)) % vec4<u32>(32u))), vec3<u32>(countOneBits(u_input.b.x), 9601u, 40219u), ~(-u_input.a) << (_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)) % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(694f, -533f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2255f, 1372f)))))).c.b);
    let var_2 = u_input.b.x;
    var var_3 = var_1.b.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_1.b.e.x, var_1.e.e.x, var_1.b.e.x) + vec4<f32>(var_1.b.e.x, 369f, 2138f, 492f))))));
}

