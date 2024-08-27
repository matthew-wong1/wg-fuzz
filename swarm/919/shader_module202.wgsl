struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<f32> = vec4<f32>(-2258f, 318f, 113f, 1403f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = arg_2.b;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.b, -160f, all(vec3<bool>(arg_2.a.a, false, false)))), _wgslsmith_f_op_f32(round(global1.x))))));
    var_0 = arg_2.b;
    let var_1 = arg_2.a.c.e;
    let var_2 = abs(_wgslsmith_sub_u32(~arg_2.a.d.x, u_input.b.x << (4294967295u % 32u)));
    return vec4<bool>(all(select(vec3<bool>(arg_2.a.a, arg_2.a.a, false), select(vec3<bool>(arg_2.a.a, true, arg_2.a.a), vec3<bool>(arg_2.a.a, arg_2.a.a, arg_2.a.a), vec3<bool>(arg_2.a.a, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, arg_2.a.a), vec3<bool>(arg_2.a.a, false, true)))) & false, !((var_0.d | 0i) >= ~1i), arg_2.a.a, true);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<f32>) -> vec4<bool> {
    global0 = arg_3.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.c.b))));
    global0 = 793f;
    var var_0 = i32(-1i) * -arg_2.b.x;
    let var_1 = Struct_2(reverseBits(firstLeadingBit(abs(firstTrailingBit(arg_2.c.c)))), arg_1, select(arg_2.d.x, ~_wgslsmith_mod_u32(~arg_2.c.a, u_input.b.x << (49609u % 32u)), all(vec2<bool>(arg_2.a, all(vec3<bool>(arg_2.a, arg_2.a, arg_2.a))))));
    return vec4<bool>(any(vec4<bool>(any(select(vec4<bool>(arg_2.a, arg_2.a, false, arg_2.a), vec4<bool>(arg_2.a, arg_2.a, false, arg_2.a), arg_2.a)), arg_2.a, -var_1.b.d < _wgslsmith_mult_i32(arg_1.d, arg_2.b.x), false)), any(select(!(!vec2<bool>(arg_2.a, arg_2.a)), select(select(vec2<bool>(false, arg_2.a), vec2<bool>(arg_2.a, arg_2.a), true), vec2<bool>(true, false), true), vec2<bool>(arg_1.b >= global1.x, all(vec4<bool>(false, true, arg_2.a, true))))), !(!arg_2.a), any(select(!func_3(vec2<u32>(4294967295u, 5258u), vec4<f32>(arg_1.b, arg_2.c.b, 500f, 112f), Struct_4(Struct_3(true, vec4<i32>(28463i, 1i, -2147483647i, 28819i), var_1.b, vec2<u32>(0u, var_1.c)), Struct_1(arg_2.c.e.x, -638f, arg_2.d, 0i, vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x)), var_1), arg_2.b.xw), select(select(vec4<bool>(arg_2.a, true, false, arg_2.a), vec4<bool>(false, false, true, arg_2.a), arg_2.a), !vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a), func_3(vec2<u32>(26748u, 27475u), vec4<f32>(-820f, var_1.b.b, arg_3.x, -860f), Struct_4(Struct_3(false, arg_2.b, Struct_1(var_1.a.x, 903f, arg_1.e.xy, arg_2.b.x, arg_2.c.e), vec2<u32>(u_input.b.x, 34510u)), Struct_1(36592u, 1341f, vec2<u32>(3886u, 0u), 54338i, vec4<u32>(u_input.b.x, var_1.b.e.x, arg_1.c.x, 30210u)), Struct_2(vec2<u32>(arg_2.d.x, arg_1.c.x), arg_1, arg_2.d.x)), u_input.d.yz)), _wgslsmith_f_op_f32(-arg_2.c.b) <= arg_1.b)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_3(select(true, func_2(u_input.c, Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-global1.x), ~vec2<u32>(4294967295u, 4294967295u), ~2147483647i, ~vec4<u32>(0u, 1u, 22942u, 1u)), Struct_3(all(arg_0), vec4<i32>(u_input.d.x, u_input.c, 0i, u_input.d.x), Struct_1(u_input.b.x, arg_1.x, vec2<u32>(1418u, u_input.b.x), 0i, vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 44124u), vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec3_f32(-global1.yzz)).x, arg_0.x), -select(~vec4<i32>(36255i, -22438i, -24070i, u_input.c) << (abs(vec4<u32>(u_input.b.x, 72575u, u_input.b.x, 3956u)) % vec4<u32>(32u)), vec4<i32>(-24278i, 67995i, 1i, u_input.c), vec4<bool>(!arg_0.x, !arg_0.x, all(vec2<bool>(false, false)), !arg_0.x)), Struct_1(u_input.b.x, -1385f, _wgslsmith_clamp_vec2_u32(~(u_input.b.xy | u_input.b.yx), reverseBits(u_input.b.xz), max(vec2<u32>(1u, 7518u), select(vec2<u32>(u_input.b.x, 42828u), u_input.b.xy, vec2<bool>(true, arg_0.x)))), _wgslsmith_mult_i32(14099i, abs(_wgslsmith_mod_i32(2147483647i, 2147483647i))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 11031u, 4294967295u), max(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x))) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(2010u, u_input.b.x, 4294967295u, 1513u), vec4<u32>(35098u, 27556u, 34895u, 7790u)) % vec4<u32>(32u))), abs(~abs(vec2<u32>(0u, u_input.b.x))));
    var var_1 = min(select(vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(var_0.b.x), var_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.d, -6883i, 0i, 2147483647i), -var_0.b)), vec2<i32>(_wgslsmith_div_i32(max(10797i, u_input.c), _wgslsmith_sub_i32(-1i, var_0.c.d)), _wgslsmith_dot_vec2_i32(u_input.d.yz, select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.d.x, var_0.b.x), true))), arg_0.x), _wgslsmith_sub_vec2_i32(var_0.b.yz, firstTrailingBit(vec2<i32>(2147483647i, -1i)) >> (select(_wgslsmith_mult_vec2_u32(var_0.c.c, vec2<u32>(u_input.b.x, 1u)), ~vec2<u32>(u_input.b.x, 1u), !arg_0.xy) % vec2<u32>(32u))));
    var var_2 = var_0.b;
    var var_3 = u_input.d & -var_2.wzx;
    var var_4 = var_0.c;
    return arg_1.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.b.x, arg_0.x, reverseBits(vec2<u32>(u_input.b.x, ~(~32760u))), -2524i, ~(~(~abs(vec4<u32>(85154u, 49347u, u_input.b.x, u_input.b.x)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, var_0.b, false)))) * _wgslsmith_f_op_f32(var_0.b + arg_1.x)));
    global1 = _wgslsmith_f_op_vec4_f32(-arg_1);
    global0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(reverseBits(select(113818u, 1u, true)), reverseBits(firstLeadingBit(_wgslsmith_mod_u32(117111u, 87930u))), 43910u));
    return Struct_1(var_1, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(trunc(arg_0.x))), ~(~var_0.e.zy), u_input.a, vec4<u32>(var_0.c.x ^ select(60670u >> (var_1 % 32u), u_input.b.x, true), 1u << ((~1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.b.x, var_0.a, 1u), vec4<u32>(0u, var_0.a, u_input.b.x, 16125u)) % 32u)) % 32u), 12282u, var_1));
}

