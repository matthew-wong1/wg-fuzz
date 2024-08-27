struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    return arg_0.c.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    var var_0 = arg_0.x > ~_wgslsmith_mult_i32(-2147483647i, abs(arg_0.x));
    var var_1 = 1u;
    var_1 = _wgslsmith_div_u32(0u, ~40516u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -912f) + _wgslsmith_f_op_f32(883f - 912f)), -367f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(885f, 560f)), _wgslsmith_f_op_f32(f32(-1f) * -659f)))))));
    let var_3 = u_input.a;
    return u_input.c.x;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~10804u ^ ~arg_2.x, 0u, ~_wgslsmith_add_u32(u_input.c.x, 22863u) << (_wgslsmith_dot_vec4_u32(arg_2, firstLeadingBit(vec4<u32>(arg_2.x, 8156u, u_input.c.x, 4543u))) % 32u), ~75439u), vec4<u32>(_wgslsmith_div_u32(arg_2.x, _wgslsmith_dot_vec2_u32(u_input.c.xy, ~vec2<u32>(u_input.c.x, 67732u))), 79355u, u_input.c.x, _wgslsmith_dot_vec4_u32(arg_2, _wgslsmith_mult_vec4_u32(~arg_2, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u)))), vec4<u32>(min(_wgslsmith_mult_u32(countOneBits(25533u), arg_2.x), arg_2.x), ~arg_2.x, u_input.b.x, _wgslsmith_dot_vec4_u32(~arg_2, _wgslsmith_sub_vec4_u32(arg_2, vec4<u32>(9394u, 16797u, 12933u, 0u)) ^ (arg_2 >> (arg_2 % vec4<u32>(32u))))));
    let var_1 = -(u_input.a.x & _wgslsmith_add_i32(10317i | (u_input.a.x & 1i), u_input.a.x));
    var var_2 = Struct_3(vec4<i32>(-_wgslsmith_clamp_i32(abs(var_1), -2147483647i, var_1), min(u_input.a.x, var_1), ~_wgslsmith_add_i32(u_input.a.x, 1i), abs(func_2(Struct_1(arg_2.x, vec2<u32>(47605u, 21627u), vec3<i32>(u_input.a.x, 7484i, u_input.a.x), -203f, false)))), var_1, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(207f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * -106f)))));
    var var_3 = Struct_1(func_3(vec4<i32>(var_2.b, u_input.a.x, 1i << (arg_2.x % 32u), -1i) | -_wgslsmith_mult_vec4_i32(var_2.a, vec4<i32>(2147483647i, 57640i, -1i, u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(reverseBits(u_input.c), arg_2.zzx), _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), ~_wgslsmith_add_u32(0u, 2989u))), arg_2.xy, var_2.a.yzx, _wgslsmith_f_op_f32(min(1202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - var_2.c)))), any(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false), vec4<bool>(arg_1.x >= 553f, true, var_2.c != arg_0, true), true)));
    var_3 = Struct_1(_wgslsmith_clamp_u32(52676u, u_input.c.x, max(u_input.b.x, 4294967295u)), var_3.b, _wgslsmith_mod_vec3_i32(var_2.a.zyz, vec3<i32>(-2794i, -2147483647i, -2147483647i)), _wgslsmith_f_op_f32(-var_3.d), var_3.e);
    return Struct_1(~(~var_0.x), min(var_3.b, ~arg_2.zx), firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(var_3.c, var_2.a.xwz), var_3.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), 1f) * _wgslsmith_f_op_f32(-177f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2055f, 1232f))))), !var_3.e);
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = select(vec3<u32>(arg_0.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.c, max(vec3<u32>(u_input.b.x, 22370u, 4294967295u), u_input.c)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, arg_0.a, 20360u), u_input.c)), max(4038u, arg_0.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, u_input.b.x) << (~u_input.b.x % 32u), ~4294967295u, ~_wgslsmith_mod_u32(arg_0.a, arg_0.b.x)), abs(select(abs(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), vec3<u32>(u_input.c.x, 4294967295u, 1u), false))), select(true, true, arg_0.e));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, 792f))))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(arg_0.e, arg_0.e), vec2<bool>(false, arg_0.e)), !select(vec2<bool>(arg_0.e, true), vec2<bool>(arg_0.e, arg_0.e), arg_0.e)), select(!select(vec2<bool>(arg_0.e, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false), vec2<bool>(any(vec3<bool>(arg_0.e, true, true)), !arg_0.e)), arg_0.e), func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d - arg_0.d), _wgslsmith_f_op_f32(arg_0.d * 183f))), vec4<f32>(_wgslsmith_f_op_f32(285f * arg_0.d), _wgslsmith_div_f32(arg_0.d, arg_0.d), arg_0.d, -1809f), vec4<u32>(countOneBits(1u), arg_0.b.x, ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~(~39691u))), Struct_1((~0u & arg_0.a) ^ min(min(arg_0.b.x, 33402u), 1u), vec2<u32>(0u, func_1(_wgslsmith_f_op_f32(exp2(arg_0.d)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.d, arg_0.d, arg_0.d, 907f))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, arg_0.b.x, var_0.x, 32204u), vec4<u32>(var_0.x, 17120u, arg_0.a, 76427u))).a), func_1(_wgslsmith_f_op_f32(trunc(-1102f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-260f, -360f, arg_0.d, arg_0.d)), any(vec2<bool>(true, arg_0.e)))), ~min(vec4<u32>(0u, 688u, arg_0.a, 1u), vec4<u32>(4294967295u, 42106u, 4294967295u, 10468u))).c, arg_0.d, any(!vec4<bool>(arg_0.e, false, true, true))));
    let var_2 = vec4<bool>(true, arg_0.e, (51099u <= max(35856u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.a, arg_0.b.x), var_1.c.b))) != true, true);
    let var_3 = _wgslsmith_mult_u32(arg_0.a, ~(~abs(~u_input.c.x)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) * _wgslsmith_f_op_f32(trunc(arg_0.d))) - -1209f), _wgslsmith_f_op_f32(1125f - arg_0.d), !(!(arg_0.d > -1000f)))), select(var_1.b, var_1.b, vec2<bool>(all(vec2<bool>(false, true)), var_2.x)), func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a, -265f))), 539f)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_div_f32(var_1.d.d, _wgslsmith_f_op_f32(floor(arg_0.d))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d * -1640f))), -881f), vec4<u32>(30495u, _wgslsmith_sub_u32(35821u, firstLeadingBit(var_3)), max(~var_1.c.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.c.b.x, 11184u, 1u), vec4<u32>(var_3, var_1.c.b.x, u_input.b.x, 4294967295u))), _wgslsmith_sub_u32(arg_0.b.x, var_1.c.a))), arg_0);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(341f, -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, -875f))), !var_2.x | true))))));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = arg_2;
    var_1 = vec2<f32>(func_1(var_1.x, vec4<f32>(var_1.x, arg_2.x, arg_2.x, _wgslsmith_f_op_f32(trunc(-481f))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(14531u, 1u, u_input.c.x, 0u) ^ vec4<u32>(0u, u_input.c.x, 1u, 6476u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 0u, 4294967295u))), ~vec4<u32>(29988u, 0u, u_input.b.x, 53721u))).d, _wgslsmith_f_op_f32(ceil(var_1.x)));
    let var_2 = ~1u << ((_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(48971u, 37344u, u_input.c.x, 0u) ^ vec4<u32>(42392u, 1u, u_input.c.x, u_input.b.x)), ~(~vec4<u32>(0u, 4294967295u, 0u, 66354u))) & _wgslsmith_div_u32(1349u, countOneBits(u_input.c.x))) % 32u);
    var var_3 = func_1(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-202f - _wgslsmith_f_op_f32(ceil(681f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 1112f, var_1.x, 590f)))))))), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(101505u, 1u, var_2, var_2), vec4<u32>(var_2, var_2, u_input.c.x, 1u)))));
    return func_1(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(623f, 1000f, -1797f, -1259f) * vec4<f32>(arg_2.x, 306f, 2030f, arg_2.x)))))))), vec4<u32>(55055u, u_input.b.x, firstLeadingBit(6809u) | ~var_2, var_3.b.x) & countOneBits(max(vec4<u32>(var_3.a, u_input.b.x, var_3.b.x, 0u), ~vec4<u32>(0u, var_3.b.x, 4294967295u, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_u32(4294967295u, ~(~u_input.c.x) & countOneBits(9946u)), ~(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 4294967295u) >> (max(vec2<u32>(u_input.c.x, u_input.b.x) ^ u_input.c.zz, u_input.c.xx) % vec2<u32>(32u))), u_input.a.yxx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(106f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(119f, 400f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1818f, 598f)) * 1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(388f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-991f, -293f))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(293f, 547f))) + 565f));
    var var_1 = vec2<i32>((2147483647i | (_wgslsmith_dot_vec4_i32(vec4<i32>(65612i, var_0.c.x, 1417i, var_0.c.x), u_input.a) ^ (-52196i & u_input.a.x))) & ((var_0.c.x & -2147483647i) | u_input.a.x), u_input.a.x);
    var_1 = vec2<i32>(0i, var_1.x);
    var var_2 = u_input.a.yy << (vec2<u32>(u_input.b.x, ~(~(~u_input.b.x))) % vec2<u32>(32u));
    var var_3 = var_1.x;
    var var_4 = func_5(_wgslsmith_sub_i32(max(_wgslsmith_mult_i32(~var_1.x, 28981i), var_2.x), (_wgslsmith_sub_i32(0i, var_1.x) ^ -2147483647i) >> (~u_input.c.x % 32u)), !(!(!(!vec3<bool>(true, var_0.e, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_1(-1129f, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-287f, var_0.d, -246f, 1491f))), max(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 78347u), vec4<u32>(var_0.a, u_input.c.x, 0u, u_input.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1113f, 163f, func_5(-select(-11251i, -16019i, false) << ((1u | select(var_0.b.x, 4294967295u, var_0.e)) % 32u), select(select(vec3<bool>(var_4.e, var_0.e, var_4.e), vec3<bool>(var_4.e, var_0.e, true), vec3<bool>(true, false, false)), vec3<bool>(any(vec4<bool>(false, true, true, var_0.e)), true, true || var_0.e), vec3<bool>(false, all(vec3<bool>(var_0.e, var_4.e, var_4.e)), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1673f, 1340f))) * vec2<f32>(_wgslsmith_f_op_f32(822f + var_0.d), var_0.d))).c.xz, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-610f * _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(83479u, var_0.b, vec3<i32>(-90418i, 0i, var_4.c.x), var_4.d, false))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-128f, var_0.d, var_4.d), vec3<f32>(var_4.d, var_4.d, 887f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.d, var_4.d, var_0.d))))));
}

