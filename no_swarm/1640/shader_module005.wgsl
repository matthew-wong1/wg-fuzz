struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<f32>(-972f, -1078f), vec2<u32>(4294967295u, 43224u), vec2<bool>(false, true), 4294967295u, vec4<bool>(false, true, false, false)), Struct_1(vec2<f32>(-330f, 1000f), vec2<u32>(9152u, 4294967295u), vec2<bool>(false, true), 35769u, vec4<bool>(true, true, false, false)), Struct_1(vec2<f32>(956f, 723f), vec2<u32>(1u, 43611u), vec2<bool>(false, true), 0u, vec4<bool>(true, true, true, true)), Struct_1(vec2<f32>(-709f, 1202f), vec2<u32>(0u, 1u), vec2<bool>(false, true), 1u, vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(-236f, 2598f), vec2<u32>(75600u, 4294967295u), vec2<bool>(true, false), 2709u, vec4<bool>(true, false, true, false)), Struct_1(vec2<f32>(604f, -1006f), vec2<u32>(41221u, 1313u), vec2<bool>(true, false), 1u, vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(-509f, 1000f), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true), 1u, vec4<bool>(true, false, true, false)), Struct_1(vec2<f32>(961f, -327f), vec2<u32>(1u, 4294967295u), vec2<bool>(true, true), 0u, vec4<bool>(true, true, true, false)), Struct_1(vec2<f32>(1321f, -492f), vec2<u32>(1u, 0u), vec2<bool>(false, true), 0u, vec4<bool>(true, false, true, false)), Struct_1(vec2<f32>(594f, -1081f), vec2<u32>(1u, 4294967295u), vec2<bool>(true, false), 41022u, vec4<bool>(true, true, false, false)), Struct_1(vec2<f32>(-1542f, 516f), vec2<u32>(1u, 4294967295u), vec2<bool>(true, true), 0u, vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(879f, 616f), vec2<u32>(81729u, 46575u), vec2<bool>(false, false), 11189u, vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(1067f, -355f), vec2<u32>(108377u, 1u), vec2<bool>(false, true), 12421u, vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(-1037f, -479f), vec2<u32>(31129u, 46525u), vec2<bool>(true, true), 44980u, vec4<bool>(false, true, true, false)), Struct_1(vec2<f32>(1000f, -314f), vec2<u32>(58289u, 39236u), vec2<bool>(true, false), 3761u, vec4<bool>(false, true, false, false)), Struct_1(vec2<f32>(712f, -1292f), vec2<u32>(4294967295u, 21948u), vec2<bool>(false, false), 17036u, vec4<bool>(true, false, false, true)), Struct_1(vec2<f32>(-1000f, -608f), vec2<u32>(53060u, 4294967295u), vec2<bool>(true, false), 0u, vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(105f, 1385f), vec2<u32>(4294967295u, 0u), vec2<bool>(false, false), 6622u, vec4<bool>(true, false, true, false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec2<bool> {
    global0 = array<Struct_1, 18>();
    var var_0 = arg_0.x;
    var var_1 = vec3<u32>(countOneBits(~_wgslsmith_sub_u32(~45825u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.b, 4294967295u)))), u_input.b, ~(u_input.a >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(6115u, u_input.b), vec2<u32>(u_input.b, u_input.a)) % 32u)));
    var var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(u_input.a), ~71550u, u_input.a & var_1.x), u_input.a, firstTrailingBit(~27532u)), reverseBits(countOneBits(select(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(var_1.x, 1u, 123216u), vec3<bool>(arg_1, false, true)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 5916u), 4294967295u, ~1329u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_1.x, u_input.a) << (vec3<u32>(u_input.a, var_1.x, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(var_1.x, 4294967295u, 1u), vec3<bool>(arg_1, true, true)), vec3<u32>(var_1.x, u_input.b, 0u)), abs(vec3<u32>(13856u, u_input.a, var_1.x)) << (countOneBits(vec3<u32>(1u, var_1.x, 0u)) % vec3<u32>(32u)))), firstLeadingBit(_wgslsmith_mult_vec3_u32(abs(abs(vec3<u32>(var_1.x, u_input.b, u_input.b))), ~vec3<u32>(2923u, u_input.a, 48389u))), vec3<u32>(var_1.x, 1u, reverseBits(~(~105780u))));
    let var_3 = 1256f;
    return !select(vec2<bool>(2147483647i >= (26645i & arg_0.x), false), vec2<bool>(arg_1, arg_1), true);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = arg_3.a;
    var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = Struct_1(arg_3.b.a, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.b.x, u_input.a) | vec2<u32>(1199u, arg_0.b.x), vec2<u32>(4294967295u, ~u_input.a)), ~1u | var_0.b.x), select(func_3(vec4<i32>(u_input.c, ~(-37588i), countOneBits(64298i), u_input.c), arg_3.e.x), var_0.e.xx, true), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.b, arg_2.c.x, 4294967295u), vec3<u32>(arg_1, 38235u, arg_2.a.d)), vec3<u32>(arg_3.a.b.x, arg_1, 0u)), reverseBits(~(~vec3<u32>(var_0.b.x, arg_2.a.d, 0u)))), !select(!(!arg_3.b.e), !(!var_0.e), select(arg_0.e, arg_2.b.e, u_input.c != u_input.c)));
    return ~(abs(vec4<i32>(-19278i, u_input.c, -2147483647i, 0i) >> (vec4<u32>(var_0.d, arg_3.a.d, 41514u, 4294967295u) % vec4<u32>(32u))) ^ vec4<i32>(-52555i, 11949i, u_input.c, ~0i));
}

