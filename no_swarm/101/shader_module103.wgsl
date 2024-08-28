struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 1u;

var<private> global2: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<bool> {
    global0 = ~(~_wgslsmith_sub_u32(4974u, 3907u));
    let var_0 = select(select(!arg_1, !vec3<bool>(any(arg_1), arg_0.c.d && arg_0.c.b, all(arg_1)), _wgslsmith_dot_vec2_u32(arg_0.c.a, ~vec2<u32>(0u, 1326u)) > select(~43808u, ~1u, true)), !select(!select(vec3<bool>(true, false, false), arg_1, vec3<bool>(false, true, true)), !select(arg_1, arg_1, arg_2.c.d), (arg_0.c.c.x > arg_2.c.c.x) & true), arg_0.c.b & arg_1.x);
    let var_1 = u_input.a;
    var var_2 = !(!var_0);
    var_2 = vec3<bool>(!all(select(!arg_1, select(var_0, var_0, vec3<bool>(false, false, arg_1.x)), vec3<bool>(true, true, true))), false, true);
    return !(!select(vec4<bool>(true, true, true, var_2.x), !(!vec4<bool>(var_0.x, false, false, true)), false));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    let var_0 = !vec2<bool>(all(select(vec4<bool>(true, false, arg_0.c.b, arg_0.c.b), func_3(arg_0, vec3<bool>(true, true, arg_0.c.d), arg_0), vec4<bool>(arg_0.c.b, true, false, false))), arg_0.c.b);
    global1 = _wgslsmith_mod_u32(~arg_0.a.x | _wgslsmith_mult_u32(0u, ~1u), arg_0.a.x & ~firstLeadingBit(~u_input.a));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.x + 608f), global2.a.x) * 1f) * _wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1243f, arg_0.c.c.x) * -371f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(850f)) + _wgslsmith_f_op_f32(floor(-704f)))))));
    var var_2 = Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.a << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), arg_0.a) ^ firstLeadingBit(~arg_0.a), ~(abs(vec2<u32>(0u, 4294967295u)) >> (abs(arg_0.c.a) % vec2<u32>(32u)))), _wgslsmith_div_i32(64324i | reverseBits(arg_0.b & 3887i), -58229i), arg_0.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)))));
    return Struct_3(arg_0.c, !(_wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(arg_0.c.c.x + 798f))) < -268f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = func_2(Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(14642u, 13488u, arg_1.a.e.x), vec3<u32>(0u, arg_1.a.e.x, arg_1.a.e.x)), arg_1.a.e.x), i32(-1i) * -2436i, Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, arg_2), arg_1.a.a ^ arg_1.a.e.zx), any(vec4<bool>(false, true, arg_1.b, false)) | true, arg_0.zz, !arg_1.b, abs(~arg_1.a.e))), 0i);
    var var_1 = _wgslsmith_clamp_vec2_u32(reverseBits(arg_1.a.e.yy), vec2<u32>(arg_1.a.e.x, 4294967295u), ~var_0.a.a);
    var var_2 = -(~(-(~vec4<i32>(u_input.b, 2147483647i, u_input.b, -19385i))));
    return countOneBits(0u);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    let var_0 = 4294967295u | (_wgslsmith_add_u32(_wgslsmith_mod_u32(firstLeadingBit(u_input.a), u_input.a), _wgslsmith_clamp_u32(select(3904u, 1u, true), 18039u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 32478u, u_input.a, u_input.a), vec4<u32>(1u, 100241u, 0u, u_input.a)))) | min(1u, func_4(arg_0.a, func_2(Struct_2(vec2<u32>(4294967295u, u_input.a), arg_2, Struct_1(vec2<u32>(u_input.a, 1u), false, global2.a.zx, false, vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a))), -22906i), ~15364u)));
    var var_1 = func_2(Struct_2(vec2<u32>(20604u, select(u_input.a, ~4294967295u, true)), -35869i, func_2(Struct_2(min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, var_0)), ~u_input.b, Struct_1(vec2<u32>(81752u, var_0), true, vec2<f32>(arg_0.a.x, 1518f), true, vec4<u32>(var_0, var_0, 1u, var_0))), u_input.b | countOneBits(-45909i)).a), arg_2).a;
    var var_2 = vec4<i32>(arg_2, reverseBits(arg_2), _wgslsmith_mult_i32(_wgslsmith_add_i32(-21759i, arg_2), firstLeadingBit(-1i)) ^ ~(-(arg_2 | u_input.b)), -19126i);
    let var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(global2.a.x - arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f)), -1504f));
    var var_4 = Struct_3(Struct_1(~var_1.a, u_input.a <= 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.x, 1000f))))), select(func_2(Struct_2(var_1.e.zw, -7592i, Struct_1(var_1.a, true, vec2<f32>(-489f, -214f), true, vec4<u32>(60638u, 84786u, 0u, 4294967295u))), arg_2).b, true, var_1.b) & all(!vec2<bool>(false, var_1.b)), ~(~reverseBits(var_1.e))), false);
    return Struct_2(vec2<u32>(~var_4.a.a.x, var_4.a.a.x), _wgslsmith_clamp_i32(_wgslsmith_add_i32(countOneBits(var_2.x), arg_2), -1i, _wgslsmith_dot_vec2_i32(var_2.zw, vec2<i32>(arg_2, 1i) << (var_4.a.e.xy % vec2<u32>(32u)))) & abs(_wgslsmith_dot_vec3_i32(select(var_2.xzz, vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<bool>(true, true, true)), vec3<i32>(arg_2, 23116i, arg_2))), func_2(Struct_2(abs(var_1.e.zx), _wgslsmith_clamp_i32(-2147483647i, ~arg_2, 0i), Struct_1(~vec2<u32>(var_0, var_4.a.a.x), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -452f) + vec2<f32>(700f, -879f)), false, var_1.e & vec4<u32>(var_0, var_1.a.x, var_1.a.x, var_1.e.x))), _wgslsmith_mult_i32(var_2.x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), var_2.yx)))).a);
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_vec3_f32(select(global2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.c.x), 719f, global2.a.x) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(717f, arg_0.c.c.x, global2.a.x) + vec3<f32>(arg_0.c.c.x, global2.a.x, global2.a.x))))), false)));
}

