struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<bool> {
    let var_0 = vec2<bool>((_wgslsmith_sub_i32(2147483647i, firstTrailingBit(u_input.b)) >> (1u % 32u)) >= u_input.c.x, false);
    var var_1 = ~(~u_input.a);
    var var_2 = Struct_4(vec2<bool>(true, !(!var_0.x)), Struct_2(u_input.a, _wgslsmith_mult_vec3_u32(~firstLeadingBit(vec3<u32>(1u, 0u, u_input.a)), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.d, 0u), ~vec3<u32>(77356u, 1u, u_input.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1173f))))), false, _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 22579i, u_input.b, -6023i), (vec4<i32>(-6317i, u_input.b, -10449i, 2147483647i) & vec4<i32>(2147483647i, 0i, u_input.c.x, u_input.b)) & (vec4<i32>(2147483647i, 2646i, 2721i, u_input.c.x) ^ vec4<i32>(u_input.b, -44033i, -14589i, u_input.b)))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 50319u) & vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.a, u_input.a)), select(vec2<u32>(u_input.d, u_input.a), ~vec2<u32>(u_input.d, u_input.a), vec2<bool>(false, false))), u_input.c);
    var var_3 = var_2.b.a;
    let var_4 = vec2<bool>(all(!(!vec4<bool>(true, false, true, var_2.a.x))), select(true, true, 93160u < ~_wgslsmith_clamp_u32(var_2.b.b.x, var_2.b.b.x, 17747u)));
    return !var_2.a;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_4(select(!func_3(), select(func_3(), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(true, all(vec4<bool>(false, false, true, false)), true)), func_3().x), Struct_2(max(120113u, u_input.a), vec3<u32>(~u_input.a, _wgslsmith_add_u32(4294967295u, 0u), abs(u_input.a)) >> (select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 74289u), vec3<u32>(u_input.a, 1u, 1u)), firstTrailingBit(vec3<u32>(u_input.d, u_input.d, u_input.a)), any(vec3<bool>(true, true, true))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(179f - -315f), _wgslsmith_f_op_f32(min(2055f, -1000f)))), false, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-21459i, u_input.c.x, u_input.c.x, u_input.b)), -vec4<i32>(-1i, arg_0, u_input.c.x, 19432i)), vec4<i32>(-32776i, _wgslsmith_div_i32(55023i, -14130i), u_input.b & u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, arg_0, u_input.b), vec4<i32>(arg_0, 0i, u_input.c.x, arg_0))))), 1u, _wgslsmith_clamp_vec3_i32(u_input.c, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-15014i, u_input.b, -1i), arg_0, _wgslsmith_div_i32(-11740i, arg_0)), min(vec3<i32>(u_input.c.x, arg_0, 11771i), max(u_input.c, u_input.c))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, ~u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-13738i, arg_0, -2147483647i), vec3<i32>(u_input.b, u_input.b, -2147483647i))), abs(-vec3<i32>(2147483647i, 2147483647i, 2147483647i)))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -360f)));
    let var_1 = var_0.d.x;
    let var_2 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.c.x, 0i), var_0.b.e.x) | vec2<i32>(-859i, arg_0), ~u_input.c.yy << ((min(var_0.b.b.zx, vec2<u32>(var_0.c, var_0.b.a)) ^ reverseBits(var_0.b.b.yx)) % vec2<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-737f, 1000f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.c, var_0.b.c))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.c + var_0.b.c), var_0.b.c))))));
    return !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.c)) <= -1000f));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = vec2<i32>(-_wgslsmith_div_i32(17198i, i32(-1i) * -36036i), -33155i);
    return func_2(2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = !any(select(vec4<bool>(arg_0.d, false, arg_0.d & false, false), select(vec4<bool>(true, arg_0.d, false, false), vec4<bool>(arg_0.d, false, arg_0.d, false), !vec4<bool>(true, false, arg_0.d, true)), true | (arg_0.c > arg_0.c)));
    var_0 = true;
    var var_1 = arg_3;
    var_1 = max(abs(reverseBits(max(_wgslsmith_div_vec2_u32(arg_0.b.zz, arg_3), ~arg_3))), abs(arg_0.b.xx) ^ arg_3);
    var_0 = (_wgslsmith_add_u32(36459u, 11033u) != (1u & _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, arg_3.x, u_input.a), arg_0.b, vec3<bool>(false, arg_0.d, false)), arg_0.b))) == !arg_0.d;
    return Struct_4(!vec2<bool>(false, arg_0.d), Struct_2(firstLeadingBit(arg_0.b.x), select(~(~arg_0.b), vec3<u32>(89571u, arg_3.x, 4294967295u) & (vec3<u32>(arg_0.b.x, u_input.a, 18374u) << (vec3<u32>(var_1.x, u_input.d, arg_3.x) % vec3<u32>(32u))), select(!vec3<bool>(true, arg_0.d, true), select(vec3<bool>(false, arg_0.d, arg_0.d), vec3<bool>(false, arg_0.d, false), vec3<bool>(false, arg_0.d, false)), !vec3<bool>(arg_0.d, arg_0.d, true))), arg_2.x, !all(select(vec3<bool>(arg_0.d, arg_0.d, false), vec3<bool>(arg_0.d, arg_0.d, arg_0.d), true)), -arg_0.e), abs(~min(abs(1u), arg_3.x)), abs(select(-vec3<i32>(-70454i, arg_1, arg_1), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, arg_1, u_input.b), vec3<i32>(arg_0.e.x, u_input.b, arg_1)), arg_0.c == -1088f) & vec3<i32>(arg_0.e.x, min(arg_1, arg_1), firstLeadingBit(arg_0.e.x))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: u32, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_4(vec2<bool>(arg_0.b.e.x >= _wgslsmith_clamp_i32(-2147483647i, arg_0.b.e.x, arg_0.d.x), all(vec3<bool>(any(arg_3.xxx), func_4(arg_0.b, 29625i, vec4<f32>(arg_1, -1632f, arg_1, -718f), vec2<u32>(4294967295u, arg_0.c)).a.x, !arg_0.b.d))), func_4(func_4(Struct_2(~u_input.a, ~vec3<u32>(1u, u_input.a, 0u), _wgslsmith_f_op_f32(-arg_0.b.c), arg_0.b.d, ~vec4<i32>(64198i, 32250i, u_input.b, u_input.c.x)), 2147483647i, vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(arg_1 + 1690f), -480f, -981f), _wgslsmith_clamp_vec2_u32(~arg_0.b.b.xy, arg_0.b.b.yy, abs(vec2<u32>(u_input.d, arg_0.b.b.x)))).b, ~(~26205i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c, -2350f, 1405f, arg_1) - vec4<f32>(arg_1, -965f, arg_1, -162f)))), arg_0.b.b.yz).b, 51110u, func_4(Struct_2(_wgslsmith_clamp_u32(~43766u, 34217u, _wgslsmith_sub_u32(26737u, 0u)), arg_0.b.b, _wgslsmith_f_op_f32(step(-627f, _wgslsmith_f_op_f32(-1084f * -1111f))), all(arg_3.xzy), ~_wgslsmith_div_vec4_i32(arg_0.b.e, arg_0.b.e)), _wgslsmith_sub_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.b.e.x, 1i, 1782i), arg_0.b.e), _wgslsmith_mod_i32(61604i, u_input.c.x)), ~_wgslsmith_div_i32(-1i, -1i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_1) + _wgslsmith_f_op_f32(ceil(arg_0.b.c))), 596f, -1063f, -768f), arg_0.b.b.zx).b.e.www);
    var var_1 = ~firstTrailingBit(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(587u, arg_2, 0u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u))));
    var var_2 = Struct_2(firstLeadingBit(4294967295u), ~(~(~var_1.xxw) | ~var_1.xzz), arg_0.b.c, func_3().x, func_4(func_4(func_4(var_0.b, -13320i, vec4<f32>(arg_0.b.c, arg_1, var_0.b.c, -1851f), var_0.b.b.xx).b, -2147483647i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, -514f, var_0.b.c, arg_0.b.c)))), vec2<u32>(func_4(Struct_2(var_1.x, vec3<u32>(var_1.x, var_1.x, 68110u), 520f, false, vec4<i32>(19609i, 31248i, 1i, var_0.b.e.x)), -2147483647i, vec4<f32>(var_0.b.c, arg_1, var_0.b.c, arg_1), arg_0.b.b.yy).c, ~2910u)).b, _wgslsmith_clamp_i32(var_0.b.e.x, abs(1i), var_0.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -125f, var_0.b.c) + vec4<f32>(-2147f, -184f, arg_1, -271f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0.b.c, -1000f, -1000f) + vec4<f32>(arg_0.b.c, arg_1, var_0.b.c, 799f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c, arg_0.b.c, var_0.b.c, 453f)))), reverseBits(vec2<u32>(4294967295u, var_1.x)) & ~var_0.b.b.yz).b.e);
    var_2 = Struct_2(34511u, abs(vec3<u32>(44175u >> (1u % 32u), _wgslsmith_mod_u32(17330u ^ arg_2, arg_2), ~arg_0.b.a)), -1371f, false, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.d.x, _wgslsmith_div_i32(1i, u_input.c.x), arg_0.d.x), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(arg_0.b.e, vec4<i32>(8187i, arg_0.b.e.x, var_0.b.e.x, 0i)), _wgslsmith_mod_vec4_i32(arg_0.b.e, var_2.e))), 1i, func_4(func_4(func_4(var_0.b, var_0.d.x, vec4<f32>(1022f, arg_1, -732f, -591f), var_0.b.b.zy).b, max(u_input.b, arg_0.b.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1448f, var_0.b.c, arg_0.b.c, arg_0.b.c) + vec4<f32>(arg_0.b.c, arg_1, arg_0.b.c, arg_1)), reverseBits(vec2<u32>(var_1.x, 0u))).b, _wgslsmith_dot_vec4_i32(-var_2.e, select(arg_0.b.e, arg_0.b.e, vec4<bool>(true, var_2.d, var_0.b.d, arg_3.x))), vec4<f32>(arg_1, var_2.c, 1864f, -178f), var_0.b.b.zz).b.e.x, var_0.b.e.x));
    var var_3 = var_0.b.e.x;
    return Struct_2(var_0.c, _wgslsmith_sub_vec3_u32(vec3<u32>(select(var_0.c, arg_2, false), countOneBits(1u), var_2.b.x >> (38250u % 32u)) & _wgslsmith_clamp_vec3_u32(func_4(Struct_2(arg_2, vec3<u32>(4294967295u, arg_0.b.a, var_0.b.b.x), -297f, arg_0.b.d, vec4<i32>(-2147483647i, 41606i, u_input.c.x, var_0.d.x)), -7045i, vec4<f32>(800f, var_2.c, arg_0.b.c, -249f), arg_0.b.b.yy).b.b, var_1.zxw, abs(vec3<u32>(1u, u_input.a, 4294967295u))), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(23536u, u_input.a, arg_2, 4294967295u), vec4<u32>(57985u, var_0.c, 31087u, 1u)), _wgslsmith_sub_u32(~39575u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 4294967295u, 0u), arg_0.b.b)), 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-345f, 120f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1699f - var_2.c)))))), arg_0.b.c <= _wgslsmith_div_f32(-1873f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(529f * 1567f) * _wgslsmith_f_op_f32(-arg_1))), vec4<i32>(_wgslsmith_mult_i32(var_0.d.x, ~var_2.e.x), 24902i, var_0.b.e.x, firstTrailingBit(-3101i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_2(~firstTrailingBit(u_input.d), vec3<u32>(_wgslsmith_sub_u32(u_input.a, 25548u), 1u, u_input.d), -2173f, !func_1(Struct_2(4294967295u, vec3<u32>(u_input.a, u_input.a, 0u), -816f, true, vec4<i32>(1i, -1i, u_input.c.x, u_input.c.x)), Struct_1(vec2<f32>(1760f, -391f))), -(~vec4<i32>(u_input.b, -1i, -2147483647i, -29296i))), _wgslsmith_mult_i32(u_input.b, 0i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1618f, 2344f, 871f))), vec4<f32>(1f, 1f, 1f, 1f)), abs(~vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(-133f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(880f)))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(77402u, u_input.d), firstTrailingBit(u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.a, 36227u, 51128u)), u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 36654u) & vec4<u32>(1u, u_input.a, u_input.d, u_input.a)), ~(~min(u_input.a, u_input.d))), vec4<bool>(!func_4(func_4(Struct_2(3527u, vec3<u32>(u_input.a, u_input.d, 34256u), -735f, false, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c.x)), u_input.c.x, vec4<f32>(465f, 668f, 433f, 1000f), vec2<u32>(72668u, 0u)).b, -u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(513f, 1000f, 1000f, 1398f)), vec2<u32>(u_input.a, u_input.d)).a.x, false, false, true));
    var_0 = func_4(Struct_2(0u, var_0.b, var_0.c, false, var_0.e), 10210i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(337f, var_0.c, var_0.c, 788f))))))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~func_4(Struct_2(u_input.d, var_0.b, 1040f, false, var_0.e), 0i, vec4<f32>(-650f, var_0.c, -1179f, -1000f), var_0.b.yz).b.b.zz, ~(~vec2<u32>(36510u, 75933u)), _wgslsmith_add_vec2_u32(~vec2<u32>(33130u, u_input.a), vec2<u32>(var_0.a, 4294967295u))), var_0.b.zz)).b;
    var var_1 = vec4<f32>(var_0.c, var_0.c, _wgslsmith_f_op_f32(var_0.c * var_0.c), -1343f);
    let var_2 = vec2<u32>(abs(abs(1u) & func_5(func_4(Struct_2(53952u, vec3<u32>(var_0.b.x, var_0.a, 4294967295u), var_0.c, var_0.d, var_0.e), -1i, vec4<f32>(1755f, -408f, var_0.c, var_0.c), vec2<u32>(u_input.a, 48468u)), _wgslsmith_f_op_f32(-var_0.c), var_0.b.x, vec4<bool>(var_0.d, false, false, var_0.d)).a), ~(~countOneBits(_wgslsmith_clamp_u32(3248u, 0u, var_0.b.x))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_1.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(~_wgslsmith_mod_vec2_i32(u_input.c.zx, vec2<i32>(var_0.e.x, var_0.e.x))), -vec2<i32>(_wgslsmith_sub_i32(1i, -19711i), ~35638i), func_4(func_5(func_4(Struct_2(0u, var_0.b, -513f, var_0.d, vec4<i32>(-1i, 25164i, 2147483647i, var_0.e.x)), var_0.e.x, vec4<f32>(var_3.a.x, var_1.x, var_3.a.x, 1776f), var_2), _wgslsmith_f_op_f32(exp2(var_1.x)), ~u_input.a, select(vec4<bool>(false, var_0.d, false, false), vec4<bool>(true, false, var_0.d, var_0.d), vec4<bool>(var_0.d, var_0.d, var_0.d, false))), abs(0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, var_1.x, 350f, -289f) - vec4<f32>(-575f, var_0.c, 1914f, var_3.a.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, var_1.x, var_1.x, var_1.x)))), _wgslsmith_sub_vec2_u32(firstLeadingBit(var_0.b.zz), _wgslsmith_sub_vec2_u32(var_2, var_2))).a), abs(vec2<i32>(-(~0i), ~firstTrailingBit(-7159i))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, var_0.c, var_1.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_3.a.x, 230f, var_3.a.x) + vec4<f32>(-1612f, var_0.c, var_0.c, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 475f, -887f, var_3.a.x) * vec4<f32>(-1000f, var_3.a.x, var_3.a.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, var_0.c, var_0.c, var_1.x))), !vec4<bool>(var_0.d, var_0.d, var_0.d, true))))), -139f);
}

