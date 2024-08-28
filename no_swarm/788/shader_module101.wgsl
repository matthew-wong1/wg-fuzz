struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-45702i, 2147483647i, -4482i), _wgslsmith_sub_vec3_i32(vec3<i32>(33586i, u_input.a, -2147483647i), vec3<i32>(u_input.a, -1i, u_input.a))), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(0i, u_input.a, u_input.a, -12776i)), 7476i), ~(vec3<i32>(10631i, u_input.a, -17718i) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 40329i, -1i), vec3<i32>(u_input.a, -1i, -7411i)))), ~min(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, -83255i), vec3<i32>(u_input.a, u_input.a, -1i) >> (vec3<u32>(1u, 4294967295u, 13690u) % vec3<u32>(32u))), vec3<i32>(u_input.a, u_input.a, u_input.a) >> (~vec3<u32>(1u, 1u, 79873u) % vec3<u32>(32u))));
    let var_2 = Struct_1(~_wgslsmith_clamp_u32(abs(reverseBits(8491u)), _wgslsmith_dot_vec2_u32(vec2<u32>(18043u, 31255u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1943u), vec2<u32>(90027u, 0u), vec2<u32>(4294967295u, 17857u))), ~1u));
    var_1 = reverseBits(-vec3<i32>(-1i, _wgslsmith_sub_i32(var_1.x, var_1.x), var_1.x) << ((max(vec3<u32>(34557u, var_2.a, var_2.a), abs(vec3<u32>(var_2.a, var_2.a, 4294967295u))) | ~(vec3<u32>(30344u, 0u, 4294967295u) >> (vec3<u32>(var_2.a, var_2.a, var_2.a) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var var_3 = Struct_1(var_2.a << (var_2.a % 32u));
    return arg_0.b;
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = vec2<bool>(true, arg_0.b);
    let var_1 = select(vec4<i32>(u_input.a, max(u_input.a, 0i) >> (13779u % 32u), u_input.a, u_input.a), abs(vec4<i32>(abs(u_input.a), -2147483647i >> (~4294967295u % 32u), u_input.a | 2147483647i, 1i)), vec4<bool>(select(true, true, func_3(arg_0, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), -492f)), !var_0.x, true, var_0.x));
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-986f - arg_0.a.x)))), _wgslsmith_f_op_f32(1652f * 1000f))));
    var var_4 = Struct_2(arg_0.a, !func_3(Struct_2(vec4<f32>(827f, arg_0.a.x, arg_0.a.x, -352f), false), _wgslsmith_f_op_f32(select(2290f, 1802f, var_0.x)), 934f));
    return Struct_3(var_1.wy);
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = u_input.a;
    var_0 = u_input.a;
    var var_1 = u_input.a;
    let var_2 = func_2(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1709f, 526f, arg_0, arg_0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(184f, -1131f, arg_0, arg_0))))), (true & all(vec3<bool>(true, true, true))) || any(vec4<bool>(true, true, true, true))));
    let var_3 = vec2<i32>(-(var_2.a.x ^ u_input.a) | _wgslsmith_dot_vec2_i32(var_2.a, abs(var_2.a)), 1i) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 32833u, 77105u), vec4<u32>(134973u, 26843u, 0u, 90799u)), ~4294967295u, _wgslsmith_div_u32(0u, 49039u), _wgslsmith_add_u32(10345u, 40511u)), vec4<u32>(1u, 1u, 1u, 1u)), 69811u) % vec2<u32>(32u));
    return Struct_3(min(abs(var_3), ~min(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 29294i), vec2<i32>(-56997i, 0i)), -vec2<i32>(var_2.a.x, u_input.a))));
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-3209f, -1000f, 372f, -387f), vec4<f32>(1729f, -1008f, 1210f, -817f))))))))));
    let var_1 = max(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(4294967295u, 1u, 4294967295u, 6368u)), abs(vec4<u32>(1u, 4294967295u, 57695u, 4294967295u)))), vec4<u32>(reverseBits(_wgslsmith_clamp_u32(4294967295u, 8095u, 0u) << (_wgslsmith_mod_u32(8328u, 32058u) % 32u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 0u), vec3<u32>(47188u, 34242u, 4294967295u)), max(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1113u, 32828u, 35278u)), firstTrailingBit(vec3<u32>(4294967295u, 35732u, 30618u))), 1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 9156u), vec3<u32>(1u, 1u, 1u))));
    var var_2 = Struct_2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 1385f), var_0.x))), var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(195f, -1882f)))))), _wgslsmith_div_u32(~1u, var_1.x) > (1u << (var_1.x % 32u)));
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a * var_2.a) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_2.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_2.a.x, 1277f, var_0.x) - vec4<f32>(var_2.a.x, var_2.a.x, var_0.x, var_0.x)) + var_2.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1352f) - var_2.a.x), var_0.x)) == _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(808f))));
    var_0 = vec4<f32>(-213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-391f + _wgslsmith_f_op_f32(floor(-394f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -334f), var_2.a.x)) - var_2.a.x));
    return _wgslsmith_add_u32(max(15812u, 4679u), firstLeadingBit(var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = u_input.a & (u_input.a << (func_4(func_1(_wgslsmith_f_op_f32(min(516f, 2187f)))) % 32u));
    let var_1 = vec2<f32>(-1506f, _wgslsmith_f_op_f32(select(356f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1750f * -1000f), 343f)), 114f, true)), false)));
    var var_2 = true;
    var var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1479f), -1607f, -1370f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + _wgslsmith_f_op_f32(trunc(-979f))))), all(vec4<bool>(true, true, true, true)));
    var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-351f, -1054f, var_3.a.x, _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_3.a, var_3.a)))))), all(!vec2<bool>(var_3.b, var_3.a.x <= 1004f)));
    var var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-25044i, u_input.a, -1i), ~u_input.a, abs(~_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), countOneBits(vec2<u32>(42850u, 37659u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_3.a.x, var_3.a.x, var_3.a.x))) + _wgslsmith_f_op_vec4_f32(trunc(var_3.a))));
}