fn func_2() -> Struct_3 {
    let var_0 = abs(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1492f)), ~(~vec2<u32>(u_input.a, u_input.b)), select(func_3(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), func_3(vec4<i32>(u_input.c, -1i, u_input.c, -45444i), false)), _wgslsmith_add_u32(~u_input.a, u_input.b), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true))), ~firstTrailingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)), Struct_2(Struct_1(vec2<f32>(549f, -2952f), vec2<u32>(0u, 1u), vec2<bool>(true, false), ~u_input.b, vec4<bool>(false, true, true, true)), global0[_wgslsmith_index_u32(~76968u, 18u)], abs(vec2<u32>(13581u, 4294967295u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-580f - -268f), _wgslsmith_f_op_f32(min(-856f, -353f)))), vec3<bool>(true, u_input.b >= u_input.b, false)), Struct_2(global0[_wgslsmith_index_u32(~(~u_input.b), 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], min(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(87826u, u_input.b)), _wgslsmith_div_f32(-2315f, -246f), vec3<bool>(true, true, true))));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(909f, -1399f), vec2<f32>(-497f, -107f))), vec2<u32>(1u, 10438u) | _wgslsmith_add_vec2_u32(vec2<u32>(77154u, u_input.b), vec2<u32>(u_input.b, u_input.a)), vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(~u_input.b, 18u)], reverseBits(vec2<u32>(abs(1u), ~4294967295u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-993f)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), false)), global0[_wgslsmith_index_u32(u_input.a, 18u)], true);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 18u)], var_1.a.a, abs(var_1.b.b), var_1.a.b.a.x, select(vec3<bool>(true, -345f == var_1.b.a.x, func_3(vec4<i32>(var_0.x, 0i, -21738i, u_input.c), var_1.a.e.x).x), vec3<bool>(!var_1.c, !var_1.b.e.x, !var_1.a.a.e.x), any(vec4<bool>(true, var_1.c, true, false)) == var_1.c)), var_1.a.b, var_1.c);
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    var var_0 = u_input.c;
    let var_1 = any(!vec4<bool>(false, arg_0.b.c.x, u_input.c == 0i, all(vec4<bool>(arg_0.c, arg_0.a.e.x, arg_0.a.b.c.x, false))));
    var var_2 = Struct_3(arg_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.b.a) - _wgslsmith_f_op_vec2_f32(max(arg_0.b.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.a.x, arg_0.b.a.x), arg_0.a.b.a, arg_0.a.b.c.x))))), arg_0.a.a.b & vec2<u32>(4294967295u, u_input.b), !arg_0.b.c, ~arg_1, func_2().b.e), all(vec2<bool>(var_1, all(arg_0.b.e.yx))));
    let var_3 = func_2().a.a;
    var var_4 = vec2<bool>(true, var_1);
    return func_2().a;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: i32) -> vec4<i32> {
    var var_0 = func_2();
    var_0 = Struct_3(Struct_2(Struct_1(arg_1.wx, var_0.b.b, var_0.b.e.xx, ~(var_0.b.d >> (1u % 32u)), !var_0.a.b.e), var_0.a.a, func_5(Struct_3(func_2().a, func_5(Struct_3(Struct_2(Struct_1(vec2<f32>(arg_0.d, -1382f), arg_0.c, var_0.b.e.wy, 3698u, var_0.b.e), Struct_1(arg_0.b.a, arg_0.c, var_0.a.b.c, var_0.b.d, vec4<bool>(true, var_0.a.a.c.x, arg_0.a.c.x, true)), vec2<u32>(4294967295u, 31595u), arg_0.a.a.x, vec3<bool>(false, true, false)), Struct_1(var_0.a.a.a, arg_0.b.b, var_0.a.b.c, 29075u, var_0.b.e), var_0.c), arg_0.a.d).a, func_2().b.c.x), ~(~u_input.b)).c, -548f, !func_2().b.e.wzz), func_5(func_2(), 22735u).b, !var_0.a.b.c.x | false);
    var var_1 = ~(~vec2<u32>(~arg_0.a.b.x, var_0.b.d));
    var var_2 = arg_0;
    var_1 = ~var_2.c;
    return vec4<i32>(0i, min(-select(firstTrailingBit(28989i), u_input.c, !var_0.c), select(arg_3, -arg_3, var_2.b.c.x)), -arg_3, u_input.c);
}

