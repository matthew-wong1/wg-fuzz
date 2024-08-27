struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<i32>(-u_input.a.x, 993i);
    let var_1 = Struct_1(reverseBits(reverseBits(u_input.d)), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), u_input.c, _wgslsmith_mod_vec2_u32((~vec2<u32>(4294967295u, u_input.c) ^ ~vec2<u32>(u_input.c, u_input.c)) | _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.c)), vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(63831u, u_input.c) % vec2<u32>(32u))), (firstLeadingBit(vec2<u32>(4294967295u, u_input.c)) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32(vec2<u32>(25285u, 0u), ~vec2<u32>(4294967295u, u_input.c))));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(388f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -368f)))), 1123f)));
    var var_3 = !vec3<bool>(true, any(!var_1.b), true);
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 236f) * -1844f), var_2.x);
    return abs(vec3<u32>(~1u, 41727u | (reverseBits(u_input.c) | 0u), 0u));
}

fn func_2(arg_0: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-200f - -825f);
    let var_1 = Struct_1((select(min(vec3<i32>(arg_0.a.a.x, 7126i, arg_0.a.a.x), arg_0.a.a), -u_input.a, vec3<bool>(arg_0.a.b.x, true, arg_0.a.b.x)) << (~(arg_0.b | arg_0.b) % vec3<u32>(32u))) << (~func_3() % vec3<u32>(32u)), vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x), 33005u, countOneBits(arg_0.a.d));
    let var_2 = select(!vec3<bool>(var_1.b.x == any(vec4<bool>(false, var_1.b.x, true, true)), var_1.b.x, !var_1.b.x), vec3<bool>(!var_1.b.x, false, !all(vec3<bool>(var_1.b.x, false, var_1.b.x))), select(all(vec4<bool>(!var_1.b.x, arg_0.a.b.x, all(vec4<bool>(true, true, true, var_1.b.x)), false)), true, false));
    let var_3 = !(var_0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(693f))))));
    var var_4 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-666f)))) * _wgslsmith_f_op_f32(var_0 + -1908f)));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0.c;
    var_0 = Struct_1(vec3<i32>(-1i, 15834i, -38118i), select(vec3<bool>(!all(vec2<bool>(true, var_0.b.x)), arg_1, true), select(!select(var_0.b, var_0.b, true), vec3<bool>(false | arg_1, true, arg_0.b.b.x), true), true), ~_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(arg_0.c.d.x, 32876u)), ~arg_0.a.d), vec2<u32>(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(31410u, u_input.c, 35130u)), max(vec3<u32>(arg_0.a.c, 4294967295u, 1u), vec3<u32>(1u, 93399u, var_0.c))), 0u));
    let var_1 = Struct_3(Struct_1(select(var_0.a >> (vec3<u32>(var_0.d.x, 61036u, 21988u) % vec3<u32>(32u)), ~arg_0.a.a, !var_0.b) | vec3<i32>(select(arg_0.a.a.x, u_input.a.x, false), var_0.a.x >> (var_0.c % 32u), 2147483647i), !select(select(var_0.b, vec3<bool>(var_0.b.x, arg_1, arg_1), var_0.b.x), vec3<bool>(arg_0.b.b.x, arg_1, false), false), 0u, select(arg_0.c.d, ~vec2<u32>(33038u, 22532u) >> (reverseBits(vec2<u32>(u_input.c, 4294967295u)) % vec2<u32>(32u)), select(vec2<bool>(arg_0.a.b.x, false), arg_0.a.b.yz, arg_0.c.b.x))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-671f, _wgslsmith_f_op_f32(step(-667f, -272f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-926f)) * _wgslsmith_f_op_f32(floor(-215f))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f)) + _wgslsmith_f_op_f32(sign(var_1.c))), var_1.c);
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.a.x, 0i, _wgslsmith_mod_i32(-2858i, select(-2147483647i, arg_0.b.a.x, var_0.b.x))), vec3<i32>(abs(~0i), var_0.a.x, firstLeadingBit(u_input.b)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.a.x, u_input.a.x, -1269i), vec3<i32>(-15718i, var_1.a.a.x, var_1.b.b.a.x)), arg_0.b.a, ~arg_0.b.a), abs(~u_input.a), ~(-vec3<i32>(-1i, -1i, 14607i)))), !(!vec3<bool>(true, true & arg_0.b.b.x, false)), var_0.c, ~vec2<u32>(_wgslsmith_div_u32(var_1.b.b.d.x, 24u & arg_0.b.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(47151u, 28564u, 8050u, 1u), vec4<u32>(arg_0.a.c, u_input.c, var_1.a.c, 1u))));
    return Struct_2(Struct_1(vec3<i32>(~var_3.a.x, select(_wgslsmith_mult_i32(var_1.b.a.a.x, arg_0.a.a.x), -17911i, all(vec2<bool>(true, arg_1))), -(-4366i >> (u_input.c % 32u))), vec3<bool>(all(!vec4<bool>(false, false, var_3.b.x, true)), all(vec2<bool>(arg_0.b.b.x, false)) && arg_0.a.b.x, var_1.b.b.b.x), var_1.a.c, _wgslsmith_mult_vec2_u32(select(func_3().yx, arg_0.c.d, select(vec2<bool>(var_3.b.x, arg_0.a.b.x), vec2<bool>(true, var_0.b.x), true)), func_3().zz)), var_1.a, Struct_1(max(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_0.a.a.x, -29923i), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -1i, var_1.b.a.a.x), vec3<i32>(arg_0.c.a.x, var_0.a.x, var_0.a.x))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_0.a.x, u_input.e), u_input.d), vec3<i32>(var_3.a.x, -5889i, var_3.a.x) << (vec3<u32>(0u, u_input.c, 1u) % vec3<u32>(32u)))), var_1.a.b, u_input.c, select(max(_wgslsmith_mult_vec2_u32(var_3.d, vec2<u32>(50127u, 1u)), ~var_1.a.d), (vec2<u32>(116u, 0u) >> (vec2<u32>(u_input.c, 33932u) % vec2<u32>(32u))) ^ var_0.d, select(!var_1.b.c.b.zy, vec2<bool>(true, arg_0.a.b.x), select(var_0.b.xy, arg_0.c.b.xx, true)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> bool {
    let var_0 = false;
    var var_1 = func_4(Struct_2(arg_0.a, arg_0.a, arg_0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1713f, 756f) + _wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(arg_0.a.a, arg_0.a.b, 10538u, vec2<u32>(0u, 1u)), vec3<u32>(18672u, arg_1.x, u_input.c))))))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) * -640f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)))));
    var_1 = func_4(Struct_2(Struct_1(-vec3<i32>(25483i, u_input.d.x, arg_0.a.a.x), select(arg_0.a.b, var_1.a.b, true), 4294967295u, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, arg_1.x), ~vec2<u32>(4294967295u, u_input.c))), arg_0.a, func_4(Struct_2(Struct_1(var_1.c.a, vec3<bool>(false, true, true), arg_1.x, arg_1), Struct_1(vec3<i32>(var_1.b.a.x, arg_0.a.a.x, u_input.b), var_1.c.b, u_input.c, var_1.a.d), var_1.c), select(false, true, arg_0.a.b.x)).c), !(!all(func_4(Struct_2(Struct_1(vec3<i32>(var_1.a.a.x, -1i, arg_0.a.a.x), vec3<bool>(var_1.b.b.x, var_1.c.b.x, false), arg_0.b.x, arg_1), Struct_1(vec3<i32>(-34549i, arg_0.a.a.x, -2147483647i), arg_0.a.b, u_input.c, vec2<u32>(u_input.c, var_1.a.c)), arg_0.a), var_1.a.b.x).b.b)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1042f + _wgslsmith_f_op_f32(f32(-1f) * -809f)))));
    var_0 = -837f;
    var_0 = -720f;
    var var_1 = select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, false, any(vec2<bool>(false, false)), all(vec4<bool>(true, false, false, false))), false), vec4<bool>(!func_1(Struct_4(Struct_1(u_input.d, vec3<bool>(false, true, false), u_input.c, vec2<u32>(u_input.c, 30199u)), vec3<u32>(4294967295u, 53562u, u_input.c)), vec2<u32>(39664u, 4294967295u)), true, false, all(vec4<bool>(true, true, true, true))), true), vec4<bool>(0i < u_input.d.x, true, true, true), true);
    var_1 = !(!select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(all(vec4<bool>(true, false, var_1.x, false)), true, var_1.x, true), select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(var_1.x, true, false, var_1.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-func_4(func_4(Struct_2(Struct_1(vec3<i32>(u_input.b, u_input.d.x, -20788i), vec3<bool>(var_1.x, var_1.x, true), u_input.c, vec2<u32>(u_input.c, 1u)), Struct_1(u_input.d, var_1.www, u_input.c, vec2<u32>(4294967295u, 61413u)), Struct_1(u_input.a, vec3<bool>(var_1.x, var_1.x, var_1.x), u_input.c, vec2<u32>(u_input.c, 1u))), var_1.x), true).a.a.x, 51206i, 29141i), 4294967295u, _wgslsmith_sub_vec3_i32(abs(u_input.d), _wgslsmith_mult_vec3_i32(u_input.d, select(u_input.a, select(u_input.a, vec3<i32>(u_input.a.x, 56460i, 25016i), var_1.xxz), var_1.yyy))));
}

