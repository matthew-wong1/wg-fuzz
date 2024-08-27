struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    var var_0 = Struct_4(arg_3, global0.a.a, _wgslsmith_f_op_vec4_f32(floor(arg_3)));
    let var_1 = countOneBits(u_input.b.x);
    let var_2 = Struct_3(global0.b, Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, global0.b.c, arg_3.x))), global0.a.b.x, -(~global0.c.x)), global0.b, vec4<i32>(_wgslsmith_div_i32(global0.c.x, 10345i) | ~global0.a.d, 0i, reverseBits(_wgslsmith_sub_i32(-2147483647i, arg_2)), countOneBits(_wgslsmith_mod_i32(37107i, arg_2)))), min(global0.c.xx, vec2<i32>(countOneBits(-10507i), 26668i)), vec2<i32>(_wgslsmith_clamp_i32(7511i | _wgslsmith_clamp_i32(arg_2, global0.a.d, arg_2), -8167i, select(-2147483647i, ~global0.a.d, true)), ~(-(0i << (0u % 32u)))));
    var var_3 = var_2;
    global0 = Struct_2(var_3.a, Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -1000f), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.c.x * -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(948f, global0.a.b.x, var_0.b)) + _wgslsmith_f_op_f32(floor(-664f))))), var_3.d.x), vec4<i32>(2147483647i, -19466i, 1i, _wgslsmith_dot_vec2_i32(global0.c.xx ^ ~var_3.d, var_2.c)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_3.b.a.c, var_0.c.x, arg_0)), 1f, -1000f <= var_3.b.a.c))), 834f)), _wgslsmith_f_op_f32(-var_0.c.x)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> Struct_2 {
    global0 = Struct_2(global0.b, Struct_1(true, global0.b.b, 1000f, global0.a.d), global0.c);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c * 921f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.b.c)), arg_0))))));
    global0 = Struct_2(Struct_1(any(select(vec2<bool>(arg_1, global0.b.a), !vec2<bool>(global0.a.a, arg_1), global0.b.d <= 6770i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.b))), arg_0, _wgslsmith_add_i32(-13853i, -37703i) << (_wgslsmith_div_u32(u_input.a.x | u_input.a.x, 0u) % 32u)), global0.a, ~vec4<i32>(global0.c.x, i32(-1i) * -global0.a.d, global0.a.d, global0.c.x));
    global0 = Struct_2(Struct_1(!(var_0 < -1049f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(783f, _wgslsmith_f_op_f32(global0.a.b.x * var_0), 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c, arg_0, -1061f))))), _wgslsmith_f_op_f32(func_3((arg_0 > arg_0) & false, arg_1, _wgslsmith_sub_i32(-global0.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.d, -1i, 30359i, -18251i), global0.c)), vec4<f32>(_wgslsmith_f_op_f32(-1000f - -1359f), _wgslsmith_f_op_f32(-566f * 1873f), _wgslsmith_f_op_f32(360f * global0.b.c), -605f))), -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.c.zx, global0.c.zz, global0.c.yw), global0.c.zy)), Struct_1(any(vec4<bool>(false, !global0.a.a, true, arg_2.x < 2816u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.b)))), _wgslsmith_f_op_f32(func_3(!any(vec3<bool>(arg_1, arg_1, arg_1)), !any(vec3<bool>(global0.a.a, false, true)), 1i >> (1u % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, 294f, 1222f, var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-550f, var_0, -761f, global0.b.c))))), global0.a.d), vec4<i32>(_wgslsmith_add_i32(22264i, 22167i), -_wgslsmith_mult_i32(-1i, global0.b.d), global0.a.d, -(firstTrailingBit(2653i) & _wgslsmith_div_i32(global0.a.d, global0.b.d))));
    return Struct_2(Struct_1(global0.a.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -304f, -647f))))), arg_0, ~max(-2147483647i, global0.a.d) | global0.b.d), global0.b, ~vec4<i32>(-global0.a.d, 2147483647i, firstTrailingBit(global0.b.d), global0.c.x) & max(-(~vec4<i32>(65192i, global0.a.d, 21414i, -49379i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.d, global0.c.x, global0.a.d, global0.a.d), global0.c) ^ vec4<i32>(global0.c.x, global0.b.d, -17528i, 1i)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(564f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(676f))))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(f32(-1f) * -201f))));
    global0 = func_2(468f, false, vec2<u32>(1111u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 6059u), vec2<u32>(103504u, 24209u)), _wgslsmith_mod_u32(27894u, 4294967295u))) << (vec2<u32>(4294967295u | _wgslsmith_sub_u32(u_input.b.x, 30720u), _wgslsmith_mult_u32(46568u, reverseBits(u_input.a.x))) % vec2<u32>(32u)));
    var var_1 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-736f, arg_1.x)) - global0.b.c), true, firstLeadingBit(u_input.a.wx)).a.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-693f, arg_0.x, global0.a.b.x)))), _wgslsmith_f_op_f32(-global0.b.c), global0.b.d), func_2(802f, false & all(select(vec3<bool>(true, true, false), vec3<bool>(global0.b.a, global0.a.a, global0.a.a), global0.b.a)), select(_wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.b.x, u_input.a.x), u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 58454u), vec2<u32>(u_input.b.x, u_input.a.x))), ~(~vec2<u32>(29199u, 49471u)), !select(vec2<bool>(true, global0.b.a), vec2<bool>(global0.a.a, global0.b.a), vec2<bool>(true, global0.b.a)))).a, func_2(func_2(arg_0.x, true, abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 18296u), vec2<u32>(69848u, 10546u)))).b.c, !global0.a.a, _wgslsmith_mult_vec2_u32(~u_input.a.xz, ~vec2<u32>(115761u, u_input.a.x) & ~vec2<u32>(4294967295u, u_input.a.x))).c);
    let var_2 = Struct_2(var_1.a, Struct_1(var_1.a.a, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(2477f, arg_1.x)))), arg_1.x, var_1.a.b.x), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.b.x)) * -1459f)), ~(global0.a.d >> (u_input.a.x % 32u)) ^ -1i), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, _wgslsmith_div_i32(var_1.a.d, 33476i), var_1.c.x, _wgslsmith_dot_vec3_i32(var_1.c.yyx, vec3<i32>(2147483647i, var_1.a.d, var_1.b.d))));
    var var_3 = _wgslsmith_sub_vec3_i32(~vec3<i32>(var_1.c.x, min(global0.c.x, -1i) | _wgslsmith_mod_i32(12692i, -24316i), _wgslsmith_dot_vec4_i32(global0.c, firstTrailingBit(vec4<i32>(var_2.a.d, -5526i, var_2.c.x, var_1.b.d)))), -_wgslsmith_clamp_vec3_i32(var_2.c.yxx, var_2.c.wzw, -var_1.c.zyw));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-511f - -1637f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1341f, _wgslsmith_f_op_f32(-155f - -274f)))), true, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, countOneBits(0u), u_input.a.x >> (u_input.a.x % 32u)), 91902u), _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(94267u, u_input.a.x)))).a;
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = u_input.b;
    global0 = func_2(_wgslsmith_f_op_f32(func_3(all(vec3<bool>(true, true, true)), arg_0.a.a, arg_0.b.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.b.x, arg_0.a.b.x, global0.b.b.x, -168f) * vec4<f32>(-750f, -966f, -1133f, global0.a.b.x)) - vec4<f32>(global0.a.b.x, global0.b.b.x, arg_0.b.c, -1208f))))), global0.a.a, _wgslsmith_mult_vec2_u32(vec2<u32>(84976u, var_0.x), firstTrailingBit(~vec2<u32>(u_input.a.x, 15252u) >> (_wgslsmith_mod_vec2_u32(u_input.a.wy, vec2<u32>(u_input.a.x, var_0.x)) % vec2<u32>(32u)))));
    var var_1 = Struct_3(global0.a, func_2(-574f, global0.a.a, u_input.b), arg_0.c.yx, vec2<i32>(global0.b.d, ~max(2147483647i, arg_0.b.d)) << ((vec2<u32>(firstTrailingBit(69860u), var_0.x) & vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u)));
    return select(select(select(select(select(vec4<bool>(false, var_1.a.a, global0.a.a, var_1.a.a), vec4<bool>(var_1.a.a, var_1.a.a, true, var_1.b.a.a), vec4<bool>(true, true, arg_0.a.a, global0.a.a)), !vec4<bool>(true, var_1.a.a, arg_0.a.a, arg_0.b.a), var_1.b.a.a), !(!vec4<bool>(false, false, global0.a.a, false)), !(!vec4<bool>(true, var_1.a.a, true, true))), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(false, false, arg_0.b.a, var_1.b.a.a), !vec4<bool>(false, global0.b.a, arg_0.a.a, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, arg_0.a.a), vec4<bool>(var_1.b.a.a, true, var_1.b.a.a, true), !vec4<bool>(var_1.b.a.a, true, arg_0.b.a, false))), var_1.a.a), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.a.c, global0.b.c))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-649f)), _wgslsmith_f_op_f32(-761f - 483f))), !(!arg_0.a.a) && true, !arg_0.b.a, true), all(select(select(select(vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(global0.b.a, global0.b.a), var_1.a.a), select(vec2<bool>(false, arg_0.a.a), vec2<bool>(false, true), vec2<bool>(var_1.a.a, global0.b.a)), select(vec2<bool>(var_1.a.a, var_1.b.a.a), vec2<bool>(global0.b.a, true), vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(global0.a.a, arg_0.b.a), vec2<bool>(global0.a.a, true), vec2<bool>(false, false)), select(vec2<bool>(arg_0.a.a, false), vec2<bool>(var_1.b.a.a, arg_0.a.a), global0.b.a)), !(global0.b.a | true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.c, global0.b.c, -126f, 489f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c, -780f, global0.a.c, global0.b.b.x) * vec4<f32>(global0.a.c, -1019f, 434f, -252f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.b.x, global0.a.b.x, global0.a.c, global0.b.b.x), vec4<f32>(global0.a.c, -797f, -113f, global0.b.b.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.c, 1168f, global0.b.b.x, -382f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, global0.a.b.x, global0.a.b.x, global0.b.b.x)))))), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, 1f, -1241f, _wgslsmith_f_op_f32(-global0.b.b.x))));
    let var_1 = any(select(vec4<bool>(true, !(!global0.b.a), !var_0.b, !global0.a.a && var_0.b), func_4(Struct_2(func_1(global0.a.b.zz, vec3<f32>(-248f, -2119f, 746f), -1000f), global0.b, vec4<i32>(global0.b.d, -23323i, 36346i, -5326i))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.c, -1375f)) + _wgslsmith_f_op_f32(trunc(310f))), var_0.b, ~abs(vec2<u32>(68772u, 0u))).a.a));
    let var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true == any(vec4<bool>(false, var_1, global0.a.a, false)), ~global0.a.d >= global0.a.d, global0.a.d, var_0.c)), 1387f), !(!any(!vec2<bool>(true, var_1))), ~(~_wgslsmith_sub_vec2_u32(u_input.a.wx, vec2<u32>(u_input.b.x, 46008u))) >> (u_input.b % vec2<u32>(32u)));
    var var_3 = vec3<bool>(!var_1, !any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a.b.x - var_2.b.c), _wgslsmith_f_op_f32(abs(var_2.b.c))))) > global0.b.c);
    var var_4 = Struct_1(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.b.b, _wgslsmith_f_op_vec3_f32(-var_0.c.wyx))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(func_3(var_3.x, false, global0.a.d, var_0.a))) - -823f))), -global0.a.d);
    var_4 = var_2.b;
    global0 = var_2;
    var var_5 = !select(func_4(func_2(_wgslsmith_div_f32(var_4.c, var_2.b.c), true, vec2<u32>(31191u, 1u) << (u_input.a.xx % vec2<u32>(32u)))).yz, select(!select(var_3.yz, vec2<bool>(var_1, true), vec2<bool>(var_1, false)), vec2<bool>(var_2.b.a, var_3.x & true), var_3.x), var_3.xz);
    var var_6 = var_2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.xzy, vec3<u32>(min(0u, u_input.b.x), u_input.a.x, u_input.a.x), global0.b.a), ~(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(0u, 117504u)), firstTrailingBit(u_input.b), ~u_input.a.xy) << (vec2<u32>(~u_input.b.x, 18765u) % vec2<u32>(32u))));
}