fn func_7(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> vec3<f32> {
    global0 = array<Struct_1, 18>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~0u), u_input.b), 18u)];
    global0 = array<Struct_1, 18>();
    let var_1 = !vec2<bool>(!(!var_0.c.x), any(vec3<bool>(true, arg_2, true)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.b.a.x))) + arg_3.a.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -341f));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1177f, 276f, var_2.x)))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_7(func_6(func_5(func_2(), arg_0.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -255f, arg_0.a.x, 1108f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, arg_0.a.x, arg_0.a.x, arg_0.a.x)) * vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), _wgslsmith_div_f32(arg_0.a.x, -806f), _wgslsmith_div_f32(-346f, -482f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_sub_i32(arg_3.x, arg_1)), vec2<i32>(firstLeadingBit(-2147483647i), func_4(Struct_1(vec2<f32>(-464f, arg_0.a.x), arg_0.b, arg_0.c, 53513u, arg_0.e), u_input.b, Struct_2(Struct_1(vec2<f32>(arg_0.a.x, arg_0.a.x), arg_0.b, vec2<bool>(arg_2.x, false), 4294967295u, vec4<bool>(arg_2.x, arg_0.c.x, arg_0.e.x, arg_2.x)), Struct_1(arg_0.a, vec2<u32>(1u, 6284u), vec2<bool>(arg_2.x, true), 0u, vec4<bool>(arg_2.x, arg_0.e.x, arg_0.c.x, arg_0.e.x)), arg_0.b, arg_0.a.x, arg_0.e.zyx), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 18u)], arg_0, vec2<u32>(45979u, 47781u), 801f, vec3<bool>(arg_0.c.x, true, arg_2.x))).x))), _wgslsmith_sub_u32(u_input.a, ~28475u), _wgslsmith_dot_vec4_i32(func_4(Struct_1(arg_0.a, vec2<u32>(u_input.a, u_input.a), vec2<bool>(arg_2.x, false), arg_0.d, vec4<bool>(false, arg_0.e.x, arg_0.c.x, arg_0.c.x)), _wgslsmith_mult_u32(arg_0.b.x, arg_0.b.x), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 18u)], arg_0, arg_0.b, -957f, vec3<bool>(true, arg_2.x, arg_0.c.x)), func_5(Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 18u)], Struct_1(arg_0.a, arg_0.b, vec2<bool>(arg_2.x, arg_0.e.x), u_input.a, arg_0.e), arg_0.b, 878f, arg_0.e.yww), global0[_wgslsmith_index_u32(u_input.a, 18u)], true), u_input.a)), vec4<i32>(~14416i, 0i, func_4(arg_0, 2725u, Struct_2(global0[_wgslsmith_index_u32(3961u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], vec2<u32>(23101u, arg_0.d), arg_0.a.x, vec3<bool>(true, arg_0.c.x, false)), Struct_2(Struct_1(vec2<f32>(arg_0.a.x, arg_0.a.x), vec2<u32>(4294967295u, 0u), arg_0.c, u_input.a, vec4<bool>(true, arg_0.e.x, arg_0.c.x, true)), Struct_1(arg_0.a, arg_0.b, arg_2, 7692u, vec4<bool>(true, arg_2.x, true, arg_2.x)), vec2<u32>(u_input.a, 13484u), arg_0.a.x, arg_0.e.yzw)).x, _wgslsmith_div_i32(arg_3.x, 1i))) == countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, arg_1), arg_3.xx)), Struct_3(Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(arg_0.a.x, arg_0.a.x)), ~arg_0.b, select(arg_2, vec2<bool>(arg_0.e.x, arg_0.c.x), false), 1u, !arg_0.e), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, arg_0.d) | arg_0.b, select(arg_0.b, vec2<u32>(arg_0.d, 52348u), vec2<bool>(false, false))), arg_0.a.x, select(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x), func_5(Struct_3(Struct_2(Struct_1(arg_0.a, vec2<u32>(4294967295u, u_input.a), arg_0.e.yw, u_input.b, vec4<bool>(false, arg_0.c.x, true, arg_2.x)), Struct_1(arg_0.a, vec2<u32>(arg_0.d, u_input.b), arg_0.c, arg_0.b.x, arg_0.e), arg_0.b, -1022f, vec3<bool>(true, arg_2.x, false)), arg_0, arg_2.x), arg_0.b.x).b.e.xzx, !arg_0.c.x)), func_2().b, arg_2.x)));
    var var_1 = Struct_3(func_5(func_2(), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(arg_0.b.x, u_input.b, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.d, u_input.a), vec3<u32>(arg_0.d, 4294967295u, 12269u), vec3<u32>(111901u, arg_0.d, 47154u)), true), vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.b.x), vec2<u32>(arg_0.d, arg_0.b.x)), arg_0.b.x))), arg_0, true);
    var var_2 = arg_0.c;
    var var_3 = func_5(Struct_3(var_1.a, Struct_1(vec2<f32>(-580f, 1000f), func_5(func_2(), _wgslsmith_add_u32(arg_0.b.x, arg_0.b.x)).b.b, select(arg_0.e.zw, vec2<bool>(arg_2.x, var_1.a.b.e.x), all(vec2<bool>(false, true))), min(countOneBits(1u), arg_0.b.x), arg_0.e), !all(arg_2)), 18406u).a;
    let var_4 = var_1.a.a.b;
    return reverseBits(var_4.x);
}

