struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = ~(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 10114u, 1u)), vec3<u32>(21130u, ~0u, ~4294967295u)));
    var var_1 = 400f;
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f + _wgslsmith_div_f32(_wgslsmith_div_f32(1489f, -166f), _wgslsmith_f_op_f32(sign(-906f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -178f, global0.x)) + _wgslsmith_f_op_f32(ceil(1000f)))))));
    global0 = vec2<bool>(false, all(!vec3<bool>(!global0.x, true, !global0.x)));
    global0 = !vec2<bool>(!(any(vec4<bool>(true, global0.x, false, true)) || global0.x), false);
    return vec2<bool>(true, select(any(vec3<bool>(true, true, false)), global0.x, true));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<f32> {
    let var_0 = ~_wgslsmith_div_u32(1u, arg_2.b.x);
    global0 = !select(vec2<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), false), select(vec2<bool>(false, false), select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), !vec2<bool>(global0.x, false), func_3()), vec2<bool>(arg_2.a.x < arg_3.x, true)), vec2<bool>(all(select(vec4<bool>(true, false, true, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), global0.x)), _wgslsmith_f_op_f32(max(arg_2.c.x, -171f)) != arg_2.c.x));
    let var_1 = Struct_2(arg_2, vec4<i32>(select(min(~(-55759i), firstTrailingBit(-81584i)), -34993i, true), ~firstTrailingBit(-arg_2.a.x), _wgslsmith_sub_i32(~(~0i), u_input.b.x), arg_3.x), vec2<u32>(var_0, arg_1));
    let var_2 = vec2<i32>(var_1.b.x, select(u_input.a, arg_2.a.x, any(vec2<bool>(true, true))));
    let var_3 = max(var_0, arg_1);
    return arg_2.c;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = arg_0.a;
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(arg_0.a.a.a, ~u_input.b.www), vec2<u32>(_wgslsmith_sub_u32(43371u & var_0.c.x, 1u) ^ var_0.c.x, ~arg_0.a.c.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(424f)), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.a.b.x, var_0.a.b.x, 120041u, arg_0.a.a.b.x), vec4<u32>(arg_0.a.a.b.x, 21497u, 4198u, 22160u)), _wgslsmith_add_u32(32314u, arg_0.a.c.x), Struct_1(vec3<i32>(2147483647i, var_0.a.a.x, -2147483647i), vec2<u32>(4755u, arg_0.a.a.b.x), var_0.a.c), -vec4<i32>(u_input.a, var_0.a.a.x, -2147483647i, arg_0.a.b.x))).x, arg_1.x), vec3<f32>(var_0.a.c.x, 548f, _wgslsmith_f_op_f32(ceil(-1237f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(710f, -548f, arg_2, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-1623f + arg_0.a.a.c.x), -103f, _wgslsmith_f_op_f32(sign(-372f))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(max(147f, -480f)), 585f, _wgslsmith_div_f32(135f, var_1.c.x))))), false));
    global0 = select(select(vec2<bool>(true, true), !(!func_3()), select(false, !global0.x, select(all(vec4<bool>(arg_0.b, false, arg_0.b, false)), true, global0.x))), !(!func_3()), vec2<bool>(true, true));
    var var_3 = var_1.a;
    return Struct_1(vec3<i32>(~(~arg_0.a.a.a.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.a, vec3<i32>(arg_0.a.a.a.x, -36365i, var_3.x)), 0i), 0i), max(~(~2147483647i), _wgslsmith_sub_i32(~1i, _wgslsmith_sub_i32(2147483647i, arg_0.a.a.a.x)))), ~(arg_0.a.a.b & vec2<u32>(_wgslsmith_sub_u32(40970u, 25000u), var_0.c.x)), var_1.c);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = max(var_0.a.a.x << (min(1u, arg_0.a.c.x >> (1u % 32u)) % 32u), -arg_0.a.b.x);
    var var_2 = select(arg_0.a.b, vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 2147483647i, var_1, 0i), -vec4<i32>(-17611i, 38974i, var_0.a.a.x, arg_0.a.a.a.x)), u_input.b), _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, u_input.b.x), (var_0.a.a.x >> (44292u % 32u)) ^ max(2147483647i, 41584i)), -(-1i ^ (u_input.b.x >> (arg_0.a.a.b.x % 32u)))), reverseBits(-1i) >= var_1);
    var_2 = select(vec4<i32>(var_1, var_0.a.a.x >> (var_0.a.b.x % 32u), -1i, 1i), vec4<i32>(-var_0.a.a.x, var_0.a.a.x, 18559i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -var_2.yyx, vec3<i32>(-arg_1.a.a.x, min(-62786i, -14782i), 1i))), select(true, !global0.x, true));
    let var_3 = vec3<u32>(~arg_1.a.b.x, ~var_0.a.b.x, 1u) << (vec3<u32>(4294967295u, 0u, max(~_wgslsmith_sub_u32(arg_1.a.b.x, 0u), arg_0.a.c.x)) % vec3<u32>(32u));
    return Struct_2(Struct_1(u_input.b.xyw, vec2<u32>(~(~var_3.x), var_0.a.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(127f, arg_1.a.c.x, -1122f), arg_0.a.a.c)) + var_0.a.c) + _wgslsmith_div_vec3_f32(var_0.a.c, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(839f, var_0.a.c.x, arg_1.a.c.x)))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.wxz, vec3<i32>(-1i, 52177i, 8395i) ^ var_2.zzx), arg_0.a.a.a.x, -firstLeadingBit(arg_1.a.a.x), -_wgslsmith_clamp_i32(arg_0.a.b.x, var_1, -1i)), vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.yy, var_2.zy) >> (arg_1.a.b.x % 32u), arg_0.a.b.x, countOneBits(1i | arg_0.a.a.a.x)), select(vec4<i32>(arg_0.a.a.a.x, ~(-23412i), ~(-52540i), func_4(arg_0, arg_1.a.c, arg_1.a.c.x).a.x), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(1i, -2147483647i, arg_1.a.a.x, arg_1.a.a.x)), abs(vec4<i32>(-641i, u_input.a, -2147483647i, var_1))), true)), abs(_wgslsmith_div_vec2_u32(var_3.yy, vec2<u32>(8735u, 4294967295u)) | _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.a.b, vec2<u32>(1u, arg_1.a.b.x)), var_3.zz)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(Struct_4(Struct_2(func_4(Struct_4(Struct_2(Struct_1(vec3<i32>(-2147483647i, -3554i, 0i), vec2<u32>(4343u, 1496u), vec3<f32>(1298f, -1938f, -607f)), vec4<i32>(-17677i, u_input.a, -32965i, -1i), vec2<u32>(14696u, 4294967295u)), true), _wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(1u, 1u, 1u, 11683u), 108520u, Struct_1(vec3<i32>(1i, u_input.a, u_input.a), vec2<u32>(45281u, 31204u), vec3<f32>(1375f, -876f, 967f)), vec4<i32>(u_input.a, u_input.a, 17965i, -1i))), _wgslsmith_div_f32(-833f, -449f)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, u_input.a), vec3<i32>(u_input.a, u_input.b.x, -1i)), u_input.b.x, u_input.a), ~vec2<u32>(88286u, 4294967295u)), all(!select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), global0.x))), Struct_5(func_4(Struct_4(Struct_2(Struct_1(vec3<i32>(-1i, u_input.b.x, u_input.a), vec2<u32>(24117u, 1u), vec3<f32>(1033f, 626f, -238f)), vec4<i32>(-32172i, -14262i, 18819i, u_input.b.x), vec2<u32>(31845u, 4294967295u)), any(vec3<bool>(global0.x, true, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, -1468f, -1139f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 1272f), 1590f))), vec2<bool>(true, true)));
    var var_1 = select(vec4<bool>(global0.x, any(vec4<bool>(!global0.x, any(vec3<bool>(global0.x, global0.x, true)), !global0.x, true)), false, false), select(select(select(!vec4<bool>(false, false, global0.x, global0.x), !vec4<bool>(true, global0.x, global0.x, false), !vec4<bool>(global0.x, false, global0.x, false)), !vec4<bool>(true, global0.x, true, true), false), vec4<bool>(global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), any(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, true, false, global0.x), vec4<bool>(false, global0.x, true, global0.x))), select(false, true, global0.x) || true), !select(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x), false), global0.x)), !select(!select(vec4<bool>(false, global0.x, false, true), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(false, true, false, global0.x)), select(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, false, true)), !vec4<bool>(global0.x, true, true, global0.x), global0.x), false));
    var var_2 = var_0;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.c.x, 1000f, var_0.a.c.x, 1554f), vec4<f32>(-1572f, var_2.a.c.x, var_0.a.c.x, 733f), vec4<bool>(global0.x, false, var_1.x, var_1.x))), vec4<f32>(var_2.a.c.x, -702f, -1535f, var_2.a.c.x), true)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1479f, -1000f, 1701f, var_0.a.c.x)))))), var_0.c.x);
    let var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b.x, 4294967295u, 1u, var_2.a.b.x), vec4<u32>(var_2.c.x, 11817u, var_3.b, var_3.b)), ~17241u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, 20923u, var_2.c.x), vec3<u32>(var_3.b, 0u, var_2.a.b.x))), vec3<u32>(1u, min(1u, 50689u), ~59613u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.b, var_3.b, 25729u) << (vec3<u32>(55882u, var_3.b, 0u) % vec3<u32>(32u)), min(vec3<u32>(74582u, var_2.a.b.x, 34831u), vec3<u32>(var_0.a.b.x, 1u, 40314u))) % vec3<u32>(32u))) | firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.b.x, var_3.b, var_2.c.x, 4294967295u), vec4<u32>(var_0.a.b.x, var_2.c.x, 0u, 0u), vec4<u32>(var_0.c.x, 63436u, 1u, var_2.a.b.x)), ~vec4<u32>(43524u, var_2.a.b.x, 54128u, var_3.b)), 1u, 4294967295u));
    return Struct_1(vec3<i32>(var_0.b.x >> (_wgslsmith_sub_u32(abs(50174u), 1u) % 32u), countOneBits(var_2.b.x), -select(-2147483647i, 3744i, global0.x)), vec2<u32>(~_wgslsmith_dot_vec3_u32(var_4, vec3<u32>(3181u, var_0.a.b.x, 9327u)), 4294967295u) & ~var_4.zx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(var_0, false), _wgslsmith_f_op_vec3_f32(-var_3.a.wyw), -862f).c - var_0.a.c), var_2.a.c));
}

