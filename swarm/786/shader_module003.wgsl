struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(682f)) - -1015f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1848f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2194f))))));
    var var_1 = Struct_2(reverseBits(~_wgslsmith_sub_u32(u_input.a, u_input.a << (u_input.a % 32u))), Struct_1(1i, global0.x, any(select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), !vec2<bool>(true, global0.x))), 4294967295u), Struct_1(u_input.b.x, 208f == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -376f))), select(any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(true, false))), all(!vec2<bool>(global0.x, true)), true), _wgslsmith_mult_u32(max(max(u_input.a, 4294967295u), 19703u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(43374u, u_input.a), vec2<u32>(4294967295u, 1u)), vec2<u32>(2880u, 47275u)))), global0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(793f - 137f) - _wgslsmith_f_op_f32(f32(-1f) * -616f)), 103f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(421f, 120f), -614f, true)), _wgslsmith_f_op_f32(-702f - _wgslsmith_f_op_f32(round(740f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1394f, _wgslsmith_f_op_f32(-1994f * -915f), 417f, _wgslsmith_f_op_f32(select(1178f, 1201f, global0.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1416f, 164f, -242f, -2750f))))));
    var var_2 = Struct_2(u_input.a, var_1.c, Struct_1(reverseBits(-2147483647i) >> ((~var_1.b.d & ~1u) % 32u), !global0.x, global0.x, reverseBits(u_input.a)), true, _wgslsmith_f_op_vec4_f32(select(var_1.e, vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.x), -1297f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1668f - -1271f)), vec4<bool>(true, true, true, true))));
    return -25729i;
}

