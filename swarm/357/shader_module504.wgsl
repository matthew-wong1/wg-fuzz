struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(401f, _wgslsmith_f_op_f32(f32(-1f) * -137f)) * vec2<f32>(arg_1.c.x, arg_2))));
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.x)), arg_1.c.x));
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(select(arg_1.a.x, _wgslsmith_sub_i32(u_input.c.x, 1i), arg_1.b.x), u_input.b), ~2147483647i & arg_1.a.x, 20475i, -5306i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-countOneBits(arg_1.a.x), ~u_input.c.x, 0i | (u_input.a.x ^ -1i), u_input.a.x), -(~select(vec4<i32>(arg_1.a.x, u_input.c.x, arg_0.x, 1i), vec4<i32>(arg_1.a.x, u_input.a.x, arg_0.x, arg_1.a.x), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, true))), u_input.c);
    var var_2 = Struct_3(select(!(!select(vec3<bool>(arg_1.b.x, true, false), vec3<bool>(false, arg_1.b.x, true), vec3<bool>(false, arg_1.b.x, false))), !(!arg_1.b), vec3<bool>(any(select(vec4<bool>(false, arg_1.b.x, true, arg_1.b.x), vec4<bool>(true, true, true, arg_1.b.x), true)), true, arg_1.b.x)), Struct_2(vec2<f32>(arg_2, _wgslsmith_f_op_f32(784f - _wgslsmith_f_op_f32(-1916f + 863f)))), Struct_1(abs(-(~arg_0)), !vec3<bool>(true, arg_1.b.x & true, arg_2 < -1203f), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(trunc(1284f)))));
    var_0 = var_2.b;
    return false | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(650f - arg_2) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.a.x)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 1412f))));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = select(select(vec2<bool>(false, true), select(vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(!arg_0.b.x, func_3(vec3<i32>(-52328i, u_input.c.x, u_input.a.x), Struct_1(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), arg_0.b, arg_0.c), 1126f)), vec2<bool>(true, true)), arg_0.b.yx), arg_0.b.xy, arg_0.b.xx);
    var var_1 = max(vec4<u32>(_wgslsmith_div_u32(14956u, _wgslsmith_add_u32(u_input.d, u_input.d)), u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 3003u), vec2<u32>(37460u, u_input.d)), ~vec2<u32>(u_input.d, 0u)), abs(abs(4294967295u))), _wgslsmith_clamp_vec4_u32(~max(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d), vec4<u32>(4294967295u, 0u, u_input.d, 29600u)), ~reverseBits(vec4<u32>(u_input.d, 4294967295u, 0u, u_input.d)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(64922u, u_input.d, u_input.d, 1u), vec4<u32>(0u, u_input.d, u_input.d, 0u)), firstTrailingBit(vec4<u32>(u_input.d, 42844u, u_input.d, 4294967295u)), vec4<u32>(u_input.d, u_input.d, u_input.d, 1u) & vec4<u32>(u_input.d, 7726u, 75962u, 41336u)))) | _wgslsmith_mult_vec4_u32(firstTrailingBit(min(vec4<u32>(u_input.d, u_input.d, u_input.d, 0u) >> (vec4<u32>(4294967295u, 31182u, u_input.d, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.d, u_input.d, 96878u, u_input.d) | vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u))), firstTrailingBit(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.d, u_input.d, 0u, 114703u)), vec4<u32>(u_input.d, 83997u, 4294967295u, u_input.d))));
    var_0 = vec2<bool>(all(select(select(vec4<bool>(true, true, true, arg_0.b.x), vec4<bool>(true, var_0.x, true, var_0.x), var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), any(vec4<bool>(false, arg_0.b.x, var_0.x, true)))) && arg_0.b.x, !any(!vec4<bool>(false, true, var_0.x, arg_0.b.x)));
    let var_2 = arg_0;
    let var_3 = arg_0.c.x;
    return true;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: f32) -> vec4<bool> {
    var var_0 = Struct_1(countOneBits(abs(u_input.c.www & (u_input.c.yyx >> (vec3<u32>(4294967295u, u_input.d, u_input.d) % vec3<u32>(32u))))), !select(!(!vec3<bool>(arg_0, true, arg_0)), !select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, false)), all(!vec2<bool>(arg_0, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1031f, _wgslsmith_f_op_f32(max(1722f, arg_1.x))), arg_1.xw) * arg_1.zy));
    let var_1 = Struct_1(var_0.a, var_0.b, arg_1.yx);
    var var_2 = Struct_3(vec3<bool>(all(!select(vec4<bool>(false, arg_0, var_1.b.x, false), vec4<bool>(true, var_1.b.x, var_1.b.x, true), var_0.b.x)), var_1.b.x, -var_0.a.x >= u_input.c.x), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -866f), arg_2)), var_1);
    var var_3 = func_2(var_2.c);
    var_3 = var_0.b.x;
    return vec4<bool>(any(select(var_2.a.xy, vec2<bool>(all(vec3<bool>(var_1.b.x, true, var_2.a.x)), false), var_2.c.b.x)), true, select(u_input.d == u_input.d, any(select(select(vec4<bool>(arg_0, false, false, var_0.b.x), vec4<bool>(var_2.a.x, arg_0, false, false), var_2.a.x), select(vec4<bool>(false, false, arg_0, var_1.b.x), vec4<bool>(false, arg_0, var_2.a.x, false), var_2.a.x), true)), var_1.b.x), !(arg_2 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - arg_1.x)));
}