fn func_6(arg_0: Struct_2) -> vec2<bool> {
    global0 = !vec2<bool>(any(vec2<bool>(select(global0.x, global0.x, true), false)), true);
    global0 = select(vec2<bool>(false, !global0.x), vec2<bool>(!(true | (global0.x && false)), global0.x), select(!func_3(), vec2<bool>(all(!vec4<bool>(global0.x, false, global0.x, false)), false), global0.x));
    var var_0 = !select(!vec3<bool>(-2147483647i >= arg_0.b.x, global0.x, true), select(vec3<bool>(all(vec4<bool>(true, global0.x, true, false)), global0.x, select(global0.x, false, global0.x)), !(!vec3<bool>(true, global0.x, true)), select(vec3<bool>(global0.x, false, true), select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x)), global0.x)), !vec3<bool>(global0.x, true, global0.x));
    let var_1 = 794f;
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, ~func_5(Struct_4(arg_0, var_0.x), Struct_5(arg_0.a, var_0.zx)).c.x, 2129u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c.x, ~_wgslsmith_add_u32(25464u, arg_0.c.x), 1u), vec3<u32>(95104u, ~firstLeadingBit(arg_0.a.b.x), arg_0.c.x)));
    return !select(func_3(), var_0.yx, vec2<bool>(true, false));
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!vec2<bool>(true, true && global0.x)));
    var var_0 = func_7(func_6(Struct_2(func_1(), firstTrailingBit(~vec4<i32>(u_input.a, u_input.a, -73918i, 2147483647i)), ~select(vec2<u32>(0u, 0u), vec2<u32>(36699u, 4294967295u), vec2<bool>(false, global0.x)))), func_5(Struct_4(func_5(Struct_4(Struct_2(Struct_1(u_input.b.zxz, vec2<u32>(1u, 15475u), vec3<f32>(-783f, -306f, 1908f)), u_input.b, vec2<u32>(4294967295u, 15015u)), global0.x), Struct_5(Struct_1(vec3<i32>(u_input.b.x, 1i, u_input.a), vec2<u32>(4294967295u, 0u), vec3<f32>(-247f, -1097f, 221f)), vec2<bool>(true, true))), true), Struct_5(Struct_1(vec3<i32>(-76322i, 0i, 60375i), ~vec2<u32>(44109u, 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-372f, 2205f, -805f))), vec2<bool>(true, true))), select(~1u, _wgslsmith_div_u32(~1u, 1u), false), func_5(Struct_4(func_5(Struct_4(Struct_2(Struct_1(vec3<i32>(u_input.b.x, 1i, u_input.a), vec2<u32>(4294967295u, 0u), vec3<f32>(-107f, 1000f, -852f)), vec4<i32>(1i, u_input.a, u_input.b.x, u_input.a), vec2<u32>(0u, 69678u)), false), Struct_5(Struct_1(vec3<i32>(17502i, u_input.a, 2147483647i), vec2<u32>(9758u, 74708u), vec3<f32>(484f, 1304f, -1101f)), vec2<bool>(global0.x, global0.x))), false), Struct_5(Struct_1(vec3<i32>(-1i, -1989i, u_input.b.x), ~vec2<u32>(43763u, 5821u), vec3<f32>(-727f, -509f, -1942f)), !(!vec2<bool>(global0.x, global0.x)))));
    var_0 = func_7(vec2<bool>(true, any(select(select(vec3<bool>(false, global0.x, true), vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, true)), vec3<bool>(global0.x, global0.x, global0.x), false))), func_5(Struct_4(func_5(Struct_4(Struct_2(Struct_1(var_0.a, vec2<u32>(var_0.b.x, 4931u), var_0.c), u_input.b, var_0.b), global0.x), Struct_5(Struct_1(var_0.a, vec2<u32>(21052u, 16197u), vec3<f32>(var_0.c.x, 176f, -239f)), vec2<bool>(global0.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -2255f) > _wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(var_0.b.x, 3101u, var_0.b.x, var_0.b.x), 0u, Struct_1(vec3<i32>(0i, var_0.a.x, -11256i), vec2<u32>(var_0.b.x, 0u), vec3<f32>(393f, var_0.c.x, var_0.c.x)), vec4<i32>(-18590i, 0i, var_0.a.x, -1i))).x), Struct_5(func_1(), select(vec2<bool>(global0.x, true), vec2<bool>(true, true), any(vec4<bool>(global0.x, true, false, global0.x))))), ~(var_0.b.x | abs(var_0.b.x)), func_5(Struct_4(func_5(Struct_4(Struct_2(Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, 758f, var_0.c.x)), u_input.b, vec2<u32>(9695u, 1u)), global0.x), Struct_5(Struct_1(vec3<i32>(u_input.b.x, 1i, 1i), var_0.b, var_0.c), vec2<bool>(false, true))), global0.x), Struct_5(Struct_1(vec3<i32>(2147483647i, u_input.a, -2147483647i) << (vec3<u32>(110192u, 51246u, 0u) % vec3<u32>(32u)), vec2<u32>(var_0.b.x, 4294967295u), _wgslsmith_f_op_vec3_f32(-var_0.c)), !(!vec2<bool>(global0.x, false)))));
    var var_1 = _wgslsmith_mod_vec4_u32(firstLeadingBit(~abs(~vec4<u32>(11300u, 3102u, 80317u, var_0.b.x))), min(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(24946u, 1u), vec2<u32>(1u, var_0.b.x)), reverseBits(0u), 4294967295u << (var_0.b.x % 32u), var_0.b.x), vec4<u32>(var_0.b.x, 19923u, 17003u, var_0.b.x) ^ vec4<u32>(4294967295u, 44229u, var_0.b.x, 1247u)), vec4<u32>(var_0.b.x, func_5(Struct_4(Struct_2(Struct_1(u_input.b.zxy, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x)), u_input.b, var_0.b), true), Struct_5(Struct_1(var_0.a, var_0.b, vec3<f32>(var_0.c.x, -285f, var_0.c.x)), vec2<bool>(false, true))).a.b.x, 1u, ~min(var_0.b.x, var_0.b.x))));
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1294f, -1001f, var_0.c.x), vec3<f32>(-367f, _wgslsmith_f_op_f32(-var_0.c.x), 797f)));
    global0 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a.x, _wgslsmith_f_op_f32(1000f * -806f), _wgslsmith_sub_i32(_wgslsmith_sub_i32(firstLeadingBit(-var_0.a.x), firstLeadingBit(_wgslsmith_sub_i32(var_0.a.x, 0i))), u_input.b.x));
}

