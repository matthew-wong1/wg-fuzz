struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_i32(countOneBits(i32(-1i) * -76960i) | min(max(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(24039i, -58349i, 1i), vec3<i32>(0i, 39187i, 64206i))), reverseBits(firstLeadingBit(-16307i))), firstLeadingBit(reverseBits(i32(-1i) * -31153i)) << (firstTrailingBit(0u) % 32u));
    var_0 = 11499i;
    let var_1 = Struct_1(firstLeadingBit(arg_1.a), select(arg_1.b, arg_1.b, vec3<bool>(false, any(vec4<bool>(arg_1.e, true, false, false)), all(select(vec3<bool>(arg_1.e, arg_1.e, arg_1.e), vec3<bool>(true, false, false), arg_1.e)))), 0u, -631f, true);
    var_0 = (~_wgslsmith_dot_vec2_i32(~vec2<i32>(-36747i, 1i), abs(vec2<i32>(0i, 0i))) ^ abs(2147483647i)) << (var_1.a.x % 32u);
    var var_2 = _wgslsmith_add_i32(-60212i, -1i);
    return _wgslsmith_f_op_f32(f32(-1f) * -861f);
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = countOneBits(max(~(~vec4<u32>(u_input.a.x, 32010u, u_input.a.x, 44072u)), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~u_input.a.x, 35985u))) & ~vec4<u32>(30313u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a), u_input.a.x, ~(~u_input.a.x));
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 87580u), vec2<u32>(var_0.x, u_input.a.x))), u_input.a), max(~_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(13544u, var_0.x, 0u)), vec3<u32>(var_0.x, var_0.x, 10009u) ^ vec3<u32>(1u, 81369u, var_0.x)), select(var_0.wyw, vec3<u32>(19487u, 21331u, u_input.a.x) & vec3<u32>(u_input.a.x, 0u, u_input.a.x), true) >> (vec3<u32>(u_input.a.x, var_0.x, var_0.x & 0u) % vec3<u32>(32u))), 1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1727f), arg_0) * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_1(vec2<u32>(var_0.x, 1u), vec3<u32>(u_input.a.x, 33047u, var_0.x), 4294967295u, arg_0, true))) - _wgslsmith_f_op_f32(1319f + -961f)))), any(vec2<bool>(false, true)));
    var var_2 = Struct_1(vec2<u32>(~0u, firstTrailingBit(u_input.a.x)), var_0.yxz, 0u, arg_0, true);
    var var_3 = Struct_1(vec2<u32>(4294967295u, ~34029u), var_0.zzx & var_2.b, u_input.a.x, _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(trunc(var_2.d))), true);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.d * var_1.d), _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-var_3.d)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(764f, arg_0, -2684f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(669f, var_1.d, var_2.d)))) + vec3<f32>(_wgslsmith_f_op_f32(arg_0 - 1001f), _wgslsmith_f_op_f32(min(arg_0, arg_0)), _wgslsmith_f_op_f32(floor(var_1.d)))))));
    return -830f;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_1(vec2<u32>(countOneBits(arg_3), arg_2.x), ~abs(~min(arg_2, vec3<u32>(16041u, arg_3, arg_2.x))), arg_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(-2126f)))), true);
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, _wgslsmith_sub_i32(arg_0, firstTrailingBit(arg_0)), arg_0 & reverseBits(arg_0), (i32(-1i) * -1i) << (_wgslsmith_add_u32(u_input.a.x, arg_2.x) % 32u)), vec4<i32>(reverseBits(firstTrailingBit(arg_0)), -31521i, -(i32(-1i) * -15565i), (0i & arg_0) << (abs(12508u) % 32u))), arg_0);
    var var_2 = select(vec3<bool>(var_0.e, var_0.e != !all(vec4<bool>(arg_1.x, false, false, false)), arg_1.x), vec3<bool>(any(select(arg_1, select(arg_1, vec3<bool>(var_0.e, arg_1.x, arg_1.x), arg_1), !arg_1)), !select(true | var_0.e, true, var_0.e), true), true);
    var_2 = vec3<bool>(arg_1.x, true, arg_1.x || true);
    let var_3 = 4294967295u;
    return Struct_2(var_2.xz);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = -_wgslsmith_add_vec3_i32(-_wgslsmith_mult_vec3_i32(select(vec3<i32>(-12960i, -32084i, -251i), vec3<i32>(-38442i, -89040i, -1i), vec3<bool>(false, false, true)), select(vec3<i32>(-21390i, arg_2, arg_2), vec3<i32>(1i, arg_2, -11186i), false)), vec3<i32>(arg_2, 0i >> (firstTrailingBit(u_input.a.x) % 32u), arg_2));
    var var_1 = ~(~(~_wgslsmith_mod_u32(45574u, arg_0.x)));
    var var_2 = Struct_1(~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 0u), arg_0.zy >> (arg_1.yy % vec2<u32>(32u)))), ~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, 20487u, 0u)), vec3<u32>(0u, _wgslsmith_mult_u32(u_input.a.x, arg_1.x), min(1u, u_input.a.x))), arg_0.x, 377f, arg_3.a.x);
    var_2 = Struct_1(u_input.a, _wgslsmith_div_vec3_u32(min(arg_1, ~vec3<u32>(arg_0.x, 0u, 1u)), ~select(arg_0.yyx, vec3<u32>(u_input.a.x, var_2.b.x, var_2.c), any(vec2<bool>(false, false)))), ~((1025u & (var_2.c << (arg_0.x % 32u))) >> (u_input.a.x % 32u)), _wgslsmith_f_op_f32(func_2(-489f)), !(!(!(var_2.e || var_2.e))));
    var_1 = ~((arg_0.x ^ 3258u) & abs(~_wgslsmith_clamp_u32(arg_1.x, 82623u, var_2.c)));
    return Struct_1(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(~arg_0.x, u_input.a.x)), _wgslsmith_sub_vec2_u32(~arg_1.yz >> (vec2<u32>(u_input.a.x, arg_1.x) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(arg_0.xz, vec2<u32>(26129u, 0u), var_2.b.yx))), countOneBits(vec3<u32>(0u, ~select(26482u, u_input.a.x, var_2.e), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 62219u, 4294967295u), arg_1)))), ~(~max(_wgslsmith_dot_vec4_u32(arg_0, arg_0), arg_0.x)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1000f + var_2.d))), !(!select(any(vec3<bool>(var_2.e, arg_3.a.x, false)), arg_3.a.x, var_2.e)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0.d, -1427f)), func_4(arg_2, vec3<u32>(32751u, arg_2.x, u_input.a.x), 0i, Struct_2(vec2<bool>(arg_0.e, arg_0.e))).d)) * _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(-arg_0.d))) - -606f), 1298f);
    let var_1 = abs(i32(-1i) * -_wgslsmith_add_i32(i32(-1i) * -19928i, _wgslsmith_mod_i32(43199i, 683i)));
    var var_2 = func_1(~_wgslsmith_mult_i32(~_wgslsmith_mod_i32(2147483647i, var_1), -_wgslsmith_add_i32(0i, arg_1.x)), vec3<bool>(false, all(select(func_1(var_1, vec3<bool>(false, true, arg_0.e), arg_0.b, arg_2.x).a, func_1(arg_1.x, vec3<bool>(arg_0.e, false, arg_0.e), vec3<u32>(4294967295u, u_input.a.x, arg_2.x), u_input.a.x).a, vec2<bool>(true, false))), ~4294967295u == ~min(17903u, u_input.a.x)), _wgslsmith_sub_vec3_u32(firstLeadingBit(arg_2.ywy), vec3<u32>(u_input.a.x, ~arg_0.a.x, _wgslsmith_mult_u32(44715u, u_input.a.x)) & ~vec3<u32>(70991u, arg_2.x, 48633u)), arg_2.x);
    var_2 = func_1(860i, !vec3<bool>(false, -arg_1.x >= -39134i, all(vec3<bool>(arg_0.e, var_2.a.x, var_2.a.x))), vec3<u32>(firstLeadingBit(11081u), 0u, arg_2.x), ~u_input.a.x);
    var_2 = Struct_2(var_2.a);
    return func_4(select(arg_2 & (vec4<u32>(arg_0.a.x, arg_0.c, 14690u, u_input.a.x) ^ vec4<u32>(arg_2.x, u_input.a.x, 1u, arg_2.x)), arg_2, !vec4<bool>(var_2.a.x, var_2.a.x, arg_0.e, var_2.a.x)) ^ _wgslsmith_mult_vec4_u32(~arg_2, _wgslsmith_clamp_vec4_u32(arg_2, arg_2 ^ vec4<u32>(65819u, arg_2.x, 1u, u_input.a.x), vec4<u32>(arg_0.c, 41754u, 104718u, u_input.a.x) >> (vec4<u32>(arg_2.x, arg_2.x, 1u, arg_0.b.x) % vec4<u32>(32u)))), select(arg_2.xwz, vec3<u32>(1u ^ _wgslsmith_div_u32(arg_0.b.x, 142679u), 17772u, func_4(arg_2, vec3<u32>(arg_0.a.x, 1u, arg_0.a.x), abs(-48367i), func_1(-1i, vec3<bool>(var_2.a.x, arg_0.e, var_2.a.x), arg_0.b, 0u)).c), select(!(!vec3<bool>(true, var_2.a.x, var_2.a.x)), vec3<bool>(false, var_2.a.x & var_2.a.x, false), select(select(vec3<bool>(arg_0.e, arg_0.e, false), vec3<bool>(true, var_2.a.x, arg_0.e), vec3<bool>(var_2.a.x, false, true)), !vec3<bool>(arg_0.e, var_2.a.x, true), select(vec3<bool>(var_2.a.x, true, true), vec3<bool>(arg_0.e, false, false), arg_0.e)))), -2147483647i, func_1(-24321i, select(vec3<bool>(true, true, true), vec3<bool>(false, func_4(vec4<u32>(arg_0.b.x, arg_2.x, 81347u, 0u), vec3<u32>(0u, 14756u, u_input.a.x), 1i, Struct_2(vec2<bool>(true, true))).e, var_2.a.x), func_4(~vec4<u32>(arg_2.x, u_input.a.x, arg_2.x, 4294967295u), ~arg_2.wwx, var_1, Struct_2(var_2.a)).e), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.b, vec3<u32>(4294967295u, 64403u, arg_2.x)), vec3<u32>(58993u, 429u, u_input.a.x)), ~23025u, arg_0.c), _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), _wgslsmith_div_u32(arg_0.b.x, arg_2.x)))).b.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(~u_input.a, func_5(func_4(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 60411u), select(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, false, false)), i32(-1i) * -2147483647i, func_1(-16788i, vec3<bool>(true, false, true), vec3<u32>(1u, u_input.a.x, 13867u), 1u)), ~vec2<i32>(1i, 1i), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 10973u, 0u, u_input.a.x), vec4<u32>(13617u, 0u, 20836u, u_input.a.x) | vec4<u32>(u_input.a.x, 210u, 57468u, 804u)))), vec3<u32>(~13760u, u_input.a.x, firstTrailingBit(~firstTrailingBit(1u))), func_4(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 4766u, u_input.a.x), ~vec4<u32>(4294967295u, 68131u, 34368u, 48272u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 69282u) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~vec3<u32>(68975u, 4294967295u, 39970u), ~max(vec3<u32>(1u, 7135u, 1u), vec3<u32>(26970u, 42536u, 4294967295u))), reverseBits(~2147483647i), func_1(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(-20539i, -7014i)), vec3<bool>(true, true, true), _wgslsmith_add_vec3_u32(vec3<u32>(32105u, 24045u, 76030u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 1753u), vec3<u32>(u_input.a.x, 22959u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), (u_input.a.x & u_input.a.x) >> (_wgslsmith_sub_u32(97937u, u_input.a.x) % 32u))).b.x, _wgslsmith_f_op_f32(-func_4(vec4<u32>(u_input.a.x, ~33315u, abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<u32>(max(42214u, 0u), u_input.a.x, ~u_input.a.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(6594i, -21024i), 1i), func_1(~(-27060i), vec3<bool>(false, true, false), ~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), ~u_input.a.x)).d), true);
    let var_1 = Struct_2(vec2<bool>(!any(vec4<bool>(var_0.e, var_0.e, false, var_0.e)), any(select(select(vec3<bool>(true, false, var_0.e), vec3<bool>(false, var_0.e, var_0.e), var_0.e), !vec3<bool>(false, var_0.e, var_0.e), !var_0.e))));
    var var_2 = var_1;
    var_2 = Struct_2(!select(var_1.a, func_1(_wgslsmith_div_i32(-11914i, -2412i), select(vec3<bool>(var_1.a.x, true, var_1.a.x), vec3<bool>(false, var_2.a.x, var_1.a.x), vec3<bool>(false, var_1.a.x, true)), vec3<u32>(u_input.a.x, 37777u, 80982u), firstLeadingBit(0u)).a, func_1(~0i, vec3<bool>(var_1.a.x, true, true), var_0.b | var_0.b, ~59717u).a));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(1i ^ firstTrailingBit(7178i), -2147483647i));
}

