struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = -(~(-10397i));
    var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(min(-1i, 6269i), ~22853i), 1i, min(firstLeadingBit(28257i), select(-23653i, -1101i, true)), 3081i >> (arg_0.b.x % 32u)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -29410i, 0i, 87734i), _wgslsmith_clamp_vec4_i32(vec4<i32>(47167i, -1i, -1i, 48670i), vec4<i32>(30835i, -26937i, 20183i, 0i), vec4<i32>(42300i, -40626i, -11404i, 47615i)))), -_wgslsmith_div_i32(_wgslsmith_sub_i32(firstTrailingBit(-17227i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2956i, -2147483647i, 0i, -31087i), vec4<i32>(2147483647i, -2147483647i, 1i, 7669i))), 1i));
    var var_1 = arg_0.a;
    var var_2 = ~vec2<u32>(min(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), select(19874u, u_input.a.x, false)), _wgslsmith_mult_u32(min(u_input.a.x, 13829u), 39211u)), countOneBits(max(10917u, 4294967295u) >> (arg_0.b.x % 32u)));
    let var_3 = Struct_3(countOneBits(~(-_wgslsmith_div_i32(-21328i, -31071i))), select(~vec4<u32>(~u_input.a.x, select(u_input.a.x, var_2.x, arg_0.d.x), 37496u, var_2.x), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 1u, arg_0.b.x, var_2.x), vec4<u32>(0u, 4294967295u, 1u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_2.x, arg_0.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 22795u, 31128u))), arg_0.d.x), Struct_2(true, Struct_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, -11257i, 1275i, -40632i), min(vec4<i32>(-31305i, 1i, -2147483647i, 22800i), vec4<i32>(-17366i, -1i, -1i, 2147483647i))), !any(vec4<bool>(arg_0.c, arg_0.d.x, true, arg_0.c)), arg_0.d.yx, ~4294967295u >> (0u % 32u))));
    return 2147483647i;
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = Struct_3(abs(_wgslsmith_clamp_i32(~arg_0, i32(-1i) * -2147483647i, _wgslsmith_add_i32(-1i, 14489i))) ^ countOneBits(0i), vec4<u32>(u_input.a.x, u_input.a.x, ~5330u, u_input.a.x) << (~((vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 27784u) << (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u) % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(u_input.a.x, 0u, 1u, 42052u))) % vec4<u32>(32u)), Struct_2(0u <= min(76696u, u_input.a.x), Struct_1(-vec4<i32>(-2147483647i, arg_0, 0i, arg_0), true, vec2<bool>(true, true), _wgslsmith_add_u32(~u_input.a.x, u_input.a.x << (0u % 32u)))));
    var_0 = Struct_3(_wgslsmith_div_i32(func_3(Struct_4(_wgslsmith_f_op_f32(883f - -905f), abs(u_input.a), true, vec3<bool>(var_0.c.a, var_0.c.a, true))), countOneBits(_wgslsmith_mod_i32(~1i, _wgslsmith_sub_i32(arg_0, var_0.a)))), ~var_0.b, Struct_2(select(var_0.c.a, any(select(var_0.c.b.c, vec2<bool>(false, var_0.c.a), vec2<bool>(var_0.c.a, var_0.c.a))), _wgslsmith_add_i32(arg_0, -31531i) <= -var_0.c.b.a.x), var_0.c.b));
    var_0 = Struct_3(0i, var_0.b, Struct_2(!var_0.c.a, var_0.c.b));
    var_0 = Struct_3(-var_0.c.b.a.x, abs(_wgslsmith_div_vec4_u32(var_0.b, select(var_0.b | vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, var_0.c.b.d), vec4<u32>(17804u, 1u, u_input.a.x, var_0.b.x), vec4<bool>(false, true, true, var_0.c.b.b)))), Struct_2(u_input.a.x <= 4294967295u, Struct_1(reverseBits(~vec4<i32>(-558i, -3705i, 29268i, var_0.a)), var_0.c.a, select(!vec2<bool>(var_0.c.b.c.x, false), vec2<bool>(true, false), vec2<bool>(true, true)), max(_wgslsmith_sub_u32(var_0.b.x, 21861u), ~4294967295u))));
    let var_1 = Struct_5(_wgslsmith_mult_vec3_i32(var_0.c.b.a.zxz ^ ~min(var_0.c.b.a.wxw, var_0.c.b.a.zxx), vec3<i32>(2147483647i, -var_0.c.b.a.x, 57380i)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, -1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-622f * 761f), -1437f), _wgslsmith_f_op_f32(round(-1951f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1040f), _wgslsmith_f_op_f32(1310f - 1612f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1000f), vec2<f32>(640f, -798f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -220f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.a)), 720f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_1.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, 954f) - vec2<f32>(302f, 356f)), vec2<f32>(3202f, arg_1.a)))) - _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_3.x, -2147483647i, arg_0.a.x) >> (u_input.a.x % 32u), -24134i))));
    let var_1 = vec4<bool>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_3.xy, -arg_3.xz), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_3.yz, vec2<i32>(-29687i, 25502i)), countOneBits(0i))) >= _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-26475i, -1i), _wgslsmith_clamp_i32(arg_0.a.x, arg_0.a.x, arg_3.x), arg_0.a.x), _wgslsmith_mod_vec3_i32(max(arg_0.a.wxx, vec3<i32>(0i, arg_0.a.x, -1i)), select(vec3<i32>(-44438i, arg_3.x, arg_3.x), arg_0.a.xxz, arg_0.b))), all(vec4<bool>(_wgslsmith_div_u32(32303u, 17537u) >= _wgslsmith_mod_u32(0u, arg_0.d), any(vec4<bool>(false, false, false, true)), false, arg_0.b)), true, arg_3.x >= _wgslsmith_sub_i32(arg_0.a.x, -1i));
    var var_2 = Struct_1(~arg_0.a, true, !var_1.zz, _wgslsmith_add_u32(4294967295u, ~u_input.a.x));
    let var_3 = max(i32(-1i) * -1i, _wgslsmith_clamp_i32(~(~arg_3.x) & -20151i, _wgslsmith_add_i32(arg_3.x, arg_0.a.x), -1i));
    var_2 = arg_0;
    return min(~(~var_2.d), firstTrailingBit(~select(64864u, _wgslsmith_sub_u32(4294967295u, arg_0.d), arg_0.c.x)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(all(vec4<bool>(arg_0.d.x, true, !any(arg_0.d), !any(vec3<bool>(true, arg_3, arg_0.d.x)))), Struct_1(-vec4<i32>(_wgslsmith_mult_i32(arg_1.x, arg_2.c.b.a.x), 0i, -2147483647i & arg_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, arg_1.x, 2147483647i), arg_2.c.b.a)), arg_0.a >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))), !(!select(vec2<bool>(false, false), vec2<bool>(arg_0.d.x, true), arg_3)), u_input.a.x | (arg_0.b.x & ~17718u)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(round(arg_0.a)), ~_wgslsmith_div_vec2_u32(reverseBits(arg_2.b.wz) | ~u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a, abs(arg_2.b.zz), vec2<u32>(u_input.a.x, arg_0.b.x) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.b.d, var_0.b.d), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2.b.zxw, vec3<u32>(arg_0.b.x, 1u, 57877u), arg_2.b.www), ~vec3<u32>(0u, var_0.b.d, var_0.b.d))) >= _wgslsmith_sub_u32(~var_0.b.d, ~var_0.b.d), select(select(arg_0.d, !select(vec3<bool>(var_0.b.b, arg_3, true), vec3<bool>(true, false, false), false), !select(vec3<bool>(arg_0.c, arg_2.c.a, false), vec3<bool>(true, arg_2.c.a, true), true)), vec3<bool>(false, _wgslsmith_mod_u32(47148u, 4294967295u) < arg_2.b.x, !all(arg_0.d)), true && !all(vec3<bool>(true, true, arg_0.c))));
    var var_2 = abs(_wgslsmith_add_u32(~abs(1u), func_1(Struct_1(-arg_2.c.b.a, all(vec2<bool>(arg_0.c, var_1.d.x)), vec2<bool>(false, false), ~4294967295u), Struct_4(_wgslsmith_div_f32(-739f, -1000f), arg_2.b.yz, any(vec4<bool>(false, var_1.d.x, false, var_0.b.c.x)), var_1.d), -572f, abs(vec3<i32>(var_0.b.a.x, var_0.b.a.x, arg_1.x)))));
    var var_3 = Struct_1(firstTrailingBit(var_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1169f, 1000f)) - _wgslsmith_f_op_f32(-arg_0.a)) == 646f, !var_0.b.c, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 44088u), vec2<u32>(106824u, 1u)), ~u_input.a.x, 1u), select(_wgslsmith_mult_vec3_u32(arg_2.b.zzz, arg_2.b.wyy), select(arg_2.b.xyz, arg_2.b.wyx, var_1.d), vec3<bool>(true, true, true)))));
    var_2 = select(7567u, 1u, !any(select(vec4<bool>(false, var_0.b.c.x, true, true), select(vec4<bool>(var_0.a, var_0.b.b, false, var_1.c), vec4<bool>(false, true, arg_2.c.b.c.x, false), true), var_0.b.a.x <= -6189i)));
    return Struct_1(vec4<i32>(var_0.b.a.x, arg_2.a ^ select(2438i, 13076i, true), ~(_wgslsmith_mult_i32(var_3.a.x, var_0.b.a.x) ^ _wgslsmith_dot_vec4_i32(var_0.b.a, arg_2.c.b.a)), min(~arg_1.x ^ _wgslsmith_div_i32(arg_1.x, arg_1.x), _wgslsmith_dot_vec2_i32(arg_2.c.b.a.yy, abs(vec2<i32>(var_3.a.x, -1i))))), all(var_1.d.xx), vec2<bool>(false, any(select(select(vec2<bool>(true, true), arg_2.c.b.c, var_1.c), vec2<bool>(var_0.a, arg_2.c.b.b), select(var_0.b.c, vec2<bool>(false, true), var_0.b.c)))), ~(~var_3.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(-363f, ~max(vec2<u32>(u_input.a.x, 0u), firstLeadingBit(vec2<u32>(u_input.a.x, 4294967295u))), false, vec3<bool>(true, true, true)), vec2<i32>(_wgslsmith_div_i32(1i >> (func_1(Struct_1(vec4<i32>(2147483647i, -24278i, 13894i, 4526i), true, vec2<bool>(true, false), 0u), Struct_4(-927f, vec2<u32>(u_input.a.x, 66201u), true, vec3<bool>(false, true, false)), -1625f, vec3<i32>(-28587i, -2147483647i, 2147483647i)) % 32u), 1i), _wgslsmith_add_i32(min(_wgslsmith_div_i32(1i, -8570i), -1i), abs(1i << (u_input.a.x % 32u)))), Struct_3(~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, 30143i, 63499i), _wgslsmith_sub_i32(0i, -69485i), -2147483647i), vec4<u32>(~u_input.a.x, 1u, u_input.a.x, u_input.a.x), Struct_2(true, Struct_1(vec4<i32>(10043i, 23078i, 0i, 2147483647i), true, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), 4294967295u ^ u_input.a.x))), !(!(!all(vec4<bool>(false, false, true, false)))));
    let var_1 = Struct_3(-_wgslsmith_dot_vec4_i32(var_0.a, countOneBits(vec4<i32>(-2147483647i, 0i, var_0.a.x, 11448i)) << (~vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u))), abs(~(vec4<u32>(0u, 0u, 42459u, 4294967295u) >> (vec4<u32>(1u, 33207u, 0u, var_0.d) % vec4<u32>(32u)))) >> (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.d, 51453u, 23187u, 4294967295u)), _wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, 40729u, 1u, 1u), vec4<u32>(1u, 738u, 11860u, var_0.d)), ~vec4<u32>(1u, var_0.d, 14546u, u_input.a.x))) % vec4<u32>(32u)), Struct_2(func_4(Struct_4(-601f, ~u_input.a, any(vec3<bool>(true, var_0.c.x, false)), vec3<bool>(false, var_0.b, var_0.b)), vec2<i32>(i32(-1i) * -37003i, 15784i), Struct_3(_wgslsmith_add_i32(9027i, var_0.a.x), min(vec4<u32>(u_input.a.x, var_0.d, u_input.a.x, 1u), vec4<u32>(var_0.d, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_2(false, Struct_1(var_0.a, var_0.c.x, var_0.c, var_0.d))), true).c.x, func_4(Struct_4(-1450f, vec2<u32>(4294967295u, var_0.d), var_0.a.x > 3791i, select(vec3<bool>(var_0.b, true, false), vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, var_0.b, false))), var_0.a.zz, Struct_3(var_0.a.x, vec4<u32>(29265u, 31855u, u_input.a.x, 77128u) & vec4<u32>(0u, u_input.a.x, var_0.d, u_input.a.x), Struct_2(var_0.b, Struct_1(var_0.a, true, var_0.c, u_input.a.x))), -1056f <= _wgslsmith_f_op_f32(select(-674f, -530f, true)))));
    var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(step(-160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2076f))))), var_1.b.wz, !all(vec4<bool>(var_1.c.b.b, false, var_0.c.x, var_1.c.b.c.x)) | var_0.b, select(select(vec3<bool>(var_1.c.b.b, var_1.c.b.c.x, true), select(vec3<bool>(false, true, var_1.c.a), vec3<bool>(true, var_0.b, false), vec3<bool>(false, var_0.b, false)), vec3<bool>(true, true, false)), !(!vec3<bool>(var_1.c.b.b, var_0.b, false)), !select(vec3<bool>(var_0.c.x, false, true), vec3<bool>(var_1.c.a, false, var_1.c.a), true))), abs(var_0.a.wy), Struct_3(var_1.c.b.a.x, ~var_1.b, var_1.c), true);
    var_0 = Struct_1(var_1.c.b.a, var_1.c.b.b, select(var_0.c, func_4(Struct_4(-721f, vec2<u32>(var_1.b.x, u_input.a.x) & vec2<u32>(var_1.c.b.d, 0u), var_1.c.b.b, select(vec3<bool>(false, false, var_1.c.b.b), vec3<bool>(var_1.c.b.b, true, var_0.b), var_1.c.a)), var_1.c.b.a.xz, Struct_3(var_0.a.x, firstTrailingBit(var_1.b), var_1.c), !var_1.c.a).c, any(vec4<bool>(var_1.c.a, var_1.c.b.b, var_1.c.a, !var_1.c.a))), abs(~38884u));
    var var_2 = !select(select(select(select(vec3<bool>(var_0.b, true, true), vec3<bool>(var_1.c.a, var_1.c.b.b, true), vec3<bool>(true, true, var_0.b)), select(vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_1.c.a, true, false), var_1.c.b.b), all(var_1.c.b.c)), select(select(vec3<bool>(true, var_1.c.b.b, true), vec3<bool>(var_0.c.x, true, var_1.c.a), var_1.c.a), !vec3<bool>(true, var_1.c.a, var_0.c.x), !var_0.b), vec3<bool>(!var_0.b, var_0.b | false, true)), vec3<bool>(true, select(var_0.b, 67822u < u_input.a.x, var_0.c.x & var_1.c.a), var_1.a <= _wgslsmith_mod_i32(var_1.a, var_1.c.b.a.x)), select(select(!vec3<bool>(true, true, var_1.c.a), vec3<bool>(true, true, true), true), select(vec3<bool>(var_1.c.a, var_1.c.b.b, false), select(vec3<bool>(true, var_0.c.x, var_0.c.x), vec3<bool>(var_1.c.b.b, true, var_0.c.x), vec3<bool>(true, var_0.c.x, var_0.c.x)), true), all(vec3<bool>(var_1.c.b.c.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.c.b.a.xy, vec2<i32>(var_0.a.x, -1i), true), -vec4<i32>(-func_4(Struct_4(2142f, var_1.b.zz, var_1.c.a, vec3<bool>(false, true, true)), vec2<i32>(var_1.c.b.a.x, -2147483647i), var_1, var_0.c.x).a.x, var_1.a | -1i, -1i, -16895i), -var_1.c.b.a, ~1u, var_1.b);
}