fn func_1() -> f32 {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - global1.x), global1.x, _wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * global1.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, -965f), _wgslsmith_f_op_f32(-global1.x))))), 901f);
    var var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(-1349i, Struct_1(1u, -160f, vec2<u32>(u_input.b.x, u_input.b.x), -26582i, vec4<u32>(u_input.b.x, 1u, u_input.b.x, 167178u)), Struct_3(false, vec4<i32>(0i, -32005i, u_input.a, u_input.d.x), Struct_1(38242u, global1.x, u_input.b.yz, u_input.d.x, vec4<u32>(1u, 10214u, u_input.b.x, 0u)), vec2<u32>(1u, u_input.b.x)), global1.xwy), global1.wx))), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(349f * global1.x)), _wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, true, false), vec2<f32>(158f, 898f))))), global1.x)));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-715f, var_0.b, 1000f, -541f)))) * vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-global1.x), var_0.b)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1407f, -1272f, global1.x, _wgslsmith_f_op_f32(floor(var_0.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(652f, global1.x, global1.x, var_0.b), vec4<f32>(-1464f, -1000f, var_0.b, var_0.b), vec4<bool>(false, false, true, false))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, var_0.b, global1.x, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, global1.x, 390f)))))));
    let var_1 = reverseBits(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 59600u, 4294967295u), var_0.e));
    var var_2 = Struct_3(true, vec4<i32>(countOneBits(firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, var_0.d))), 12150i, -countOneBits(_wgslsmith_clamp_i32(var_0.d, -1i, var_0.d)), u_input.c), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, global1.x, 498f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -1542f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), 647f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.b)))))), firstLeadingBit(select(u_input.b.zy, u_input.b.xx, any(func_3(vec2<u32>(20556u, 0u), vec4<f32>(var_0.b, var_0.b, -1424f, var_0.b), Struct_4(Struct_3(false, vec4<i32>(2147483647i, -48406i, u_input.c, 14541i), Struct_1(62154u, var_0.b, var_1.yw, u_input.a, vec4<u32>(var_1.x, 0u, 31374u, 88387u)), vec2<u32>(2639u, 36054u)), Struct_1(var_0.c.x, var_0.b, vec2<u32>(var_0.a, var_1.x), 33232i, vec4<u32>(1u, var_0.a, u_input.b.x, var_0.c.x)), Struct_2(var_0.e.yw, Struct_1(4763u, -310f, vec2<u32>(u_input.b.x, 1u), 50379i, vec4<u32>(var_0.a, 0u, 4294967295u, u_input.b.x)), 4294967295u)), vec2<i32>(var_0.d, u_input.d.x)).xyx))));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -704f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1677f), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x * global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-975f, global1.x, true)), _wgslsmith_f_op_f32(min(-465f, 153f))))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), global1.x));
    var var_0 = abs(-(~(i32(-1i) * -1i)));
    global1 = vec4<f32>(710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x + -1574f))))), -1084f, -727f);
    let var_1 = ~vec4<i32>(_wgslsmith_add_i32(u_input.a, max(u_input.d.x, 1i)) >> (reverseBits(1u) % 32u), u_input.c, 0i, _wgslsmith_clamp_i32(u_input.d.x, firstTrailingBit(u_input.a), _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, u_input.c), ~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-69439i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -345f))), var_1, _wgslsmith_mult_i32(0i, var_1.x), u_input.b.x);
}

