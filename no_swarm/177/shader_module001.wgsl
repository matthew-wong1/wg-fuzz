struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(vec2<f32>(-284f, -143f), 35586u), vec3<bool>(true, true, true), vec3<f32>(-988f, -849f, 141f), vec4<f32>(-990f, -995f, 527f, -1491f));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_2(all(select(global0.c, vec3<bool>(false, true, !global0.c.x), select(global0.c, arg_2.c, arg_2.a || true))), Struct_1(_wgslsmith_div_vec2_f32(arg_2.e.wx, vec2<f32>(_wgslsmith_f_op_f32(ceil(-1206f)), -1871f)), 1u), select(vec3<bool>(true, false, arg_2.a), vec3<bool>(true, false, all(!vec4<bool>(false, arg_2.c.x, false, arg_2.c.x))), arg_2.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b.a.x, _wgslsmith_f_op_f32(global0.d.x * arg_2.b.a.x), _wgslsmith_f_op_f32(482f * arg_2.e.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.d.x, global0.d.x, -375f, -1000f), global0.e)), _wgslsmith_f_op_vec4_f32(global0.e - arg_2.e), 26790u <= global0.b.b)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(arg_2.e))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a.x, -317f, -356f, arg_2.b.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-717f, 555f, global0.d.x, arg_2.b.a.x), global0.e)))))));
    var_0 = Struct_2(any(!(!select(vec4<bool>(true, false, true, arg_2.c.x), vec4<bool>(var_0.c.x, false, arg_2.c.x, arg_2.c.x), vec4<bool>(global0.c.x, global0.c.x, false, var_0.a)))), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(sign(arg_2.e.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.b.a + vec2<f32>(705f, 783f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-384f, var_0.d.x), global0.e.zw, false)), select(arg_2.c.yy, vec2<bool>(true, arg_2.c.x), false)))), var_0.b.b), !(!select(!vec3<bool>(global0.c.x, false, arg_2.a), !vec3<bool>(true, var_0.a, global0.c.x), arg_2.c)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.e.x * global0.b.a.x), _wgslsmith_div_f32(var_0.d.x, -2101f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(929f, global0.d.x))))), vec4<f32>(650f, _wgslsmith_f_op_f32(max(arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.d.x)) + _wgslsmith_f_op_f32(-arg_2.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1013f - -154f))))));
    var_0 = arg_2;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-101f)) + _wgslsmith_f_op_f32(trunc(175f)))), -1024f), 61600u);
    var_0 = arg_2;
    return var_1.b & ~(~var_0.b.b);
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = global0.b.a.x;
    let var_1 = !(global0.b.a.x < _wgslsmith_f_op_f32(1244f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -400f))));
    var var_2 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(16139u, 41371u, global0.b.b, 4294967295u))) | max(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(70257u, global0.b.b, 3420u, global0.b.b)), vec4<u32>(global0.b.b, global0.b.b, 53426u, 58091u), ~vec4<u32>(global0.b.b, global0.b.b, 39215u, 54302u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.b, 24852u, 1u, 4294967295u) >> (vec4<u32>(global0.b.b, global0.b.b, global0.b.b, 37881u) % vec4<u32>(32u)), ~vec4<u32>(0u, 37805u, 36575u, global0.b.b))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(24148u, 1u, 4294967295u, global0.b.b) ^ ~vec4<u32>(global0.b.b, 4294967295u, global0.b.b, global0.b.b), vec4<u32>(_wgslsmith_mult_u32(8247u, global0.b.b), 1u, ~58880u, 0u)), vec4<u32>(firstLeadingBit(38198u), select(~global0.b.b, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.b, 1u), vec2<u32>(0u, global0.b.b)), true), ~(~global0.b.b), abs(firstLeadingBit(global0.b.b)))));
    var_2 = ~(~global0.b.b) >> (~((~59760u >> (~4294967295u % 32u)) & ~func_3(u_input.b.x, u_input.b, Struct_2(true, global0.b, vec3<bool>(true, arg_0, true), vec3<f32>(global0.d.x, -564f, global0.b.a.x), vec4<f32>(global0.b.a.x, 482f, -464f, global0.b.a.x)))) % 32u);
    var var_3 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global0.b.b, global0.b.b), vec3<u32>(38538u, 4294967295u, global0.b.b)), global0.b.b), ~(~_wgslsmith_clamp_u32(12697u, 0u, global0.b.b)), global0.b.b, global0.b.b) >> (vec4<u32>(global0.b.b, 55282u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, global0.b.b) | _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.b, global0.b.b, 57406u), vec3<u32>(global0.b.b, 0u, 67020u)), abs(global0.b.b), global0.b.b), countOneBits(global0.b.b)) % vec4<u32>(32u));
    return Struct_2(global0.c.x, Struct_1(global0.e.ww, ~firstLeadingBit(_wgslsmith_div_u32(global0.b.b, global0.b.b))), select(select(select(global0.c, global0.c, select(false, false, arg_0)), select(vec3<bool>(var_1, false, true), global0.c, select(global0.c, vec3<bool>(true, arg_0, true), arg_0)), false), !vec3<bool>(2147483647i == u_input.b.x, true, true), any(!global0.c)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.e.wxx - global0.d))), vec3<f32>(_wgslsmith_f_op_f32(max(-726f, global0.b.a.x)), global0.b.a.x, 812f)), global0.e.zxx), global0.e);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = vec4<u32>(~arg_2.b.b, abs(~(~0u)), 4294967295u, abs(72741u)) ^ ~(~(~vec4<u32>(20641u, global0.b.b, 51297u, arg_1.b.b)));
    let var_1 = func_2(func_2(_wgslsmith_f_op_f32(1596f * _wgslsmith_f_op_f32(ceil(-1127f))) == 540f).c.x).b;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.e.yy), func_3(~(~1i), -min(abs(u_input.b), vec3<i32>(0i, 6102i, -2147483647i)), func_2(true)));
    global0 = Struct_2(true, func_2(arg_1.a).b, vec3<bool>(!(!arg_3), true, (_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) < ~19254i) & arg_3), arg_1.e.www, _wgslsmith_f_op_vec4_f32(global0.e + arg_2.e));
    var var_3 = func_2(true).b;
    return 1u;
}

