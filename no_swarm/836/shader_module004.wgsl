struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: i32;

var<private> global2: vec3<f32> = vec3<f32>(-1158f, 1956f, -1233f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_div_f32(-900f, -244f);
    var var_1 = vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-63771i, 48935i, -43016i)), ~vec3<i32>(-1i, -11652i, -1i)), firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(-37898i, 33648i, 1i), vec3<i32>(0i, 16905i, 1i)))), 1i, countOneBits(-13755i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (max(~vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), select(vec4<u32>(u_input.a, u_input.a, u_input.a, 6312u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(global0.x, true, global0.x, true))) % vec4<u32>(32u)), reverseBits(min(vec4<i32>(0i, 2147483647i, 2147483647i, -17129i), vec4<i32>(0i, 2147483647i, -31440i, 14672i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 13925u, u_input.a), vec4<u32>(u_input.a, u_input.a, 87254u, u_input.a)) % vec4<u32>(32u)))));
    var var_2 = global2.x;
    global1 = var_1.x;
    var_1 = firstTrailingBit(reverseBits(min(vec4<i32>(_wgslsmith_sub_i32(var_1.x, 78929i), 0i, abs(106i), _wgslsmith_add_i32(var_1.x, 2147483647i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(28811i, 1i, var_1.x, -6135i), _wgslsmith_mod_vec4_i32(vec4<i32>(-15782i, -2147483647i, 0i, var_1.x), vec4<i32>(var_1.x, 45757i, 10134i, 0i)), -vec4<i32>(var_1.x, -98379i, 8099i, var_1.x)))));
    return _wgslsmith_f_op_f32(global2.x + arg_0);
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global2.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x)))), global2.x)));
    var var_1 = Struct_3(select(select(select(select(global0.zz, global0.zx, true), !global0.xx, select(vec2<bool>(false, arg_0), vec2<bool>(false, true), global0.x)), select(global0.wy, vec2<bool>(global0.x, true), arg_0), select(vec2<bool>(true, global0.x), vec2<bool>(arg_0, global0.x), vec2<bool>(arg_0, arg_0))), vec2<bool>(!global0.x, global0.x), !(!select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)))), Struct_2(global0.wx, firstTrailingBit(vec4<u32>(34145u, 37860u, 106428u, u_input.a)) >> (select(~vec4<u32>(79042u, u_input.a, u_input.a, u_input.a), vec4<u32>(88899u, u_input.a, 23891u, 0u), select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, true, global0.x, arg_0), arg_0)) % vec4<u32>(32u)), ~1i, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 57279u, 34957u), vec4<u32>(47997u, 13449u, 87007u, 0u))), Struct_2(select(select(vec2<bool>(true, global0.x), !vec2<bool>(arg_0, false), select(global0.zw, global0.zw, global0.wy)), global0.wz, !global0.zz), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(74970u, u_input.a, 8503u, 60618u)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -13051i, -52312i), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(14939i, -2147483647i)))), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(80169u, 4294967295u), 0u >> (u_input.a % 32u))));
    let var_2 = _wgslsmith_mod_u32(u_input.a, ~57634u);
    let var_3 = Struct_4(var_1.c, _wgslsmith_sub_i32(var_1.c.c, ~(~(-8432i)) ^ ~var_1.b.c), var_1.b);
    var var_4 = ~var_3.c.b;
    return i32(-1i) * -54139i;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = -(~(firstTrailingBit(-2147483647i) & ~func_2(global0.x)));
    var var_1 = _wgslsmith_div_vec3_i32(~firstTrailingBit(-vec3<i32>(var_0, 0i, var_0)) << (select(vec3<u32>(0u ^ arg_0.x, _wgslsmith_clamp_u32(78181u, 4294967295u, u_input.a), 1u), ~(~arg_0.xxz), true) % vec3<u32>(32u)), ~max(-firstLeadingBit(vec3<i32>(var_0, var_0, var_0)), vec3<i32>(0i >> (0u % 32u), i32(-1i) * -63006i, -2147483647i)));
    let var_2 = global2.x;
    var var_3 = all(select(select(vec3<bool>(false, true || global0.x, global0.x && true), !select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, true)), global0.x | (global0.x != false)), vec3<bool>(!global0.x, !(!global0.x), !(global0.x & global0.x)), global0.xzx));
    var_1 = vec3<i32>(var_1.x, ~(~(-2147483647i)), 13712i);
    return Struct_1(~var_1.x, arg_0.x, select(vec3<bool>(global0.x, any(global0.xx), select(global2.x >= global2.x, select(true, global0.x, global0.x), false)), select(global0.zxw, !global0.zzy, vec3<bool>(true, global0.x, true)), !global0.yyz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(21860u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a, 47891u, 1u, 0u)), vec4<u32>(1u, 0u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u))), true));
    let var_1 = select(~u_input.a, var_0.b, global0.x);
    let var_2 = Struct_3(var_0.c.xx, Struct_2(var_0.c.zx, vec4<u32>(u_input.a, var_1, ~_wgslsmith_mult_u32(var_0.b, u_input.a), ~18614u), min(-var_0.a, 7548i), ~((1u | u_input.a) | abs(u_input.a))), Struct_2(vec2<bool>(!(!global0.x), all(!vec4<bool>(false, true, false, global0.x))), min(vec4<u32>(20699u, var_0.b, 36811u, var_1), ~vec4<u32>(4294967295u, 23353u, u_input.a, var_1)) >> (firstLeadingBit(~vec4<u32>(0u, 4294967295u, var_0.b, 66086u)) % vec4<u32>(32u)), 28083i, _wgslsmith_add_u32(var_0.b, 60420u)));
    global0 = select(!vec4<bool>(var_0.c.x, any(vec3<bool>(var_2.b.a.x, var_2.b.a.x, false)), true, any(var_0.c)), !select(select(select(vec4<bool>(var_2.b.a.x, global0.x, false, var_0.c.x), vec4<bool>(var_0.c.x, false, false, false), vec4<bool>(var_2.b.a.x, global0.x, global0.x, var_0.c.x)), select(vec4<bool>(global0.x, true, false, false), vec4<bool>(true, true, var_2.a.x, false), vec4<bool>(var_0.c.x, false, global0.x, false)), !global0.x), select(!vec4<bool>(false, var_0.c.x, global0.x, false), select(vec4<bool>(true, false, true, var_2.b.a.x), vec4<bool>(var_2.c.a.x, true, global0.x, false), true), vec4<bool>(var_0.c.x, true, true, var_2.a.x)), global0.x), var_2.c.a.x);
    global2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f) + _wgslsmith_f_op_f32(1000f + global2.x)))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, -536f)) * -1025f))), var_0.c.x)), _wgslsmith_f_op_f32(max(global2.x, global2.x)), global2.x);
    let var_3 = ~abs(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_2.c.d, 4294967295u, 0u), var_2.c.b), ~13901u));
    var var_4 = Struct_3(vec2<bool>(var_2.a.x, select(any(select(vec4<bool>(var_2.a.x, true, var_2.c.a.x, var_2.a.x), vec4<bool>(true, global0.x, global0.x, var_0.c.x), vec4<bool>(global0.x, false, var_0.c.x, false))), !global0.x || !global0.x, all(vec4<bool>(true, true, true, true)))), var_2.c, Struct_2(vec2<bool>(var_0.c.x, var_0.c.x), var_2.b.b << (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(var_2.b.b, var_2.c.b), select(vec4<u32>(1u, 1u, 6088u, var_3), var_2.b.b, vec4<bool>(var_2.b.a.x, global0.x, global0.x, true))) % vec4<u32>(32u)), func_1(~(~vec4<u32>(var_1, 48231u, 4294967295u, var_2.c.d))).a, var_3));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, var_0.a, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(-27763i, -2147483647i, -2147483647i), vec3<i32>(var_0.a, var_0.a, 2147483647i))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_4.b.c, var_0.a, 2147483647i), vec3<i32>(var_4.b.c, var_0.a, 1072i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_0.a, var_4.b.c), vec3<i32>(-26257i, 2147483647i, var_0.a))))), vec2<i32>(-31408i, -1i), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(_wgslsmith_add_i32(-2147483647i, var_0.a), select(-45992i, var_4.c.c, var_2.b.a.x))), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_4.b.c, -10129i), firstLeadingBit(vec2<i32>(var_2.b.c, 2147483647i))), _wgslsmith_div_vec2_i32(vec2<i32>(var_4.c.c, var_0.a), _wgslsmith_div_vec2_i32(vec2<i32>(-8178i, var_2.c.c), vec2<i32>(0i, var_0.a))), ~vec2<i32>(28761i, var_2.b.c))));
}

