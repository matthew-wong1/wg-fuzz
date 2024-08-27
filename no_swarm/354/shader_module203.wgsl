struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: bool) -> vec4<bool> {
    let var_0 = -2147483647i;
    let var_1 = Struct_5(1511f, Struct_3(Struct_1(_wgslsmith_mult_i32(var_0 << (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -18118i, -2147483647i), vec3<i32>(4735i, -63537i, -2909i))), (u_input.a | 19376i) != reverseBits(6600i), abs(max(var_0, u_input.a))), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -328f, 274f), vec3<f32>(338f, 674f, 1000f), vec3<bool>(arg_1.x, arg_1.x, false))), vec3<f32>(-1534f, 1440f, 518f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(879f, 678f, -1884f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2251f, -141f, -223f), vec3<f32>(1572f, 1813f, -1344f), vec3<bool>(arg_1.x, true, arg_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1588f, -308f, -305f))))));
    var var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(400f - _wgslsmith_f_op_f32(ceil(-739f))), _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, -171f) + 1000f))), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.c.x)))), Struct_2(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_1.b.a.a, 0i, var_1.b.b, -17478i), reverseBits(vec4<i32>(var_1.b.b, 2147483647i, var_1.b.a.a, -1i))) >> (~vec4<u32>(1u, 11384u, 1u, 1u) % vec4<u32>(32u)), var_0, Struct_1(11745i, arg_2, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, var_0), _wgslsmith_mult_i32(var_1.b.b, u_input.a))), var_1.b.a, arg_0.ww), arg_0.x);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c.x) + -1000f), 1000f)), 1187f, all(vec4<bool>(!(!arg_2), var_1.b.a.b | true, _wgslsmith_dot_vec2_i32(var_2.c.a.xz, vec2<i32>(-9412i, u_input.a)) >= -2147483647i, true))));
    var var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, 1790f, -1218f) * vec3<f32>(var_1.b.c.x, 153f, -405f))))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_f_op_f32(-558f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1303f), _wgslsmith_f_op_f32(-var_3))))), Struct_2(abs(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), var_2.c.a.zw), var_0, u_input.a)), _wgslsmith_dot_vec3_i32(var_2.c.a.yxz, -vec3<i32>(var_2.c.d.a, var_0, 2147483647i)) ^ -u_input.a, var_2.c.c, Struct_1(var_1.b.a.a, arg_1.x, -1i), u_input.b.yz), select(4294967295u, 45406u & var_2.c.e.x, true));
    return vec4<bool>(558f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(var_4.a.x * var_3))), var_4.c.d.b, true, all(!vec3<bool>(false, var_1.b.a.b, false)) | var_1.b.a.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = select(arg_0, arg_0, select(vec4<bool>(all(vec4<bool>(false, true, false, false)), arg_0.x, all(arg_0.yz), _wgslsmith_f_op_f32(abs(arg_2)) > _wgslsmith_f_op_f32(round(arg_2))), vec4<bool>(true, !(28651u <= u_input.b.x), arg_1.b, min(2147483647i, arg_1.a) <= ~(-13445i)), select(arg_0, select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.x, true, arg_1.b, false), func_3(vec4<u32>(1u, 1u, u_input.b.x, 84700u), vec2<bool>(true, arg_1.b), false)), arg_1.b)));
    let var_1 = !var_0;
    var var_2 = Struct_2(~(~vec4<i32>(~arg_3, _wgslsmith_mult_i32(arg_3, 43961i), arg_3, 1i)), 1i, Struct_1(max(-26044i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_3, arg_3, u_input.a), vec4<i32>(arg_1.c, -27955i, u_input.a, u_input.a))) >> (abs(1u) % 32u), arg_0.x, 1i), arg_1, ~vec2<u32>(1u, ~u_input.b.x));
    var_2 = Struct_2(select(abs(vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a) & vec4<i32>(var_2.a.x, 33645i, var_2.d.c, 39431i)), (var_2.a ^ vec4<i32>(2147483647i, arg_1.c, -47755i, 0i)) << (~select(vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, var_2.e.x, 23254u, 85328u), var_1.x) % vec4<u32>(32u)), !vec4<bool>(u_input.b.x > u_input.b.x, false, false, arg_1.c <= 2147483647i)), u_input.a, Struct_1(var_2.c.c, all(!var_1.yx) & arg_0.x, min(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(arg_3, -17827i)), min(-2147483647i, arg_3))), Struct_1(abs(arg_3), !(!(!var_2.d.b)), -2147483647i), u_input.b.yz);
    var var_3 = firstLeadingBit(select(~reverseBits(-var_2.a.xy), var_2.a.yw, vec2<bool>(_wgslsmith_f_op_f32(arg_2 - arg_2) <= _wgslsmith_f_op_f32(-arg_2), true)));
    return -(arg_3 | -1i);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> i32 {
    let var_0 = Struct_2(abs(-_wgslsmith_div_vec4_i32(vec4<i32>(-44078i, 1i, u_input.a, arg_1), vec4<i32>(arg_1, u_input.a, 1i, 19313i))) | -vec4<i32>(-arg_1, 1i, _wgslsmith_mult_i32(0i, -1i), 1i), func_4(!func_3(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u), arg_0.zx, arg_0.x), Struct_1(_wgslsmith_mod_i32(arg_1, arg_1), (arg_0.x & true) || true, firstLeadingBit(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1001f)), _wgslsmith_f_op_f32(-1566f + 428f)) + 1144f), u_input.a), Struct_1(i32(-1i) * -min(u_input.a, -2147483647i), arg_0.x, u_input.a), Struct_1(min(-1i, -(~(-8196i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(579f, 219f, arg_0.x)), -440f, true != arg_0.x)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2109f * 690f))), u_input.a), u_input.b.xx);
    var var_1 = -1000f;
    var var_2 = Struct_1(-39765i, true, _wgslsmith_add_i32(-37938i, ~_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, 15895i), ~(-25157i))));
    var_2 = var_0.d;
    var var_3 = var_0.d;
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(-vec4<i32>(arg_3.x << (~34598u % 32u), -abs(2147483647i), -21402i, -44977i), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -arg_3.x, _wgslsmith_mod_i32(arg_3.x, -52396i), i32(-1i) * -34141i), firstLeadingBit(-vec4<i32>(1i, arg_3.x, arg_1.c, u_input.a))), Struct_1(_wgslsmith_sub_i32(arg_3.x, func_2(vec3<bool>(arg_1.b, arg_0, true), _wgslsmith_mod_i32(arg_1.a, arg_1.a))), all(vec2<bool>(any(vec4<bool>(arg_1.b, false, true, false)), -47317i <= arg_3.x)), ~(-_wgslsmith_add_i32(u_input.a, arg_1.a))), Struct_1(u_input.a, arg_1.b, _wgslsmith_add_i32(60861i, 0i)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~(~u_input.b.xy), vec2<u32>(41790u, ~4395u)), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.b.x, 36641u)), min(~vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zy >> (u_input.b.xy % vec2<u32>(32u))), u_input.b.zz & _wgslsmith_mod_vec2_u32(u_input.b.xx, vec2<u32>(arg_2, u_input.b.x)))));
    let var_1 = var_0.d;
    var var_2 = Struct_3(var_0.c, ~func_4(vec4<bool>(all(vec4<bool>(arg_1.b, arg_1.b, var_0.c.b, var_0.c.b)), false, false, all(vec2<bool>(var_0.c.b, arg_1.b))), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(413f - -1000f) * -623f), -_wgslsmith_mod_i32(u_input.a, 0i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-372f - -2924f), -394f, _wgslsmith_f_op_f32(1073f + 1190f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(931f * -147f), _wgslsmith_f_op_f32(-1694f - -1000f), -583f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-895f, 1154f, 292f) + vec3<f32>(-1214f, 1469f, -944f)))))));
    var var_3 = var_1.c;
    var_0 = Struct_2(var_0.a, 2147483647i, var_2.a, Struct_1(_wgslsmith_add_i32(i32(-1i) * -12415i, arg_3.x), true, 29860i), min(u_input.b.yy, var_0.e));
    return Struct_1(_wgslsmith_dot_vec3_i32(-((arg_3 & vec3<i32>(-20517i, u_input.a, arg_3.x)) ^ min(var_0.a.yxw, var_0.a.wyz)), _wgslsmith_add_vec3_i32((var_0.a.zyy << (vec3<u32>(86776u, arg_2, var_0.e.x) % vec3<u32>(32u))) | var_0.a.zwx, select(_wgslsmith_mod_vec3_i32(arg_3, vec3<i32>(u_input.a, arg_3.x, -33501i)), firstTrailingBit(vec3<i32>(var_2.a.a, 27304i, var_1.a)), var_2.a.b))), var_2.a.b, 7088i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-reverseBits(vec4<i32>(-6499i, u_input.a, -2147483647i, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_vec4_i32(reverseBits(~vec4<i32>(u_input.a, u_input.a, u_input.a, 47022i)), ~vec4<i32>(u_input.a, -26870i, 0i, 2147483647i) >> (firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)) % vec4<u32>(32u)))), -24299i, Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(u_input.a, u_input.a)), _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)))), true, ~(-45347i)), func_1((-u_input.a | (u_input.a & u_input.a)) > (-u_input.a & firstTrailingBit(u_input.a)), Struct_1(1i, false, reverseBits(u_input.a)), _wgslsmith_mult_u32(~4294967295u, 1u), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 38288i, 0i), vec3<i32>(806i, u_input.a, u_input.a)) & (-vec3<i32>(u_input.a, u_input.a, -69675i) & vec3<i32>(-2147483647i, -1i, u_input.a))), vec2<u32>((u_input.b.x << (_wgslsmith_sub_u32(u_input.b.x, 64176u) % 32u)) >> (u_input.b.x % 32u), 1u));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -496f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -203f, true)))))), Struct_3(func_1(true == (u_input.a <= 4508i), func_1(true, var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, var_0.e.x), u_input.b.xz), vec3<i32>(0i, 12134i, -26313i)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 0u, 22235u), vec3<u32>(var_0.e.x, 0u, 2966u), vec3<bool>(var_0.c.b, true, var_0.c.b)), u_input.b), countOneBits(var_0.a.www)), ~var_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, 2058f, -1100f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(256f + 375f), _wgslsmith_f_op_f32(-267f - 411f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-130f, 765f, 195f)))))));
    var var_2 = ~abs(_wgslsmith_add_i32(_wgslsmith_div_i32(-48650i & var_0.b, 8705i), -5658i));
    let var_3 = Struct_2(reverseBits(countOneBits(-vec4<i32>(var_1.b.b, 43809i, 3421i, var_1.b.a.c))), _wgslsmith_mult_i32(_wgslsmith_div_i32(-5009i, _wgslsmith_div_i32(var_1.b.a.a, 2147483647i)), -18978i), var_1.b.a, var_0.d, _wgslsmith_mult_vec2_u32(min(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.e.x, var_0.e.x), u_input.b.xy), u_input.b.zx | vec2<u32>(var_0.e.x, 12659u)) >> (~(~var_0.e) % vec2<u32>(32u)), u_input.b.xy));
    let var_4 = Struct_2(firstTrailingBit(var_0.a), 2147483647i, Struct_1(u_input.a, any(func_3(vec4<u32>(var_0.e.x, 1u, 36121u, 114453u), select(vec2<bool>(var_3.d.b, true), vec2<bool>(var_1.b.a.b, true), var_3.d.b), false)), _wgslsmith_div_i32(~(-38969i), var_3.a.x >> (~var_0.e.x % 32u))), Struct_1(0i, var_0.c.b, -_wgslsmith_div_i32(56786i, 0i & var_3.d.c)), vec2<u32>(var_3.e.x, _wgslsmith_sub_u32(select(45771u, 104688u, false), var_0.e.x) >> (abs(~var_0.e.x) % 32u)));
    let var_5 = true;
    var_1 = Struct_5(_wgslsmith_f_op_f32(-var_1.a), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.d, _wgslsmith_dot_vec2_u32(u_input.b.yy, var_0.e) << (~95657u % 32u), var_1.b.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-951f * 152f), _wgslsmith_f_op_f32(f32(-1f) * -641f), var_1.b.c.x, -2051f))) + vec4<f32>(-320f, var_1.a, _wgslsmith_f_op_f32(select(-390f, var_1.a, true)), 763f)), vec3<f32>(_wgslsmith_f_op_f32(var_1.b.c.x - var_1.a), _wgslsmith_f_op_f32(trunc(-1388f)), _wgslsmith_f_op_f32(-var_1.b.c.x)));
}

