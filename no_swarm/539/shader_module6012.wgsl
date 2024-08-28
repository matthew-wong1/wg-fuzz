struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = -18301i;
    var var_1 = arg_1;
    let var_2 = Struct_2(-1090f, true, arg_0.d, arg_0.d, ~arg_0.d.c != 12490i);
    var_1 = any(!(!(!(!vec2<bool>(arg_1, var_2.b)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1015f, _wgslsmith_f_op_f32(-arg_0.c.b)) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.b), _wgslsmith_f_op_f32(f32(-1f) * -877f))) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_2.d.b)), -161f, true)), 407f)), arg_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(200f, -1795f, arg_0.c.b, -1672f), vec4<f32>(arg_0.a, var_2.d.b, 703f, var_2.c.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.b, -993f, var_2.a, var_2.c.b))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.b, 659f, -1888f, var_2.c.b), vec4<f32>(1206f, -533f, arg_0.c.b, 1300f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.d.b, 519f))), var_2.c.b, -1187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.b)))), select(!vec3<bool>(var_2.e, true, arg_1), !vec3<bool>(arg_0.e & arg_1, false == arg_1, arg_1), var_2.e));
    return 2147483647i;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = !vec4<bool>(false, arg_0.d.x, all(!select(vec4<bool>(false, false, true, arg_1.e), vec4<bool>(false, arg_0.d.x, false, arg_1.b), vec4<bool>(arg_1.e, arg_1.e, false, arg_1.e))), !(arg_1.b | true) | (_wgslsmith_f_op_f32(f32(-1f) * -994f) == _wgslsmith_f_op_f32(-arg_1.a)));
    let var_1 = Struct_1(countOneBits(~_wgslsmith_sub_i32(min(1i, -20816i), abs(1i))), 1325f, -2855i & _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.wy, -vec2<i32>(12713i, -1i)), ~firstLeadingBit(u_input.a.xy)), ~firstLeadingBit(arg_2));
    return 77430u;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<u32>(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-492f, -738f) - vec2<f32>(-559f, -1530f)))), Struct_1(-2147483647i, 2035f, func_3(Struct_2(1064f, true, Struct_1(1i, -334f, u_input.c.x, u_input.a.x), Struct_1(-2147483647i, 703f, u_input.b, 2147483647i), false), true), abs(-1i)), vec4<f32>(_wgslsmith_f_op_f32(483f + -1050f), _wgslsmith_f_op_f32(313f + 597f), _wgslsmith_f_op_f32(268f + -732f), _wgslsmith_f_op_f32(floor(-784f))), vec3<bool>(true, true, any(vec4<bool>(true, true, false, false)))), Struct_2(-634f, true, Struct_1(9388i, -502f, ~u_input.c.x, 1i), Struct_1(u_input.b, 448f, func_3(Struct_2(1177f, true, Struct_1(u_input.c.x, 186f, u_input.b, -7844i), Struct_1(u_input.b, 205f, u_input.b, -8119i), true), true), ~(-2147483647i)), true), u_input.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-292f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1896f)))))), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(49250u)), _wgslsmith_mod_u32(~countOneBits(~53038u), 4294967295u), 7323u);
    let var_1 = select(vec3<bool>(true, all(vec2<bool>(false, 54628u <= var_0.x)), !all(vec3<bool>(true, true, false))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), true), vec3<bool>(all(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), true)), 4294967295u >= ~(23841u << (var_0.x % 32u)), any(vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(724f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(404f, -321f, -246f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(333f, -871f, 148f), _wgslsmith_div_vec3_f32(vec3<f32>(945f, 847f, 1099f), vec3<f32>(968f, -1449f, -686f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1016f), _wgslsmith_f_op_f32(round(693f)), _wgslsmith_f_op_f32(abs(1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1603f, -339f, 1376f), vec3<f32>(2681f, -1514f, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(237f, -2217f, 896f) - vec3<f32>(397f, 787f, 589f))))))));
    let var_4 = -1514f;
    return Struct_1(u_input.c.x, var_4, u_input.a.x << (4294967295u % 32u), firstLeadingBit(1i));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_2(-1221f, true, func_2(), arg_0.c, arg_3.d.x);
    var var_1 = arg_0.d;
    let var_2 = func_2();
    let var_3 = var_1.b;
    let var_4 = ~abs(_wgslsmith_add_u32(1u, countOneBits(~32931u)));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.xx >> (~abs(vec2<u32>(0u, 0u)) % vec2<u32>(32u)), ~vec2<i32>(_wgslsmith_add_i32(arg_0.d.a, 12664i), u_input.c.x)), arg_0.d.a);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i ^ u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(2147483647i, 0i)), -_wgslsmith_div_vec4_i32(u_input.a, u_input.a)), -9902i), -7595i, u_input.a.x, 44411i);
    var_0 = vec4<i32>(~func_5(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2096f), false, func_2(), func_2(), true), -1351f, _wgslsmith_f_op_f32(min(695f, -1000f)), Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1256f, -690f), vec2<f32>(1000f, -179f), vec2<bool>(false, false))), Struct_1(u_input.b, 1203f, -4774i, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1075f, 573f, -2270f, 1838f)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), -1i, ~(var_0.x << (arg_0.x % 32u)) >> (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0.x, 0u, arg_0.x, 1u)), vec4<u32>(~arg_0.x, ~arg_0.x, _wgslsmith_mult_u32(arg_0.x, arg_0.x), 69013u & arg_0.x)) % 32u), func_5(Struct_2(-764f, any(vec4<bool>(true, true, true, true)), func_2(), func_2(), !select(false, true, false)), _wgslsmith_f_op_f32(max(-485f, -509f)), _wgslsmith_div_f32(-1081f, 1f), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(317f, -434f), vec2<f32>(126f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, -231f))), Struct_1(_wgslsmith_sub_i32(u_input.b, 1i), _wgslsmith_f_op_f32(1139f + -305f), min(-8570i, -2147483647i), var_0.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1225f, 994f, -456f, -799f) * vec4<f32>(330f, 1000f, 331f, -1000f)), vec4<f32>(-1881f, 1000f, 286f, 1416f))), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, false))));
    var_0 = u_input.a;
    let var_1 = -(-2147483647i >> (~arg_0.x % 32u));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0.x, 0u << (1u % 32u), firstLeadingBit(1u), _wgslsmith_div_u32(1u, 28023u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 34660u, arg_0.x, arg_0.x), max(vec4<u32>(4294967295u, 60678u, 0u, 16108u), vec4<u32>(arg_0.x, arg_0.x, 11977u, arg_0.x))), abs(~vec4<u32>(arg_0.x, 84461u, 8650u, 36268u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) >> (~vec4<u32>(arg_0.x, 11214u, arg_0.x, 0u) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 26176u, 45277u, 1u), vec4<u32>(1u, 15u, 1u, arg_0.x))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(14124u, arg_0.x, 9529u, 1u), vec4<u32>(arg_0.x, 53131u, 1u, 4294967295u), vec4<bool>(true, true, false, true)), ~vec4<u32>(100664u, arg_0.x, 49800u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x)))), abs(4294967295u));
    return Struct_1(reverseBits(var_1), 1038f, (4170i | (~(-2147483647i) ^ -var_1)) << (13910u % 32u), u_input.a.x);
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    let var_0 = 6307u;
    let var_1 = arg_2.d.x;
    let var_2 = _wgslsmith_f_op_f32(-1561f + _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(step(-344f, 683f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, arg_1.b, 296f), vec3<f32>(110f, 1000f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)))))));
    let var_4 = ~min(reverseBits(vec2<u32>(var_0, var_0) ^ vec2<u32>(var_0, 1u)), vec2<u32>(~var_0, ~23722u)) ^ ~countOneBits((vec2<u32>(var_0, 27510u) << (vec2<u32>(var_0, 1u) % vec2<u32>(32u))) & (vec2<u32>(46354u, 4294967295u) ^ vec2<u32>(var_0, 20741u)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b, -2257f))), any(select(!select(arg_2.d, arg_2.d, arg_2.d), !arg_2.d, var_4.x < _wgslsmith_clamp_u32(1u, var_0, 25515u))), arg_2.b, func_2(), any(!(!vec2<bool>(false, arg_2.d.x))) || (var_3.x > arg_2.a.x));
}

