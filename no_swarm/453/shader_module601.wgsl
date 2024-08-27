struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_4;

var<private> global2: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global1.c.d.a), vec2<u32>(4294967295u, u_input.c)), 19371u, u_input.e.x)), ~abs(~vec4<u32>(global2.c.c.b, global0.x, 0u, 4294967295u)));
    return -1000f;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: f32) -> i32 {
    let var_0 = global2.c.d;
    global1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -149f), global2.b, Struct_3(all(select(global2.b.c.wz, vec2<bool>(global1.b.c.x, false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_3(vec3<u32>(arg_2.x, 4294967295u, u_input.e.x))))), global1.b, global1.c.d));
    global1 = Struct_4(_wgslsmith_div_f32(-124f, _wgslsmith_f_op_f32(abs(440f))), global1.c.c, global2.c);
    var var_1 = _wgslsmith_f_op_f32(-global2.c.b);
    let var_2 = global1.c;
    return _wgslsmith_add_i32(~(-11837i), countOneBits(arg_0));
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1500f, _wgslsmith_f_op_f32(select(global1.c.b, 1092f, global1.b.c.x))) + vec2<f32>(_wgslsmith_f_op_f32(global1.c.b - 398f), _wgslsmith_f_op_f32(global1.c.b - 1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1120f, global1.c.b) + vec2<f32>(1675f, global2.a)))))));
    let var_1 = global1.c;
    var var_2 = select(select(global1.c.c.c.xzy, select(vec3<bool>(all(vec2<bool>(true, global1.b.c.x)), var_1.c.a.x, !global1.b.c.x), vec3<bool>(false, true, global2.b.b > 21089u), select(select(var_1.c.c.yyz, vec3<bool>(true, global1.c.a, global2.b.c.x), global1.b.a.x), global1.c.d.b, true)), any(global2.b.c)), vec3<bool>(all(global1.b.c.xww), true, !((global2.c.c.b > 0u) || !var_1.d.b.x)), !(_wgslsmith_sub_u32(global2.c.c.b, 37662u) <= firstTrailingBit(0u)) != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a, global2.c.b))) >= var_0.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0))))), vec2<f32>(global2.c.b, _wgslsmith_f_op_f32(sign(455f))), select(!select(vec2<bool>(false, true), var_2.xy, true), global1.b.a, var_2.x)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(307f * global2.c.b), _wgslsmith_f_op_f32(-global1.c.b), -1000f);
    return Struct_4(global1.a, global2.b, Struct_3(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_4.x)), _wgslsmith_f_op_f32(1032f - -1345f)))), global2.b, Struct_2(reverseBits(firstLeadingBit(global2.b.b)), !select(vec3<bool>(false, false, var_1.c.c.x), vec3<bool>(var_2.x, true, var_1.a), vec3<bool>(false, false, global1.c.d.b.x)))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_clamp_i32(max(global2.b.d, func_2(~arg_0, vec3<bool>(arg_1.c.c.x, global2.c.c.a.x, true), vec4<u32>(global2.c.c.b, 41363u, 4486u, u_input.b) << (vec4<u32>(37125u, global2.b.b, 35919u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-global1.c.b))), global1.c.c.d, _wgslsmith_add_i32(1i, 11022i)), ~(10684i | _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -10214i, global2.c.c.d), vec3<i32>(-45199i, u_input.d, global1.c.c.d)), 1i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, global1.b.b, 0u), reverseBits(vec3<u32>(4294967295u, arg_1.d.a, global2.c.c.b))))), _wgslsmith_f_op_f32(ceil(global1.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b * var_0.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1089f, _wgslsmith_f_op_f32(arg_2.x - arg_2.x), global1.c.b))));
    return func_4(arg_1.c.d, 1i);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_1 {
    global1 = arg_0;
    global1 = arg_0;
    global1 = func_4(~(-global1.c.c.d), global2.b.d);
    var var_0 = Struct_2(4294967295u & _wgslsmith_div_u32(67877u, firstTrailingBit(firstLeadingBit(global2.b.b))), vec3<bool>(false, true, true));
    let var_1 = func_1(-arg_2.b.d, func_1(global1.c.c.d, Struct_3(true, _wgslsmith_div_f32(322f, func_4(arg_0.b.d, global2.c.c.d).a), arg_0.b, arg_2.c.d), vec2<f32>(_wgslsmith_f_op_f32(-1f), -162f)).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a, 144f), vec2<f32>(arg_2.c.b, -1000f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-513f, global2.a), vec2<f32>(global1.c.b, -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1194f, arg_0.a))))).c.d;
    return func_4(~arg_1.c.d, countOneBits(-abs(global1.c.c.d))).c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-global1.c.b), func_5(func_1(firstLeadingBit(-2147483647i << (global2.c.c.b % 32u)), Struct_3(global1.c.c.c.x, global2.a, Struct_1(vec2<bool>(true, global1.b.a.x), global1.b.b, vec4<bool>(false, global2.b.a.x, global1.c.c.c.x, false), global1.c.c.d), Struct_2(global1.b.b, global2.b.c.wyz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(463f, 2413f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.b, global1.c.b) - vec2<f32>(665f, global2.c.b)))), Struct_3(global1.b.a.x, global1.c.b, func_4(-25567i, -global2.c.c.d).b, Struct_2(global2.b.b, select(vec3<bool>(true, global2.b.c.x, global1.b.a.x), global2.b.c.xzz, global2.c.c.a.x))), func_1(376i, func_4(68009i, 2147483647i).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.c.b, -498f), vec2<f32>(-303f, global1.a))))), vec2<bool>(!global2.c.a, (global1.b.c.x || global2.c.d.b.x) & all(vec2<bool>(global2.c.c.c.x, global2.c.a)))), Struct_3(!(-global2.c.c.d >= _wgslsmith_mult_i32(u_input.d, global1.b.d)), -1148f, global1.b, Struct_2(_wgslsmith_clamp_u32(abs(1810u), _wgslsmith_clamp_u32(global1.b.b, global2.b.b, 1u), 4255u), global1.c.c.c.wzy)));
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c.d.a, var_0.b.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.b.b, global0.x), vec2<u32>(global0.x, _wgslsmith_add_u32(4294967295u, global2.b.b)))), ~abs(reverseBits(~vec3<u32>(28568u, 1u, 42342u))), min(~vec3<u32>(global2.b.b, 52534u, _wgslsmith_mod_u32(1u, 20538u)), firstTrailingBit(vec3<u32>(~global2.b.b, global1.c.d.a | global0.x, 1321u))));
    var var_1 = true;
    let var_2 = func_5(func_1(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(32070i, -1i, -20659i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(-38904i, global1.b.d, u_input.d), vec3<i32>(global1.b.d, 2147483647i, 13860i) << (vec3<u32>(1u, global1.c.d.a, global0.x) % vec3<u32>(32u)))), Struct_3(_wgslsmith_f_op_f32(-global1.c.b) == -492f, _wgslsmith_f_op_f32(var_0.c.b + global2.a), func_1(23837i, var_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.b, var_0.a) * vec2<f32>(global1.c.b, var_0.c.b))).b, Struct_2(0u, global2.b.c.zzy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b, 382f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.b, global2.c.b) + vec2<f32>(-845f, global1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b, -582f))))), var_0.c, Struct_4(217f, func_5(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -599f), Struct_1(global1.b.c.yx, u_input.a, vec4<bool>(global2.b.c.x, global2.b.a.x, false, global2.b.a.x), global2.b.d), global2.c), global2.c, func_4(2147483647i, 0i), vec2<bool>(all(var_0.b.a), var_0.c.c.d >= global1.b.d)), func_4(firstLeadingBit(~(-2147483647i)), ~global1.c.c.d).c), !global1.c.d.b.zx);
    let var_3 = var_2.c.wz;
    var var_4 = func_1(var_2.d, Struct_3(_wgslsmith_f_op_f32(step(-1108f, _wgslsmith_f_op_f32(f32(-1f) * -965f))) >= _wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(-var_0.a), Struct_1(select(var_3, global1.c.d.b.yx, global2.b.a), ~13727u, !vec4<bool>(false, true, false, global2.b.c.x), var_0.c.c.d), Struct_2(~reverseBits(u_input.a), global1.c.c.c.xzw)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1730f))), 508f)), -586f));
    var var_5 = ~firstLeadingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, u_input.d, u_input.d, global2.b.d), vec4<i32>(var_0.c.c.d, -1i, global1.c.c.d, 2147483647i), vec4<bool>(var_0.c.a, false, true, false)) >> (vec4<u32>(3171u, 76955u, global0.x, global1.b.b) % vec4<u32>(32u)), vec4<i32>(-var_4.b.d, _wgslsmith_clamp_i32(-758i, u_input.d, 39519i), 0i, ~(-38644i))));
    let var_6 = global2.c;
    let var_7 = func_1(_wgslsmith_div_i32(~var_4.c.c.d, -_wgslsmith_add_i32(var_6.c.d, 0i)), var_4.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-993f - 656f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1891f, 2829f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-731f, var_4.a) - vec2<f32>(var_0.a, -1631f)), vec2<f32>(115f, -379f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.b, -458f) - vec2<f32>(var_4.c.b, var_0.c.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(720f, var_4.c.b) * vec2<f32>(global2.c.b, var_6.b)))))))).b.c.zw;
    let x = u_input.a;
    s_output = StorageBuffer(-814f, var_4.b.d, 4294967295u);
}

