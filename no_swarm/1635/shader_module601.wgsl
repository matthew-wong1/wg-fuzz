struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = (~_wgslsmith_clamp_vec3_u32(abs(arg_0.yxy), vec3<u32>(1u, arg_0.x, 2193u), select(arg_0.yxw, arg_0.www, true)) << (firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.x, u_input.a, 25008u), countOneBits(arg_0.zwy))) % vec3<u32>(32u))) | firstLeadingBit(select(_wgslsmith_mod_vec3_u32(arg_0.yyy, _wgslsmith_sub_vec3_u32(arg_0.xwx, vec3<u32>(1u, global0.c.x, 0u))), arg_0.ywx, any(arg_1.a)));
    let var_1 = Struct_1(vec2<bool>(all(vec4<bool>(global0.a.x, var_0.x <= 1438u, arg_1.c.x > 1u, arg_2 == arg_2)), false), vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -782f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f))), _wgslsmith_f_op_f32(max(-1092f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x)))))), arg_0.wyw << (arg_0.zxy % vec3<u32>(32u)), vec2<i32>(~abs(1i), arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1336f));
    var_0 = ~(~(~arg_0.wzz));
    let var_2 = arg_3.x;
    global0 = arg_1;
    return select(!vec3<bool>(true, !arg_1.a.x, arg_1.a.x), select(select(arg_1.b, select(!arg_1.b, vec3<bool>(var_1.a.x, true, false), vec3<bool>(true, true, true)), var_0.x >= _wgslsmith_mult_u32(1u, arg_1.c.x)), !vec3<bool>(true, false, any(vec3<bool>(arg_1.b.x, true, true))), !arg_1.b.x), vec3<bool>(var_1.a.x, !any(arg_1.a), any(global0.a)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global0 = Struct_3(!vec4<bool>(true, select(48115u <= global0.c.x, global0.a.x, global0.b.x && true), true, global0.b.x), !func_3(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 26172u, u_input.a, 1u), vec4<u32>(43823u, u_input.a, 41555u, 0u))), Struct_3(vec4<bool>(global0.b.x, true, global0.a.x, false), select(global0.b, global0.b, true), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_mod_i32(1i, countOneBits(-3346i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.x)))), vec2<u32>(~u_input.a << (global0.c.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 25806u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(u_input.a, 0u, global0.c.x))) & global0.c.x));
    var var_0 = Struct_3(!global0.a, select(!vec3<bool>(-1291f < arg_0.x, all(global0.a), global0.a.x), global0.b, any(vec2<bool>(arg_0.x <= 549f, global0.a.x))), _wgslsmith_clamp_vec2_u32(global0.c, global0.c, global0.c));
    var_0 = Struct_3(!(!select(select(var_0.a, vec4<bool>(false, global0.b.x, true, var_0.b.x), var_0.a), !global0.a, !global0.a)), func_3(~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.x, global0.c.x, 4294967295u, global0.c.x), vec4<u32>(14844u, u_input.a, 4294967295u, 32010u)) ^ select(vec4<u32>(4294967295u, var_0.c.x, 76698u, u_input.a), vec4<u32>(u_input.a, 4294967295u, var_0.c.x, global0.c.x), vec4<bool>(true, false, false, false))), Struct_3(vec4<bool>(true, true, global0.a.x, global0.a.x), vec3<bool>(global0.b.x, any(vec3<bool>(true, global0.a.x, var_0.a.x)), true), var_0.c), abs(0i), vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(floor(-665f))))), vec2<u32>(~1u, 137303u) >> (~reverseBits(~vec2<u32>(u_input.a, var_0.c.x)) % vec2<u32>(32u)));
    let var_1 = Struct_3(!select(!vec4<bool>(var_0.b.x, var_0.b.x, global0.b.x, var_0.a.x), select(vec4<bool>(global0.a.x, true, true, var_0.b.x), global0.a, global0.b.x), select(var_0.a, vec4<bool>(false, global0.b.x, var_0.a.x, var_0.b.x), global0.a)), global0.b, ~(~global0.c));
    global0 = var_1;
    return !any(func_3(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(45872u, 30776u, 4294967295u, u_input.a), vec4<u32>(0u, u_input.a, global0.c.x, var_0.c.x))), Struct_3(var_1.a, vec3<bool>(true, true, true), abs(global0.c)), countOneBits(11485i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1275f, arg_0.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_0.x;
    global0 = Struct_3(global0.a, !(!(!(!vec3<bool>(false, global0.b.x, global0.a.x)))), _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(23367u, 4294967295u), ~vec2<u32>(arg_2.c.x, global0.c.x)), abs(vec2<u32>(max(0u, u_input.a), _wgslsmith_add_u32(4294967295u, global0.c.x)))));
    var var_1 = Struct_3(global0.a, !global0.a.xwz, min(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(62443u, global0.c.x)), firstLeadingBit(countOneBits(arg_2.c.yz))));
    var_1 = Struct_3(!var_1.a, vec3<bool>(arg_2.a.x & any(global0.a), false, any(!vec4<bool>(true, var_1.b.x, var_1.a.x, var_1.a.x))), select(vec2<u32>(abs(1u), 71127u) >> (abs(countOneBits(vec2<u32>(var_1.c.x, 16246u))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~countOneBits(global0.c), abs(global0.c)), true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.b.x)) * arg_2.b.x));
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 1000f) - _wgslsmith_f_op_f32(arg_0.x - -420f)), _wgslsmith_f_op_f32(select(1079f, _wgslsmith_f_op_f32(-238f + _wgslsmith_f_op_f32(var_0 + arg_2.b.x)), false)))), _wgslsmith_mult_i32(-14809i, arg_1), ~firstLeadingBit(firstLeadingBit(~vec4<u32>(1u, u_input.a, arg_2.c.x, 6831u))), Struct_1(arg_2.a, arg_2.b, firstLeadingBit(arg_2.c ^ select(vec3<u32>(var_1.c.x, 6970u, arg_2.c.x), vec3<u32>(u_input.a, 32774u, u_input.a), var_1.b)), firstLeadingBit(_wgslsmith_mult_vec2_i32(arg_2.d, arg_2.d)), 543f), Struct_1(var_1.a.wy, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(216f, arg_0.x, 627f, 1882f), _wgslsmith_f_op_vec4_f32(-arg_2.b)))), abs(select(~vec3<u32>(4294967295u, var_1.c.x, arg_2.c.x), ~arg_2.c, vec3<bool>(global0.b.x, arg_2.a.x, true))), abs(arg_2.d), -420f));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: i32, arg_3: vec3<u32>) -> vec2<u32> {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, -649f))), i32(-1i) * -(~select(2147483647i, arg_2, false)), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(false, false), func_2(vec2<f32>(-842f, 294f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1084f, -1273f, 1000f, 1041f), vec4<f32>(-1105f, -705f, -1054f, -1222f)), vec4<f32>(133f, -1000f, -777f, -960f), any(arg_0.yx)))), arg_3, _wgslsmith_sub_vec2_i32(vec2<i32>(-arg_2, 0i), vec2<i32>(0i, arg_2 & 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2243f, 561f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(641f, 727f) - 1f))));
    global0 = Struct_3(!arg_1, select(vec3<bool>(any(arg_1.ywx), _wgslsmith_f_op_f32(var_0.d.b.x - var_0.d.b.x) <= _wgslsmith_f_op_f32(-var_0.a), !any(vec3<bool>(false, true, false))), func_3(firstLeadingBit(~vec4<u32>(u_input.a, arg_3.x, u_input.a, 60999u)), Struct_3(select(arg_1, vec4<bool>(true, var_0.d.a.x, var_0.e.a.x, arg_0.x), true), func_3(vec4<u32>(45089u, var_0.d.c.x, u_input.a, var_0.d.c.x), Struct_3(vec4<bool>(global0.b.x, arg_1.x, false, true), vec3<bool>(arg_0.x, arg_0.x, true), arg_3.zz), var_0.e.d.x, var_0.d.b.yz), vec2<u32>(45317u, arg_3.x)), arg_2, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, var_0.d.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(471f, 1000f) - vec2<f32>(-1224f, var_0.d.b.x))))), all(vec4<bool>(false, true, arg_1.x, true)) || (_wgslsmith_clamp_i32(arg_2, 2147483647i, -50220i) <= arg_2)), vec2<u32>(var_0.c.x, _wgslsmith_dot_vec2_u32(~arg_3.yx, ~vec2<u32>(global0.c.x, var_0.e.c.x))) | ((vec2<u32>(u_input.a, 40856u) >> (arg_3.xy % vec2<u32>(32u))) | (global0.c & ~vec2<u32>(0u, 31280u))));
    var var_1 = vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.d.b.x);
    var var_2 = ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, var_0.c.x, u_input.a, arg_3.x), ~(~vec4<u32>(101526u, var_0.c.x, 18509u, var_0.e.c.x))));
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(sign(var_1.wx)), ~(-_wgslsmith_mod_i32(var_0.b, -2147483647i) ^ _wgslsmith_div_i32(arg_2, i32(-1i) * -47408i)), var_0.d);
    return vec2<u32>(49037u, 0u) ^ vec2<u32>(var_0.c.x, firstLeadingBit(0u));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = false;
    let var_1 = global0.b;
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(618f + -798f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1522f, 938f), vec2<f32>(318f, -486f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1915f, 193f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(302f, 576f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-493f, -405f) + vec2<f32>(1145f, -522f)))))), max(abs(-reverseBits(49689i)), -8945i), Struct_1(global0.a.ww, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(135f, -733f, -2500f, 489f) + vec4<f32>(145f, -365f, 596f, 485f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, -1309f, -1182f, 1244f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(550f, 357f, 1795f, -156f) * vec4<f32>(-730f, 1216f, 1262f, -1000f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(622f, 893f, -172f, 1000f)))))), firstTrailingBit(~(~vec3<u32>(arg_0.x, arg_0.x, 82813u))), vec2<i32>(-1i & _wgslsmith_dot_vec2_i32(vec2<i32>(32752i, 1i), vec2<i32>(-1i, -13645i)), _wgslsmith_sub_i32(0i, -2147483647i)), -1118f));
    var var_3 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), -27228i, Struct_1(vec2<bool>(_wgslsmith_mod_i32(var_2.d.d.x, 15666i) >= -5921i, all(select(vec4<bool>(arg_1.x, arg_1.x, true, var_1.x), global0.a, false))), _wgslsmith_f_op_vec4_f32(var_2.d.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.e.e, 390f, var_2.e.e) - vec4<f32>(-1238f, -777f, -588f, var_2.d.e))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x | 29825u, ~global0.c.x, 4294967295u), abs(vec3<u32>(u_input.a, 1u, global0.c.x))), vec2<i32>(var_2.b, 1i), -684f));
    var_2 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112f - var_2.e.e) - -148f), -424f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(100f + var_3.e.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.b.x + var_3.e.e) * 1265f))), _wgslsmith_div_i32(var_2.b, var_3.d.d.x), var_2.e);
    return Struct_3(select(!(!global0.a), !select(select(vec4<bool>(true, var_2.d.a.x, false, false), vec4<bool>(false, var_3.d.a.x, var_2.d.a.x, var_3.e.a.x), var_2.d.a.x), global0.a, arg_0.x != 1u), arg_1.x), select(!vec3<bool>(global0.b.x, true, var_3.e.a.x), global0.a.yxz, global0.b), _wgslsmith_mult_vec2_u32(~max(vec2<u32>(11195u, arg_0.x), var_2.e.c.yz), vec2<u32>(max(11313u, ~arg_0.x), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(firstLeadingBit(_wgslsmith_sub_vec2_u32(func_1(!vec3<bool>(global0.a.x, global0.a.x, global0.b.x), !global0.a, ~(-5228i), ~vec3<u32>(global0.c.x, 34907u, 41962u)), global0.c)), func_4(vec2<f32>(_wgslsmith_f_op_f32(-492f + _wgslsmith_f_op_f32(round(287f))), _wgslsmith_f_op_f32(max(-366f, _wgslsmith_f_op_f32(108f + 425f)))), -2147483647i, Struct_1(global0.a.ww, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, 1314f, 725f, -324f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(412f, 1781f, -2833f, -973f) + vec4<f32>(1119f, -1008f, 323f, -1000f))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), ~vec3<u32>(4294967295u, u_input.a, global0.c.x)), min(reverseBits(vec2<i32>(0i, -14636i)), vec2<i32>(-51717i, 27142i)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(280f - 497f), !global0.b.x)))).e.a);
    global0 = Struct_3(func_5(vec2<u32>(4294967295u, ~global0.c.x), global0.b.zx).a, vec3<bool>(false, global0.a.x & true, global0.b.x), vec2<u32>(_wgslsmith_div_u32(13423u, _wgslsmith_div_u32(u_input.a, 0u)), ~u_input.a));
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(4356i, -39579i, 19228i)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(19594i, -1i)), _wgslsmith_mod_i32(-68227i, _wgslsmith_mult_i32(-9309i, -14917i)), 0i)) >> (~global0.c.x % 32u);
    var_0 = -1i;
    var var_1 = Struct_3(!vec4<bool>(true, !func_5(global0.c, vec2<bool>(global0.a.x, global0.a.x)).a.x, ~u_input.a >= global0.c.x, !select(false, global0.b.x, global0.a.x)), vec3<bool>(any(!vec3<bool>(false, global0.b.x, false)), true, all(func_5(global0.c, vec2<bool>(false, global0.b.x)).a.wwx) | func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-262f, -782f) * vec2<f32>(425f, 1587f)))), firstTrailingBit(_wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(global0.c, global0.c)), abs(vec2<u32>(4294967295u, 80478u) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-812f, _wgslsmith_f_op_f32(func_4(vec2<f32>(1398f, 2120f), 9917i, Struct_1(var_1.b.zx, vec4<f32>(-563f, -382f, -197f, 394f), vec3<u32>(var_1.c.x, u_input.a, 31341u), vec2<i32>(-60123i, -40840i), 1000f)).d.b.x * _wgslsmith_f_op_f32(trunc(1177f))), -286f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-633f, _wgslsmith_div_f32(450f, -775f), _wgslsmith_f_op_f32(414f - -1336f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-523f, 273f, 444f))), _wgslsmith_div_vec3_f32(vec3<f32>(-108f, -406f, 371f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(325f, -882f, 232f)))))));
    var_1 = Struct_3(func_5(global0.c, vec2<bool>(any(global0.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -54049i), vec2<i32>(27466i, 1i)) >= -4627i)).a, global0.a.yxy, vec2<u32>(_wgslsmith_mod_u32(u_input.a, ~(~81883u)), ~firstTrailingBit(_wgslsmith_mult_u32(var_1.c.x, global0.c.x))));
    var var_3 = -457f != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.x)), var_2.x));
    let var_4 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.zz), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(trunc(var_2.x))), global0.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xz * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -250f) + var_2.yy)))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i) >> (countOneBits(global0.c) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(-vec2<i32>(29389i, 997i), -vec2<i32>(37815i, 18725i))), vec2<i32>(1721i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -7242i, 0i, 0i), vec4<i32>(-18626i, 0i, 31406i, -1i)), ~14393i, true))), func_4(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-1000f - var_2.x)), ~max(i32(-1i) * -37596i, -48776i), Struct_1(!vec2<bool>(true, global0.a.x), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x * -1000f), _wgslsmith_f_op_f32(trunc(111f)), _wgslsmith_f_op_f32(559f * var_2.x)), min(~vec3<u32>(global0.c.x, global0.c.x, 6564u), firstLeadingBit(vec3<u32>(var_1.c.x, 21409u, 4294967295u))), vec2<i32>(-2147483647i, i32(-1i) * -2147483647i), 1000f)).d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1454f * -180f))));
}

