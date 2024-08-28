struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_0, 0i), u_input.a.x, ~13277i, 20042i), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(arg_3.a, vec4<i32>(28706i, -76238i, 0i, arg_3.a.x)), ~vec4<i32>(u_input.a.x, 36749i, 2147483647i, arg_3.a.x))), ~(vec4<i32>(-22326i, 0i, u_input.a.x, u_input.a.x) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1967f))), -162f, true))));
    let var_1 = vec4<bool>(select(~_wgslsmith_mod_i32(var_0.a.x, var_0.a.x) <= abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -64554i, arg_3.a.x), var_0.a.wwx)), max(_wgslsmith_clamp_u32(1u, 35109u, 4294967295u), ~3841u) > max(22731u, 34153u), !(select(global1.a, arg_1.x, true) && false)), arg_1.x, global1.a, global1.a);
    global1 = Struct_3(true & (any(arg_1.wwz) && !arg_1.x));
    var var_2 = _wgslsmith_dot_vec2_u32(countOneBits(min(vec2<u32>(max(36711u, 1u), 102369u), max(vec2<u32>(1u, 0u), vec2<u32>(1u, 1u)))), ~vec2<u32>(~abs(8757u), 0u));
    return -abs(reverseBits(_wgslsmith_div_i32(~var_0.a.x, -var_0.a.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(107f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1917f))))))));
    let var_0 = arg_3.x & abs(1u);
    global1 = arg_1;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-799f, 1000f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, arg_2.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1092f, global0.x))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1375f, 300f) - vec2<f32>(941f, arg_2.b)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(153f, 2941f) - vec2<f32>(-961f, arg_2.b)) - vec2<f32>(arg_2.b, arg_2.b)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-176f)) * _wgslsmith_f_op_f32(arg_2.b * 491f))), -1940f));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global1 = Struct_3(true);
    global0 = _wgslsmith_f_op_vec2_f32(func_4(!(all(select(vec3<bool>(false, true, global1.a), vec3<bool>(false, false, global1.a), vec3<bool>(true, true, global1.a))) == (select(arg_0.x, 0i, false) != func_3(-2147483647i, vec4<bool>(global1.a, global1.a, global1.a, false), vec3<f32>(global0.x, arg_2.b, arg_2.b), Struct_1(arg_0)))), Struct_3(false), Struct_2(Struct_1(vec4<i32>(arg_2.a.a.x, arg_0.x, firstTrailingBit(84090i), 74704i)), arg_2.b, Struct_1(~vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i)), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1.x, arg_2.d, arg_1.x)), ~vec3<u32>(0u, arg_3, 1u))), vec3<u32>(1u, _wgslsmith_div_u32(firstTrailingBit(arg_2.d), 1u), 4294967295u)));
    var var_0 = Struct_4(arg_2, select(abs(~countOneBits(vec3<u32>(arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 0u, arg_2.d), vec3<u32>(arg_2.d, arg_1.x, select(arg_2.d, 0u, false))), select(select(!vec3<bool>(global1.a, true, global1.a), select(vec3<bool>(global1.a, false, true), vec3<bool>(global1.a, global1.a, true), global1.a), false), select(select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(global1.a, true, global1.a), false), !vec3<bool>(true, global1.a, global1.a), select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, true, false))), !vec3<bool>(global1.a, true, global1.a))), vec4<u32>(87455u >> (0u % 32u), 1278u, max(arg_2.d, 0u), 1u), _wgslsmith_f_op_f32(max(1057f, 1000f)));
    var_0 = Struct_4(Struct_2(var_0.a.c, var_0.d, arg_2.a, arg_3), var_0.b, var_0.c, global0.x);
    var_0 = Struct_4(arg_2, var_0.c.yyy, var_0.c, _wgslsmith_f_op_f32(-638f - var_0.d));
    return var_0.a.c;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4, arg_3: bool) -> i32 {
    global1 = Struct_3(true);
    let var_0 = Struct_3(!(!global1.a));
    var var_1 = Struct_3(arg_2.a.c.a.x <= _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.a.x, u_input.a.x), arg_2.a.a.a.x, max(arg_2.a.c.a.x, -24642i)), arg_2.a.c.a.x));
    let var_2 = vec3<i32>(0i, ~firstLeadingBit(-(~arg_2.a.c.a.x)), _wgslsmith_dot_vec4_i32(select(arg_1.a, arg_2.a.c.a, vec4<bool>(false, global1.a, global1.a, var_0.a)), max(vec4<i32>(select(2147483647i, 0i, true), arg_1.a.x, arg_1.a.x, 1i), _wgslsmith_mod_vec4_i32(arg_1.a, vec4<i32>(0i, 10525i, -2147483647i, -976i)) & arg_1.a)));
    var var_3 = vec2<u32>(~((arg_2.b.x | firstLeadingBit(arg_2.b.x)) << (23154u % 32u)), abs(_wgslsmith_mod_u32(arg_2.a.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 4294967295u, arg_2.a.d, 70844u), vec4<u32>(66482u, arg_2.c.x, arg_2.a.d, arg_2.c.x)))));
    return 1i;
}

