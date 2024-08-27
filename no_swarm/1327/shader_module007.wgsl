struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -307f);
    var var_1 = -u_input.e;
    var_1 = ~(i32(-1i) * -5993i);
    let var_2 = u_input.d.x;
    var var_3 = arg_2;
    return Struct_2(u_input.b ^ vec3<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_2, u_input.a, -1i), vec4<i32>(var_2, var_2, -17895i, var_2))), -2147483647i, var_2));
}

fn func_3() -> f32 {
    var var_0 = firstTrailingBit(u_input.c);
    var_0 = ~u_input.c;
    let var_1 = (max(vec4<i32>(~(-24021i), ~1i, u_input.a, -15346i), abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i) << (vec4<u32>(0u, 1u, 36632u, 1u) % vec4<u32>(32u)))) & vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(u_input.d.x, 0i)), func_1(vec4<bool>(false, true, true, false), firstTrailingBit(vec2<u32>(0u, u_input.c)), ~u_input.c, true).a.x, u_input.a, func_1(vec4<bool>(true, true, true, true), vec2<u32>(u_input.c, 44236u), _wgslsmith_clamp_u32(u_input.c, u_input.c, 0u), true).a.x)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c, 14488u, u_input.c) & vec4<u32>(4294967295u, u_input.c, u_input.c, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 63262u, u_input.c, 2310u), vec4<u32>(1u, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 30690u, 22771u, u_input.c), vec4<u32>(0u, u_input.c, u_input.c, u_input.c))), u_input.c, 0u, ~(~_wgslsmith_mult_u32(32686u, 1u))) % vec4<u32>(32u));
    var_0 = ~u_input.c;
    var_0 = u_input.c;
    return 1471f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = 519i;
    var var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), arg_0.a, 106f) * vec3<f32>(_wgslsmith_div_f32(-346f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1763f * arg_0.a)))), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1277f, arg_0.a))), -739f));
    var var_3 = 129808i;
    let var_4 = Struct_5(false == !all(vec4<bool>(false, arg_0.e.x, arg_0.e.x, arg_0.e.x)), i32(-1i) * -27942i, 1i, vec3<u32>(countOneBits(~_wgslsmith_mult_u32(u_input.c, arg_2.x)), ~22489u, arg_0.d.x), arg_2);
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1276f)))), _wgslsmith_div_u32(arg_0.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_2.x, var_4.e.x), 44819u) ^ ~(0u & arg_2.x)), abs(abs(var_1.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, ~arg_2.x, ~150704u) ^ ~(vec3<u32>(4294967295u, arg_2.x, u_input.c) & vec3<u32>(0u, var_4.e.x, arg_0.d.x)), vec3<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.b, 30561u, arg_0.b, 18314u)), ~vec4<u32>(0u, 4294967295u, var_4.d.x, 4275u)), var_4.d.x, ~47661u), vec3<u32>(~firstTrailingBit(0u), ~(~0u), ~_wgslsmith_mod_u32(49871u, var_4.d.x))), vec2<bool>(false, false));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_sub_u32(~u_input.c, firstTrailingBit(~u_input.c));
    let var_2 = func_1(vec4<bool>(any(vec3<bool>(arg_1.e.x, true, true)) & all(select(arg_2.e, vec2<bool>(arg_2.e.x, false), vec2<bool>(arg_2.e.x, arg_1.e.x))), any(vec4<bool>(true, !arg_0, all(vec4<bool>(arg_1.e.x, arg_0, true, false)), arg_2.e.x)), false, false), vec2<u32>(~reverseBits(_wgslsmith_mod_u32(0u, arg_2.d.x)), arg_2.b), 23896u, all(func_2(Struct_1(_wgslsmith_f_op_f32(arg_1.a * -1001f), _wgslsmith_clamp_u32(var_1, 15987u, 0u), arg_1.c << (vec3<u32>(var_1, 21633u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(arg_1.d, arg_2.d), !arg_2.e), firstTrailingBit(vec2<i32>(-22251i, 53027i)), ~arg_2.d, Struct_2(-arg_2.c)).e));
    let var_3 = var_2;
    let var_4 = Struct_5(!arg_0, -1i & _wgslsmith_div_i32(1i, var_3.a.x), u_input.a, reverseBits(arg_1.d) >> (func_2(Struct_1(-408f, arg_1.b, vec3<i32>(var_2.a.x, 2147483647i, 41719i), arg_2.d, !vec2<bool>(true, arg_1.e.x)), vec2<i32>(-18339i, -1i), vec3<u32>(arg_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, arg_1.b, var_1, arg_2.b), vec4<u32>(var_1, 33133u, 52275u, arg_1.d.x)), select(4294967295u, 1u, true)), Struct_2(_wgslsmith_div_vec3_i32(var_2.a, arg_2.c))).d % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~func_2(arg_1, var_3.a.xx, arg_1.d, Struct_2(vec3<i32>(var_2.a.x, var_3.a.x, -2147483647i))).d, min(max(arg_1.d, vec3<u32>(4294967295u, 0u, var_1)), arg_2.d), vec3<u32>(1u, u_input.c << (1u % 32u), 4294967295u)) ^ ~(~(vec3<u32>(16642u, 1u, arg_1.d.x) & vec3<u32>(0u, 4294967295u, arg_2.d.x))));
    return func_2(func_2(func_2(func_2(arg_2, firstTrailingBit(vec2<i32>(var_3.a.x, var_4.b)), ~arg_1.d, Struct_2(vec3<i32>(var_0, arg_2.c.x, var_2.a.x))), func_1(!vec4<bool>(arg_0, false, arg_0, var_4.a), ~arg_2.d.xx, reverseBits(4294967295u), all(arg_1.e)).a.yz, ~_wgslsmith_div_vec3_u32(vec3<u32>(47248u, 43090u, 79620u), vec3<u32>(var_1, 28589u, var_1)), Struct_2(firstTrailingBit(vec3<i32>(var_0, arg_1.c.x, -21465i)))), vec2<i32>(_wgslsmith_mult_i32(var_0, var_2.a.x), var_3.a.x), func_2(func_2(arg_1, abs(vec2<i32>(-2147483647i, var_0)), ~vec3<u32>(u_input.c, 11510u, 8581u), Struct_2(u_input.b)), vec2<i32>(-19550i & var_3.a.x, 1567i), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_2.d.x, arg_1.d.x), vec3<u32>(32738u, var_4.d.x, 0u))), Struct_2(vec3<i32>(0i, 22115i, 0i) << (vec3<u32>(arg_2.b, 1u, 4294967295u) % vec3<u32>(32u)))).d, Struct_2(arg_2.c)), vec2<i32>(-(1i << (min(0u, 55950u) % 32u)), 10969i), vec3<u32>(var_4.d.x, ~firstTrailingBit(select(u_input.c, var_1, var_4.a)), 18804u), Struct_2(~(~(u_input.b >> (var_4.e % vec3<u32>(32u))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_5 {
    let var_0 = arg_0.a;
    let var_1 = vec4<bool>(arg_0.e.x, true, true, false);
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, 358f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(708f, arg_0.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-772f, -868f) * vec2<f32>(arg_0.a, arg_0.a))))));
    var var_3 = Struct_3(vec4<i32>(u_input.e, -2147483647i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(34303i, u_input.e | arg_0.c.x), -31009i), arg_0.c.x), var_0, arg_0.d.zx, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(457f, _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(var_2.x - var_2.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, arg_0.a)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))), -674f, var_0))));
    let var_4 = ((abs(var_3.c.x ^ 14821u) >> (~63795u % 32u)) << (67613u % 32u)) >> (arg_0.b % 32u);
    return Struct_5(false, _wgslsmith_div_i32(var_3.a.x, ~u_input.e & func_4(true, Struct_1(-728f, u_input.c, vec3<i32>(-1i, -26843i, arg_1.x), vec3<u32>(u_input.c, arg_0.d.x, arg_0.b), arg_0.e), func_4(arg_0.e.x, arg_0, Struct_1(var_0, var_4, arg_0.c, vec3<u32>(1u, 0u, u_input.c), var_1.wy), 356f), _wgslsmith_f_op_f32(exp2(var_0))).c.x), 0i, arg_0.d, vec3<u32>(arg_0.d.x >> (~var_3.c.x % 32u), _wgslsmith_dot_vec2_u32(var_3.c, var_3.c), var_4 ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(var_4, var_3.c.x, var_3.c.x, 4294967295u), vec4<u32>(arg_0.b, var_3.c.x, 9304u, 0u))));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_4(Struct_3(firstTrailingBit(firstTrailingBit(vec4<i32>(arg_1.c, -2147483647i, 1i, -2147483647i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f - -1248f)))), _wgslsmith_mult_vec2_u32(arg_1.e.xy, arg_0.zz), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_f_op_f32(ceil(-1064f)), _wgslsmith_f_op_f32(f32(-1f) * -712f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-370f, 468f, -324f))))))));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_sub_u32(reverseBits(u_input.c & firstTrailingBit(18342u)), 4294967295u) & u_input.c;
    let var_2 = -2147483647i;
    let var_3 = func_6(vec4<u32>(select(5056u, max(min(var_1, 4294967295u), u_input.c | 48051u), true), min(4294967295u, 42886u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(84957u, 17311u)), ~vec2<u32>(var_1, var_1)), ~33008u), func_5(func_4(true, func_2(Struct_1(173f, 63127u, u_input.b, vec3<u32>(22096u, 4294967295u, 60467u), vec2<bool>(var_0, var_0)), u_input.b.yz & vec2<i32>(-1i, u_input.d.x), vec3<u32>(u_input.c, 7162u, u_input.c) & vec3<u32>(var_1, 1u, u_input.c), func_1(vec4<bool>(true, var_0, false, var_0), vec2<u32>(43845u, 91097u), 16822u, false)), func_2(Struct_1(698f, 0u, vec3<i32>(var_2, -27736i, 95252i), vec3<u32>(53267u, var_1, 1u), vec2<bool>(var_0, var_0)), firstTrailingBit(u_input.d), vec3<u32>(var_1, 100754u, 4294967295u), func_1(vec4<bool>(true, true, var_0, var_0), vec2<u32>(23674u, 4291u), u_input.c, var_0)), 1000f), _wgslsmith_mod_vec2_i32(-min(u_input.b.yx, vec2<i32>(var_2, var_2)), reverseBits(u_input.d))));
    let var_4 = !any(select(!(!vec2<bool>(var_0, false)), vec2<bool>(var_1 >= 0u, var_0), var_0));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_6 = func_4(var_0, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-986f))))), 4294967295u, ~vec3<i32>(min(var_2, var_2), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, var_2, var_2), vec4<i32>(u_input.a, -22231i, var_2, var_2)), -var_2), firstTrailingBit(firstTrailingBit(vec3<u32>(var_3, var_1, 4294967295u))), vec2<bool>(false, true)), func_4(false, Struct_1(243f, ~u_input.c >> (var_1 % 32u), -(vec3<i32>(u_input.d.x, var_2, -37285i) | vec3<i32>(u_input.b.x, u_input.d.x, var_2)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1, var_3, var_3), vec3<u32>(31517u, 7629u, 20326u)), func_2(Struct_1(1118f, u_input.c, u_input.b, vec3<u32>(39588u, 28036u, 37522u), vec2<bool>(true, var_4)), u_input.b.yz, vec3<u32>(var_1, 2790u, 0u) | vec3<u32>(var_1, u_input.c, 2416u), Struct_2(vec3<i32>(u_input.b.x, 1i, u_input.a))).e), Struct_1(552f, reverseBits(1u), vec3<i32>(u_input.d.x, -1i, 44701i) | firstTrailingBit(u_input.b), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(var_3, 4294967295u, var_3)), abs(vec3<u32>(var_3, var_1, 46218u))), vec2<bool>(!var_4, var_0 | var_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(762f * -820f), -316f)), var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-113f + 1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(-1i) * -func_1(vec4<bool>(false, true, var_6.e.x, true), vec2<u32>(var_1, 40925u), var_3, true).a.yz, -reverseBits(vec2<i32>(-2147483647i, var_2)) >> (abs(func_5(Struct_1(var_6.a, var_1, u_input.b, vec3<u32>(u_input.c, var_1, var_6.d.x), vec2<bool>(var_6.e.x, true)), var_6.c.yz).d.yz) % vec2<u32>(32u))), min(vec2<i32>(1i, select(countOneBits(var_2), _wgslsmith_mod_i32(var_6.c.x, var_6.c.x), var_0)), var_6.c.yy), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(496f))), _wgslsmith_f_op_f32(min(var_6.a, 1000f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(797f, var_6.a) + vec2<f32>(var_6.a, var_6.a))), vec2<f32>(var_6.a, -617f))), vec4<i32>(-1i) * -(~(vec4<i32>(2147483647i, var_6.c.x, var_2, var_2) ^ vec4<i32>(-1i, u_input.a, var_2, u_input.a))));
}