fn func_1() -> vec4<bool> {
    let var_0 = vec4<u32>(1u, u_input.d, ~u_input.d, 33236u);
    let var_1 = _wgslsmith_sub_u32(42705u, u_input.d);
    var var_2 = _wgslsmith_mod_i32(-5953i, ~_wgslsmith_dot_vec3_i32(u_input.a, reverseBits(u_input.c.xzw & vec3<i32>(19808i, 18914i, -38021i))));
    let var_3 = u_input.c.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1653f, 446f) + vec2<f32>(-490f, 1217f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(551f, 1383f), vec2<f32>(1446f, -1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1314f, 405f) * vec2<f32>(617f, -1119f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-634f, 1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-720f, 642f)))));
    return select(vec4<bool>(select(true, true, !all(vec4<bool>(false, false, false, true))), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), true)), true, true | select(true, var_4.x >= -367f, all(vec4<bool>(false, true, false, false)))), select(vec4<bool>((u_input.a.x <= var_3) || false, !all(vec4<bool>(true, true, false, false)), true, _wgslsmith_f_op_f32(-220f - var_4.x) >= _wgslsmith_f_op_f32(-var_4.x)), func_4(func_2(Struct_1(u_input.c.zxx, vec3<bool>(true, true, true), var_4)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, 1559f, 1469f) - vec4<f32>(-730f, var_4.x, -552f, var_4.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.x, var_4.x, -1601f, var_4.x))), true)), var_4.x), (func_3(vec3<i32>(-13350i, -66715i, 1i), Struct_1(u_input.a, vec3<bool>(false, false, false), vec2<f32>(2137f, var_4.x)), var_4.x) | any(vec2<bool>(false, true))) & true), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-617f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(273f * -677f) + _wgslsmith_f_op_f32(f32(-1f) * -1196f)), 206f)));
    let var_1 = Struct_3(vec3<bool>(all(func_1()), true, any(vec3<bool>(func_1().x, false, any(vec4<bool>(true, true, false, false))))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, -1223f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1288f, -370f), vec2<f32>(1507f, 763f))) * vec2<f32>(-1676f, var_0)))), Struct_1(vec3<i32>(~max(u_input.c.x, 10796i), u_input.a.x, u_input.c.x), vec3<bool>(true, !func_1().x, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-340f, var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, -775f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-827f, var_0, -516f, var_1.c.c.x), vec4<f32>(var_0, 152f, -382f, -626f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.c.x, var_0, -169f, var_0) - vec4<f32>(var_0, var_0, -2711f, var_0))))));
    let var_3 = Struct_3(func_4(var_1.a.x, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-535f + 444f), _wgslsmith_f_op_f32(sign(279f)))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 + var_0)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 722f))))).zyz, Struct_2(_wgslsmith_f_op_vec2_f32(-var_2.xw)), var_1.c);
    let var_4 = vec3<bool>(false, any(vec3<bool>(!(!var_1.a.x), all(var_3.c.b.zz), any(!vec2<bool>(var_3.c.b.x, var_1.c.b.x)))), true);
    var var_5 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(36025i, -abs(-var_1.c.a.x), 3699i, _wgslsmith_mult_i32(-2147483647i, ~var_3.c.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_3.c.a.x, var_3.c.a.x, var_3.c.a.x), vec4<i32>(u_input.a.x, var_1.c.a.x, u_input.c.x, var_3.c.a.x)))), vec3<u32>(0u, 7870u, _wgslsmith_add_u32(select(~4867u, ~0u, false), u_input.d)), reverseBits(~countOneBits(u_input.c) << (vec4<u32>(u_input.d << (u_input.d % 32u), select(6143u, u_input.d, false), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(53146u, 1u)), firstTrailingBit(69053u)) % vec4<u32>(32u))));
}