fn func_6(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: bool) -> Struct_4 {
    let var_0 = vec3<u32>(abs(40952u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(9389u, arg_2, 55146u, 11855u), vec4<u32>(arg_2, arg_2, 83750u, 4294967295u))), ~(arg_2 >> (~arg_2 % 32u)) >> (0u % 32u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_2, arg_2, 0u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 9124u, arg_2), vec3<u32>(arg_2, arg_2, arg_2)) % vec3<u32>(32u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_2, arg_2), vec3<u32>(0u, arg_2, arg_2)))), reverseBits(vec3<u32>(~95083u, abs(44336u), ~62263u))));
    var var_1 = (abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_0.x, 0i, -36392i), arg_0)) | 20624i) & ~countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.zy, ~arg_0.zw));
    var var_2 = _wgslsmith_mult_i32(-2147483647i, select(firstLeadingBit(arg_1), -(~1i), any(!vec3<bool>(arg_3, global1.a, global1.a))));
    var_2 = u_input.a.x;
    var var_3 = select(_wgslsmith_div_vec4_i32(~(-arg_0), arg_0), reverseBits(arg_0), 4294967295u <= arg_2);
    return Struct_4(Struct_2(func_2(-abs(vec4<i32>(arg_1, -1742i, arg_1, 14557i)), reverseBits(var_0.xz), Struct_2(Struct_1(vec4<i32>(var_3.x, arg_1, -2147483647i, var_3.x)), 583f, Struct_1(arg_0), 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.yy, var_0.xx), vec2<u32>(10683u, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(633f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -562f)))), Struct_1(-vec4<i32>(2147483647i, -14391i, var_3.x, var_3.x)), var_0.x), vec3<u32>(~_wgslsmith_sub_u32(max(1u, arg_2), ~41460u), 4294967295u, 15358u), vec4<u32>(firstTrailingBit(~var_0.x), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_2, var_0.x), 54017u, var_0.x), ~arg_2, var_0.x << (_wgslsmith_dot_vec3_u32(~var_0, select(var_0, vec3<u32>(4294967295u, arg_2, var_0.x), true)) % 32u)), global0.x);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = arg_1.a;
    let var_1 = func_6(~var_0.c.a, arg_1.a.a.a.x, arg_1.c.x, !global1.a).a;
    let var_2 = Struct_4(func_6(arg_0.a, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_1.a.a.x, arg_0.a.x & 13258i, var_1.a.a.x | 0i), _wgslsmith_div_i32(~arg_0.a.x, 66616i << (var_0.d % 32u))), _wgslsmith_add_u32(~72564u & arg_1.c.x, select(~0u, min(var_1.d, 1u), any(vec3<bool>(global1.a, false, global1.a)))), false).a, reverseBits(arg_1.b), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(false, Struct_3(any(vec3<bool>(global1.a, global1.a, true))), Struct_2(Struct_1(vec4<i32>(-2147483647i, u_input.a.x, 23133i, 1i)), _wgslsmith_div_f32(-206f, var_1.b), Struct_1(arg_0.a), var_0.d), vec3<u32>(arg_1.b.x, 38714u, var_1.d))).x));
    global1 = Struct_3(false);
    global1 = Struct_3(all(select(select(vec4<bool>(true, global1.a, true, true), !vec4<bool>(global1.a, global1.a, global1.a, true), vec4<bool>(global1.a, true, false, false)), !vec4<bool>(false, global1.a, global1.a, true), select(select(vec4<bool>(false, global1.a, true, global1.a), vec4<bool>(false, true, global1.a, true), true), vec4<bool>(false, global1.a, false, global1.a), false))));
    return select(select(vec3<bool>(!(!global1.a), true, true), !select(!vec3<bool>(global1.a, true, false), vec3<bool>(global1.a, true, true), true), select(select(select(vec3<bool>(false, true, global1.a), vec3<bool>(false, false, true), vec3<bool>(false, true, global1.a)), !vec3<bool>(false, global1.a, false), vec3<bool>(global1.a, false, false)), !select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, true, global1.a), false), vec3<bool>(true, any(vec2<bool>(global1.a, true)), false))), vec3<bool>(global1.a, !(!(50105i >= u_input.a.x)), global1.a), select(!vec3<bool>(any(vec4<bool>(global1.a, global1.a, true, true)), true, global1.a || global1.a), !select(select(vec3<bool>(global1.a, false, false), vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.a, global1.a, global1.a)), select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(true, true, global1.a), vec3<bool>(true, false, false)), true), vec3<bool>(select(true, global1.a, true), false, false)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = global1.a;
    let var_1 = arg_2.a.c.a.x;
    let var_2 = !func_7(arg_1, func_6(firstLeadingBit(-vec4<i32>(var_1, 0i, arg_0, -7486i)), func_5(true, func_2(arg_2.a.a.a, vec2<u32>(arg_2.c.x, arg_2.c.x), arg_2.a, arg_2.b.x), arg_2, global0.x > global0.x), ~arg_2.a.d, !any(vec4<bool>(true, global1.a, global1.a, global1.a))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(global1.a, Struct_3(func_7(arg_2.a.c, Struct_4(arg_2.a, arg_2.c.wwx, arg_2.c, global0.x)).x), func_6(_wgslsmith_add_vec4_i32(arg_1.a, vec4<i32>(2147483647i, -1i, arg_1.a.x, -1i)), ~(-14140i), 0u, global1.a).a, ~select(vec3<u32>(0u, 43682u, arg_2.a.d), arg_2.c.ywy, false))).x));
    global1 = Struct_3(global1.a);
    return vec2<u32>(1u, ~(~11438u << (~(arg_2.c.x << (arg_2.c.x % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(789f, _wgslsmith_f_op_f32(-1342f - -416f)));
    var var_0 = ~(~(_wgslsmith_dot_vec2_u32(func_1(0i, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -41029i, -2147483647i)), Struct_4(Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 193f, Struct_1(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)), 4294967295u), vec3<u32>(88370u, 4294967295u, 6482u), vec4<u32>(1u, 4294967295u, 45u, 1u), global0.x)), select(vec2<u32>(0u, 18793u), vec2<u32>(50725u, 1u), vec2<bool>(global1.a, global1.a))) << ((1u << (1u % 32u)) % 32u)));
    var var_1 = func_6(abs(~(~(vec4<i32>(u_input.a.x, u_input.a.x, 7227i, u_input.a.x) >> (vec4<u32>(1u, 0u, 1804u, 56614u) % vec4<u32>(32u))))), 24746i, ~8035u, false).a.c;
    let var_2 = firstLeadingBit(2147483647i);
    var_1 = func_6(var_1.a, i32(-1i) * -u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(62456u, 21298u, 0u, 1u), vec4<u32>(59612u, 1u, 1u, 1u))), ~_wgslsmith_sub_u32(~28753u, firstTrailingBit(0u))), global1.a).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, -579f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, 213f)))))), -u_input.a);
}

