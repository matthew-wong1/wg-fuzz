struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    global0 = true;
    let var_0 = arg_1.b.a.x;
    let var_1 = Struct_3(true | (reverseBits(firstTrailingBit(u_input.a)) != (1u & var_0)), abs(~0u), firstLeadingBit(42938i), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-36651i, u_input.c, 58518i, u_input.c)), vec4<i32>(-1i) * -vec4<i32>(-13858i, u_input.c, 37199i, 11499i)) >> (_wgslsmith_div_vec4_u32(select(~vec4<u32>(1u, 0u, var_0, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.a.x, 81680u, var_0, var_0), vec4<u32>(var_0, arg_1.b.a.x, 69824u, 4294967295u)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false)), firstTrailingBit(vec4<u32>(var_0, 1u, var_0, 63195u)) & vec4<u32>(arg_1.c.a.x, 392u, 1u, var_0)) % vec4<u32>(32u)));
    var var_2 = Struct_5(arg_1.b.b, Struct_4(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0, arg_1.c.a.x, 72205u), vec4<u32>(u_input.d.x, var_0, 1u, arg_1.c.a.x)), max(~vec4<u32>(37527u, var_0, arg_1.b.a.x, var_1.b), abs(vec4<u32>(4294967295u, 15693u, 40905u, var_1.b)))), firstTrailingBit(0u >> (var_0 % 32u)) & (countOneBits(var_0) & arg_1.b.a.x)));
    global0 = !all(select(vec4<bool>(var_1.a, any(vec3<bool>(var_1.a, var_1.a, var_1.a)), true, var_1.a), vec4<bool>(select(false, var_1.a, false), !var_1.a, true, arg_1.c.a.x >= 61301u), var_1.a));
    return 0i;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: i32) -> vec2<f32> {
    let var_0 = true;
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 748f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1565f))))), -502f), Struct_1(vec3<u32>(u_input.a, 1u, ~u_input.b >> (0u % 32u)), arg_2.x), Struct_1(~u_input.d, -1000f));
    let var_2 = func_3(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(step(504f, _wgslsmith_f_op_f32(f32(-1f) * -1245f)))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -1137f, -1552f) * var_1.a), Struct_1(~var_1.b.a, _wgslsmith_f_op_f32(ceil(var_1.a.x))), Struct_1(var_1.c.a, -388f))) << (~_wgslsmith_div_u32(max(1u, firstLeadingBit(u_input.b)), ~var_1.b.a.x) % 32u);
    global0 = any(select(!select(vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), true), all(vec4<bool>(var_0, false, var_0, false))), !vec2<bool>(!var_0, true), vec2<bool>(select(all(vec2<bool>(var_0, var_0)), var_0, true), all(select(vec3<bool>(var_0, var_0, true), vec3<bool>(true, true, false), vec3<bool>(false, false, var_0))))));
    global0 = !(!(!var_0) | any(!vec3<bool>(true, true, var_0)));
    return _wgslsmith_div_vec2_f32(vec2<f32>(-453f, _wgslsmith_f_op_f32(1563f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2100f, 305f, var_0)) * -469f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.x, var_1.b.b), _wgslsmith_f_op_vec2_f32(round(arg_2))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1183f - var_1.c.b), -788f) + vec2<f32>(var_1.b.b, _wgslsmith_f_op_f32(round(-1867f)))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-151f, 1488f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-459f, -199f)) + _wgslsmith_f_op_vec2_f32(func_2(u_input.a, arg_1, arg_0, 1i))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0)), arg_0))), _wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(u_input.a, u_input.c, arg_0, -54867i)).x, _wgslsmith_div_f32(-315f, arg_0.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1623f, 1756f))))), true)));
    var var_1 = false;
    var_1 = true;
    var_1 = true;
    let var_2 = Struct_4(~vec4<u32>(u_input.b >> (_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 67555u) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 86335u, 1u, arg_2.a.x), vec4<u32>(u_input.d.x, 105763u, arg_2.a.x, u_input.a)), arg_2.a.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 119364u), 1u)), _wgslsmith_dot_vec3_u32(arg_2.a << (firstTrailingBit(vec3<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x)) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.d.x, u_input.b) & _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 23249u), vec3<u32>(u_input.d.x, 49960u, arg_2.a.x)), ~arg_2.a)));
    return Struct_1(vec3<u32>(~(~15571u), var_2.b, var_2.b), _wgslsmith_f_op_f32(-arg_2.b));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> vec4<u32> {
    global0 = !(arg_1.a.x != _wgslsmith_sub_u32(~(~arg_1.a.x), 1u));
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 1764f, 1000f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1232f, -1000f, -1286f)))), vec3<f32>(_wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(arg_3 - arg_1.b), _wgslsmith_f_op_f32(arg_1.b - 1000f)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))), arg_1, Struct_1(arg_2.wxy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -785f), arg_1.b)), arg_3)));
    let var_1 = _wgslsmith_mod_vec2_u32(func_1(vec2<f32>(arg_1.b, arg_3), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, 31846i)) | (u_input.c ^ u_input.c), Struct_1(vec3<u32>(u_input.b, 0u, 117424u), _wgslsmith_f_op_f32(floor(var_0.a.x)))).a.zy, arg_1.a.xy) ^ min(_wgslsmith_sub_vec2_u32(select(_wgslsmith_add_vec2_u32(u_input.d.zz, arg_2.yz), arg_2.xz & var_0.b.a.zx, vec2<bool>(true, true)), ~vec2<u32>(arg_1.a.x, 33105u)), select(vec2<u32>(abs(1u), var_0.b.a.x | u_input.a), vec2<u32>(~u_input.d.x, _wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(18216u, 4294967295u, 22445u))), any(vec2<bool>(true, true))));
    var var_2 = -35003i;
    var var_3 = _wgslsmith_add_vec4_i32(~(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, 11311i, u_input.c, u_input.c), vec4<i32>(-5338i, u_input.c, u_input.c, u_input.c))), -vec4<i32>(_wgslsmith_sub_i32(-1i, u_input.c), _wgslsmith_div_i32(-2147483647i, -21311i), -1i, _wgslsmith_sub_i32(-2147483647i, u_input.c))) << (arg_2 % vec4<u32>(32u));
    return vec4<u32>(arg_0, ~29603u, 1u, select(arg_2.x, arg_0 << (_wgslsmith_clamp_u32(arg_1.a.x, u_input.a, _wgslsmith_dot_vec3_u32(arg_2.xyw, vec3<u32>(1u, var_1.x, arg_0))) % 32u), !all(vec3<bool>(true, true, true))));
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    global0 = true;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-103f, 468f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1419f, 580f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1670f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + -404f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-481f * 1f)));
    let var_1 = false;
    let var_2 = Struct_3(var_1, _wgslsmith_dot_vec2_u32(~reverseBits(u_input.d.xz), ~select(u_input.d.zz, vec2<u32>(u_input.a, arg_0.x), vec2<bool>(true, var_1))), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(15133i, 40830i, u_input.c) >> (vec3<u32>(4294967295u, arg_0.x, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(u_input.c, -2147483647i, u_input.c)), countOneBits(i32(-1i) * -23032i)), vec4<i32>(firstTrailingBit(firstTrailingBit(1i)), -(u_input.c << (43630u % 32u)), -37338i, -18716i) | _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-26806i, u_input.c), ~0i, u_input.c, ~9900i), vec4<i32>(u_input.c, _wgslsmith_div_i32(1i, u_input.c), _wgslsmith_mod_i32(-35062i, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, 0i, u_input.c), vec4<i32>(30722i, 38777i, u_input.c, 13044i)))));
    var var_3 = Struct_5(var_0.x, Struct_4(~arg_0, max(~1u, ~(~u_input.a))));
    return Struct_1(arg_0.xyw, _wgslsmith_f_op_f32(-var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = func_5(func_4(0u, func_1(vec2<f32>(-1000f, -763f), u_input.c, Struct_1(~vec3<u32>(u_input.d.x, 3990u, 0u), 1740f)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a, 55439u, u_input.a)), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -1425f)));
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_clamp_vec2_i32(reverseBits(min(select(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, u_input.c), vec2<bool>(false, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, u_input.c))) >> ((func_4(31811u, var_0, vec4<u32>(var_0.a.x, u_input.a, 0u, var_0.a.x), var_0.b).zy & vec2<u32>(var_0.a.x, u_input.a)) % vec2<u32>(32u))), -vec2<i32>(-8542i, u_input.c | firstLeadingBit(-2147483647i)), reverseBits((-vec2<i32>(-2147483647i, u_input.c) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -16312i), vec2<i32>(u_input.c, 30181i))) & reverseBits(vec2<i32>(67322i, -2994i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 1001f, 144f, 1000f) * vec4<f32>(var_0.b, var_0.b, var_0.b, 877f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b) >> (0u % 32u), var_3.x, reverseBits(~vec4<u32>(func_4(4294967295u, var_0, vec4<u32>(15793u, var_0.a.x, 53344u, 1u), var_0.b).x, min(94305u, 56862u), _wgslsmith_add_u32(0u, u_input.d.x), func_1(vec2<f32>(275f, 1000f), var_2.x, var_0).a.x)));
}

