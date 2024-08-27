struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    var var_0 = 1f;
    let var_1 = Struct_3(Struct_1(~(~vec4<u32>(0u, 23936u, arg_0.x, 19488u)), u_input.e.x, 1f, 5105i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2234f)) * _wgslsmith_f_op_f32(floor(532f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1123f + 514f))), select(!(!vec3<bool>(arg_1, arg_1, true)), vec3<bool>(select(arg_1, any(vec3<bool>(arg_1, true, arg_1)), any(vec4<bool>(arg_1, arg_1, true, arg_1))), false, true), select(!select(vec3<bool>(false, false, false), vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, true)), !vec3<bool>(false, arg_1, false), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, true, true), arg_1))), Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1196f, -697f) + vec3<f32>(2450f, 794f, 116f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2123f, -408f, 277f), vec3<f32>(463f, 692f, 1407f))), vec3<f32>(-321f, 330f, -1074f)))), Struct_1(firstLeadingBit(abs(_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(u_input.a.x, 45788u, 1u, u_input.d)))), ~(-31871i >> (~arg_0.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f) + -745f) - _wgslsmith_f_op_f32(sign(285f))), -53404i, 617f));
    var var_2 = (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.e * var_1.b))) >= -330f) && arg_1;
    var var_3 = (_wgslsmith_div_i32(u_input.c.x, 41842i) > -u_input.e.x) | arg_1;
    var_3 = all(var_1.c);
    return _wgslsmith_div_f32(var_1.b, -831f);
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_4, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = Struct_1(arg_2.e.a.a, -(arg_2.e.a.b ^ -arg_2.e.a.d), arg_2.e.a.e, min(-firstTrailingBit(-17800i), abs(37953i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1262f * -1047f) + -498f), arg_2.c, !arg_1)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), -293f, -691f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1388f))))))));
    let var_2 = ~(~(~vec2<u32>(13042u, 6899u)));
    var var_3 = select(true, !any(!(!vec4<bool>(arg_2.a.x, false, arg_2.a.x, false))), !arg_1);
    var_3 = !(!arg_1);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1934f - arg_2.d), 602f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) - _wgslsmith_f_op_f32(f32(-1f) * -1732f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - arg_3.x)))));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_5(arg_1, min(_wgslsmith_sub_u32(72704u | u_input.d, abs(u_input.d)), 1u)), false, arg_1, vec2<f32>(_wgslsmith_f_op_f32(func_3(abs(arg_1.e.e.a), true)), -986f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-131f, -1538f, 509f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1131f, var_0.x, var_0.x)), select(vec4<bool>(arg_1.e.c.x, arg_2.x, arg_0, true), vec4<bool>(true, arg_2.x, true, arg_1.e.d.a), vec4<bool>(arg_2.x, false, false, false)))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 213f, arg_1.b, -1616f), vec4<f32>(arg_1.e.a.e, -413f, var_1.x, var_0.x), vec4<bool>(arg_2.x, arg_2.x, arg_1.a.x, arg_2.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1000f, -830f)))))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_1.x), false))), var_1.x, arg_1.b));
    var var_2 = min(vec4<i32>(arg_1.e.a.b << (arg_1.e.a.a.x % 32u), u_input.c.x, -u_input.e.x, max(-u_input.e.x, u_input.e.x)), _wgslsmith_mod_vec4_i32(u_input.e | (vec4<i32>(arg_1.e.a.d, u_input.c.x, 18917i, 1i) | u_input.e), -(~u_input.c >> (arg_1.e.a.a % vec4<u32>(32u)))));
    var var_3 = arg_1.e.a.a.yx << (vec2<u32>(~arg_1.e.e.a.x, 9327u) % vec2<u32>(32u));
    return u_input.b.x << (_wgslsmith_add_u32(~29363u, var_3.x) % 32u);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = Struct_3(Struct_1(vec4<u32>(min(u_input.d | arg_1, 17872u), 1794u, _wgslsmith_sub_u32(~1u, 0u), u_input.d), u_input.e.x << (1u % 32u), _wgslsmith_f_op_f32(-303f * 1047f), -1i ^ ~(~u_input.e.x), _wgslsmith_f_op_f32(-2385f + 1821f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))), !vec3<bool>(arg_3, false, !arg_3), Struct_2(-1260f == arg_2, vec3<f32>(-210f, -126f, arg_2)), Struct_1(vec4<u32>(~20772u, 23425u << ((arg_1 << (u_input.a.x % 32u)) % 32u), abs(max(4294967295u, u_input.b.x)), ~_wgslsmith_mod_u32(u_input.d, u_input.b.x)), _wgslsmith_div_i32(-_wgslsmith_add_i32(u_input.e.x, 2147483647i), 5156i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(815f * -734f) + -1821f), arg_2), min(~(-1i), u_input.e.x) & u_input.e.x, _wgslsmith_f_op_f32(ceil(151f))));
    var var_1 = 31932i;
    let var_2 = var_0.a;
    let var_3 = ~reverseBits(4294967295u);
    var_0 = Struct_3(Struct_1(countOneBits(vec4<u32>(~arg_1, var_0.a.a.x, var_3, 0u)), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -37284i, 27053i, ~635i), u_input.e.zwy), 1003f, max(u_input.e.x, abs(-29438i)), 1382f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -739f))), select(select(!var_0.c, select(select(vec3<bool>(arg_3, arg_0, false), var_0.c, vec3<bool>(true, true, arg_0)), select(var_0.c, vec3<bool>(arg_3, true, false), vec3<bool>(true, var_0.c.x, arg_3)), var_0.c), vec3<bool>(all(var_0.c.zy), select(arg_0, true, true), true)), !vec3<bool>(true, arg_3 != arg_0, !arg_3), !all(vec2<bool>(false, false))), Struct_2(60206i < _wgslsmith_mod_i32(countOneBits(1i), _wgslsmith_add_i32(u_input.e.x, -14590i)), _wgslsmith_f_op_vec3_f32(var_0.d.b * var_0.d.b)), var_0.a);
    return var_2.a.x;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_3, arg_3: f32) -> vec3<f32> {
    var var_0 = ~func_5(arg_2.d.a, select(arg_0.a.e.e.a.x, func_2(true, arg_1, vec2<bool>(arg_2.d.a, false)), arg_1.a.x), -992f, arg_0.a.a.x);
    let var_1 = ~vec3<u32>(_wgslsmith_add_u32(arg_2.a.a.x, 1u) | ~4294967295u, abs(~_wgslsmith_sub_u32(25834u, u_input.a.x)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(34696u, 17710u, 9973u, arg_1.e.a.a.x) & arg_1.e.e.a), ~(~vec4<u32>(arg_2.a.a.x, 4294967295u, arg_2.e.a.x, u_input.b.x))));
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(arg_0, true, arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_2.d.b.zz))))).x));
    var_0 = ~1u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.e.d.b));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = u_input.c.x;
    let var_1 = Struct_3(Struct_1((arg_3 >> (vec4<u32>(arg_2.x, arg_2.x, 0u, u_input.a.x) % vec4<u32>(32u))) | vec4<u32>(4294967295u, 0u, ~29730u, u_input.d), _wgslsmith_div_i32(var_0, var_0), _wgslsmith_f_op_f32(-108f + -202f), _wgslsmith_mod_i32(~_wgslsmith_mult_i32(u_input.c.x, -38031i), ~var_0 | _wgslsmith_dot_vec4_i32(vec4<i32>(63808i, -2147483647i, var_0, 1i), vec4<i32>(-23211i, -12626i, var_0, -23616i))), 2613f), _wgslsmith_f_op_f32(-arg_1.x), vec3<bool>(true, !(true || any(vec4<bool>(false, false, true, true))), false), Struct_2(true, _wgslsmith_f_op_vec3_f32(-arg_0)), Struct_1(countOneBits(arg_2), -53166i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.x, 2763f, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2, false)) - arg_0.x)), -(2414i & _wgslsmith_clamp_i32(var_0, -7915i, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.x)))))));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.b, 2147483647i | var_0, var_1.e.d, firstLeadingBit(var_0)), (vec4<i32>(70157i, 1i, var_1.a.d, var_1.e.d) | -_wgslsmith_add_vec4_i32(vec4<i32>(var_0, u_input.c.x, 0i, -12884i), vec4<i32>(var_0, 1i, 2147483647i, u_input.c.x))) | vec4<i32>(~_wgslsmith_div_i32(12282i, -27851i), var_1.e.d, ~_wgslsmith_sub_i32(u_input.e.x, var_0), 2147483647i & -var_1.e.d));
    let var_3 = Struct_4(select(vec3<bool>(!(var_1.c.x & true), !all(vec4<bool>(var_1.d.a, true, var_1.c.x, true)), !var_1.d.a), select(var_1.c, select(vec3<bool>(var_1.d.a, true, true), vec3<bool>(true, true, true), all(vec3<bool>(var_1.c.x, false, false))), select(var_1.c, vec3<bool>(false, true, var_1.c.x), var_1.c)), var_1.c), _wgslsmith_f_op_f32(var_1.e.c * 405f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-550f - 1000f), var_1.d.a)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * var_1.b)), Struct_3(var_1.a, arg_1.x, select(var_1.c, var_1.c, var_1.c), Struct_2(var_1.c.x | any(var_1.c), vec3<f32>(_wgslsmith_f_op_f32(-138f * var_1.d.b.x), 489f, 1040f)), Struct_1(~abs(vec4<u32>(u_input.b.x, 27523u, arg_3.x, var_1.e.a.x)), max(u_input.e.x, var_1.e.b | u_input.e.x), arg_1.x, -1i, -125f)));
    let var_4 = ~var_3.e.e.a.xyy & select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, ~81582u, arg_2.x | 48761u), ~vec3<u32>(67115u, arg_3.x, var_1.a.a.x)), min(abs(vec3<u32>(1u, 28540u, 40464u)), vec3<u32>(4294967295u, min(u_input.b.x, u_input.a.x), firstTrailingBit(arg_3.x))), false);
    return Struct_2(all(!vec3<bool>(true, all(vec4<bool>(var_3.e.c.x, var_3.e.d.a, true, true)), false)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1262f, -193f, 1003f), var_3.e.d.b)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.b, 1778f, arg_0.x))), !var_3.e.c)))))));
}

