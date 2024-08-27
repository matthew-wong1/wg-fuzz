struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.a.a, -(var_0.a.a & vec3<i32>(var_0.a.a.x, -2161i, -29651i))), vec3<i32>((i32(-1i) * -1i) | _wgslsmith_add_i32(25389i, var_0.a.c), -arg_0.a.c, -1i)), var_0.a.d.zwy, _wgslsmith_mod_i32(8810i, arg_0.a.c), arg_0.a.d, select(vec2<bool>(false, all(select(vec4<bool>(arg_1, var_0.a.e.x, var_0.a.b.x, var_0.a.e.x), vec4<bool>(true, arg_0.a.e.x, true, var_0.a.d.x), vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, false)))), select(vec2<bool>(var_0.a.c == -2147483647i, true), !select(var_0.a.e, vec2<bool>(false, false), vec2<bool>(false, false)), _wgslsmith_f_op_f32(f32(-1f) * -464f) > _wgslsmith_f_op_f32(ceil(404f))), true));
    var var_2 = !any(arg_0.a.e) || false;
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.c), u_input.c, u_input.c, ~15768u), reverseBits(vec4<u32>(72662u, ~u_input.c, 14183u, u_input.c)));
    var_2 = _wgslsmith_f_op_f32(-679f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(469f))))) != -721f;
    return select(select(select(!arg_0.a.d.wwz, vec3<bool>(arg_1, !arg_0.a.b.x, true), var_1.d.wzz), vec3<bool>(!arg_0.a.d.x, arg_0.a.b.x, true), select(select(!var_0.a.d.zyx, arg_0.a.b, vec3<bool>(true, false, arg_0.a.b.x)), !select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_0.a.d.x, false, true), true), var_1.b.x)), var_1.b, all(!vec4<bool>(arg_0.a.d.x & arg_0.a.d.x, false, any(vec4<bool>(true, true, var_1.d.x, true)), any(var_1.d.wyw))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_1(select(vec3<i32>(~0i, u_input.b, abs(u_input.a)) & (vec3<i32>(u_input.e.x, u_input.d, u_input.e.x) ^ (vec3<i32>(-1i, 0i, 2147483647i) & vec3<i32>(u_input.e.x, u_input.e.x, u_input.b))), vec3<i32>(u_input.e.x, i32(-1i) * -33756i, _wgslsmith_mult_i32(0i, u_input.d)), vec3<bool>((u_input.a & u_input.b) <= _wgslsmith_add_i32(-2147483647i, 0i), _wgslsmith_mult_i32(u_input.e.x, u_input.a) == u_input.e.x, any(vec3<bool>(false, var_0, true)))), func_3(Struct_2(Struct_1(-vec3<i32>(-24215i, u_input.e.x, 0i), !vec3<bool>(var_0, var_0, false), u_input.a, !vec4<bool>(var_0, true, var_0, var_0), !vec2<bool>(var_0, var_0))), !var_0), -u_input.a, vec4<bool>((any(vec4<bool>(false, var_0, false, false)) && true) || false, _wgslsmith_f_op_f32(639f * 374f) < _wgslsmith_div_f32(-290f, _wgslsmith_f_op_f32(arg_0.x * 902f)), any(!select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, true, var_0, var_0))), var_0), !(!(!vec2<bool>(var_0, var_0))));
    var var_2 = ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~u_input.c, ~1u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(6263u, u_input.c)));
    var_2 = u_input.c;
    var_2 = u_input.c;
    return Struct_1(vec3<i32>(-u_input.b, u_input.d, u_input.d), !(!var_1.b), ~(~(i32(-1i) * -47382i) | firstLeadingBit(u_input.d)), !select(var_1.d, !select(vec4<bool>(var_1.d.x, var_1.e.x, var_1.d.x, false), var_1.d, var_1.d), select(vec4<bool>(false, false, true, var_1.e.x), select(vec4<bool>(var_0, var_1.e.x, var_0, false), vec4<bool>(var_1.d.x, var_0, true, false), var_1.d), all(var_1.d.xwz))), vec2<bool>(!select(!var_0, false && var_1.d.x, var_0), true));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0, -216f)), _wgslsmith_f_op_f32(-179f * -1581f), _wgslsmith_f_op_f32(step(2538f, arg_0)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, -1122f))))))));
    var_0 = Struct_1(~vec3<i32>(u_input.b, u_input.d, -abs(var_0.c)), vec3<bool>(false, !(!func_3(Struct_2(Struct_1(vec3<i32>(var_0.a.x, var_0.a.x, u_input.e.x), var_0.d.ywx, u_input.a, vec4<bool>(true, var_0.d.x, arg_1, arg_1), vec2<bool>(arg_1, true))), false).x), all(var_0.d.zyw)), _wgslsmith_dot_vec3_i32(var_0.a, -var_0.a), vec4<bool>(false, true, (_wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(sign(285f))) & var_0.e.x, any(!(!var_0.d))), vec2<bool>(true || all(!vec4<bool>(true, false, true, var_0.b.x)), 1i >= _wgslsmith_add_i32(var_0.a.x | u_input.b, _wgslsmith_div_i32(var_0.c, -2147483647i))));
    let var_2 = ~(~min(vec3<u32>(0u, u_input.c, u_input.c) & vec3<u32>(82344u, u_input.c, 1u), vec3<u32>(u_input.c, 24252u, 29260u) & vec3<u32>(u_input.c, 47716u, u_input.c)) | ((firstLeadingBit(vec3<u32>(u_input.c, u_input.c, 55423u)) << (~vec3<u32>(3513u, 0u, 78110u) % vec3<u32>(32u))) >> (vec3<u32>(countOneBits(u_input.c), abs(1u), 1u) % vec3<u32>(32u))));
    let var_3 = 1i;
    return func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(2123f, 647f, -265f) - vec3<f32>(var_1.x, -1000f, 384f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(-vec3<i32>(var_0.c, 1i, 2147483647i), var_0.b, abs(_wgslsmith_dot_vec3_i32(arg_0.a >> (max(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(4294967295u, 0u, u_input.c)) % vec3<u32>(32u)), arg_0.a)), vec4<bool>(arg_1.x, arg_1.x, all(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, 246f, -254f))).d), var_0.b.x), arg_0.b.xz);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(396f)) - 166f), 670f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1402f, 899f, 108f))), vec3<f32>(-1259f, 191f, -360f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-612f, var_2.x)), var_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_2.x))))), _wgslsmith_f_op_f32(var_2.x + var_2.x), 1091f) - vec3<f32>(var_2.x, 1f, var_2.x));
    let var_3 = Struct_1(var_0.a, arg_1, arg_0.a.x, vec4<bool>(func_2(vec3<f32>(-2213f, var_2.x, _wgslsmith_f_op_f32(step(var_2.x, var_2.x)))).e.x, true, var_0.e.x & var_0.d.x, all(vec4<bool>(arg_0.b.x, true, true, all(vec2<bool>(arg_1.x, var_1.b.x))))), !(!vec2<bool>(var_0.e.x, var_1.e.x & var_1.b.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-714f * var_2.x) - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_2.x - var_2.x))) - _wgslsmith_f_op_f32(ceil(var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(~u_input.e, firstTrailingBit(u_input.e));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_f32(round(-1223f)), true), vec3<bool>(true, all(vec2<bool>(true, true)), false))), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1466f)), -1211f, true))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x)))));
    var_2 = 146f;
    var_2 = var_1.x;
    let var_3 = Struct_1(vec3<i32>(u_input.e.x, _wgslsmith_div_i32(-abs(-2147483647i), u_input.b), _wgslsmith_clamp_i32(-10181i, _wgslsmith_dot_vec4_i32(-vec4<i32>(19571i, -15214i, var_0.x, var_0.x), max(vec4<i32>(u_input.d, -1i, -35381i, 0i), vec4<i32>(85683i, var_0.x, -2147483647i, -14807i))), ~(4655i & var_0.x))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, false)), func_3(Struct_2(Struct_1(vec3<i32>(13556i, 2147483647i, u_input.d), vec3<bool>(true, false, true), 2147483647i, vec4<bool>(true, false, true, false), vec2<bool>(true, false))), true).x)), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(var_0.x, 2623i, var_0.x)), _wgslsmith_div_i32(u_input.d, 2700i)), -6190i), -(~var_0.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true && all(vec3<bool>(true, false, true))), false), !(!vec2<bool>(func_1(var_1.x, true).b.x, true)));
    var var_4 = Struct_2(var_3);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.a.x, var_0.x, u_input.b) & var_4.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))))), var_1.x, 23289i);
}

