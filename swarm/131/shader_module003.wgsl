struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_2(arg_0.e, select(select(arg_0.a.b, select(vec4<bool>(arg_0.e.b.x, arg_0.b.a.b.x, false, true), arg_0.a.b, false), !(false != arg_0.b.a.b.x)), arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.d)) <= -231f));
    let var_1 = arg_0.c.c.zzy;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.a.a.c.x, arg_0.c.c.x) << ((arg_0.b.a.c.x & u_input.a) % 32u), ~abs(arg_0.e.c.x)), var_1.x) | _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, u_input.a), arg_0.b.a.c.x)), 44093u);
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a.a, var_0.a.d)), _wgslsmith_f_op_f32(-327f - -135f)), var_0.a.a)))));
    let var_4 = vec4<i32>(-21313i, abs(-5563i), _wgslsmith_clamp_i32(1i, (~arg_2.x & arg_1.x) & ~(-1i), ~_wgslsmith_sub_i32(~4636i, arg_1.x)), arg_1.x);
    return 87702u;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(811f - _wgslsmith_f_op_f32(select(1281f, 268f, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), _wgslsmith_sub_vec4_u32(vec4<u32>(69863u, u_input.a, 4294967295u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 6805u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 1u))), _wgslsmith_div_f32(_wgslsmith_div_f32(-271f, 415f), _wgslsmith_div_f32(-948f, -1283f))), vec4<bool>(func_3(Struct_3(Struct_2(Struct_1(777f, vec3<bool>(true, true, false), vec4<u32>(u_input.a, u_input.a, 63352u, u_input.a), -1097f), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(-516f, vec3<bool>(false, false, false), vec4<u32>(4294967295u, u_input.a, 5584u, u_input.a), -1739f), vec4<bool>(true, true, true, false)), Struct_1(886f, vec3<bool>(true, true, true), vec4<u32>(u_input.a, u_input.a, 40972u, u_input.a), -845f), 1085f, Struct_1(-656f, vec3<bool>(true, true, true), vec4<u32>(u_input.a, 0u, 0u, 51678u), 578f)), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), arg_0.zzy) >= ~u_input.a, true, true, true)), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1402f), vec3<bool>(true, true, true), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 77066u, 49565u)), reverseBits(4294967295u), u_input.a), _wgslsmith_f_op_f32(trunc(-320f))), vec4<bool>(all(vec2<bool>(true, true)), true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true)), !select(false, false, false))), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1655f), _wgslsmith_f_op_f32(f32(-1f) * -151f)))), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(any(vec4<bool>(false, false, false, false)), true, select(true, true, false)), vec3<bool>(true, true, true)), vec4<u32>(abs(1u), ~countOneBits(1u), u_input.a, _wgslsmith_clamp_u32(25728u, _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a | 0u)), -1866f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1112f, -1000f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1085f * -559f))), !vec3<bool>(true, true, select(false, false, true)), vec4<u32>(~u_input.a, ~_wgslsmith_mod_u32(u_input.a, u_input.a), max(select(u_input.a, u_input.a, false), ~u_input.a), ~(~22245u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(999f + 375f)))));
    let var_1 = Struct_3(var_0.a, var_0.b, var_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.d) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(429f, var_0.e.d) + var_0.b.a.d)))), var_0.c);
    var var_2 = var_0.b.a.c.xzy;
    var_2 = var_0.b.a.c.xwy;
    let var_3 = var_1.b;
    return Struct_2(Struct_1(var_1.d, !(!var_3.a.b), vec4<u32>(~(~4294967295u), 13818u, ~var_0.a.a.c.x, 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_0.b.a.a) * var_3.a.a))), var_3.b);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = func_2(~vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, 1i, -1i)), vec3<i32>(1i, 1i, 1i)), -abs(1i), -2147483647i << (~arg_3.a.c.x % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-20281i, 1788i, -1836i), vec3<i32>(2147483647i, -16483i, 16431i)), -2147483647i)));
    var_0 = func_2(abs(reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(-10295i, 2147483647i, 0i, 0i), ~vec4<i32>(-2147483647i, 33739i, -1i, -2147483647i)))));
    let var_1 = ~vec4<u32>(func_2(vec4<i32>(1i, 1i, 1i, 1i)).a.c.x, arg_2.c.x, ~arg_3.a.c.x, var_0.a.c.x);
    var var_2 = arg_3.a.c.x;
    return 626f;
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = reverseBits(~(u_input.a >> (u_input.a % 32u)));
    let var_1 = vec4<bool>(false, true, false, -2147483647i != abs(select(1i, 1i, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(arg_0.xyw));
    var var_3 = min(countOneBits(select(~vec3<u32>(u_input.a, 36838u, 61588u), min(vec3<u32>(1u, u_input.a, 4098u), vec3<u32>(u_input.a, u_input.a, u_input.a)), var_1.yyx)), vec3<u32>(u_input.a ^ u_input.a, 4294967295u, u_input.a));
    let var_4 = false;
    return func_2(~(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 15325i, 1i, -1i), vec4<i32>(1i, -4723i, 21957i, 6041i)), countOneBits(vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i)), select(var_1, var_1, var_1.x)) ^ _wgslsmith_clamp_vec4_i32(~vec4<i32>(-27239i, -2147483647i, 52315i, 2147483647i), reverseBits(vec4<i32>(22387i, -1i, 0i, -1i)), ~vec4<i32>(1i, 29970i, -2147483647i, -29904i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i, -21557i, select(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(12319i, -40092i, 47616i), vec3<i32>(-26712i, -7070i, -2147483647i)), i32(-1i) * -32755i), firstTrailingBit(-38428i), !all(vec4<bool>(false, true, false, false)) == true), firstTrailingBit(~(i32(-1i) * -2147483647i)));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1140f, 922f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(1531f, vec3<bool>(false, false, true), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), 1000f), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(1358f, vec3<bool>(true, true, false), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), -1883f), vec4<bool>(false, true, false, false)), Struct_1(-347f, vec3<bool>(true, true, false), vec4<u32>(89938u, u_input.a, 537u, u_input.a), 1400f), 308f, Struct_1(1418f, vec3<bool>(true, false, true), vec4<u32>(0u, u_input.a, 36564u, u_input.a), -580f)), 2086f, Struct_1(-1089f, vec3<bool>(true, false, false), vec4<u32>(u_input.a, 18368u, u_input.a, u_input.a), 280f), Struct_2(Struct_1(-1145f, vec3<bool>(true, true, false), vec4<u32>(0u, 0u, u_input.a, u_input.a), -819f), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(select(1330f, -2493f, false))), _wgslsmith_f_op_f32(-609f - _wgslsmith_f_op_f32(select(-168f, -703f, true))), _wgslsmith_f_op_f32(ceil(-2002f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, -1232f, 138f, 910f))))));
    var_1 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(301f, -345f, _wgslsmith_f_op_f32(-var_1.a.d), 1f) - vec4<f32>(_wgslsmith_f_op_f32(var_1.a.d - _wgslsmith_f_op_f32(abs(var_1.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1151f)), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(var_1.a.a, var_1.b.zwy, var_1.a.c, var_1.a.a), vec4<bool>(var_1.b.x, true, var_1.a.b.x, false)), Struct_2(var_1.a, vec4<bool>(true, var_1.b.x, true, false)), var_1.a, 498f, var_1.a), var_1.a.a, Struct_1(var_1.a.d, vec3<bool>(true, false, var_1.b.x), var_1.a.c, 1070f), Struct_2(var_1.a, vec4<bool>(true, false, false, var_1.a.b.x)))), var_1.a.a)));
    var_0 = vec4<i32>(34382i, var_0.x, _wgslsmith_dot_vec3_i32(var_0.yyw, select(var_0.yxx, _wgslsmith_add_vec3_i32(var_0.zzw, vec3<i32>(var_0.x, -47212i, -40299i) ^ var_0.yww), true)), var_0.x);
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, 405f, -379f, -913f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, var_1.a.a, 1000f, 2366f) + vec4<f32>(var_1.a.a, 1000f, -1651f, var_1.a.d)), var_1.a.b.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(941f, var_1.a.d, var_1.a.a, -1329f), vec4<f32>(639f, 698f, 2211f, -902f)))) + vec4<f32>(_wgslsmith_f_op_f32(-107f - 760f), _wgslsmith_f_op_f32(sign(-190f)), _wgslsmith_f_op_f32(select(801f, 649f, var_1.a.b.x)), 302f)))).a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c.zyz);
}

