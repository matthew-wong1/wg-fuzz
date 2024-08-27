struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = true;
    let var_1 = vec2<bool>(!(!(_wgslsmith_f_op_f32(trunc(arg_1)) > _wgslsmith_f_op_f32(-arg_1))), all(select(select(vec4<bool>(var_0, var_0, var_0, false), !vec4<bool>(var_0, var_0, var_0, var_0), true), !vec4<bool>(var_0, false, var_0, true), any(vec4<bool>(true, var_0, var_0, true)) && true)));
    let var_2 = select(!vec4<bool>(var_0, _wgslsmith_f_op_f32(exp2(arg_1)) == _wgslsmith_f_op_f32(-arg_1), var_0, true), !vec4<bool>(true, all(select(vec4<bool>(var_0, false, var_1.x, var_0), vec4<bool>(var_0, var_1.x, false, false), vec4<bool>(var_1.x, var_0, true, false))), var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, arg_0.a), vec3<i32>(arg_0.a, -1i, -1i)) < (i32(-1i) * -45566i)), var_0);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -945f, 285f, 178f)) - vec4<f32>(1045f, arg_1, arg_1, -293f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), 215f, -134f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1092f, arg_1, 986f, 989f)))), select(vec4<bool>(all(select(var_2.zwy, vec3<bool>(var_1.x, var_0, true), var_2.x)), var_2.x || all(var_2), true, var_0), select(vec4<bool>(true && var_2.x, all(vec3<bool>(false, var_2.x, true)), true, any(vec3<bool>(var_2.x, var_1.x, false))), !vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(true, var_2.x, var_1.x, true)), !(u_input.a.x <= u_input.a.x) && true)));
    var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f) - _wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_div_f32(-622f, arg_1)))), 827f, var_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1045f)), _wgslsmith_f_op_f32(-444f + var_3.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, 939f, var_3.x), vec4<f32>(arg_1, arg_1, var_3.x, -826f))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-424f)), var_3.x, 304f, var_3.x)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1056f, arg_1, arg_1)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-241f, arg_1, var_3.x, 1026f) + vec4<f32>(arg_1, 366f, arg_1, -2069f))), vec4<f32>(-194f, arg_1, _wgslsmith_f_op_f32(abs(var_3.x)), -210f), var_2))));
    return abs(firstTrailingBit(u_input.a.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(u_input.a.x), 12312u, 1u), vec3<u32>(countOneBits(u_input.e << (73778u % 32u)), ~_wgslsmith_mod_u32(41239u, 67350u), ~19403u) >> (~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 30154u, u_input.a.x), vec3<u32>(41146u, u_input.a.x, 44051u)), countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 35365u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(u_input.b ^ -2147483647i);
    var_0 = firstLeadingBit(countOneBits(select(vec3<u32>(15516u, var_0.x, u_input.a.x), vec3<u32>(2184u, 4294967295u, var_0.x), vec3<bool>(false, false, true))) >> (~(vec3<u32>(0u, 4294967295u, var_0.x) >> (vec3<u32>(4294967295u, var_0.x, 100162u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ vec3<u32>(_wgslsmith_mod_u32(~u_input.e, 0u), 76311u, ~func_3(Struct_1(-2147483647i), 336f));
    let var_2 = Struct_1(10193i);
    let var_3 = arg_0.ywy;
    return -(_wgslsmith_add_vec2_i32(u_input.c, select(u_input.c, vec2<i32>(-2147483647i, -1i), any(var_3))) & min(vec2<i32>(var_1.a, firstLeadingBit(63771i)), u_input.c));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = select(!select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), any(vec3<bool>(true, true, true))), vec3<bool>(true, all(vec2<bool>(true, false)), all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)), select(vec3<bool>((arg_0.x & arg_0.x) == (-9658i >> (u_input.a.x % 32u)), false && any(vec3<bool>(true, false, false)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), any(vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)))), any(vec2<bool>(true, true)));
    let var_1 = u_input.a;
    var var_2 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x));
    let var_3 = Struct_1(i32(-1i) * -_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 0i), firstLeadingBit(u_input.c)));
    let var_4 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, min(u_input.d, -13771i)), reverseBits(-arg_0)) > -var_3.a;
    return var_3;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f - 1f)), -2403f);
    var var_1 = func_4(func_2(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -122f) == var_0.x, true, max(u_input.b, u_input.c.x) != u_input.c.x, all(vec3<bool>(true, true, true))), vec2<bool>(select(true, true, true), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, -102f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -534f, var_0.x, 382f) * vec4<f32>(315f, -1000f, -390f, 1067f)), vec4<bool>(false, true, true, false))) - vec4<f32>(var_0.x, -466f, var_0.x, -457f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1015f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1011f, var_0.x) - vec3<f32>(-1903f, var_0.x, 625f))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)))), Struct_1(countOneBits(-29105i)), u_input.c);
    var_1 = Struct_1(_wgslsmith_clamp_i32(u_input.b, ~var_1.a, ~firstTrailingBit(_wgslsmith_add_i32(48414i, -54522i))));
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(~(-2147483647i), u_input.b), firstLeadingBit(u_input.c.x));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(430f, var_0.x) - vec2<f32>(var_0.x, -1811f))), vec2<f32>(_wgslsmith_f_op_f32(332f - var_0.x), var_0.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -211f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1043f, var_0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-881f, 1383f))), select(vec2<bool>(true, true), vec2<bool>(false, false), true))))));
    return Struct_1(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2147483647i);
    var var_1 = max(33395i, -5652i);
    var var_2 = !select(vec3<bool>(any(vec4<bool>(false, true, true, false)), true, _wgslsmith_f_op_f32(ceil(1185f)) == _wgslsmith_f_op_f32(round(-1116f))), vec3<bool>(true, true, true), ((4294967295u <= u_input.a.x) || true) | all(vec2<bool>(true, true)));
    var_0 = func_1();
    var_2 = vec3<bool>(_wgslsmith_clamp_u32(~(~u_input.a.x), ~293u & u_input.e, ~u_input.a.x) > ~abs(12887u), (var_0.a & _wgslsmith_mult_i32(1i, 10514i)) < (-u_input.c.x & u_input.d), !all(vec4<bool>(1i >= u_input.c.x, !var_2.x, var_2.x, true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(661f)) + 1583f)), -1518f, -1608f)));
    var_0 = func_4(vec2<i32>(u_input.c.x, func_4(~u_input.c, var_3, func_4(vec2<i32>(-1i, var_0.a), vec3<f32>(312f, var_3.x, var_3.x), Struct_1(-2147483647i), vec2<i32>(var_0.a, var_0.a)), vec2<i32>(u_input.b, u_input.d)).a) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(29913i, var_0.a), u_input.c), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_3.x)), var_3.x)), _wgslsmith_f_op_f32(trunc(var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x))) * 901f)), func_1(), max((u_input.c >> ((u_input.a << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u))) & reverseBits(-u_input.c), ~vec2<i32>(_wgslsmith_add_i32(-2147483647i, 46524i), -u_input.d)));
    var_0 = func_4(~vec2<i32>(-u_input.c.x, min(1i, _wgslsmith_add_i32(u_input.d, 1i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_3.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(229f)))), -393f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-400f, _wgslsmith_f_op_f32(-var_3.x), var_3.x))), Struct_1(2147483647i), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