fn func_7(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<f32> {
    return vec3<f32>(-1477f, _wgslsmith_f_op_f32(f32(-1f) * -1647f), arg_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_7(u_input.e.zy, 1f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1397f, -468f, -1249f, 1540f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(904f, 203f, -880f, 1026f) + vec4<f32>(-1297f, -1238f, 191f, -359f))), func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_5(Struct_4(vec3<bool>(false, true, true), 833f, 1193f, -1136f, Struct_3(Struct_1(vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, 0u), u_input.e.x, 477f, u_input.c.x, 779f), -1427f, vec3<bool>(false, true, true), Struct_2(false, vec3<f32>(-1427f, -781f, -334f)), Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 14535u, 16395u), 50527i, 227f, u_input.c.x, 903f))), 35430u), Struct_4(vec3<bool>(true, true, false), 1000f, 337f, 711f, Struct_3(Struct_1(vec4<u32>(1u, u_input.a.x, 0u, u_input.b.x), u_input.c.x, -781f, u_input.e.x, 333f), 216f, vec3<bool>(false, false, false), Struct_2(true, vec3<f32>(-951f, -264f, -653f)), Struct_1(vec4<u32>(0u, u_input.b.x, u_input.a.x, 1u), -1i, -372f, u_input.e.x, 1000f))), Struct_3(Struct_1(vec4<u32>(u_input.b.x, 62229u, 112625u, 1u), u_input.c.x, -1316f, 2147483647i, -553f), 605f, vec3<bool>(true, true, false), Struct_2(true, vec3<f32>(682f, -112f, -252f)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 32733u, 4521u), 2147483647i, -421f, 3261i, 424f)), -460f)) * _wgslsmith_f_op_vec3_f32(func_1(Struct_5(Struct_4(vec3<bool>(true, true, true), 1095f, -688f, 170f, Struct_3(Struct_1(vec4<u32>(u_input.a.x, 18140u, 0u, 0u), u_input.e.x, 1175f, -8979i, 535f), -1216f, vec3<bool>(false, false, true), Struct_2(true, vec3<f32>(1180f, 338f, 1051f)), Struct_1(vec4<u32>(u_input.d, 56484u, u_input.b.x, 4294967295u), -3093i, 1000f, 0i, 1000f))), u_input.a.x), Struct_4(vec3<bool>(true, false, false), 1632f, 954f, -446f, Struct_3(Struct_1(vec4<u32>(u_input.a.x, 0u, u_input.b.x, 46028u), u_input.e.x, 956f, u_input.e.x, 1347f), 370f, vec3<bool>(true, true, true), Struct_2(false, vec3<f32>(164f, 1319f, -1187f)), Struct_1(vec4<u32>(12285u, u_input.a.x, 56425u, u_input.b.x), 0i, 714f, u_input.e.x, -552f))), Struct_3(Struct_1(vec4<u32>(4294967295u, u_input.b.x, u_input.d, 0u), u_input.c.x, 1441f, u_input.e.x, -1612f), -1000f, vec3<bool>(true, true, true), Struct_2(false, vec3<f32>(640f, 140f, 248f)), Struct_1(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), 27689i, -586f, -16306i, -131f)), -1485f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1252f, -263f, 719f, 679f)))), vec4<u32>(~16556u, _wgslsmith_add_u32(4294967295u, u_input.a.x), _wgslsmith_div_u32(1u, u_input.a.x), 20411u), vec4<u32>(u_input.d, ~31168u, 4294967295u, reverseBits(u_input.b.x)))))));
    var var_1 = -40423i;
    let var_2 = all(vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false)), all(vec2<bool>(false, true)), false, true)) || (_wgslsmith_sub_u32(u_input.a.x, 0u) >= 1u);
    var var_3 = Struct_4(vec3<bool>(firstTrailingBit(-2147483647i) >= (5368i ^ u_input.c.x), true, !(!(var_0.x < var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1936f + _wgslsmith_f_op_vec3_f32(func_7(vec2<i32>(-26699i, 18279i), var_0.x, vec4<f32>(var_0.x, -1000f, 1096f, var_0.x), Struct_2(false, vec3<f32>(310f, var_0.x, -677f)))).x))), _wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_7(abs(u_input.e.xw), _wgslsmith_f_op_vec3_f32(func_7(vec2<i32>(u_input.c.x, u_input.e.x), -859f, vec4<f32>(1329f, var_0.x, var_0.x, -633f), Struct_2(true, vec3<f32>(var_0.x, var_0.x, 719f)))).x, vec4<f32>(var_0.x, var_0.x, var_0.x, -1658f), func_6(var_0, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(7454u, 19067u, 1u, u_input.a.x), vec4<u32>(13645u, u_input.a.x, 1u, 7667u)))).x, var_0.x) * -220f), Struct_3(Struct_1(~vec4<u32>(101285u, 1u, 2549u, u_input.a.x) ^ vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, 0u), ~(-10507i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-555f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_dot_vec2_i32(u_input.c.wy, u_input.c.yy), 651f), 369f, vec3<bool>(false, var_2, _wgslsmith_f_op_f32(-var_0.x) == 567f), func_6(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1542f, var_0.x, var_0.x, -1119f)), vec4<u32>(_wgslsmith_sub_u32(66753u, 28228u), u_input.b.x << (34433u % 32u), u_input.d, 0u), ~min(vec4<u32>(1u, 0u, u_input.d, 1u), vec4<u32>(u_input.b.x, 12799u, u_input.d, u_input.b.x))), Struct_1(~countOneBits(vec4<u32>(u_input.a.x, 22357u, 0u, u_input.a.x)), u_input.e.x, 1375f, ~select(4989i, u_input.e.x, false), 1000f)));
    var var_4 = abs(-(~u_input.e));
    let var_5 = Struct_4(var_3.e.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.e.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -848f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-542f)) + _wgslsmith_f_op_f32(var_3.b * var_3.d)))), var_3.e);
    var var_6 = u_input.e.zwz;
    var var_7 = 0u;
    var var_8 = Struct_5(Struct_4(var_3.e.c, var_0.x, _wgslsmith_f_op_vec3_f32(func_4(Struct_5(Struct_4(vec3<bool>(var_5.a.x, var_2, var_3.a.x), var_0.x, var_5.c, -1756f, var_5.e), u_input.a.x), var_5.a.x, Struct_4(select(var_3.a, var_3.a, var_3.a), -1676f, _wgslsmith_f_op_f32(-var_3.e.b), _wgslsmith_f_op_f32(min(-1861f, -1003f)), Struct_3(var_3.e.e, 167f, var_5.a, var_3.e.d, var_3.e.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, 366f)))).x, _wgslsmith_div_f32(-1579f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -475f))), var_3.e), 44590u);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(31107i, var_3.e.a.d, 1i, _wgslsmith_add_i32(-16570i, u_input.c.x)) ^ (countOneBits(abs(u_input.c)) << (abs(vec4<u32>(25025u, 64374u, 1u, 4294967295u) ^ var_8.a.e.e.a) % vec4<u32>(32u))), ~_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_4.zxx, vec3<i32>(-1i, -8310i, u_input.c.x)), firstLeadingBit(vec3<i32>(-14348i, 80134i, -8504i))) ^ ~(-abs(var_4.xyw)), 2147483647i, var_3.e.a.d);
}

