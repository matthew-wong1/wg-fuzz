struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_3(Struct_2(Struct_1(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), _wgslsmith_dot_vec3_i32(u_input.a, -vec3<i32>(u_input.a.x, -1i, u_input.a.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(49694i, u_input.a.x, -30882i, -2147483647i), vec4<i32>(u_input.a.x, 9184i, -1i, -47883i))), ~_wgslsmith_mod_u32(1u, u_input.b) ^ ~u_input.b, -abs(~0i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1131f * 710f) - _wgslsmith_div_f32(-1159f, -110f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-876f, 1420f)), -790f))))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, false, false)), select(true, false, false)), vec3<bool>(true, true, select(false, false, false))), -firstTrailingBit(-u_input.a.x), -firstLeadingBit(_wgslsmith_div_i32(-2147483647i, u_input.a.x))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(801f, 1000f))) > -983f), vec2<f32>(-1468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-348f, -332f)))));
    var var_1 = false;
    var var_2 = max(select(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b, var_0.a.b, 59593u, var_0.a.b), vec4<u32>(30114u, 128107u, 0u, u_input.b))), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, u_input.b), ~var_0.a.b), var_0.a.a.a.x), _wgslsmith_div_u32(max(u_input.b, max(69354u, 1u)), 53303u)) >= ~(~u_input.b);
    var var_3 = vec4<bool>(var_0.a.a.a.x, true & var_0.b.a.x, !var_0.a.a.a.x, select(var_0.a.a.a.x, !(all(vec4<bool>(var_0.a.a.a.x, var_0.c, false, true)) & (0u < var_0.a.b)), false));
    var_0 = Struct_3(Struct_2(var_0.b, var_0.a.b, 1i, _wgslsmith_f_op_f32(f32(-1f) * -407f)), var_0.b, true, var_0.d);
    return -5415i;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(arg_0, arg_0.a, arg_0.a.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, 328f)), vec2<f32>(arg_0.d, 1182f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1179f, arg_0.d)))))));
    let var_1 = var_0.b.a.x;
    let var_2 = !all(select(!arg_0.a.a, select(!vec3<bool>(true, true, var_0.c), var_0.a.a.a, select(vec3<bool>(arg_0.a.a.x, var_0.c, true), vec3<bool>(var_0.c, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.a.x)), vec3<bool>(!arg_0.a.a.x, true, arg_0.a.a.x)));
    var_0 = Struct_3(Struct_2(arg_0.a, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(16666u, u_input.b, 61617u, 4294967295u), ~vec4<u32>(0u, 4294967295u, u_input.b, 68219u)), func_3(), _wgslsmith_f_op_f32(arg_0.d - 866f)), arg_0.a, any(select(vec4<bool>(var_0.b.a.x, !arg_0.a.a.x, true, !arg_0.a.a.x), vec4<bool>(!arg_0.a.a.x, !var_0.c, false || var_0.c, true), vec4<bool>(all(arg_0.a.a.zx), !var_2, true, !var_0.a.a.a.x))), vec2<f32>(arg_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d.x, arg_0.d)), _wgslsmith_f_op_f32(select(arg_0.d, 1101f, any(var_0.a.a.a))))));
    return arg_0.a;
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(Struct_2(Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), ~(-4202i), _wgslsmith_sub_i32(min(u_input.a.x, 2147483647i), u_input.a.x << (1936u % 32u))), ~1u, u_input.a.x, -429f));
    let var_1 = Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(var_0.a, 2147483647i, -10494i), 4294967295u, u_input.a.x, -698f)), 21077u, u_input.a.x, _wgslsmith_f_op_f32(select(-1058f, _wgslsmith_f_op_f32(f32(-1f) * -789f), false || var_0.a.x)))), _wgslsmith_clamp_u32(u_input.b, ~_wgslsmith_clamp_u32(u_input.b, 1u, 59136u), u_input.b) & ~countOneBits(1u), 0i, _wgslsmith_f_op_f32(f32(-1f) * -720f));
    var_0 = Struct_1(vec3<bool>(var_0.a.x, -39298i != ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 51438i, u_input.a.x, 1i), vec4<i32>(-45i, -2147483647i, var_0.b, 1i)), !(!var_1.a.a.x != false)), -var_0.c, var_0.c);
    var var_2 = reverseBits(countOneBits(min(vec2<u32>(u_input.b, 1u), vec2<u32>(var_1.b << (var_1.b % 32u), 1u << (u_input.b % 32u)))));
    var var_3 = Struct_3(Struct_2(func_2(Struct_2(Struct_1(vec3<bool>(true, var_1.a.a.x, false), 2147483647i, var_1.a.c), _wgslsmith_mod_u32(var_2.x, u_input.b), ~var_0.b, var_1.d)), _wgslsmith_div_u32(~59273u, ~4093u) | ~var_1.b, _wgslsmith_add_i32(var_1.c << (abs(1u) % 32u), -2147483647i), _wgslsmith_f_op_f32(trunc(var_1.d))), func_2(Struct_2(var_1.a, u_input.b, _wgslsmith_mult_i32(-2147483647i, var_1.a.b), _wgslsmith_div_f32(-1805f, var_1.d))), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + var_1.d), -332f)));
    return Struct_3(Struct_2(var_1.a, 25692u, 2147483647i, var_1.d), func_2(var_1), any(vec3<bool>(false, var_3.b.a.x, all(var_1.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.d.x, var_1.d), vec2<f32>(-1106f, 761f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1266f, var_1.d), vec2<f32>(449f, -415f)), _wgslsmith_f_op_vec2_f32(-var_3.d)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = func_1().a.b;
    let var_1 = vec4<i32>(2147483647i, u_input.a.x, abs(_wgslsmith_div_i32(-abs(2147483647i), arg_1.a.c)), _wgslsmith_mod_i32(-max(-2147483647i, arg_1.b.c) & _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), ~vec3<i32>(-2147483647i, -1i, -2147483647i)), 1i));
    var_0 = arg_1.a.b;
    var var_2 = arg_1.a;
    var var_3 = -1812f;
    return select(vec4<bool>(func_2(func_1().a).a.x, true, arg_3.x, arg_1.a.a.a.x), arg_3, arg_3);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_0.zyz;
    var var_1 = func_4(arg_2.b, func_1(), -489f, arg_0).wwz;
    let var_2 = select(vec3<bool>(1934f < _wgslsmith_f_op_f32(round(-1359f)), var_1.x, arg_2.b.a.x), arg_0.yyy, arg_0.x & (u_input.b >= arg_1.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.d + _wgslsmith_f_op_f32(-arg_2.d.x)), arg_2.a.d, func_1().a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-325f, arg_2.d.x, arg_2.d.x, arg_2.d.x) - vec4<f32>(704f, 461f, -150f, arg_2.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, arg_2.a.d, 1000f, 1000f) - vec4<f32>(arg_2.a.d, arg_2.a.d, arg_2.a.d, 1000f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-398f)), -120f, -618f, 554f)));
    let var_4 = arg_2.a.a;
    return func_1().a.a;
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    let var_0 = true;
    var var_1 = -1882f;
    var var_2 = select(arg_0.a.yx, !(!arg_0.a.xz), arg_0.a.xy);
    let var_3 = func_1();
    var_1 = -400f;
    return Struct_3(Struct_2(Struct_1(vec3<bool>(var_0, var_0, true), arg_0.c, firstTrailingBit(abs(14582i))), var_3.a.b, max(arg_0.c, ~_wgslsmith_clamp_i32(arg_0.c, -24797i, arg_0.b)), 764f), Struct_1(select(vec3<bool>(any(var_3.b.a), all(vec2<bool>(false, var_0)), true), vec3<bool>(true, true, false), true || select(arg_0.a.x, false, var_3.a.a.a.x)), -1i, var_3.b.b & arg_0.b), all(var_3.a.a.a.xy), var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(~abs(vec3<u32>(u_input.b, u_input.b, 0u)));
    let var_1 = false;
    let var_2 = -u_input.a.yy;
    var var_3 = func_6(func_5(select(func_4(Struct_1(vec3<bool>(true, true, true), 0i, var_2.x), func_1(), _wgslsmith_f_op_f32(f32(-1f) * -934f), select(vec4<bool>(var_1, true, false, true), vec4<bool>(var_1, var_1, false, var_1), true)), select(func_4(Struct_1(vec3<bool>(var_1, true, false), -72359i, u_input.a.x), Struct_3(Struct_2(Struct_1(vec3<bool>(var_1, var_1, true), -2147483647i, 1i), 4294967295u, u_input.a.x, -122f), Struct_1(vec3<bool>(true, false, true), var_2.x, var_2.x), var_1, vec2<f32>(-1994f, 2057f)), -948f, vec4<bool>(true, false, false, var_1)), func_4(Struct_1(vec3<bool>(true, true, true), u_input.a.x, 0i), Struct_3(Struct_2(Struct_1(vec3<bool>(var_1, var_1, true), var_2.x, var_2.x), 21429u, u_input.a.x, 593f), Struct_1(vec3<bool>(var_1, var_1, false), -24513i, -1i), false, vec2<f32>(1000f, 1673f)), -1653f, vec4<bool>(var_1, var_1, var_1, var_1)), select(vec4<bool>(true, false, var_1, true), vec4<bool>(false, true, var_1, true), true)), !func_2(Struct_2(Struct_1(vec3<bool>(var_1, true, true), -14469i, var_2.x), 28123u, var_2.x, -183f)).a.x), ~(~(~vec3<u32>(0u, 4294967295u, var_0.x))), func_1()));
    var var_4 = func_1();
    var_4 = func_1();
    let var_5 = func_2(var_3.a).c;
    var_0 = vec3<u32>(_wgslsmith_sub_u32(~select(var_4.a.b, var_4.a.b, false), _wgslsmith_dot_vec2_u32(reverseBits(var_0.yx), ~var_0.yx)), ~u_input.b, _wgslsmith_dot_vec2_u32((var_0.yz >> (vec2<u32>(4294967295u, var_4.a.b) % vec2<u32>(32u))) << (min(var_0.xx, vec2<u32>(0u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(max(vec2<u32>(0u, var_4.a.b), var_0.zy), vec2<u32>(var_4.a.b, var_0.x)))) & min(reverseBits(~countOneBits(vec3<u32>(var_3.a.b, 49742u, var_4.a.b))), min(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(var_0.x, 1u, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a.b, u_input.b, var_4.a.b), vec3<u32>(var_3.a.b, u_input.b, 1u)), var_3.b.a), min(vec3<u32>(36407u, 1u, 7554u), vec3<u32>(21555u, 1233u, 46418u)) ^ (vec3<u32>(var_0.x, 8238u, 101655u) & vec3<u32>(4294967295u, var_4.a.b, 4294967295u))));
    var var_6 = var_4.b.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec2<u32>(var_0.x & var_0.x, var_3.a.b))), vec3<i32>(-var_2.x, func_5(select(!vec4<bool>(var_6.x, var_4.c, true, true), vec4<bool>(false, var_1, var_6.x, var_1), !vec4<bool>(var_1, true, var_4.b.a.x, false)), vec3<u32>(var_4.a.b, 0u, u_input.b), func_6(Struct_1(vec3<bool>(false, true, true), u_input.a.x, 0i))).b, -var_2.x), 0i, select(~((var_5 ^ -2147483647i) >> (~var_0.x % 32u)), ~reverseBits(func_6(var_4.a.a).b.c), var_4.c), u_input.a.x);
}

