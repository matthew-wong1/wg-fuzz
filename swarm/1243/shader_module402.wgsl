struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1475f);
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_2(~_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.b, 0u), vec3<u32>(74259u, 1u, u_input.b)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.b))), Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.a, 19819u, Struct_1(22660u, vec3<f32>(-858f, 1000f, -2273f), vec4<bool>(true, false, false, true)), vec4<i32>(9034i, 19522i, 1i, 740i))), _wgslsmith_f_op_f32(-462f + -1141f), -1425f) - vec3<f32>(_wgslsmith_f_op_f32(step(470f, 1000f)), -911f, _wgslsmith_f_op_f32(-245f * -555f))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1889f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b, 32982u, Struct_1(7449u, vec3<f32>(-1000f, -1000f, -699f), vec4<bool>(true, false, false, false)), vec4<i32>(-2147483647i, -2147483647i, -31878i, 1i))) + 2001f), -1000f), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), Struct_1(~u_input.a, _wgslsmith_div_vec3_f32(vec3<f32>(-981f, -1869f, _wgslsmith_f_op_f32(1064f - 348f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(319f, 1207f, 1277f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1139f, 1522f, -996f) + vec3<f32>(-1000f, 1414f, 205f)))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true))), Struct_1(~22969u, vec3<f32>(1f, 1f, 1f), !vec4<bool>(any(vec4<bool>(false, true, false, true)), true, false, true)));
    var var_1 = u_input.b;
    var_1 = reverseBits(~(47676u << ((_wgslsmith_dot_vec2_u32(var_0.a.xz, var_0.a.yy) << (_wgslsmith_dot_vec3_u32(var_0.a, var_0.a) % 32u)) % 32u)));
    var_1 = var_0.d.a;
    let var_2 = Struct_3(Struct_1(reverseBits(abs(abs(u_input.a))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.d.b + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2444f, -507f, -231f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(247f, -989f, var_0.b.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.b.x, 1106f, var_0.c.x)), select(var_0.e.c.yyw, vec3<bool>(false, var_0.e.c.x, var_0.d.c.x), vec3<bool>(var_0.b.c.x, var_0.d.c.x, true)))))), var_0.b.c), var_0);
    return vec2<i32>(-1i) * -vec2<i32>(39709i, -(~(-1i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_2(~(arg_3.wxx & _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 1u))), Struct_1(~(firstLeadingBit(75959u) & (arg_3.x & arg_2)), arg_1.zyy, vec4<bool>(any(vec4<bool>(true, true, true, true)), select(false, false, select(false, false, true)), ~arg_3.x < 1u, select(true, select(false, true, true), all(vec2<bool>(true, true))))), vec2<f32>(arg_1.x, arg_1.x), Struct_1(arg_2, arg_1.wwx, !vec4<bool>(42506i > arg_0.x, false, true, true)), Struct_1(arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1421f, -1000f, arg_1.x) - vec3<f32>(-1172f, -775f, arg_1.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1618f, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 792f, 293f) - arg_1.xzx), all(vec4<bool>(true, false, true, true))))), vec4<bool>(true, 1u > abs(arg_3.x), false, false)));
    var var_1 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x << (firstTrailingBit(u_input.a) % 32u), _wgslsmith_clamp_i32(2147483647i, 0i, arg_0.x) & -arg_0.x, i32(-1i) * -1i), vec3<i32>(_wgslsmith_add_i32(-arg_0.x, -arg_0.x), ~2147483647i, 13128i));
    let var_2 = Struct_1(0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.e.b + _wgslsmith_div_vec3_f32(arg_1.zxx, var_0.b.b)), vec3<f32>(arg_1.x, var_0.e.b.x, _wgslsmith_f_op_f32(-var_0.b.b.x)), all(select(vec2<bool>(var_0.e.c.x, true), var_0.e.c.yy, var_0.b.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(205f, -1001f, arg_1.x))) * vec3<f32>(-460f, -381f, arg_1.x)) + var_0.e.b)), vec4<bool>(true, true & var_0.b.c.x, false, any(!vec3<bool>(var_0.e.c.x, var_0.e.c.x, true))));
    var var_3 = var_2;
    let var_4 = true;
    return Struct_4(_wgslsmith_sub_vec3_i32(-select(reverseBits(vec3<i32>(39685i, -28513i, 2147483647i)), select(vec3<i32>(1i, var_1.x, 774i), vec3<i32>(-1i, -67049i, 35462i), var_3.c.x), select(var_3.c.xwz, vec3<bool>(var_4, var_3.c.x, false), var_0.d.c.yyx)), vec3<i32>(countOneBits(arg_0.x), arg_0.x, _wgslsmith_clamp_i32(var_1.x, var_1.x, 1i))), ~(~firstLeadingBit(abs(1u))), vec2<bool>((_wgslsmith_f_op_f32(select(arg_1.x, var_0.b.b.x, var_2.c.x)) == _wgslsmith_f_op_f32(sign(-507f))) | var_4, var_2.c.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = arg_2.a.c;
    var var_1 = func_4(-func_2(), vec4<f32>(arg_2.a.b.x, 1888f, 851f, arg_0.c.x), select(3422u, firstTrailingBit(0u), true), ~firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), 31877u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.b.a, arg_2.b.b.a, 4294967295u), vec3<u32>(arg_0.a.x, 1u, 4294967295u)))));
    var var_2 = func_4(~vec2<i32>(abs(var_1.a.x >> (31766u % 32u)), ~_wgslsmith_mod_i32(var_1.a.x, 1i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1115f, arg_0.d.b.x, arg_2.a.b.x, 284f), vec4<f32>(337f, -2189f, 457f, -377f), false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, arg_0.c.x, arg_2.a.b.x, arg_2.a.b.x))))), ~(abs(arg_0.b.a << (arg_0.a.x % 32u)) >> (~(~7781u) % 32u)), abs(reverseBits(~(~vec4<u32>(var_1.b, 36496u, var_1.b, arg_2.a.a)))));
    let var_3 = arg_0.b;
    var_2 = func_4(-firstLeadingBit(select(-var_1.a.zx, arg_1.yz, arg_2.a.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.b.x, -1014f, 1044f, -1091f) + vec4<f32>(-1187f, arg_0.e.b.x, 1245f, -833f)))))), ~(~arg_0.e.a), vec4<u32>(~(~(~var_1.b)), ~_wgslsmith_div_u32(arg_2.a.a, var_1.b), ~(_wgslsmith_clamp_u32(4294967295u, var_3.a, var_3.a) >> (~arg_2.a.a % 32u)), 4294967295u));
    return Struct_2(arg_2.b.a, Struct_1(var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a.b * vec3<f32>(-218f, -524f, -342f)) * vec3<f32>(var_3.b.x, arg_0.b.b.x, var_3.b.x)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1403f, -1055f, var_3.b.x)), vec3<f32>(arg_0.d.b.x, 435f, var_3.b.x)))), select(!vec4<bool>(true, var_3.c.x, arg_2.b.e.c.x, false), !select(arg_0.e.c, var_3.c, true), select(select(arg_2.b.d.c, arg_2.a.c, var_3.c.x), select(var_0, arg_2.a.c, true), u_input.a > 0u))), _wgslsmith_f_op_vec2_f32(-arg_0.c), arg_2.a, arg_2.a);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(-2147483647i, arg_0.a.x), _wgslsmith_mult_i32(-arg_3, arg_3), ~abs(func_2().x));
    var var_1 = arg_0.c.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * _wgslsmith_f_op_f32(func_3(0u, arg_0.b, Struct_1(78369u, arg_1.e.b, vec4<bool>(arg_1.b.c.x, arg_1.d.c.x, arg_0.c.x, true)), vec4<i32>(arg_3, var_0.x, -26201i, 0i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(169f, arg_1.d.b.x))))))), -1218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-983f * _wgslsmith_f_op_f32(round(-1000f))) - _wgslsmith_f_op_f32(-853f - _wgslsmith_f_op_f32(f32(-1f) * -103f)))));
    return func_1(func_1(arg_1, vec3<i32>(var_0.x, -1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-26771i, 2147483647i), vec2<i32>(arg_0.a.x, 0i)), _wgslsmith_div_i32(-23161i, var_0.x))), Struct_3(func_1(Struct_2(arg_1.a, arg_1.e, var_2.yz, Struct_1(21646u, arg_1.e.b, arg_1.b.c), Struct_1(4294967295u, vec3<f32>(1380f, 507f, arg_1.d.b.x), arg_1.b.c)), vec3<i32>(arg_0.a.x, -41035i, var_0.x), Struct_3(arg_1.d, Struct_2(arg_1.a, Struct_1(34322u, arg_1.d.b, vec4<bool>(arg_1.e.c.x, arg_1.b.c.x, arg_0.c.x, arg_0.c.x)), var_2.xz, arg_1.e, arg_1.b)), arg_2.x || arg_2.x).b, Struct_2(vec3<u32>(arg_1.a.x, u_input.b, 0u), arg_1.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, 646f)), func_1(Struct_2(arg_1.a, arg_1.b, vec2<f32>(var_2.x, 103f), arg_1.e, Struct_1(arg_0.b, arg_1.d.b, vec4<bool>(arg_1.b.c.x, false, arg_1.e.c.x, arg_1.e.c.x))), vec3<i32>(0i, 0i, 2147483647i), Struct_3(Struct_1(0u, arg_1.e.b, vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, true)), Struct_2(vec3<u32>(0u, 46685u, u_input.b), arg_1.e, var_2.yy, arg_1.d, arg_1.b)), false).e, arg_1.e)), select(arg_1.d.c.x, !(!arg_0.c.x), arg_0.c.x & (arg_1.e.b.x <= 1414f))), -(-(vec3<i32>(19198i, arg_3, arg_3) ^ var_0) >> ((~arg_1.a << (~vec3<u32>(u_input.b, arg_0.b, 45932u) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_3(arg_1.d, arg_1), any(vec3<bool>(all(!arg_1.e.c), !(arg_0.a.x >= -65997i), (arg_0.b != 1u) | !arg_0.c.x))).e;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_i32(-2147483647i, -1i);
    var var_1 = Struct_4(max(select(func_4(vec2<i32>(var_0, var_0), vec4<f32>(-1563f, arg_1.b.x, -417f, -1644f), arg_1.a, vec4<u32>(arg_1.a, 1u, 47160u, 0u)).a | firstLeadingBit(vec3<i32>(4824i, 4237i, -1i)), ~(-vec3<i32>(-44412i, var_0, 41284i)), arg_0.c.zyx), -abs(vec3<i32>(var_0, 1i, var_0))), _wgslsmith_sub_u32(firstTrailingBit(4294967295u), u_input.b), vec2<bool>(true, false));
    var var_2 = arg_1.b.x;
    var_2 = arg_1.b.x;
    var var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(7518u, _wgslsmith_mult_u32(firstTrailingBit(var_1.b), ~70660u)), vec2<u32>(~1u, 20785u) & abs(max(vec2<u32>(1900u, 66759u), ~vec2<u32>(u_input.a, u_input.a))));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -21928i;
    var_0 = _wgslsmith_dot_vec3_i32(-(~vec3<i32>(1i, 1i, 1i)), vec3<i32>(_wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(-2147483647i, 31568i)), vec2<i32>(1i, ~1i)), -3276i, _wgslsmith_add_i32(-15855i, 1i)));
    var_0 = max(-(i32(-1i) * -54594i), ~abs(-50596i));
    var var_1 = vec4<bool>(true, all(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), func_6(Struct_1(~u_input.a >> (4294967295u % 32u), vec3<f32>(_wgslsmith_f_op_f32(min(939f, -1321f)), _wgslsmith_f_op_f32(ceil(1111f)), -1895f), vec4<bool>(true, true, true, all(vec2<bool>(true, false)))), func_5(Struct_4(vec3<i32>(1i, 1i, 1i), 4294967295u, vec2<bool>(true, true)), func_1(Struct_2(vec3<u32>(39841u, u_input.a, 0u), Struct_1(u_input.b, vec3<f32>(218f, 1462f, 1000f), vec4<bool>(true, false, true, true)), vec2<f32>(-604f, -1177f), Struct_1(u_input.a, vec3<f32>(-1923f, -210f, -2048f), vec4<bool>(true, false, false, true)), Struct_1(u_input.b, vec3<f32>(1114f, -1405f, 294f), vec4<bool>(false, false, true, true))), vec3<i32>(2147483647i, -1i, 0i), Struct_3(Struct_1(12567u, vec3<f32>(-1022f, 161f, 601f), vec4<bool>(true, true, true, true)), Struct_2(vec3<u32>(23316u, 1u, u_input.b), Struct_1(32527u, vec3<f32>(-1154f, 900f, 217f), vec4<bool>(true, true, true, false)), vec2<f32>(-1245f, -742f), Struct_1(1u, vec3<f32>(1098f, -1774f, -1985f), vec4<bool>(false, true, false, true)), Struct_1(u_input.a, vec3<f32>(935f, -722f, 2072f), vec4<bool>(false, true, false, true)))), true), vec3<bool>(true, true, false), -func_2().x)), false);
    var_0 = 0i;
    var var_2 = func_1(func_1(Struct_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(44805u, 0u, 14934u), vec3<u32>(4294967295u, u_input.a, u_input.a)), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-558f, 2129f, 492f) + vec3<f32>(741f, 340f, -289f)), !vec4<bool>(false, false, var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2006f, -453f)), Struct_1(~u_input.b, vec3<f32>(646f, 1670f, 339f), vec4<bool>(true, true, var_1.x, true)), func_1(func_1(Struct_2(vec3<u32>(u_input.a, u_input.b, 41413u), Struct_1(0u, vec3<f32>(-460f, 1111f, -334f), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), vec2<f32>(-927f, 1064f), Struct_1(4598u, vec3<f32>(327f, -174f, -317f), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), Struct_1(1511u, vec3<f32>(216f, 110f, 1279f), vec4<bool>(var_1.x, true, var_1.x, var_1.x))), vec3<i32>(-1i, 60169i, 2147483647i), Struct_3(Struct_1(u_input.a, vec3<f32>(191f, -194f, 1016f), vec4<bool>(true, true, true, var_1.x)), Struct_2(vec3<u32>(u_input.a, 0u, u_input.b), Struct_1(u_input.a, vec3<f32>(-852f, 718f, -1007f), vec4<bool>(true, var_1.x, true, true)), vec2<f32>(-923f, 1000f), Struct_1(0u, vec3<f32>(-1000f, -1848f, -1563f), vec4<bool>(false, var_1.x, true, true)), Struct_1(u_input.a, vec3<f32>(-1038f, -870f, -1452f), vec4<bool>(var_1.x, false, var_1.x, true)))), var_1.x), firstTrailingBit(vec3<i32>(1i, -2147483647i, 14984i)), Struct_3(Struct_1(u_input.b, vec3<f32>(-1557f, 1000f, 222f), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), Struct_2(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(0u, vec3<f32>(-640f, 722f, 373f), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), vec2<f32>(1481f, 1042f), Struct_1(u_input.b, vec3<f32>(-1080f, 1435f, -297f), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), Struct_1(u_input.b, vec3<f32>(-575f, -1000f, -338f), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), true).e), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 1i, -1i)), vec3<i32>(0i, -45552i, 1149i), -vec3<i32>(1i, 42718i, -1931i)) ^ vec3<i32>(0i, 27893i, ~(-33825i)), Struct_3(Struct_1(firstLeadingBit(u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(609f, 629f, 1000f)), !vec4<bool>(false, var_1.x, var_1.x, var_1.x)), Struct_2(vec3<u32>(29180u, u_input.b, u_input.b) & vec3<u32>(u_input.a, u_input.a, 4294967295u), func_1(Struct_2(vec3<u32>(32620u, u_input.b, 17630u), Struct_1(4294967295u, vec3<f32>(-429f, -505f, -814f), vec4<bool>(false, false, var_1.x, false)), vec2<f32>(-562f, -1480f), Struct_1(0u, vec3<f32>(1161f, -178f, 2713f), vec4<bool>(false, false, false, true)), Struct_1(27474u, vec3<f32>(165f, -1689f, -429f), vec4<bool>(var_1.x, var_1.x, true, var_1.x))), vec3<i32>(-2147483647i, -7490i, -2147483647i), Struct_3(Struct_1(0u, vec3<f32>(-729f, -716f, -1000f), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), Struct_2(vec3<u32>(36057u, u_input.b, u_input.a), Struct_1(1u, vec3<f32>(484f, -1000f, 160f), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec2<f32>(1539f, -784f), Struct_1(u_input.b, vec3<f32>(160f, -266f, -1000f), vec4<bool>(var_1.x, false, var_1.x, false)), Struct_1(16482u, vec3<f32>(-370f, 1203f, -1002f), vec4<bool>(var_1.x, false, false, var_1.x)))), var_1.x).d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, 579f)), Struct_1(u_input.a, vec3<f32>(-899f, 552f, 291f), vec4<bool>(false, var_1.x, true, var_1.x)), Struct_1(4294967295u, vec3<f32>(-888f, 657f, -1378f), vec4<bool>(true, var_1.x, false, var_1.x)))), func_6(Struct_1(1u, vec3<f32>(-1834f, 566f, -897f), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x), false)), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-431f, 1000f, 756f) + vec3<f32>(-1126f, -986f, 1325f)), func_5(Struct_4(vec3<i32>(0i, 37464i, -46512i), 1u, vec2<bool>(false, false)), Struct_2(vec3<u32>(u_input.a, 4294967295u, 4294967295u), Struct_1(12384u, vec3<f32>(-1447f, 407f, 804f), vec4<bool>(var_1.x, true, true, var_1.x)), vec2<f32>(-335f, 725f), Struct_1(u_input.b, vec3<f32>(-341f, 740f, -1540f), vec4<bool>(var_1.x, true, true, true)), Struct_1(u_input.b, vec3<f32>(-474f, 899f, -1630f), vec4<bool>(true, false, var_1.x, var_1.x))), var_1.xyx, 0i).c))), _wgslsmith_div_vec3_i32(-func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(20365i, 17906i), vec2<i32>(18942i, -45990i), vec2<i32>(12133i, 1i)), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 39786u, u_input.a), vec3<u32>(u_input.b, 0u, 77757u)), select(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a), vec4<u32>(u_input.a, 56257u, 5299u, 16979u), true)).a, vec3<i32>(6315i, 1i, ~(~18204i))), Struct_3(func_1(func_1(Struct_2(vec3<u32>(21602u, u_input.b, 38200u), Struct_1(0u, vec3<f32>(388f, 1000f, -1000f), vec4<bool>(false, var_1.x, true, var_1.x)), vec2<f32>(-1209f, 869f), Struct_1(1u, vec3<f32>(-1469f, -1144f, -326f), vec4<bool>(false, false, var_1.x, var_1.x)), Struct_1(35943u, vec3<f32>(1559f, 1411f, -534f), vec4<bool>(true, false, var_1.x, true))), ~vec3<i32>(24289i, 2147483647i, -9395i), Struct_3(Struct_1(16898u, vec3<f32>(-313f, -541f, -1000f), vec4<bool>(var_1.x, false, false, var_1.x)), Struct_2(vec3<u32>(46290u, 4294967295u, u_input.a), Struct_1(u_input.a, vec3<f32>(-2507f, 387f, -525f), vec4<bool>(var_1.x, true, true, var_1.x)), vec2<f32>(-1194f, -202f), Struct_1(u_input.b, vec3<f32>(939f, 1398f, -525f), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), Struct_1(28181u, vec3<f32>(-457f, 688f, -1327f), vec4<bool>(var_1.x, false, var_1.x, var_1.x)))), select(true, false, true)), ~vec3<i32>(-2147483647i, -26467i, 2147483647i), Struct_3(Struct_1(4294967295u, vec3<f32>(649f, -1047f, 1264f), vec4<bool>(true, false, var_1.x, var_1.x)), Struct_2(vec3<u32>(u_input.b, 1u, 1u), Struct_1(1331u, vec3<f32>(-484f, -648f, -669f), vec4<bool>(false, var_1.x, true, var_1.x)), vec2<f32>(-201f, -835f), Struct_1(u_input.a, vec3<f32>(1000f, 1513f, 1000f), vec4<bool>(true, true, var_1.x, false)), Struct_1(1u, vec3<f32>(-207f, -2776f, -370f), vec4<bool>(true, true, var_1.x, false)))), true).d, func_1(Struct_2(vec3<u32>(31554u, u_input.a, u_input.a), func_1(Struct_2(vec3<u32>(4294967295u, 1268u, u_input.a), Struct_1(29232u, vec3<f32>(933f, -200f, 428f), vec4<bool>(true, var_1.x, true, var_1.x)), vec2<f32>(1599f, 1338f), Struct_1(0u, vec3<f32>(-2106f, 179f, 994f), vec4<bool>(false, var_1.x, true, false)), Struct_1(26452u, vec3<f32>(148f, -1342f, -147f), vec4<bool>(var_1.x, var_1.x, false, var_1.x))), vec3<i32>(-26544i, 0i, 0i), Struct_3(Struct_1(u_input.a, vec3<f32>(136f, 1207f, 1000f), vec4<bool>(true, false, var_1.x, false)), Struct_2(vec3<u32>(1u, u_input.b, u_input.b), Struct_1(u_input.b, vec3<f32>(298f, -893f, -212f), vec4<bool>(false, var_1.x, var_1.x, true)), vec2<f32>(-2201f, 181f), Struct_1(45304u, vec3<f32>(-203f, -317f, 789f), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), Struct_1(4294967295u, vec3<f32>(455f, 472f, -623f), vec4<bool>(false, true, false, var_1.x)))), var_1.x).b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-396f, 2447f) - vec2<f32>(-661f, -2225f)), Struct_1(0u, vec3<f32>(-548f, 925f, 272f), vec4<bool>(var_1.x, var_1.x, false, true)), Struct_1(u_input.a, vec3<f32>(524f, 1385f, 531f), vec4<bool>(var_1.x, true, var_1.x, var_1.x))), firstLeadingBit(~vec3<i32>(20818i, -9147i, -2147483647i)), Struct_3(func_1(Struct_2(vec3<u32>(17050u, u_input.a, 0u), Struct_1(u_input.b, vec3<f32>(-328f, -790f, -534f), vec4<bool>(false, var_1.x, false, var_1.x)), vec2<f32>(191f, -1098f), Struct_1(u_input.a, vec3<f32>(-1805f, -704f, 1000f), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), Struct_1(u_input.b, vec3<f32>(-1084f, 1254f, 480f), vec4<bool>(false, var_1.x, true, var_1.x))), vec3<i32>(-21945i, -6619i, -23740i), Struct_3(Struct_1(0u, vec3<f32>(446f, -994f, -1923f), vec4<bool>(true, true, false, var_1.x)), Struct_2(vec3<u32>(1u, u_input.a, 1u), Struct_1(u_input.a, vec3<f32>(170f, -1269f, 979f), vec4<bool>(var_1.x, true, var_1.x, true)), vec2<f32>(673f, 855f), Struct_1(4294967295u, vec3<f32>(541f, 1014f, 1581f), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), Struct_1(u_input.b, vec3<f32>(-165f, 1011f, -983f), vec4<bool>(true, false, true, true)))), var_1.x).e, func_1(Struct_2(vec3<u32>(1u, 0u, 0u), Struct_1(62774u, vec3<f32>(-1162f, 195f, -1427f), vec4<bool>(var_1.x, false, var_1.x, true)), vec2<f32>(836f, 613f), Struct_1(29681u, vec3<f32>(-143f, 2109f, 386f), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), Struct_1(73264u, vec3<f32>(458f, 948f, 164f), vec4<bool>(true, true, true, var_1.x))), vec3<i32>(5686i, 4808i, -2147483647i), Struct_3(Struct_1(4294967295u, vec3<f32>(-144f, -1000f, -1000f), vec4<bool>(true, false, true, var_1.x)), Struct_2(vec3<u32>(u_input.a, u_input.b, u_input.a), Struct_1(4294967295u, vec3<f32>(-915f, -721f, 606f), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec2<f32>(-315f, 289f), Struct_1(u_input.b, vec3<f32>(-336f, -210f, -248f), vec4<bool>(true, var_1.x, var_1.x, false)), Struct_1(u_input.a, vec3<f32>(553f, 1549f, -912f), vec4<bool>(true, false, false, false)))), var_1.x)), var_1.x)), var_1.x);
    let var_3 = vec2<u32>(1343u, var_2.e.a);
    let var_4 = vec3<i32>(-77554i, -1i, 22662i);
    var var_5 = Struct_4(vec3<i32>(~firstTrailingBit(-48841i), 0i, func_4(min(var_4.zy, var_4.yx), vec4<f32>(_wgslsmith_f_op_f32(978f + var_2.d.b.x), _wgslsmith_f_op_f32(abs(var_2.e.b.x)), _wgslsmith_f_op_f32(var_2.d.b.x + 328f), 2133f), (11627u << (var_3.x % 32u)) ^ _wgslsmith_sub_u32(var_3.x, 1u), ~(~vec4<u32>(var_2.e.a, u_input.b, 4294967295u, 4294967295u))).a.x), u_input.b, vec2<bool>(var_1.x && !any(var_2.e.c), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.c.x));
}