fn func_4(arg_0: i32) -> vec2<bool> {
    var var_0 = vec2<i32>(~16734i, _wgslsmith_div_i32(_wgslsmith_mod_i32(~0i, ~arg_0), _wgslsmith_add_i32(21165i, u_input.b.x) & u_input.b.x) & max(-22912i, -1i));
    let var_1 = Struct_1(_wgslsmith_add_i32(~var_0.x, arg_0), global0.x | false, true, _wgslsmith_mod_u32(min(u_input.a, reverseBits(1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~47603u, _wgslsmith_dot_vec2_u32(vec2<u32>(51883u, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~72502u), ~firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 48722u, 1u)))));
    var var_2 = Struct_2(_wgslsmith_add_u32(~u_input.a, u_input.a), var_1, Struct_1(-30051i, var_1.b, 4294967295u == var_1.d, 75704u), !all(!vec2<bool>(var_1.c, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(689f, -1135f, 917f, 360f), vec4<f32>(-1528f, -1024f, 236f, 556f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-566f, -155f, 2304f, 856f), vec4<f32>(620f, -348f, -487f, -1284f))), vec4<f32>(1877f, 250f, 1410f, 1454f), select(vec4<bool>(false, true, global0.x, true), vec4<bool>(false, var_1.c, global0.x, false), false)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(637f, 371f, -1636f, -694f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -622f, 412f, 993f) * vec4<f32>(407f, -279f, -804f, -363f))))));
    var_2 = Struct_2(50695u, Struct_1(~func_3(), -(arg_0 | 4997i) <= 55242i, ~(~u_input.a) <= var_2.c.d, 1u), var_1, !all(!vec2<bool>(global0.x, false)), var_2.e);
    var var_3 = -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.yzz, -u_input.b.yyz), _wgslsmith_clamp_vec3_i32(u_input.b.xwz & u_input.b.zyx, -vec3<i32>(arg_0, u_input.b.x, 12707i), _wgslsmith_sub_vec3_i32(u_input.b.xzx, vec3<i32>(-61484i, 2147483647i, -49788i)))) >> (_wgslsmith_add_vec3_u32(abs(max(~vec3<u32>(var_2.c.d, u_input.a, 0u), vec3<u32>(var_1.d, 25695u, var_1.d) ^ vec3<u32>(u_input.a, 4294967295u, 40669u))), _wgslsmith_add_vec3_u32(select(~vec3<u32>(654u, var_2.a, var_1.d), countOneBits(vec3<u32>(11706u, u_input.a, 0u)), true), vec3<u32>(abs(var_2.a), 790u, var_1.d))) % vec3<u32>(32u));
    return !vec2<bool>(global0.x, !((var_2.e.x <= 943f) & true));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    global0 = select(!(!vec2<bool>(true, any(vec3<bool>(true, global0.x, global0.x)))), select(select(vec2<bool>(0u == u_input.a, true), !vec2<bool>(true, global0.x), select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), vec2<bool>(true, true))), vec2<bool>(true, false), any(func_4(func_3()))), global0.x);
    let var_0 = _wgslsmith_dot_vec4_u32(select(abs(~select(vec4<u32>(1u, arg_1, arg_0.x, 4294967295u), vec4<u32>(arg_1, 14684u, 8054u, 4294967295u), global0.x)), vec4<u32>(1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(62805u, arg_0.x, arg_1), vec3<u32>(u_input.a, 639u, 4136u)) % 32u), max(~4294967295u, arg_0.x), 61627u, arg_0.x), true), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(2871u, arg_1, u_input.a, 1u), max(vec4<u32>(35298u, arg_1, arg_0.x, arg_0.x), vec4<u32>(1u, 0u, 36517u, 29483u))), ~vec4<u32>(countOneBits(arg_0.x), countOneBits(13768u), _wgslsmith_sub_u32(u_input.a, 4294967295u), arg_0.x)));
    global0 = func_4(-(-1i & u_input.b.x));
    global0 = !vec2<bool>(!global0.x, global0.x);
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), arg_0 >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), 97151u, countOneBits(1u)) << (abs(vec3<u32>(~(~u_input.a), 29350u << (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u), _wgslsmith_sub_u32(u_input.a, 1u) & 0u)) % vec3<u32>(32u));
    return Struct_1(firstLeadingBit(~2147483647i), !global0.x, !global0.x, arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(979f + _wgslsmith_f_op_f32(step(arg_3.x, -156f))))), 291f, -1926f, arg_3.x));
    var var_1 = Struct_2(_wgslsmith_add_u32(~arg_1, countOneBits(~(u_input.a << (arg_1 % 32u)))), Struct_1(select(firstTrailingBit(18875i), -32989i, u_input.c.x != 9499i) >> (u_input.a % 32u), _wgslsmith_div_i32(arg_0.a, u_input.c.x) < abs(19391i), true, min(1u, _wgslsmith_div_u32(4223u << (arg_1 % 32u), ~5528u))), func_2(vec2<u32>(~arg_1, 43159u) & min(~vec2<u32>(arg_1, arg_1), ~vec2<u32>(u_input.a, 4294967295u)), arg_0.d), (869f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))) || (_wgslsmith_div_f32(-780f, arg_3.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -972f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(975f - 2173f), var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 775f, -2343f, arg_3.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, var_0.x, -1031f, var_0.x)))))));
    var_0 = var_1.e;
    let var_2 = countOneBits(-57795i << (min(countOneBits(arg_1) << (~1u % 32u), ~4294967295u) % 32u));
    var_1 = Struct_2(arg_1, Struct_1(1i, func_4(-62707i >> (~arg_0.d % 32u)).x, true, 1u), var_1.b, func_4(_wgslsmith_div_i32(-158i, abs(_wgslsmith_mult_i32(-45474i, u_input.b.x)))).x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(806f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1613f, 1f) - _wgslsmith_f_op_f32(min(-1115f, var_1.e.x))), _wgslsmith_f_op_f32(-858f + _wgslsmith_f_op_f32(select(var_1.e.x, -823f, any(vec4<bool>(false, false, arg_0.b, arg_2))))), _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -538f))));
    return var_1.c.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> vec3<bool> {
    global0 = vec2<bool>(true, false);
    global0 = select(select(!vec2<bool>(!arg_0.c.c, arg_0.c.b), !select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), vec2<bool>(false, global0.x)), func_5(func_2(vec2<u32>(1200u, 4294967295u), arg_0.a), 9042u, false, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.x, arg_0.e.x, arg_1.x), vec3<f32>(arg_1.x, arg_0.e.x, -1000f))))), !select(!vec2<bool>(arg_0.c.b, arg_0.d), vec2<bool>(true, func_4(19484i).x), false), vec2<bool>(0u == arg_2.x, global0.x));
    global0 = !(!vec2<bool>(abs(arg_0.a) != 44144u, true && arg_0.d));
    global0 = select(vec2<bool>(false, any(!vec3<bool>(global0.x, global0.x, false))), func_4(arg_0.c.a), func_4(arg_3.x).x);
    var var_0 = arg_0.b;
    return !vec3<bool>(var_0.c, var_0.b, 0i < -(-1i >> (var_0.d % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c.x, false, all(vec2<bool>(!(-13123i == u_input.c.x), all(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, global0.x), global0.x)))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~(~51957u), u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 27167u, u_input.a) % vec3<u32>(32u)))));
    var var_1 = Struct_2(7313u, Struct_1(~(-_wgslsmith_div_i32(var_0.a, u_input.c.x)), true, var_0.c, 1u), var_0, any(vec2<bool>(true, any(func_1(Struct_2(var_0.d, var_0, var_0, true, vec4<f32>(-711f, -808f, 1497f, 396f)), vec3<f32>(1247f, -293f, 270f), vec2<u32>(u_input.a, 107576u), vec4<i32>(u_input.c.x, u_input.c.x, u_input.b.x, -46741i))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1905f, 1693f, -173f, 659f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(650f, -227f, -2068f, -1439f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 572f, 227f, 340f)))))));
    var var_2 = Struct_1(~(-var_1.b.a), !(!func_4(-1i).x & var_1.b.c), true, (var_1.c.d | _wgslsmith_mult_u32(firstLeadingBit(87685u), _wgslsmith_add_u32(56473u, var_1.b.d))) ^ reverseBits(~1u));
    let var_3 = !vec2<bool>(global0.x, true);
    var_2 = Struct_1(-u_input.c.x, true, true, _wgslsmith_sub_u32(~var_1.c.d, var_1.b.d));
    var var_4 = func_2(vec2<u32>(~(~1u), 0u), u_input.a);
    let var_5 = 4294967295u < _wgslsmith_clamp_u32(max(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.d, 25819u), reverseBits(vec2<u32>(4294967295u, var_1.c.d))), ~var_4.d), firstLeadingBit(firstLeadingBit(0u)), firstLeadingBit(~select(u_input.a, 10935u, var_3.x)));
    let var_6 = vec3<i32>(0i, ~2147483647i, ~u_input.c.x);
    var var_7 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.e.x)) + 560f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.e.x)) * _wgslsmith_f_op_f32(round(var_1.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-121f)))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, var_2.d, var_0.d)), ~vec4<u32>(41725u, var_4.d, var_4.d, var_1.a)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(10332u, 1u), vec2<u32>(4294967295u, 1u)), 1u, func_2(vec2<u32>(40991u, var_0.d), var_1.b.d).d, 4294967295u) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(30508u, var_1.a, var_2.d, var_1.c.d)), vec4<u32>(0u, 1u, 0u, var_1.b.d) & vec4<u32>(4294967295u, var_4.d, u_input.a, var_1.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(565f, var_7.x), vec2<f32>(var_7.x, var_7.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1402f, 1014f)))), true)))));
}

