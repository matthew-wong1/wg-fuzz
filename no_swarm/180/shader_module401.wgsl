struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: bool) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(abs(countOneBits(u_input.c)), ~(~u_input.c), u_input.c) & 76638u, !vec4<bool>(!arg_1, any(vec4<bool>(true, true, true, true)), arg_1, any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), vec2<bool>(true, arg_1)))), _wgslsmith_mult_u32(~u_input.c, firstLeadingBit(~min(u_input.c, 17463u))), ~(~(-vec3<i32>(1i, -1i, -2147483647i))));
    var var_1 = u_input.c < _wgslsmith_dot_vec2_u32(vec2<u32>(4394u, ~(var_0.a | 4294967295u)), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(9423u, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(28109u, 4294967295u), vec2<u32>(4294967295u, var_0.a)))));
    var_1 = true;
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~(~var_0.c)), ~(~0u)), vec2<u32>(~reverseBits(66695u), min(1u, _wgslsmith_sub_u32(4294967295u, 1u))) ^ vec2<u32>(_wgslsmith_clamp_u32(var_0.c | 59558u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 1u, 4294967295u, 0u), vec4<u32>(var_0.c, 4294967295u, 23415u, var_0.a)), 0u), ~10963u));
    var var_3 = Struct_2(arg_0);
    return vec4<bool>(true, !(any(select(var_0.b.zw, var_0.b.yy, var_0.b.wz)) != (_wgslsmith_div_u32(var_2.x, 88770u) >= ~89663u)), (countOneBits(_wgslsmith_clamp_i32(47644i, var_0.d.x, var_0.d.x)) ^ var_0.d.x) > _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(var_0.d), var_0.d), -reverseBits(vec3<i32>(76916i, u_input.b, u_input.a))), var_0.d.x != (~(-1i) | (firstTrailingBit(15311i) >> (~14420u % 32u))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = !arg_2.b.b;
    var var_1 = 1u;
    var_1 = reverseBits(~arg_2.b.a ^ abs(u_input.c | 48906u));
    var_0 = select(vec4<bool>(arg_2.b.b.x || all(var_0.zyz), arg_0, var_0.x, true), !arg_2.c, select(select(arg_2.c, !func_3(-1585f, false), arg_2.b.b.x), vec4<bool>(arg_1.x, select(!arg_0, var_0.x, arg_0 & var_0.x), any(arg_2.b.b), true), true));
    let var_2 = arg_2.d;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_2.a)))))));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: i32) -> Struct_4 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(false, arg_0.c.zwx, Struct_3(arg_2, arg_0.b, vec4<bool>(false, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x), arg_0.d))), _wgslsmith_f_op_f32(-arg_2)), arg_2, !(arg_1 <= u_input.b))) + arg_2), Struct_1(~_wgslsmith_div_u32(13049u, 4294967295u ^ arg_0.d.x), select(vec4<bool>(true, arg_0.c.x, false, arg_0.b.b.x | arg_0.b.b.x), !vec4<bool>(arg_0.b.b.x, false, arg_0.b.b.x, false), arg_0.c), 121306u, abs(arg_0.b.d)), arg_0.b.b, ~vec3<u32>(u_input.c, arg_0.d.x, ~_wgslsmith_add_u32(u_input.c, u_input.c)));
    var var_1 = Struct_1(arg_0.d.x, func_3(_wgslsmith_f_op_f32(-606f - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(arg_2 + -1669f))), _wgslsmith_f_op_f32(floor(arg_2)) == -1102f), reverseBits(u_input.c ^ ~u_input.c), vec3<i32>(var_0.b.d.x, var_0.b.d.x, arg_0.b.d.x));
    var_0 = arg_0;
    var var_2 = 10071u;
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + var_0.a)), _wgslsmith_f_op_f32(abs(arg_2))))), var_1.b.x, Struct_2(277f));
    return Struct_4(var_3.a, all(select(!func_3(var_3.a.x, false).wy, func_3(var_3.a.x, true).wy, !(!var_1.b.wy))), var_3.c);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> bool {
    var var_0 = ~0u;
    let var_1 = vec3<i32>(5339i, _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b | -1i, _wgslsmith_mult_i32(u_input.b, 0i)), ~vec3<i32>(u_input.a, u_input.b | u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(25425i, u_input.b, 1i, u_input.a), vec4<i32>(2147483647i, 2147483647i, u_input.b, 0i)))), u_input.a << ((u_input.c << (countOneBits(u_input.c) % 32u)) % 32u));
    var_0 = 494u;
    let var_2 = func_1(Struct_3(arg_1.a, Struct_1(0u, select(vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, false, true, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, false)), u_input.c, firstTrailingBit(vec3<i32>(1i, u_input.a, var_1.x))), !select(!vec4<bool>(false, false, arg_0.b, arg_0.b), !vec4<bool>(true, false, true, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b)), vec3<u32>(max(1u, u_input.c), _wgslsmith_div_u32(~89010u, ~1u), ~u_input.c)), i32(-1i) * -33315i, arg_1.a, firstLeadingBit(firstTrailingBit(countOneBits(-1i)))).c;
    var var_3 = arg_0;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(!func_4(func_1(Struct_3(-495f, Struct_1(u_input.c, vec4<bool>(true, true, false, false), 4294967295u, vec3<i32>(u_input.b, -20762i, u_input.b)), vec4<bool>(true, true, true, true), vec3<u32>(1u, 1u, u_input.c)), -47029i, 1598f, u_input.a), func_1(Struct_3(-269f, Struct_1(41033u, vec4<bool>(true, true, false, true), 0u, vec3<i32>(14714i, u_input.a, u_input.a)), vec4<bool>(false, false, true, true), vec3<u32>(0u, u_input.c, u_input.c)), u_input.a, -442f, 64664i).c), true, false), countOneBits(1u) <= _wgslsmith_sub_u32(u_input.c, ~0u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-458f)), -2237f), _wgslsmith_f_op_f32(322f * _wgslsmith_f_op_f32(-908f + -130f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-612f, -119f), vec2<f32>(-2013f, -592f)) - func_1(Struct_3(415f, Struct_1(0u, vec4<bool>(false, var_0.x, false, true), u_input.c, vec3<i32>(u_input.b, -1i, u_input.b)), vec4<bool>(true, true, true, var_0.x), vec3<u32>(u_input.c, 4294967295u, u_input.c)), u_input.b, -1000f, -2147483647i).a) * func_1(Struct_3(-642f, Struct_1(u_input.c, vec4<bool>(true, false, var_0.x, false), u_input.c, vec3<i32>(u_input.b, 12641i, 2147483647i)), vec4<bool>(false, true, true, true), vec3<u32>(1u, 1u, u_input.c)), abs(1i), _wgslsmith_f_op_f32(f32(-1f) * -646f), 0i).a)));
    var var_2 = func_1(Struct_3(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1018f))))), Struct_1(u_input.c, select(func_3(-851f, false), !vec4<bool>(true, var_0.x, false, var_0.x), true), _wgslsmith_mult_u32(~u_input.c, firstTrailingBit(u_input.c)), ~vec3<i32>(-1i, 2147483647i, u_input.a)), vec4<bool>(all(select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x), true)), any(vec2<bool>(var_0.x, false)) && var_0.x, func_3(_wgslsmith_f_op_f32(step(-931f, var_1.x)), var_0.x & var_0.x).x, all(!var_0.zz)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(35619u, 4294967295u, u_input.c), reverseBits(vec3<u32>(u_input.c, u_input.c, u_input.c)))), ~_wgslsmith_add_i32(_wgslsmith_add_i32(-1i >> (u_input.c % 32u), firstTrailingBit(u_input.b)), countOneBits(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-641f - 1026f))) + _wgslsmith_f_op_f32(-var_1.x)), 104773i);
    var var_3 = true;
    var var_4 = func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a.x, var_1.x))))), all(var_0.yz), var_2.c), Struct_2(var_1.x));
    var var_5 = u_input.c;
    var var_6 = func_1(Struct_3(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-1250f - _wgslsmith_f_op_f32(step(2281f, var_2.a.x)))), Struct_1(~min(4379u, u_input.c), vec4<bool>(all(vec4<bool>(true, false, false, false)), true, func_4(Struct_4(vec2<f32>(var_2.c.a, var_2.c.a), var_2.b, var_2.c), var_2.c), func_1(Struct_3(-1627f, Struct_1(u_input.c, vec4<bool>(var_2.b, var_0.x, false, var_0.x), u_input.c, vec3<i32>(-5478i, 1i, 6591i)), vec4<bool>(false, var_2.b, var_0.x, var_0.x), vec3<u32>(60941u, u_input.c, 0u)), u_input.b, var_2.a.x, -2147483647i).b), _wgslsmith_add_u32(7458u, 2163u), -max(vec3<i32>(u_input.b, u_input.b, 15820i), vec3<i32>(46914i, u_input.a, u_input.b))), func_3(var_1.x, any(vec2<bool>(false, var_0.x)) && (u_input.c == u_input.c)), (vec3<u32>(11538u, 4294967295u, 1290u) << ((vec3<u32>(u_input.c, 43617u, u_input.c) >> (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<u32>(12505u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 57u), vec2<u32>(0u, u_input.c)), u_input.c & u_input.c)), _wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_add_i32(u_input.b, 40536i)), u_input.a), u_input.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))))), ~39236i);
    var_5 = select(countOneBits(8950u) | ~u_input.c, u_input.c, ((-1450f <= _wgslsmith_div_f32(-1564f, var_6.c.a)) != all(!vec4<bool>(var_6.b, var_2.b, var_6.b, var_0.x))) && func_4(Struct_4(var_2.a, var_6.b, func_1(Struct_3(var_6.c.a, Struct_1(u_input.c, vec4<bool>(true, true, var_6.b, var_6.b), u_input.c, vec3<i32>(1i, u_input.a, -2147483647i)), vec4<bool>(var_0.x, true, false, false), vec3<u32>(52010u, 31875u, 5717u)), u_input.b, 518f, 0i).c), var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1325f, var_2.c.a)), func_1(Struct_3(var_2.a.x, Struct_1(u_input.c, vec4<bool>(true, false, false, var_0.x), u_input.c, vec3<i32>(u_input.a, 1i, u_input.a)), vec4<bool>(var_6.b, var_0.x, false, var_0.x), vec3<u32>(16837u, u_input.c, 4765u)), u_input.a, -1436f, -2147483647i).a)) + vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_6.a.x - var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(812f)), var_6.a.x)))), -1i, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.b), -select(~vec2<i32>(-2147483647i, u_input.a), -vec2<i32>(2147483647i, 0i), any(vec4<bool>(var_2.b, true, false, true)))));
}