fn func_5(arg_0: vec4<u32>, arg_1: i32) -> Struct_2 {
    return Struct_2(false, global0.b, select(select(select(global0.c, !global0.c, global0.c), !(!vec3<bool>(global0.a, global0.c.x, global0.c.x)), true), func_2(false).c, any(!global0.c)), vec3<f32>(global0.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x * -1217f) * -309f), 896f)), -1084f), vec4<f32>(458f, 423f, -393f, 1383f));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    let var_0 = func_5(~vec4<u32>(arg_0.b, _wgslsmith_mult_u32(global0.b.b ^ 0u, 1u), 0u, func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -56538i), vec4<i32>(35185i, 44067i, u_input.c, u_input.a.x)), func_2(arg_1.x), func_2(arg_1.x), global0.a)), -u_input.c);
    var var_1 = !(!(!vec4<bool>(global0.d.x != global0.b.a.x, any(arg_1), global0.e.x <= 587f, global0.c.x)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -660f);
    global0 = Struct_2(false, Struct_1(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(max(142f, 1f))), _wgslsmith_dot_vec3_u32(~vec3<u32>(298u, 1u, 34825u), vec3<u32>(firstLeadingBit(arg_0.b), func_4(vec4<i32>(-36793i, -1i, u_input.a.x, u_input.a.x), var_0, Struct_2(true, arg_0, var_0.c, vec3<f32>(127f, arg_0.a.x, 397f), vec4<f32>(908f, 730f, var_0.b.a.x, arg_0.a.x)), var_0.a), 0u))), func_5(firstTrailingBit(countOneBits(vec4<u32>(29555u, arg_0.b, 4294967295u, global0.b.b) | vec4<u32>(24374u, global0.b.b, global0.b.b, var_0.b.b))), _wgslsmith_clamp_i32(u_input.c, _wgslsmith_mult_i32(abs(u_input.a.x), u_input.a.x), -6749i)).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + 1701f), func_2(var_1.x).b.a.x, _wgslsmith_f_op_f32(ceil(-551f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e.xxx), _wgslsmith_f_op_vec3_f32(sign(var_0.d))), u_input.a.x > -u_input.a.x))), var_0.e);
    global0 = func_5(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 0u, arg_0.b, global0.b.b) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.b, var_0.b.b, arg_0.b, var_0.b.b), vec4<u32>(global0.b.b, arg_0.b, global0.b.b, 4294967295u), vec4<u32>(52336u, global0.b.b, 12041u, 2232u)) % vec4<u32>(32u)), abs(countOneBits(vec4<u32>(global0.b.b, 4294967295u, 14949u, arg_0.b)))) >> (vec4<u32>(global0.b.b, _wgslsmith_sub_u32(global0.b.b, global0.b.b << (var_0.b.b % 32u)), arg_0.b, 71237u & global0.b.b) % vec4<u32>(32u)), u_input.c);
    return (1u ^ _wgslsmith_mod_u32(countOneBits(19976u), _wgslsmith_clamp_u32(~global0.b.b, 23716u, var_0.b.b))) < max(~1u | (_wgslsmith_div_u32(var_0.b.b, 25832u) & _wgslsmith_add_u32(4294967295u, global0.b.b)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global0.b.b, 20685u), max(reverseBits(vec3<u32>(var_0.b.b, 0u, global0.b.b)), vec3<u32>(var_0.b.b, var_0.b.b, 4294967295u) | vec3<u32>(4294967295u, var_0.b.b, 61477u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(all(!vec4<bool>(func_1(global0.b, vec4<bool>(global0.a, global0.a, true, true)), global0.a | true, global0.a, true)), global0.b, vec3<bool>(true, true, any(!vec4<bool>(global0.c.x, global0.a, false, true))), vec3<f32>(-782f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec4<u32>(global0.b.b, 26641u, 1u, global0.b.b), 2147483647i).d.x * global0.d.x))), _wgslsmith_f_op_vec4_f32(-global0.e));
    let var_1 = vec3<i32>(1i, -40539i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(u_input.a.x, u_input.c) >> (~vec2<u32>(34442u, 4294967295u) % vec2<u32>(32u)))));
    global0 = func_5(~countOneBits(countOneBits(countOneBits(vec4<u32>(62426u, 39021u, global0.b.b, 46053u)))), _wgslsmith_add_i32(~u_input.c & 33101i, countOneBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 0i, u_input.b.x), max(vec3<i32>(-23268i, 0i, u_input.c), vec3<i32>(var_1.x, 1i, -2528i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(326f)));
}

