struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: u32) -> i32 {
    global0 = Struct_1(global0.b.x, arg_0.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, -arg_2, 56921i, min(arg_2, arg_0.a)), vec4<i32>(1i, _wgslsmith_add_i32(~global0.c, _wgslsmith_clamp_i32(arg_2, arg_2, arg_0.d)), 76940i, reverseBits(_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(global0.d, 1i))))), _wgslsmith_add_i32(max(global0.a, arg_0.b.x), -1i), global0.e);
    global0 = arg_0;
    let var_0 = select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), !(!(-1998f > global0.e.x))), vec2<bool>(any(vec4<bool>(true, true, true, true)), !((888f != global0.e.x) == true)), !(!all(vec2<bool>(false, false))));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(countOneBits(global0.b)), ~(min(vec2<i32>(arg_0.c, 2147483647i), vec2<i32>(-35060i, 55073i)) << (max(u_input.d.yx, u_input.a) % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_add_i32(-45540i, arg_2), _wgslsmith_dot_vec4_i32(~vec4<i32>(-3632i, global0.c, global0.c, arg_0.d), countOneBits(vec4<i32>(u_input.c.x, arg_2, 16350i, arg_0.c) & vec4<i32>(arg_0.b.x, 1i, u_input.c.x, global0.b.x)))), 2147483647i, ~global0.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(arg_0.e)))));
    global0 = Struct_1(arg_2, _wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(global0.b, arg_0.b), _wgslsmith_div_vec2_i32(u_input.c.xy ^ vec2<i32>(u_input.c.x, var_1.a), u_input.c.xx)) | reverseBits(-u_input.c.zx), global0.b.x, ~(arg_0.c << (abs(16575u & arg_3) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.e.x - -164f), var_1.e.x))));
    return firstTrailingBit((u_input.c.x & (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.a, -1i), vec3<i32>(arg_2, 2147483647i, -2147483647i)) ^ (i32(-1i) * -6696i))) >> (~u_input.a.x % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec3<f32> {
    let var_0 = arg_0 >> (1u % 32u);
    var var_1 = u_input.c.x;
    let var_2 = Struct_1(_wgslsmith_sub_i32(54309i, global0.c), ~max(global0.b, vec2<i32>(global0.a, arg_3)), -31201i, _wgslsmith_mod_i32(firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.b.x, _wgslsmith_div_i32(-1i, -2147483647i), arg_3), -(~vec4<i32>(u_input.c.x, 2147483647i, arg_3, 23679i)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1399f, 1211f) - arg_2.a.wz)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1128f, 368f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_2.a.x), select(all(vec2<bool>(false, false)), any(vec2<bool>(true, true)), select(any(vec3<bool>(true, false, true)), true, true)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-global0.e);
    var var_4 = select(vec2<bool>(true || (all(vec3<bool>(false, true, false)) && (45122i > global0.c)), (~(-61536i) >> (u_input.b % 32u)) != _wgslsmith_mult_i32(arg_3, arg_3)), vec2<bool>(true, true), !vec2<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), !select(false, true, true)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-772f - var_2.e.x) + _wgslsmith_f_op_f32(var_3.x + arg_2.a.x))), -438f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * -1760f), global0.e.x)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = vec3<u32>(reverseBits(u_input.b), _wgslsmith_clamp_u32(~(_wgslsmith_div_u32(0u, u_input.a.x) << (~u_input.d.x % 32u)), 1u, 4294967295u), u_input.d.x);
    let var_1 = ~vec4<u32>(u_input.b, countOneBits(firstTrailingBit(var_0.x)), ~min(var_0.x, 47636u) << (var_0.x % 32u), u_input.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(4294967295u, arg_0, arg_0, func_3(arg_2, var_1.yx, ~(-1i), ~var_1.x)));
    let var_3 = Struct_1(-2147483647i, global0.b, -1i, 0i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.e + _wgslsmith_f_op_vec2_f32(-arg_1.e)) + arg_1.e))));
    var var_4 = !select(vec2<bool>(true, !any(vec3<bool>(true, false, true))), vec2<bool>(arg_0.a.x <= -261f, (arg_1.c == global0.a) & any(vec2<bool>(false, true))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    return vec2<u32>(57066u, abs(4294967295u));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = Struct_1(2827i, -countOneBits(abs(countOneBits(u_input.c.zz))), 1i, -u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1849f, 1772f) - vec2<f32>(arg_2.a.x, arg_0))))));
    global0 = Struct_1(u_input.c.x, _wgslsmith_add_vec2_i32(u_input.c.yy ^ _wgslsmith_sub_vec2_i32(u_input.c.xx, vec2<i32>(-36140i, -2147483647i)), ~vec2<i32>(i32(-1i) * -58992i, -2147483647i)), i32(-1i) * -(global0.b.x & u_input.c.x), ~(-3691i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1484f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.a.x, global0.e.x), _wgslsmith_f_op_f32(1654f - global0.e.x)))) - _wgslsmith_f_op_vec2_f32(arg_2.a.ww * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-495f, 1000f) - global0.e) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1515f, -423f), arg_2.a.xz))))));
    var var_0 = Struct_1(-689i, ~global0.b, abs(u_input.c.x << (39385u % 32u)), _wgslsmith_div_i32(-_wgslsmith_clamp_i32(global0.b.x << (u_input.a.x % 32u), -1i, firstLeadingBit(global0.a)), -func_3(Struct_1(global0.b.x, vec2<i32>(u_input.c.x, -2147483647i), 2147483647i, 2147483647i, vec2<f32>(-224f, 525f)), ~vec2<u32>(0u, arg_1), _wgslsmith_div_i32(4594i, global0.b.x), 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_4(2236u, Struct_2(arg_2.a), arg_2, 45687i)).x, -292f) * global0.e)));
    global0 = Struct_1(countOneBits(abs(max(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, 11865i, global0.b.x, var_0.c), vec4<i32>(var_0.d, var_0.b.x, global0.c, u_input.c.x)), ~u_input.c.x))), _wgslsmith_mult_vec2_i32(select(vec2<i32>(reverseBits(u_input.c.x), u_input.c.x), countOneBits(vec2<i32>(global0.d, u_input.c.x)), _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(step(921f, -612f))), u_input.c.zz), select(_wgslsmith_add_i32(abs(26489i), -1497i) | -(~u_input.c.x), -_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_clamp_i32(global0.d, global0.d, 0i)), any(vec4<bool>(arg_1 == arg_1, any(vec2<bool>(true, false)), global0.e.x >= -1000f, true))), -var_0.a, _wgslsmith_f_op_vec2_f32(arg_2.a.zw - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.e.x, arg_0))))));
    let var_1 = vec4<bool>(!(!((u_input.d.x & arg_1) > _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(47429u, arg_1, 1u)))), all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), all(vec4<bool>(true, true, false, all(vec3<bool>(true, true, true)))), any(vec3<bool>(true, true, true)));
    return Struct_1(global0.a, u_input.c.zy, ~(-2147483647i) & (_wgslsmith_add_i32(1i, ~global0.d) >> (1u % 32u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~global0.b, u_input.c.yy), ~vec2<i32>(u_input.c.x, var_0.d)), u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.e + global0.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1201f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(-647f - _wgslsmith_f_op_f32(global0.e.x * global0.e.x)), _wgslsmith_div_u32(0u, select(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, u_input.a.x, 0u), reverseBits(vec4<u32>(17750u, u_input.d.x, u_input.d.x, u_input.a.x))), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.d.zz), func_2(Struct_2(vec4<f32>(global0.e.x, global0.e.x, -1000f, global0.e.x)), Struct_1(u_input.c.x, global0.b, global0.d, 2147483647i, vec2<f32>(1000f, 330f)), Struct_1(-2147483647i, vec2<i32>(0i, u_input.c.x), -2147483647i, u_input.c.x, global0.e))), true)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f - global0.e.x)), _wgslsmith_f_op_f32(-global0.e.x), global0.e.x, -462f)));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(12695u, _wgslsmith_div_u32(2912u, ~8894u), 1u, _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))) | 1367u), vec4<u32>(~(~max(u_input.d.x, 62180u)), 1u & _wgslsmith_mod_u32(56776u, 67748u << (u_input.d.x % 32u)), u_input.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), ~vec2<u32>(u_input.a.x, u_input.b))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, var_0.e.x, 107f, 1402f))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), global0.e.x, var_0.e.x)));
    let var_3 = Struct_1(_wgslsmith_clamp_i32(~(countOneBits(global0.a) >> (4294967295u % 32u)), 15703i >> (~firstTrailingBit(18406u) % 32u), var_0.c), vec2<i32>(_wgslsmith_mult_i32(global0.d, ~(i32(-1i) * -5918i)), 2147483647i), var_0.a, max(_wgslsmith_mod_i32(min(0i, u_input.c.x), -42415i), _wgslsmith_dot_vec3_i32(vec3<i32>(-24136i, global0.c, global0.d), u_input.c)) | func_5(1000f, var_1.x, var_2).d, _wgslsmith_f_op_vec2_f32(step(var_0.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_2.a.zz, _wgslsmith_f_op_vec2_f32(-global0.e))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(238f, -145f)))))));
    var var_4 = any(select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    return Struct_1(func_3(Struct_1(_wgslsmith_mult_i32(var_0.c, global0.d), select(var_3.b, vec2<i32>(2147483647i, var_0.b.x), true), var_0.d, var_3.d, _wgslsmith_f_op_vec2_f32(-var_0.e)), func_2(var_2, var_3, var_3), abs(_wgslsmith_mult_i32(-2147483647i, var_3.a)), var_1.x) << (~(select(var_1.x, var_1.x, true) | ~var_1.x) % 32u), _wgslsmith_mult_vec2_i32(u_input.c.zy, min(u_input.c.xy, var_0.b & u_input.c.zx) | -(vec2<i32>(-5311i, global0.a) ^ var_0.b)), firstLeadingBit(~(-var_3.c)) | -64453i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.c, u_input.c.x, var_3.c, 0i), vec4<i32>(27996i, -13228i, global0.b.x, 0i)), firstLeadingBit(vec4<i32>(-21528i, global0.b.x, 9178i, var_0.a))) >> (var_1.x % 32u), vec2<f32>(_wgslsmith_f_op_f32(global0.e.x * 668f), var_0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec3<bool>(true, true && any(vec4<bool>(true, true, true, true)), true);
    let var_2 = select(vec3<bool>(select(max(var_0.d, 0i) <= var_0.d, 4294967295u < firstTrailingBit(29542u), all(vec2<bool>(var_1.x, false)) || var_1.x), var_1.x, !(_wgslsmith_f_op_f32(-global0.e.x) < global0.e.x)), !select(vec3<bool>(true, true, !var_1.x), vec3<bool>(true, var_1.x, false), true), vec3<bool>(true, true, true));
    let var_3 = var_2.x;
    var_1 = !vec3<bool>(false, u_input.b < u_input.a.x, max(-global0.d, -2147483647i) >= global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e * global0.e) * global0.e), false))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(5765u, u_input.b, u_input.b, u_input.d.x) ^ vec4<u32>(11907u, 28181u, 13282u, u_input.a.x), ~vec4<u32>(130130u, 16845u, 0u, u_input.d.x))));
}