fn func_6(arg_0: Struct_4) -> Struct_4 {
    global0 = ~_wgslsmith_dot_vec4_u32(min(firstLeadingBit(max(vec4<u32>(77900u, u_input.a, u_input.a, u_input.a), vec4<u32>(20585u, u_input.a, 4294967295u, u_input.a))), select(~vec4<u32>(12120u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), u_input.a >= 1u)), ~vec4<u32>(firstLeadingBit(u_input.a), func_1(arg_0, vec3<f32>(-703f, arg_0.a.x, global2.a.x), u_input.b).a.x, u_input.a, 1u));
    var var_0 = min(u_input.b, u_input.b);
    let var_1 = func_3(Struct_2(vec2<u32>(0u, u_input.a) ^ abs(abs(vec2<u32>(u_input.a, 4294967295u))), i32(-1i) * -1i, Struct_1(max(vec2<u32>(43888u, 20634u) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), vec2<u32>(9340u, 12018u)), true, global2.a.yx, true, select(~vec4<u32>(u_input.a, u_input.a, 56779u, u_input.a), ~vec4<u32>(u_input.a, 1u, 1u, 0u), true))), func_3(Struct_2(firstLeadingBit(func_1(Struct_4(global2.a), global2.a, u_input.b).c.e.zx), u_input.b, func_1(arg_0, global2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -22409i, u_input.b, u_input.b), vec4<i32>(u_input.b, -58108i, u_input.b, -5129i))).c), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), vec3<bool>(true, u_input.b < u_input.b, any(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), func_1(Struct_4(arg_0.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, 854f, arg_0.a.x)), arg_0.a)), -1i)).zzz, Struct_2(~vec2<u32>(_wgslsmith_mult_u32(45822u, 1u), 0u), abs(_wgslsmith_sub_i32(u_input.b << (36874u % 32u), -1i ^ u_input.b)), Struct_1(~vec2<u32>(u_input.a, 4294967295u), !all(vec2<bool>(false, true)), _wgslsmith_div_vec2_f32(vec2<f32>(-1097f, 839f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(3000f, 329f))), true, vec4<u32>(1u, ~4294967295u, ~u_input.a, 27358u)))).yz;
    var var_2 = countOneBits(vec2<u32>(~0u, ~func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -1000f, 409f)), Struct_3(Struct_1(vec2<u32>(4294967295u, 1u), true, vec2<f32>(974f, arg_0.a.x), false, vec4<u32>(u_input.a, 37632u, 63293u, u_input.a)), false), u_input.a)));
    global1 = 4294967295u;
    return func_5(Struct_2(vec2<u32>(1u, ~(u_input.a | u_input.a)), -14824i, Struct_1(~(vec2<u32>(u_input.a, 39026u) & vec2<u32>(74361u, 33538u)), true, vec2<f32>(-350f, func_2(Struct_2(vec2<u32>(4294967295u, u_input.a), -2147483647i, Struct_1(vec2<u32>(76759u, 60270u), true, global2.a.xz, var_1.x, vec4<u32>(0u, 37237u, 0u, var_2.x))), -12375i).a.c.x), !(u_input.b > -27710i), ~(vec4<u32>(90165u, u_input.a, var_2.x, u_input.a) ^ vec4<u32>(u_input.a, 34991u, u_input.a, var_2.x)))));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_4) -> vec3<f32> {
    let var_0 = func_2(Struct_2(vec2<u32>(select(1u, ~u_input.a, true), 1u), u_input.b, Struct_1((vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(101848u, 44403u) % vec2<u32>(32u))) >> (vec2<u32>(32009u, u_input.a) % vec2<u32>(32u)), (u_input.b & 55297i) < (u_input.b >> (30090u % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_0.a.x)), true, ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << ((vec4<u32>(u_input.a, 46129u, 4294967295u, 4294967295u) >> (vec4<u32>(5590u, u_input.a, 36075u, 25039u) % vec4<u32>(32u))) % vec4<u32>(32u)))), abs(_wgslsmith_sub_i32(-16991i, func_1(Struct_4(arg_0.a), vec3<f32>(-569f, 259f, -2000f), ~67046i).b)));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1355f, var_0.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1713f - -630f)) + 155f)), _wgslsmith_f_op_f32(1880f * _wgslsmith_f_op_f32(global2.a.x - var_0.a.c.x)));
    let var_2 = true;
    global2 = func_6(func_5(Struct_2(firstLeadingBit(~var_0.a.e.zz), u_input.b, func_2(func_1(Struct_4(global2.a), vec3<f32>(arg_1.a.x, 2287f, global2.a.x), u_input.b), 0i).a)));
    global0 = 0u;
    return _wgslsmith_f_op_vec3_f32(trunc(arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(_wgslsmith_f_op_vec3_f32(func_7(func_6(func_5(func_1(Struct_4(global2.a), global2.a, u_input.b))), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-584f, -223f, 1070f), vec3<f32>(global2.a.x, global2.a.x, 789f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, global2.a.x)))))));
    let var_0 = ~vec4<u32>(u_input.a ^ reverseBits(~u_input.a), _wgslsmith_mod_u32(~(u_input.a | 16898u), 1u), max(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 18190u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 81766u, 19368u)), 4294967295u), func_1(Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, 1550f, global2.a.x) + vec3<f32>(global2.a.x, 412f, global2.a.x))), _wgslsmith_f_op_vec3_f32(global2.a + vec3<f32>(-334f, 1875f, -1143f)), _wgslsmith_mult_i32(-2147483647i, u_input.b) >> ((35074u | u_input.a) % 32u)).a.x);
    let var_1 = abs(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-var_1, -2482f, _wgslsmith_f_op_f32(-global2.a.x));
}

