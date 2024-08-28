struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_1,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = -1000f;
    let var_1 = Struct_3(Struct_1(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_div_f32(917f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(817f, 723f)) * _wgslsmith_f_op_f32(ceil(-462f))))), abs(_wgslsmith_add_vec4_u32(abs(min(vec4<u32>(u_input.c, u_input.c, 812u, 13411u), vec4<u32>(u_input.b, u_input.a, 4294967295u, 4294967295u))), select(vec4<u32>(0u, u_input.b, u_input.b, 1u), vec4<u32>(0u, u_input.c, 17027u, 23420u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1000f - -1105f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1620f), _wgslsmith_f_op_f32(f32(-1f) * -1484f)))), -683f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-743f + 488f) * -1618f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-853f * var_1.b.x), _wgslsmith_f_op_f32(floor(1006f))) * -375f)), _wgslsmith_f_op_f32(998f * var_1.b.x));
    var var_3 = var_2.zz;
    let var_4 = var_1.a.a.x && true;
    return select(all(!var_1.a.a.zzx), !(!var_1.a.a.x), var_4);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = !arg_0;
    var_0 = arg_0;
    var var_1 = Struct_2(vec2<i32>(i32(-1i) * -10888i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 1i, 20169i), vec4<i32>(1i, 1i, 1i, 1i)), -1i)), Struct_1(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_1.x > 1u, false, arg_0, arg_0))), _wgslsmith_f_op_f32(-1260f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f))), Struct_1(vec4<bool>(true, func_3(), true, true)), Struct_1(!vec4<bool>(!arg_0, all(vec2<bool>(false, true)), all(vec3<bool>(arg_0, false, arg_0)), !arg_0)));
    var var_2 = vec4<u32>(~u_input.c, ~(~(~9319u)), 49743u, ~_wgslsmith_add_u32(arg_1.x, arg_1.x));
    let var_3 = Struct_4(var_2.x, Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.x, -8646i >> (0u % 32u)), (vec2<i32>(0i, var_1.a.x) & vec2<i32>(-1i, var_1.a.x)) & select(var_1.a, var_1.a, var_1.b.a.ww), vec2<i32>(var_1.a.x, 2147483647i) << (_wgslsmith_mult_vec2_u32(var_2.ww, vec2<u32>(65301u, arg_1.x)) % vec2<u32>(32u))), var_1.e, var_1.c, Struct_1(select(vec4<bool>(false, true, var_1.b.a.x, var_1.e.a.x), !var_1.b.a, true)), Struct_1(select(!var_1.e.a, var_1.e.a, vec4<bool>(true, arg_0, var_1.b.a.x, false)))), Struct_2(~var_1.a, Struct_1(select(var_1.e.a, vec4<bool>(true, true, var_1.e.a.x, false), var_1.e.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)) - _wgslsmith_f_op_f32(-var_1.c)), var_1.b, var_1.b), 1799f, var_1.a.x);
    return Struct_2(~(max(~var_3.c.a, ~var_3.b.a) & abs(-vec2<i32>(var_1.a.x, 50374i))), Struct_1(vec4<bool>(true, var_3.c.d.a.x, var_3.c.d.a.x, func_3())), 2193f, Struct_1(select(select(vec4<bool>(true, false, false, var_3.b.e.a.x), select(vec4<bool>(false, var_1.e.a.x, var_1.b.a.x, var_3.c.e.a.x), var_3.c.d.a, var_3.b.d.a), var_3.b.b.a.x), vec4<bool>(false, !var_3.b.e.a.x, arg_0, !var_3.c.e.a.x), var_1.c <= _wgslsmith_f_op_f32(max(860f, -1140f)))), var_1.e);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = firstLeadingBit(vec3<i32>(-16588i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a.x, 0i), arg_2.a) | _wgslsmith_sub_vec2_i32(arg_2.a, arg_2.a), ~(-arg_2.a)), arg_0));
    let var_1 = any(vec3<bool>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(arg_2.c * -385f)) > _wgslsmith_f_op_f32(abs(arg_2.c)), arg_2.d.a.x, select(!arg_2.d.a.x, !arg_2.d.a.x, false)));
    let var_2 = arg_2;
    var var_3 = func_2(any(vec4<bool>(true, true, true, true)) & func_2(all(select(vec4<bool>(false, arg_2.b.a.x, var_2.b.a.x, true), vec4<bool>(arg_2.e.a.x, false, var_2.d.a.x, true), var_2.d.a.x)), ~(vec2<u32>(arg_1, 0u) >> (vec2<u32>(89367u, arg_1) % vec2<u32>(32u)))).e.a.x, _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(16329u, 0u), vec2<u32>(4294967295u, u_input.b)), vec2<u32>(4294967295u, ~arg_1)) & ((~vec2<u32>(143431u, 1u) ^ max(vec2<u32>(arg_1, 5106u), vec2<u32>(u_input.a, 15743u))) | _wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, arg_1), vec2<u32>(1u, 4294967295u)), vec2<u32>(11934u, 4294967295u)))).b;
    var_0 = ~vec3<i32>(~(~var_0.x), reverseBits(select(0i, 27769i, true)) << (~u_input.b % 32u), _wgslsmith_mult_i32(var_0.x, 0i));
    return select(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, arg_2.a.x, -1i), vec3<i32>(-1i, 32024i, -8915i)) << ((vec3<u32>(arg_1, arg_1, arg_1) & vec3<u32>(4294967295u, 23022u, 1u)) % vec3<u32>(32u))) >> (vec3<u32>(abs(~60473u), ~u_input.c, min(arg_1, firstLeadingBit(arg_1))) % vec3<u32>(32u)), -min(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_2.a.x, var_2.a.x, var_0.x), ~vec3<i32>(-2147483647i, 0i, arg_0)), min(vec3<i32>(arg_0, var_0.x, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(16460i, arg_2.a.x, arg_2.a.x), vec3<i32>(25916i, var_0.x, arg_2.a.x), vec3<i32>(-2147483647i, 20902i, var_2.a.x)))), vec3<bool>(false, all(var_2.d.a.wy), var_1));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(~func_4(_wgslsmith_add_i32(countOneBits(-2147483647i), -2147483647i >> (u_input.b % 32u)), u_input.a, func_2(u_input.b <= u_input.c, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.c, 16025u)))), ~(~(~vec3<i32>(1i, 1i, 1i))));
    let var_1 = ~u_input.c;
    var var_2 = ~17669i;
    let var_3 = select(vec4<u32>(19702u, 41072u, u_input.b & ~_wgslsmith_div_u32(u_input.b, 4294967295u), min(~(~u_input.c), ~_wgslsmith_dot_vec3_u32(vec3<u32>(10833u, u_input.b, 49939u), vec3<u32>(4294967295u, 91099u, u_input.b)))), _wgslsmith_mod_vec4_u32(vec4<u32>(42619u, 15390u << (_wgslsmith_sub_u32(1u, var_1) % 32u), ~(~0u), var_1), ~((vec4<u32>(u_input.a, 26521u, 0u, u_input.a) << (vec4<u32>(u_input.c, u_input.c, var_1, 0u) % vec4<u32>(32u))) ^ ~vec4<u32>(var_1, u_input.c, var_1, u_input.b))), vec4<bool>(false, !all(vec3<bool>(false, false, false)), false, true));
    return Struct_1(vec4<bool>(select(all(vec2<bool>(true, true)), select(true, false, false), true), func_2(true, reverseBits(vec2<u32>(4294967295u, 1u))).e.a.x, !(_wgslsmith_f_op_f32(ceil(469f)) >= 1155f), all(vec3<bool>(false, true, true)) || (_wgslsmith_dot_vec3_i32(vec3<i32>(2025i, -2147483647i, var_0.x), vec3<i32>(var_0.x, 7989i, var_0.x)) > var_0.x)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_5 {
    let var_0 = arg_0.a.a.x;
    let var_1 = func_2(false, ~(vec2<u32>(arg_0.c.x, _wgslsmith_sub_u32(4294967295u, u_input.c)) << (_wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_0.c.x, 1u)), vec2<u32>(arg_0.c.x, u_input.b)) % vec2<u32>(32u)))).c;
    var var_2 = vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-arg_1.x), 640f, _wgslsmith_f_op_f32(-var_1));
    var_2 = vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(step(func_2(true, firstTrailingBit(~vec2<u32>(1u, 29859u))).c, _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(false, arg_0.c.yw).c + _wgslsmith_f_op_f32(-arg_1.x))))), var_2.x);
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(sign(541f)), 1000f, arg_1.x);
    return Struct_5(Struct_4(1u, Struct_2(vec2<i32>(1i, 1i), arg_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1, arg_0.b.x))), func_2(531f < arg_0.b.x, arg_0.c.wx | arg_0.c.zz).e, Struct_1(arg_0.a.a)), Struct_2(firstLeadingBit(vec2<i32>(1i, 1i)), Struct_1(!vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, true, false)), func_2(false, arg_0.c.yz).c, Struct_1(vec4<bool>(var_0, true, true, arg_0.a.a.x)), arg_0.a), -428f, _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(-9069i, 16770i, 32230i, 13695i)), min(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(14495i, -5501i, -29187i, -4358i)))), Struct_4(u_input.a, Struct_2(select(~vec2<i32>(-45729i, 65998i), vec2<i32>(4114i, 0i), select(arg_0.a.a.zz, arg_0.a.a.zy, arg_0.a.a.wy)), func_1(), -832f, arg_0.a, func_2(var_0, arg_0.c.wz).e), func_2(var_2.x == arg_1.x, arg_0.c.ww), -142f, ~min(_wgslsmith_mod_i32(-548i, -67928i), ~0i)), arg_0.a, func_2(!var_0, ~vec2<u32>(u_input.a, 0u)).b, arg_0);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_4, arg_3: f32) -> vec4<bool> {
    var var_0 = arg_2.a;
    let var_1 = func_5(arg_0.e, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(878f, arg_1.b.x, arg_1.b.x), vec3<f32>(_wgslsmith_f_op_f32(step(-240f, arg_0.e.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2158f - 1279f)), arg_1.b.x), select(arg_0.e.a.a.x & arg_0.b.c.e.a.x, false, ~arg_2.c.a.x >= arg_2.b.a.x))));
    var_0 = _wgslsmith_div_u32(1u, u_input.c);
    var var_2 = Struct_5(Struct_4(arg_2.a, Struct_2(~var_1.b.b.a, arg_0.b.c.e, _wgslsmith_f_op_f32(sign(862f)), Struct_1(select(var_1.b.b.e.a, arg_0.e.a.a, arg_0.b.c.e.a.x)), arg_2.c.b), func_5(func_5(func_5(Struct_3(Struct_1(vec4<bool>(var_1.b.c.e.a.x, arg_0.c.a.x, true, arg_2.c.b.a.x)), vec2<f32>(-710f, arg_3), arg_1.c), vec3<f32>(663f, arg_2.b.c, 1039f)).e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-952f, 590f, arg_2.c.c))).e, vec3<f32>(199f, _wgslsmith_f_op_f32(f32(-1f) * -1783f), 399f)).b.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(394f)))), _wgslsmith_sub_i32(~_wgslsmith_div_i32(2147483647i, -77057i), _wgslsmith_div_i32(arg_2.e, 1i))), var_1.a, arg_2.b.e, func_5(arg_0.e, vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(-1622f - arg_2.d)), _wgslsmith_f_op_f32(-arg_2.d), var_1.e.b.x)).a.c.d, Struct_3(arg_0.c, vec2<f32>(-254f, _wgslsmith_f_op_f32(-1000f - arg_0.b.d)), arg_0.e.c & arg_1.c));
    var_0 = arg_1.c.x;
    return !vec4<bool>(select(!all(vec3<bool>(arg_0.b.b.b.a.x, arg_1.a.a.x, var_2.a.c.b.a.x)), var_2.d.a.x, all(!vec2<bool>(arg_0.e.a.a.x, false))), !var_2.d.a.x, any(var_2.d.a.xww), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (1i >> ((~u_input.b & u_input.c) % 32u)) >= _wgslsmith_dot_vec4_i32(abs(max(abs(vec4<i32>(1i, -21568i, 32069i, 2147483647i)), select(vec4<i32>(1i, 1i, 1i, -17820i), vec4<i32>(-1i, -1i, 11901i, 2147483647i), vec4<bool>(true, true, false, false)))), ~(~vec4<i32>(1i, 18810i, 13595i, -3124i) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.c, 4294967295u), vec4<u32>(u_input.a, 1u, 13199u, 32445u)) % vec4<u32>(32u))));
    let var_1 = u_input.b;
    let var_2 = !func_6(func_5(Struct_3(func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(1083f, -462f) + vec2<f32>(1139f, -1000f)), ~vec4<u32>(u_input.c, 1834u, 0u, u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1579f, -212f, 1000f)))), func_5(Struct_3(Struct_1(vec4<bool>(var_0, var_0, var_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -517f)), vec4<u32>(u_input.a, u_input.c, 7040u, var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1299f, -1595f, 557f), vec3<f32>(439f, -1349f, -1000f)))).e, func_5(func_5(Struct_3(Struct_1(vec4<bool>(var_0, false, true, false)), vec2<f32>(-517f, -1605f), vec4<u32>(u_input.a, u_input.a, var_1, 4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1380f, 2597f, -403f))).e, _wgslsmith_f_op_vec3_f32(vec3<f32>(535f, -1389f, -1767f) + vec3<f32>(194f, 1347f, 881f))).a, _wgslsmith_f_op_f32(289f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1439f)) - -459f)));
    let var_3 = ~_wgslsmith_div_vec2_i32(reverseBits(~vec2<i32>(2147483647i, 51851i)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1, 0u), firstLeadingBit(vec2<u32>(var_1, 1u))) % vec2<u32>(32u)), ~reverseBits(min(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, -1i))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-1114f, _wgslsmith_f_op_f32(trunc(func_2(1i == -var_3.x, firstLeadingBit(abs(vec2<u32>(44574u, u_input.a)))).c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1357f, 1415f) + vec2<f32>(907f, -788f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1355f, 1436f), vec2<f32>(-1044f, -878f))), false))), abs(~var_3.x));
}

