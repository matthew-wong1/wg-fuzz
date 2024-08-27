struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(true);

var<private> global1: Struct_4 = Struct_4(vec3<i32>(0i, 9648i, -28319i));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> i32 {
    global1 = Struct_4(vec3<i32>(global1.a.x, 42099i, -1i));
    global1 = Struct_4(vec3<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i | global1.a.x, countOneBits(-5727i)), _wgslsmith_div_i32(abs(global1.a.x), select(global1.a.x, -46108i, true))), _wgslsmith_sub_i32(-_wgslsmith_div_i32(-2147483647i, -4080i), select(_wgslsmith_mod_i32(global1.a.x, global1.a.x), global1.a.x, false))));
    var var_0 = ~_wgslsmith_dot_vec2_u32(min(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a), global0.a), vec2<u32>(u_input.a, u_input.a)), ~select(vec2<u32>(u_input.a, 4095u), vec2<u32>(22412u, u_input.a), vec2<bool>(global0.a, false))), firstLeadingBit(countOneBits(vec2<u32>(25393u, u_input.a))) ^ firstTrailingBit(vec2<u32>(1u, 1u)));
    global1 = Struct_4(-reverseBits(-vec3<i32>(-1i, -2147483647i, global1.a.x) ^ (global1.a ^ vec3<i32>(0i, -1i, 16630i))));
    let var_1 = !any(select(vec3<bool>(arg_0, false, true), select(!vec3<bool>(false, arg_0, false), !vec3<bool>(true, global0.a, true), !vec3<bool>(global0.a, global0.a, global0.a)), !arg_0));
    return ~_wgslsmith_sub_i32(global1.a.x, ~firstLeadingBit(-global1.a.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, _wgslsmith_div_i32(global1.a.x, arg_2.x), 0i, 2147483647i), vec4<i32>(0i, firstTrailingBit(global1.a.x), -1i >> (arg_1.b.x % 32u), _wgslsmith_add_i32(arg_2.x, arg_2.x)), vec4<i32>(-2147483647i, 33955i, arg_2.x, 1i) & ~vec4<i32>(0i, -76098i, arg_2.x, 2147483647i)) ^ (-(~vec4<i32>(global1.a.x, 20221i, arg_2.x, 80795i)) | vec4<i32>(_wgslsmith_div_i32(-41121i, 1i), 2147483647i, _wgslsmith_add_i32(8969i, global1.a.x), arg_2.x)));
    let var_1 = global1.a.zx ^ countOneBits(vec2<i32>(-firstLeadingBit(0i), ~(~2147483647i)));
    var var_2 = _wgslsmith_f_op_f32(256f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-526f)))) - -356f), 150f));
    var var_3 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(~reverseBits(8901u), 29382u), 70904u), arg_0.x, arg_0.x);
    var_0 = ~vec4<i32>(-1i, var_1.x, arg_2.x, _wgslsmith_clamp_i32(var_1.x, ~1i, -2147483647i));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), -594f))), var_3.x, ~((countOneBits(vec4<u32>(17193u, 1u, 96924u, var_3.x)) & ~vec4<u32>(var_3.x, u_input.a, 4294967295u, 53573u)) ^ countOneBits(vec4<u32>(u_input.a, 1u, arg_0.x, var_3.x) >> (vec4<u32>(10831u, 26811u, arg_0.x, var_3.x) % vec4<u32>(32u)))), func_3(global0.a), -834f);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: i32) -> Struct_3 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1558f, 266f)), _wgslsmith_f_op_f32(round(-686f))) * vec2<f32>(_wgslsmith_f_op_f32(select(952f, 115f, false)), _wgslsmith_f_op_f32(846f * -807f)))));
    var var_2 = ~(~(~vec2<u32>(16959u, ~0u)));
    var var_3 = func_2(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(16877u, 4294967295u, 1u, 4937u)), (vec4<u32>(var_2.x, var_2.x, 0u, 24669u) | vec4<u32>(u_input.a, 30376u, 23872u, 75064u)) & vec4<u32>(4294967295u, 0u, u_input.a, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_2.x, _wgslsmith_mod_u32(0u, u_input.a), ~23881u, 1u), ~vec4<u32>(var_2.x, u_input.a, 44663u, 24109u))), Struct_3(_wgslsmith_f_op_f32(341f + var_1.x), max(~vec2<u32>(15473u, 1u), vec2<u32>(u_input.a, 1u)) ^ ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 34623u), vec2<u32>(78237u, var_2.x)), !(!vec4<bool>(false, arg_1.x, arg_0.x, false)), vec4<f32>(_wgslsmith_f_op_f32(sign(1227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_div_f32(704f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(round(var_1.x)))), vec3<i32>(global1.a.x, ~(arg_2 ^ _wgslsmith_clamp_i32(-2147483647i, -9339i, arg_2)), 2147483647i));
    let var_4 = reverseBits(vec3<i32>(-1i, 0i, _wgslsmith_add_i32(firstTrailingBit(global1.a.x), abs(arg_2)))) & vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_sub_i32(global1.a.x, global1.a.x), 23930i), global1.a.x, -4064i);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1558f)))))), _wgslsmith_mult_vec2_u32(reverseBits(reverseBits(~vec2<u32>(var_2.x, 2164u))), var_3.c.yx), arg_0, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), 2272f, -110f, var_3.e));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = func_1(func_1(vec4<bool>(true | (u_input.a != arg_1.b.x), global0.a, true, true), func_1(func_1(arg_1.c, select(vec3<bool>(true, true, global0.a), arg_1.c.zyx, vec3<bool>(global0.a, false, global0.a)), 1i).c, vec3<bool>(all(arg_1.c.xwx), all(vec2<bool>(arg_1.c.x, global0.a)), true), func_3(false)).c.yyx, _wgslsmith_mod_i32(_wgslsmith_mult_i32(func_2(vec3<u32>(arg_1.b.x, 51076u, arg_1.b.x), arg_1, vec3<i32>(-1i, 1i, 0i)).d, ~global1.a.x), countOneBits(~0i))).c, select(arg_1.c.wzx, !vec3<bool>(false, arg_1.c.x, true), !(!func_1(vec4<bool>(arg_1.c.x, arg_1.c.x, true, false), arg_1.c.yxz, global1.a.x).c.wzw)), global1.a.x);
    global0 = Struct_5(all(vec2<bool>(any(select(vec3<bool>(true, arg_1.c.x, global0.a), arg_1.c.wyz, arg_1.c.x)), !any(var_0.c.wy))));
    var var_1 = !(!func_1(select(select(var_0.c, arg_1.c, global0.a), arg_1.c, true), arg_1.c.wyx, -abs(global1.a.x)).c);
    let var_2 = global1.a.xy;
    var var_3 = abs(1u);
    return func_2(vec3<u32>(~(~firstTrailingBit(5105u)), abs(reverseBits(u_input.a)), _wgslsmith_mod_u32(20059u, firstLeadingBit(var_0.b.x))), Struct_3(var_0.a, vec2<u32>(arg_1.b.x, 1u), !(!var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_f32(step(307f, -915f)), _wgslsmith_div_f32(-541f, -1000f)))), -countOneBits(vec3<i32>(-global1.a.x, global1.a.x, firstLeadingBit(-10417i))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_2(func_4(func_1(!vec4<bool>(global0.a, global0.a, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, false), countOneBits(~global1.a.x)).b.x, func_1(vec4<bool>(global0.a, 0i == global1.a.x, global0.a, true), !select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(false, arg_0.x, true), arg_0.x), arg_1.d)), true, arg_1.c.wx, func_4(u_input.a, Struct_3(-1141f, vec2<u32>(u_input.a, 4294967295u), vec4<bool>(global0.a, true, !arg_0.x, global0.a & true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, -1978f, 1363f, arg_1.e)))));
    let var_1 = arg_3.a.x;
    let var_2 = false;
    global1 = Struct_4(~arg_3.a ^ ~global1.a);
    var var_3 = Struct_4(vec3<i32>(var_1, -15453i, _wgslsmith_add_i32(-1i, func_2(arg_1.c.ywx, Struct_3(var_0.a.a, var_0.d.c.zw, vec4<bool>(arg_0.x, arg_0.x, true, var_2), vec4<f32>(arg_2, -303f, arg_1.e, 443f)), arg_3.a).d << (81777u % 32u))));
    return Struct_4(vec3<i32>(-3880i, -18331i, firstLeadingBit(arg_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(u_input.a, reverseBits(~0u), ~min(1u, ~20172u)), ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(54816u, 4294967295u)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 0u)), 11825u >> (min(u_input.a & 61126u, 55046u) % 32u)), u_input.a);
    global1 = func_5(!vec2<bool>(!global0.a && global0.a, !(!global0.a)), func_4(~_wgslsmith_dot_vec3_u32(var_0.yyw, ~vec3<u32>(26149u, 1u, u_input.a)), func_1(vec4<bool>(global0.a, global0.a, !global0.a, any(vec2<bool>(true, global0.a))), select(vec3<bool>(false, false, global0.a), !vec3<bool>(true, global0.a, true), false | global0.a), min(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, global1.a.x, -2147483647i, global1.a.x), vec4<i32>(global1.a.x, 14884i, 1i, global1.a.x)), 2147483647i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(495f, -204f))))))), Struct_4(-global1.a));
    global1 = Struct_4(global1.a);
    let var_1 = Struct_4(global1.a);
    var var_2 = var_0;
    var_2 = var_0 >> ((var_0 | min(~vec4<u32>(var_0.x, var_2.x, var_0.x, var_0.x), select(vec4<u32>(var_0.x, 30707u, var_0.x, 85861u) | vec4<u32>(22648u, 0u, 4294967295u, var_0.x), ~vec4<u32>(1u, var_2.x, var_2.x, var_0.x), !vec4<bool>(global0.a, global0.a, true, global0.a)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yy, _wgslsmith_clamp_vec3_i32(~vec3<i32>(-global1.a.x, 0i, -var_1.a.x), _wgslsmith_clamp_vec3_i32(global1.a, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global1.a.x, 1i), _wgslsmith_add_vec3_i32(var_1.a, vec3<i32>(var_1.a.x, 1i, 2147483647i))), select(vec3<i32>(var_1.a.x, global1.a.x, -22664i) & global1.a, _wgslsmith_add_vec3_i32(global1.a, var_1.a), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, true, global0.a), vec3<bool>(global0.a, false, true)))), ~(vec3<i32>(var_1.a.x, -2147483647i, -29274i) ^ vec3<i32>(global1.a.x, global1.a.x, 0i)) >> (~func_4(var_2.x, Struct_3(550f, vec2<u32>(u_input.a, 10414u), vec4<bool>(false, false, global0.a, global0.a), vec4<f32>(-814f, 1090f, 475f, -891f))).c.zxz % vec3<u32>(32u))), _wgslsmith_mod_vec4_i32(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, global1.a.x, -60847i, var_1.a.x), vec4<i32>(49452i, var_1.a.x, var_1.a.x, 17792i))), ~vec4<i32>(-2147483647i, global1.a.x, 1i, 16170i)));
}

