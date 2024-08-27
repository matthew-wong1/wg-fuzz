struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = true;
    global0 = Struct_5(select(all(!vec4<bool>(var_0, var_0, var_0, false)), false, true));
    global0 = Struct_5((abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -1i, u_input.b.x), vec3<i32>(u_input.b.x, -8162i, 1i))) == _wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(u_input.d, u_input.d))) || global0.a);
    let var_1 = global0.a | true;
    global0 = Struct_5(all(select(vec2<bool>(any(vec3<bool>(global0.a, false, false)), global0.a), vec2<bool>(global0.a, any(vec2<bool>(var_1, var_0))), vec2<bool>(false, global0.a))));
    return vec4<bool>(max(abs(1u), ~u_input.a.x) < u_input.a.x, true, false, true);
}

fn func_2() -> vec4<bool> {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec2_u32(min(~u_input.a.zx, vec2<u32>(~19106u, 4294967295u)), ~u_input.a.yz));
    let var_1 = Struct_5(true);
    var var_2 = Struct_1(~(~_wgslsmith_sub_vec4_i32(-u_input.b, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(-133f - _wgslsmith_f_op_f32(step(-1088f, _wgslsmith_div_f32(1494f, -1000f)))), _wgslsmith_f_op_f32(round(-643f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f))), ~(1u >> ((u_input.a.x << (_wgslsmith_mod_u32(0u, 88213u) % 32u)) % 32u)), _wgslsmith_sub_i32(min(-abs(u_input.c.x), 0i), u_input.c.x));
    var_0 = ~(~vec2<u32>(max(~15423u, var_2.c), _wgslsmith_dot_vec2_u32(vec2<u32>(17499u, 4294967295u), ~u_input.a.zy)));
    global0 = Struct_5(all(!(!vec4<bool>(true, global0.a, global0.a, var_1.a))));
    return !(!func_3());
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1226f)), _wgslsmith_f_op_f32(-arg_1.b.b.x), global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-865f - 723f), _wgslsmith_f_op_f32(exp2(arg_0.x)))) - arg_1.d.x))));
    let var_1 = Struct_3(Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-arg_0), true)), _wgslsmith_mult_u32(~u_input.a.x, 0u) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, 65834u, arg_1.c.c), vec4<u32>(u_input.a.x, arg_2.x, u_input.a.x, arg_2.x), vec4<u32>(1u, arg_1.b.c, arg_1.c.c, 16678u)), ~vec4<u32>(56407u, arg_1.b.c, 54740u, 26348u)) % 32u), 1i), vec2<u32>(max(~10600u, ~(~arg_2.x)), ~1u), ~arg_2.x, Struct_1(~arg_1.b.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_1.b.b - vec4<f32>(-1799f, arg_0.x, -743f, -1830f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, arg_1.c.b.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, -648f, 208f, -652f)), u_input.a.x <= ~arg_1.b.c)), arg_2.x, arg_1.b.a.x));
    let var_2 = ~(~(-((arg_1.c.a.yw << (vec2<u32>(0u, var_1.c) % vec2<u32>(32u))) << (vec2<u32>(arg_2.x, u_input.a.x) % vec2<u32>(32u)))));
    global0 = Struct_5(true);
    let var_3 = Struct_3(arg_1.c, firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.b, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.c, 25734u), vec2<u32>(10713u, var_1.d.c))), var_1.b)), 60556u, arg_1.c);
    return arg_1.b;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_5) -> vec3<f32> {
    global0 = arg_3;
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_add_i32(23134i, -1i)), max(arg_1.a.x << (22614u % 32u), i32(-1i) * -2147483647i)), -42756i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, countOneBits(-53898i), 1i), -arg_1.a), _wgslsmith_mod_i32(firstTrailingBit(-arg_1.d), firstTrailingBit(abs(23333i)))), arg_1.b, _wgslsmith_mult_u32(~(~(~0u)), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1.c, u_input.a.x, u_input.a.x) | select(u_input.a, u_input.a, vec3<bool>(arg_0, global0.a, global0.a)))), -reverseBits(_wgslsmith_sub_i32(-2147483647i, arg_1.d) | -2147483647i));
    let var_1 = vec3<i32>(-1i) * -(abs(vec3<i32>(arg_1.a.x, u_input.c.x, u_input.b.x)) & -firstLeadingBit(vec3<i32>(var_0.a.x, -21263i, u_input.c.x)));
    var_0 = func_4(var_0.b, Struct_2(!vec4<bool>(false, arg_0, true, false), arg_1, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-505f, arg_2, var_0.b.x, 380f))), Struct_2(!vec4<bool>(global0.a, arg_3.a, true, false), func_4(vec4<f32>(arg_1.b.x, -257f, arg_2, arg_2), Struct_2(vec4<bool>(false, arg_0, arg_3.a, arg_0), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, var_0.d, -1i), var_0.b, 29221u, var_1.x), Struct_1(u_input.b, vec4<f32>(217f, var_0.b.x, 847f, arg_2), var_0.c, 1i), arg_1.b.yz), vec2<u32>(42391u, arg_1.c)), Struct_1(var_0.a, var_0.b, 4420u, u_input.c.x), vec2<f32>(-717f, -1000f)), select(select(u_input.a.xx, vec2<u32>(u_input.a.x, 1u), vec2<bool>(true, arg_3.a)), u_input.a.xz, !arg_0)), vec2<f32>(-959f, _wgslsmith_f_op_f32(abs(-256f)))), u_input.a.zx);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.zww) + _wgslsmith_f_op_vec3_f32(-var_0.b.xzz)))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> vec3<f32> {
    var var_0 = arg_1;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 1560f, 626f), vec3<f32>(-643f, -1308f, 542f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -167f), _wgslsmith_f_op_f32(598f - -168f), 479f)) + _wgslsmith_f_op_vec3_f32(func_5(var_0.x, func_4(vec4<f32>(_wgslsmith_f_op_f32(1344f - -596f), _wgslsmith_f_op_f32(round(621f)), -151f, -370f), Struct_2(func_2(), Struct_1(u_input.b, vec4<f32>(-748f, 592f, -248f, -622f), u_input.a.x, u_input.b.x), Struct_1(vec4<i32>(1i, 0i, 1i, 13764i), vec4<f32>(-498f, -963f, -246f, 398f), u_input.a.x, -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1170f))), vec2<u32>(u_input.a.x | u_input.a.x, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1109f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(546f)) * _wgslsmith_div_f32(106f, 343f))), Struct_5(func_3().x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(31607i, vec3<bool>(global0.a, global0.a, false))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1904f, 1031f, 1619f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1238f, 1000f) * vec3<f32>(-732f, -1000f, 528f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1095f, 383f, -306f) + vec3<f32>(-144f, -1590f, -627f)), global0.a | false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-326f, 1377f, -504f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -353f, -604f), vec3<f32>(1145f, 815f, -142f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(205f, -810f, -785f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1274f, -653f, 1372f))), vec3<bool>(global0.a, false, false))))));
    let var_1 = reverseBits(u_input.b);
    let var_2 = 1i;
    var var_3 = vec4<bool>(!global0.a, !(false || global0.a), !(!(4294967295u < u_input.a.x) | any(vec3<bool>(global0.a, false, true))), true);
    var var_4 = func_3().yyz;
    var var_5 = Struct_2(select(vec4<bool>(var_3.x, global0.a, var_4.x, !(320f <= var_0.x)), !(!vec4<bool>(true, var_4.x, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - var_0.x) < _wgslsmith_f_op_f32(step(-339f, -717f))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1520f, var_0.x, var_0.x)))), Struct_2(!vec4<bool>(false, global0.a, false, false), Struct_1(vec4<i32>(var_1.x, 1814i, u_input.b.x, -2677i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -203f, var_0.x, 1224f)), 4294967295u, u_input.b.x), Struct_1(abs(u_input.b), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), 1u, var_2), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(ceil(var_0.yz)), select(var_4.zy, vec2<bool>(var_3.x, var_4.x), true)))), ~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.a.x, 49562u), u_input.a.yy, var_4.x), firstLeadingBit(u_input.a.zz), vec2<u32>(103577u, 1369u))), Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, var_0.x, 298f)))), u_input.a.x, ~u_input.d), vec2<f32>(_wgslsmith_f_op_f32(595f * -414f), var_0.x));
    let var_6 = ~(-abs(var_5.c.a.yz & vec2<i32>(var_2, 18725i))) | var_5.b.a.xz;
    let var_7 = Struct_3(func_4(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(937f, 1000f, -309f, 1907f), vec4<f32>(var_0.x, var_5.c.b.x, var_0.x, var_5.c.b.x), var_3.x)) * vec4<f32>(var_0.x, var_0.x, -1048f, var_0.x)), Struct_2(func_2(), var_5.c, Struct_1(u_input.b, vec4<f32>(var_0.x, 407f, var_5.b.b.x, -1319f), 78057u, var_5.b.d), vec2<f32>(-493f, -829f)), ~vec2<u32>(u_input.a.x, var_5.c.c)).b, Struct_2(var_5.a, Struct_1(var_5.b.a >> (vec4<u32>(3440u, 54901u, var_5.c.c, var_5.c.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-316f, var_0.x, -1150f, 928f)), var_5.b.c >> (var_5.c.c % 32u), u_input.c.x), var_5.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy) - _wgslsmith_f_op_vec2_f32(min(var_0.xx, var_0.yx)))), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, var_5.b.c), u_input.a.x)), u_input.a.zx, u_input.a.x, Struct_1(var_1, var_5.c.b, 4294967295u | var_5.c.c, var_5.b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_7.d.b.yzw, _wgslsmith_f_op_vec3_f32(-var_5.b.b.ywy), var_3.x)) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_7.d.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(703f, -458f)) * _wgslsmith_f_op_f32(262f - var_0.x)))), u_input.a.x, ~u_input.b.x);
}

