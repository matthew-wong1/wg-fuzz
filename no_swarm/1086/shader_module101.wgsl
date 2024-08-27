struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_3) -> u32 {
    let var_0 = vec3<i32>(1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-firstLeadingBit(-7780i), arg_2), _wgslsmith_sub_i32(-arg_3.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, arg_2, arg_2, arg_2), vec4<i32>(1i, 22356i, -2147483647i, arg_3.a.x) >> (vec4<u32>(arg_0.d.x, arg_0.b, 1u, 42154u) % vec4<u32>(32u)))), arg_3.a.x), -1i);
    var var_1 = vec2<bool>(arg_3.d.x, firstTrailingBit(1i) > arg_3.a.x);
    var var_2 = false;
    let var_3 = Struct_2(arg_0, arg_3.e.zz);
    var_2 = select(true, select(true, !any(vec4<bool>(var_1.x, true, arg_0.a.x, false)), all(vec3<bool>(false, arg_0.e.x, true))), true) || var_1.x;
    return countOneBits(_wgslsmith_div_u32(~max(4294967295u, 21991u), ~arg_0.d.x ^ u_input.a.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    var var_0 = Struct_5(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(357f * -507f), _wgslsmith_f_op_f32(f32(-1f) * -1742f), arg_0.x, -546f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yx * arg_0.xx)), select(~vec4<u32>(86524u, 4294967295u, 31934u, 4294967295u) | ~vec4<u32>(30752u, arg_2, 1u, 0u), ~firstTrailingBit(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true))), Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1561f, arg_0.x, arg_0.x, -781f), vec4<f32>(arg_0.x, -938f, -344f, -542f)))))), vec2<f32>(_wgslsmith_div_f32(-142f, _wgslsmith_div_f32(2376f, 564f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(180f, -1508f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, u_input.a.x ^ 0u, 0u, 24384u), ~vec4<u32>(u_input.a.x, u_input.a.x, 42678u, 85815u), vec4<u32>(abs(arg_1.x), arg_1.x, func_3(Struct_1(vec2<bool>(true, false), u_input.a.x, vec4<f32>(-411f, -704f, arg_0.x, 937f), vec3<u32>(1u, arg_2, arg_1.x), vec4<bool>(false, false, false, false)), vec2<f32>(1126f, 438f), 1i, Struct_3(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<f32>(483f, 774f, arg_0.x), true, vec2<bool>(false, true), vec3<u32>(u_input.a.x, 1u, 4294967295u))), 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = Struct_3(vec3<i32>(0i, _wgslsmith_clamp_i32(-1i, 1i, select(countOneBits(0i), _wgslsmith_div_i32(-26123i, -1i), true)), 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.a.xyx + arg_0)), false, !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), var_0.a.c.zyz);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.b.a.wzz + _wgslsmith_f_op_vec3_f32(-var_0.b.a.zwz)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -690f, -1070f) - var_1.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.x, 281f, arg_0.x), vec3<f32>(288f, var_0.a.a.x, arg_0.x), vec3<bool>(var_1.d.x, false, var_1.c))), false)), false))));
    var_2 = var_0.b.a.yzy;
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, -997f) * vec3<f32>(-1504f, 805f, 1039f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, 1714f, -777f)), select(vec3<bool>(false, var_1.c, var_1.c), vec3<bool>(var_1.d.x, var_1.d.x, false), vec3<bool>(false, var_1.d.x, var_1.c)))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1092f);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(4227i, _wgslsmith_dot_vec2_i32(vec2<i32>(-15909i, 23150i), vec2<i32>(2147483647i, 27002i))), -2147483647i, -1i)), select(-(abs(vec3<i32>(-14688i, 38418i, -29712i)) >> (vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), ~min(vec3<i32>(2147483647i, 28826i, 0i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 51828u) % vec3<u32>(32u)), ~vec3<i32>(-33956i, 2147483647i, -40471i)), !vec3<bool>(true, any(vec2<bool>(true, true)), true)));
    var var_1 = select(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, 75078u > u_input.a.x), vec3<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, false)), true), true), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), any(vec2<bool>(true, true)));
    let var_2 = var_0.x;
    let var_3 = Struct_1(var_1.xy, ~44523u, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<f32>(-1000f, -563f, 1303f), ~vec2<u32>(u_input.a.x, u_input.a.x), 128285u ^ u_input.a.x)), -1362f, 771f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-536f + -1583f) * _wgslsmith_f_op_f32(-654f + -758f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, 978f, 1694f, -1000f))))), _wgslsmith_add_vec3_u32(~vec3<u32>(32636u, 28259u, 4294967295u) | vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 9676u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 7283u)), vec4<bool>(true, true, var_1.x, false));
    let var_4 = !(_wgslsmith_f_op_f32(var_3.c.x * -220f) >= -595f);
    return Struct_3(reverseBits(vec3<i32>(var_0.x, -1i, 51705i)), var_3.c.yyw, true, !select(var_1.xy, vec2<bool>(true, true), any(select(var_1.xy, var_1.yx, var_1.x))), vec3<u32>(1u, 4294967295u, var_3.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 29447u & _wgslsmith_sub_u32(var_0.e.x, ~_wgslsmith_clamp_u32(u_input.a.x, var_0.e.x, var_0.e.x) << (68985u % 32u));
    let var_2 = all(vec3<bool>(false == (true == (196f == var_0.b.x)), all(var_0.d), (select(4294967295u, 4294967295u, var_0.d.x) | 84040u) < ~(~u_input.a.x)));
    var var_3 = vec3<bool>(!any(!vec3<bool>(var_2, var_2, var_0.d.x)), all(!var_0.d), all(!vec3<bool>(all(vec4<bool>(var_2, true, true, false)), all(var_0.d), true)));
    var var_4 = Struct_1(var_3.zy, var_0.e.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), -423f, _wgslsmith_f_op_f32(var_0.b.x - -2276f), _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x))))), vec3<u32>(0u, 0u >> (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.e.x, 1u, 4294967295u, 54855u)), vec4<u32>(u_input.a.x, var_0.e.x, var_0.e.x, u_input.a.x) << (vec4<u32>(var_0.e.x, var_0.e.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))) % 32u), _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(var_0.e, var_0.e), abs(func_3(Struct_1(var_0.d, 30828u, vec4<f32>(var_0.b.x, var_0.b.x, -1000f, -1000f), vec3<u32>(37927u, var_0.e.x, var_0.e.x), vec4<bool>(var_3.x, var_2, false, var_3.x)), var_0.b.xx, -2147483647i, Struct_3(vec3<i32>(-4943i, 2147483647i, var_0.a.x), var_0.b, false, vec2<bool>(var_0.d.x, false), var_0.e))))), !select(select(!vec4<bool>(var_3.x, var_3.x, var_2, false), vec4<bool>(var_2, var_0.d.x, true, true), vec4<bool>(false, var_2, var_3.x, false)), !vec4<bool>(false, var_3.x, false, var_0.c), !any(vec4<bool>(true, true, var_2, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-17335i, _wgslsmith_f_op_vec2_f32(-var_4.c.zw));
}

