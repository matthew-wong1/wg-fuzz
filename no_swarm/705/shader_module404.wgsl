struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(726f, 602f, true)) - -461f), -2397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1237f))))), select(select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec2<bool>(true, true)) && true, !any(vec4<bool>(false, false, true, true)), true, true), false));
    let var_1 = Struct_2(-abs(u_input.c));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(-var_0.a)))))), select(!select(vec4<bool>(var_0.b.x, false, false, var_0.b.x), !vec4<bool>(var_0.b.x, var_0.b.x, false, false), false || var_0.b.x), !vec4<bool>(true, select(false, var_0.b.x, var_0.b.x), false, true), var_0.a.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f + var_0.a.x))));
    let var_2 = select(!all(vec3<bool>(true, true, var_0.b.x)), var_0.b.x, true) || select(select(all(vec4<bool>(false, var_0.b.x, false, var_0.b.x)), false, !var_0.b.x), false, var_0.b.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1464f)))))))), !var_0.b);
    return var_0.a.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1676f)), _wgslsmith_div_f32(446f, 1060f))) * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(455f, _wgslsmith_f_op_f32(max(-114f, -1000f)))) * 685f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f)))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_div_f32(-1719f, -672f), var_1.x, _wgslsmith_f_op_f32(-var_1.x)), vec4<bool>(true & (any(vec4<bool>(var_0, true, true, var_0)) || (true == var_0)), false, arg_0.x, var_1.x == _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_3 {
    let var_0 = func_2(!select(select(!vec2<bool>(arg_0.b.x, arg_0.b.x), select(arg_0.b.yy, arg_0.b.zz, arg_0.b.x), arg_0.b.xz), vec2<bool>(all(arg_0.b.wzy), select(false, arg_0.b.x, arg_0.b.x)), true));
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_div_vec4_u32(~vec4<u32>(~52682u, ~1u, 1u, 1u), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(countOneBits(60283u), max(0u, 20907u), abs(0u), 25850u), vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_add_u32(1u, 1u), ~14039u, 1u)), abs(vec4<u32>(1u, 1u, 1u, 1u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, 1738f, var_0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-218f, -270f, var_1.x) * vec3<f32>(var_1.x, var_0.a.x, var_0.a.x)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, _wgslsmith_div_f32(1000f, var_1.x), _wgslsmith_f_op_f32(select(401f, arg_1, true))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_0.a.x, _wgslsmith_f_op_f32(-var_1.x))))))));
    let var_4 = var_3.x;
    return Struct_3(Struct_2(u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, vec4<f32>(-1141f, var_4, 2613f, -274f))), vec4<bool>(arg_0.b.x, !arg_0.b.x, select(true, false, false) & !var_0.b.x, arg_0.b.x)), 0i, Struct_2(u_input.c), !arg_0.b);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_0.x != arg_0.x;
    var var_1 = -15875i;
    let var_2 = true;
    let var_3 = ~(~vec3<u32>(57429u, 1u, select(13842u, arg_0.x, true)) ^ ~vec3<u32>(countOneBits(arg_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(84346u, arg_0.x)), ~arg_0.x));
    var var_4 = arg_2.d;
    return arg_2.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(0i ^ u_input.c.x, firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.c.zzx, u_input.c.wyy), _wgslsmith_sub_i32(arg_0.x, -2147483647i)), ~firstLeadingBit(35226i))), max(~u_input.b.x, ~(i32(-1i) * -2147483647i)));
    var_0 = vec3<i32>(1i, _wgslsmith_mult_i32(abs(~1i), ~(-7539i)), 1i);
    var var_1 = Struct_3(func_5(abs(vec2<u32>(48800u, _wgslsmith_div_u32(1u, 1u))), arg_1.a.yyy, func_4(func_2(arg_1.b.zx), 798f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(-1854f - 1256f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(false, arg_1.b.x)).a * arg_1.a)), !arg_1.b), -29615i, Struct_2(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(_wgslsmith_sub_i32(-12394i, -20107i), ~504i, func_5(vec2<u32>(0u, 4294967295u), arg_1.a.xzw, Struct_3(Struct_2(u_input.c), Struct_1(vec4<f32>(arg_1.a.x, -710f, 1000f, -370f), arg_1.b), -17805i, Struct_2(u_input.c), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x))).a.x, u_input.c.x))), func_4(Struct_1(vec4<f32>(arg_1.a.x, 1927f, -1456f, 2963f), !func_4(Struct_1(arg_1.a, vec4<bool>(true, true, arg_1.b.x, true)), 206f, arg_1.a.x).e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a.x, -946f)))), arg_1.a.x).b.b);
    var_0 = ~(-firstLeadingBit(arg_0));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f)), _wgslsmith_f_op_f32(f32(-1f) * -1962f), 948f, var_1.b.a.x), func_4(arg_1, var_1.b.a.x, _wgslsmith_f_op_f32(-var_1.b.a.x)).b.b);
    return func_2(var_2.b.yx);
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = func_1(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, u_input.a), vec2<i32>(u_input.b.x, 0i)), vec2<i32>(u_input.b.x, u_input.c.x)) << (~(~4294967295u) % 32u), -(~_wgslsmith_sub_i32(arg_0, arg_0)), arg_0), arg_1).b.wx;
    var_0 = arg_1.b.yy;
    var_0 = vec2<bool>(!arg_1.b.x, arg_1.b.x);
    let var_1 = func_4(func_4(func_1(vec3<i32>(-1i) * -u_input.b, func_4(Struct_1(arg_1.a, arg_1.b), _wgslsmith_f_op_f32(333f * arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)).b), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-601f * arg_1.a.x)))).b, -500f, _wgslsmith_f_op_f32(-func_1(vec3<i32>(min(40240i, arg_0), -u_input.c.x, arg_0), Struct_1(vec4<f32>(arg_1.a.x, -2085f, arg_1.a.x, 1069f), vec4<bool>(var_0.x, arg_1.b.x, false, true))).a.x));
    let var_2 = select(func_2(func_2(vec2<bool>(all(vec2<bool>(false, arg_1.b.x)), !arg_1.b.x)).b.yw).b, func_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(31307i, -82i, u_input.b.x), _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0, arg_0, u_input.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_1.c, -1i), u_input.c.xww))), func_2(func_2(!vec2<bool>(arg_1.b.x, true)).b.xy)).b, false);
    return select(vec4<bool>(false, var_0.x, var_2.x && !func_4(arg_1, var_1.b.a.x, -375f).b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f - arg_1.a.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1736f)))), vec4<bool>(false, _wgslsmith_f_op_f32(-var_1.b.a.x) >= _wgslsmith_f_op_f32(-1234f * -623f), !any(var_2.xwz), any(select(arg_1.b.wy, var_1.e.yy, vec2<bool>(true, var_2.x))) && false), !select(var_1.e.x, func_2(select(vec2<bool>(var_0.x, var_2.x), arg_1.b.yz, vec2<bool>(true, var_1.b.b.x))).b.x, any(var_2.wyz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~38507u;
    let var_1 = _wgslsmith_f_op_f32(-769f + _wgslsmith_f_op_f32(-1651f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 371f))), _wgslsmith_f_op_f32(f32(-1f) * -1983f))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, -631f, 2128f, var_1))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 1000f, var_1))))), func_6(u_input.b.x, func_1(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 0i, 14474i), u_input.c), u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-404f, var_1, -676f, 660f) * vec4<f32>(477f, 290f, 2610f, var_1)), vec4<bool>(true, true, false, true)))));
    var_2 = Struct_1(vec4<f32>(var_1, _wgslsmith_f_op_f32(-2858f + -152f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(998f * -2009f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1737f), _wgslsmith_f_op_f32(1039f - var_2.a.x)))), _wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))))), var_2.b);
    let var_3 = -1007f;
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 565f, _wgslsmith_f_op_f32(floor(515f)), _wgslsmith_div_f32(func_1(vec3<i32>(2147483647i, -2147483647i, 0i), Struct_1(var_2.a, vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x))).a.x, _wgslsmith_f_op_f32(-1359f * -1793f)))), func_1(u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1039f, var_3, -688f, -1214f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_3, 974f, var_3))), vec4<bool>(func_6(u_input.b.x, Struct_1(var_2.a, var_2.b)).x, var_2.b.x, var_2.b.x == false, var_2.b.x))).b);
    var var_4 = Struct_3(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(max(func_2(vec2<bool>(true, var_2.b.x)).a, vec4<f32>(570f, var_1, 488f, 1949f))), var_2.b), _wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1158f + -1625f), 222f)).d, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_1, var_3, var_1)) + _wgslsmith_f_op_vec4_f32(-var_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-603f, -1707f, 2024f, var_3)), func_4(func_2(vec2<bool>(var_2.b.x, var_2.b.x)), 654f, 543f).e)), select(var_2.b, var_2.b, var_2.b.x)), _wgslsmith_sub_i32(-(~u_input.a), -1i), func_4(func_2(var_2.b.wz), func_1(_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x) << (vec3<u32>(var_0, var_0, var_0) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, 1i, -1i)), Struct_1(var_2.a, var_2.b)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 - 795f), var_3)))).a, vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, func_2(var_2.b.ww).b.x));
    let var_5 = Struct_3(Struct_2(u_input.c), var_4.b, -u_input.b.x, var_4.a, var_4.e);
    var var_6 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.a.x)) - var_2.a.x)), -1251f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(38131u, 25584u), 1u), ~_wgslsmith_div_u32(var_0, abs(var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), -(~_wgslsmith_div_vec3_i32(-vec3<i32>(1i, -1i, var_4.d.a.x), vec3<i32>(15075i, -2147483647i, var_5.a.a.x))));
}