fn func_8(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = func_2();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_1 = ~_wgslsmith_mult_u32(var_0.b.d, max(firstLeadingBit(42561u), 4294967295u) >> (~_wgslsmith_div_u32(arg_0.x, u_input.a) % 32u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    var var_0 = (vec2<i32>(23812i, _wgslsmith_sub_i32(~(-9384i), min(1i, 0i))) << (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(~(-vec2<i32>(-67383i, -57147i)), vec2<i32>(-u_input.c, u_input.c));
    global0 = array<Struct_1, 18>();
    var var_1 = func_8(abs(vec3<u32>(~u_input.b << (_wgslsmith_mult_u32(u_input.a, u_input.b) % 32u), firstLeadingBit(~0u), func_1(Struct_1(vec2<f32>(558f, -1067f), vec2<u32>(u_input.a, 7725u), vec2<bool>(false, false), 36181u, vec4<bool>(false, false, false, false)), _wgslsmith_add_i32(-22849i, u_input.c), vec2<bool>(false, false), vec3<i32>(u_input.c, u_input.c, -1i)))));
    var var_2 = vec3<u32>(~35144u, _wgslsmith_sub_u32(5360u, u_input.a), var_1.a.a.d);
    var var_3 = var_1.a;
    var_2 = ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(71419u, var_3.b.d, 5505u), vec3<u32>(4294967295u, 0u, 0u)), ~vec3<u32>(0u, 1u, 0u))) ^ firstLeadingBit(vec3<u32>(31951u, abs(func_8(vec3<u32>(14189u, 48808u, 14841u)).b.d), var_1.a.b.d));
    let var_4 = _wgslsmith_clamp_i32(~(-_wgslsmith_mod_i32(u_input.c ^ u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.x, -1i, u_input.c), vec4<i32>(var_0.x, var_0.x, u_input.c, var_0.x)))), u_input.c, 0i >> (func_1(Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1441f), vec2<f32>(var_1.a.d, var_1.a.d))), vec2<u32>(54309u, var_2.x), var_3.a.e.yw, abs(4294967295u), !var_1.b.e), max(u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c)), vec2<bool>(true, !var_1.b.c.x), ~vec3<i32>(-2147483647i, var_0.x, 2147483647i) << (select(vec3<u32>(var_3.b.b.x, var_1.b.d, 37725u), vec3<u32>(0u, var_1.b.d, var_3.c.x), var_1.a.a.e.zxx) % vec3<u32>(32u))) % 32u));
    let var_5 = _wgslsmith_f_op_f32(-354f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(var_3.a.a.x * 1053f)))))) > _wgslsmith_f_op_f32(func_5(func_8(reverseBits(vec3<u32>(u_input.a, 1u, 41848u))), max(1u, 4294967295u << (0u % 32u))).a.a.x - -281f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(max(0u, var_2.x)), 1u, 0u, var_1.b.d) | _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, var_2.x, u_input.b, var_2.x), vec4<u32>(0u, u_input.b, 1u, u_input.b)) | ~vec4<u32>(1u, 0u, var_1.a.a.d, 4294967295u), vec4<u32>(2894u, 26375u, 68562u, 40879u) >> (vec4<u32>(var_2.x, 854u, var_3.a.d, var_3.a.b.x) % vec4<u32>(32u))), _wgslsmith_div_f32(-978f, _wgslsmith_div_f32(func_8(vec3<u32>(0u, var_3.a.d, 4294967295u)).b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-903f)) - var_3.b.a.x))));
}