fn func_7(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -906f, -678f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.c.b, arg_0.d.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(895f, 1000f, arg_0.c.b)))))), vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.d.b, -1000f)), arg_0.c.b, arg_0.d.b));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a));
    let var_2 = 1u;
    let var_3 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, arg_0.e, true), vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, false, false)), !vec3<bool>(false, arg_0.e, false), vec3<bool>(true, true, true)), all(!vec3<bool>(arg_0.e, arg_0.b, true))), vec3<bool>(!(!(!arg_0.e)), var_0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 15234u > _wgslsmith_div_u32(var_2 & var_2, ~var_2)), select(!(!vec3<bool>(arg_0.e, arg_0.e, arg_0.b)), select(select(select(vec3<bool>(true, arg_0.b, false), vec3<bool>(true, arg_0.e, arg_0.b), vec3<bool>(arg_0.e, arg_0.e, arg_0.b)), select(vec3<bool>(arg_0.e, false, false), vec3<bool>(true, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.e, true)), arg_0.e), select(vec3<bool>(arg_0.e, true, arg_0.b), !vec3<bool>(false, false, arg_0.e), select(vec3<bool>(arg_0.b, arg_0.e, true), vec3<bool>(false, arg_0.e, false), vec3<bool>(arg_0.b, false, arg_0.b))), true), vec3<bool>(true, true, false)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(~_wgslsmith_div_i32(firstLeadingBit(23374i), u_input.c.x), func_1(abs(firstLeadingBit(vec2<u32>(16641u, 1u)))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-589f, -766f)), func_1(vec2<u32>(1u, 1u)), vec4<f32>(_wgslsmith_f_op_f32(1293f * 1653f), _wgslsmith_f_op_f32(max(547f, -1071f)), _wgslsmith_f_op_f32(max(1000f, 178f)), -1352f), vec3<bool>(true, true, true))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-572f, -982f))))))), Struct_1(-(~(~u_input.c.x)), -623f, u_input.b ^ -firstLeadingBit(u_input.c.x), 2147483647i), vec4<f32>(_wgslsmith_f_op_f32(-338f + _wgslsmith_f_op_f32(f32(-1f) * -1427f)), _wgslsmith_f_op_f32(round(895f)), -2310f, _wgslsmith_f_op_f32(-797f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-984f - 326f)))), vec3<bool>(var_0 && var_0, !all(vec2<bool>(true, true)), true | all(vec4<bool>(true, var_0, false, var_0))));
    var var_2 = !(!(!select(select(vec2<bool>(var_1.d.x, var_0), vec2<bool>(var_1.d.x, true), var_1.d.x), var_1.d.yz, -12861i <= var_1.b.a)));
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(2147483647i, _wgslsmith_clamp_i32(u_input.b, -2147483647i, u_input.b)), u_input.c.x);
    var_2 = vec2<bool>(var_2.x, false);
    var_2 = select(var_1.d.xy, !select(select(var_1.d.yz, select(vec2<bool>(true, var_1.d.x), var_1.d.zx, true), true), select(select(vec2<bool>(var_1.d.x, true), vec2<bool>(var_0, var_0), var_1.d.x), !vec2<bool>(var_1.d.x, var_0), select(var_1.d.yz, vec2<bool>(true, var_0), var_2.x)), true), var_1.d.zz);
    let var_4 = abs(max(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)));
    let var_5 = func_4(var_1, Struct_2(_wgslsmith_f_op_f32(var_1.c.x * 792f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) < _wgslsmith_f_op_f32(var_1.c.x - -1790f), func_6(select(~8765i, countOneBits(var_1.b.c), var_0), var_1.b, Struct_3(vec2<f32>(var_1.c.x, -400f), var_1.b, _wgslsmith_f_op_vec4_f32(-var_1.c), !var_1.d)).c, Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, u_input.c.x), 17741i), -565f, 44708i, 1i), any(!(!vec3<bool>(var_2.x, false, var_0)))), i32(-1i) * -var_3.x, var_1.b.b);
    var_2 = select(vec2<bool>(var_1.d.x, true), var_1.d.zx, select(!(!select(var_1.d.zx, vec2<bool>(var_1.d.x, true), var_1.d.yz)), var_1.d.yy, !(u_input.c.x > _wgslsmith_div_i32(var_1.b.c, var_1.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(~countOneBits(vec2<u32>(var_4.x, 4294967295u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(var_1.a.x, -956f)), 597f)), var_1.a), vec4<u32>(29547u, (var_5 | 39958u) << (~0u % 32u), 126174u, ~_wgslsmith_div_u32(1u, var_5)), var_3.x);
}

