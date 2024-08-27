struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2006f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(firstLeadingBit(min(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 29897i, -31383i, u_input.c.x), u_input.b)), -2147483647i)), arg_0.b);
    var var_1 = Struct_1(~(~var_0.a), _wgslsmith_f_op_f32(round(arg_0.b)));
    var var_2 = !(!select(vec4<bool>(false, true, false, all(vec4<bool>(true, true, false, true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), any(vec2<bool>(true, true))));
    let var_3 = Struct_2(vec4<bool>(false, all(select(!var_2.zxz, !var_2.xwy, var_2.x && var_2.x)), var_2.x, false), var_0, _wgslsmith_sub_i32(select(-_wgslsmith_dot_vec4_i32(vec4<i32>(-10374i, u_input.b.x, arg_0.a, u_input.b.x), u_input.b), -2147483647i, var_2.x), var_0.a), ~u_input.a & reverseBits(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.a.x, u_input.a.x)), u_input.a >> (u_input.a % vec3<u32>(32u)))), 13310u);
    global0 = var_1.b;
    return select(select(!vec3<bool>(!var_3.a.x, -21406i > var_1.a, false), !select(vec3<bool>(var_2.x, var_2.x, var_3.a.x), vec3<bool>(false, true, false), !vec3<bool>(var_2.x, false, false)), select(vec3<bool>(var_2.x, true, all(var_3.a.xxy)), !(!var_2.xzz), vec3<bool>(true & var_3.a.x, var_2.x, var_3.a.x | var_2.x))), select(select(vec3<bool>(any(vec2<bool>(false, var_2.x)), any(var_2.zzz), var_3.a.x), !var_2.yyy, any(var_3.a) | all(var_2.zxx)), vec3<bool>(var_2.x, true, !any(vec4<bool>(true, false, false, var_2.x))), select(var_2.wxx, vec3<bool>(arg_0.a < var_3.b.a, any(vec3<bool>(true, true, var_2.x)), true), any(select(vec2<bool>(false, var_2.x), vec2<bool>(var_3.a.x, var_2.x), false)))), any(select(!vec2<bool>(var_3.a.x, false), var_3.a.xx, select(!vec2<bool>(var_2.x, true), !var_2.yw, true))));
}

fn func_2() -> f32 {
    global0 = -554f;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1724f)));
    var var_1 = select(!func_3(Struct_1(abs(-1i), _wgslsmith_f_op_f32(min(-1724f, -1251f)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(Struct_1(u_input.b.x, -2392f)))), vec3<bool>(false, true, ((u_input.b.x <= 4138i) & false) & any(vec3<bool>(true, false, true))));
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -177f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1489f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(523f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(abs(-293f))))))));
    return var_3;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), -317f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-194f + _wgslsmith_f_op_f32(f32(-1f) * -854f))));
    let var_0 = Struct_2(vec4<bool>(select(arg_0, u_input.a.x > (arg_2 ^ arg_2), arg_0), arg_0 || true, arg_0 & (_wgslsmith_f_op_f32(1719f - -798f) < _wgslsmith_f_op_f32(ceil(1000f))), true), Struct_1(-30826i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(799f, 1000f, arg_0)))))), 26733i, vec3<u32>(~(~arg_2) ^ ~arg_2, ~arg_2, u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(31165u, 40265u, ~arg_2, min(84348u, 13827u)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a.x), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(50626u, u_input.a.x, 4294967295u)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), arg_2 | 0u, u_input.a.x)));
    var var_1 = ~_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(~12853i, ~1i)), firstTrailingBit(-u_input.c.zy));
    let var_2 = 6998u;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.b.b))));
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(sign(func_1(true, countOneBits(vec2<i32>(u_input.b.x, 10179i) | -vec2<i32>(-2147483647i, 3626i)), 38986u).b));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1821f));
    var var_1 = _wgslsmith_f_op_f32(min(190f, arg_0.b));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * arg_0.b) + _wgslsmith_f_op_f32(round(115f))))))) >= arg_1.b;
    var_0 = -378f;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = firstTrailingBit(vec4<i32>(-(~(~0i)), -1i, func_1(false, max(vec2<i32>(48429i, 6442i), vec2<i32>(arg_1.a, u_input.c.x)), 0u).a & _wgslsmith_clamp_i32(u_input.b.x, 57355i, 1i), -24273i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)) + arg_0.b) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(ceil(688f))));
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), -906f, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(false, false, true, true)), u_input.a.x < u_input.a.x)))));
    let var_4 = func_3(arg_0).x;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_div_u32(u_input.a.x ^ ~u_input.a.x, ~u_input.a.x));
    var var_1 = _wgslsmith_sub_i32(func_5(func_4(func_1(true, -vec2<i32>(u_input.b.x, 1i), ~4294967295u), Struct_1(u_input.c.x << (u_input.a.x % 32u), -1993f)), Struct_1(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1315f)) + _wgslsmith_f_op_f32(func_2())))), func_4(Struct_1(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(195f, -1426f) - -1000f)), Struct_1(_wgslsmith_dot_vec4_i32(-u_input.b, ~u_input.b), _wgslsmith_f_op_f32(698f + _wgslsmith_f_op_f32(step(1817f, 1000f))))).a);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, max(~u_input.a, vec3<u32>(1u, u_input.a.x, ~(~u_input.a.x))), ~_wgslsmith_mod_i32(-1i, reverseBits(21708i)), _wgslsmith_f_op_f32(f32(-1f) * -460f));
}

