struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    let var_0 = global0.c;
    let var_1 = Struct_1(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global0.a, global0.a), vec4<u32>(global0.a.x, 43215u, 0u, 4294967295u)), ~(vec4<u32>(76794u, global0.a.x, 56889u, global0.a.x) ^ vec4<u32>(4294967295u, 53974u, u_input.d, global0.a.x))), _wgslsmith_sub_vec3_i32(u_input.b.zyx, min(firstLeadingBit(abs(u_input.b.zww)), vec3<i32>(_wgslsmith_div_i32(-25195i, global0.b.x), i32(-1i) * -59018i, u_input.b.x))), global0.c, _wgslsmith_f_op_vec2_f32(global0.d * _wgslsmith_f_op_vec2_f32(global0.d - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-360f, -1026f) - vec2<f32>(global0.d.x, 1021f)) * _wgslsmith_f_op_vec2_f32(global0.d * vec2<f32>(global0.c, -1109f))))));
    let var_2 = 1i;
    var var_3 = firstLeadingBit(global0.b.xx);
    let var_4 = ~firstLeadingBit(~vec4<u32>(var_1.a.x, 0u, 13068u >> (1u % 32u), 67328u));
    return Struct_2(true, var_1, var_4.x, select(min(vec2<i32>(-26226i, abs(global0.b.x)), var_1.b.yx), countOneBits(_wgslsmith_mult_vec2_i32(global0.b.yy, vec2<i32>(-1i, u_input.b.x))) | (firstLeadingBit(vec2<i32>(global0.b.x, var_3.x)) ^ (var_1.b.xz << (var_4.wx % vec2<u32>(32u)))), true));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>) -> i32 {
    let var_0 = arg_0;
    let var_1 = func_2();
    global0 = arg_0.d;
    return min(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(18843i, 1i), global0.b.yz));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = Struct_2(func_2().a, func_2().b, firstTrailingBit(global0.a.x), countOneBits(vec2<i32>(abs(u_input.c << (4294967295u % 32u)), global0.b.x)));
    let var_1 = !(_wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(168f, global0.c)))) == _wgslsmith_f_op_f32(max(-310f, -1000f)));
    let var_2 = vec3<bool>(true, all(select(!vec4<bool>(false, false, var_0.a, false), !(!vec4<bool>(var_0.a, var_1, var_1, false)), true)), any(!select(!vec3<bool>(var_1, var_0.a, true), select(vec3<bool>(var_1, true, var_0.a), vec3<bool>(var_1, true, false), vec3<bool>(false, var_0.a, var_1)), 1i >= arg_2.b.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(221f, _wgslsmith_f_op_f32(-1141f - var_0.b.c)))), -814f)) - 154f);
    var var_4 = func_2().b;
    return Struct_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(1030f, var_3, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1054f), _wgslsmith_f_op_f32(288f - var_0.b.d.x)))))), vec4<u32>(~_wgslsmith_dot_vec3_u32(var_4.a.zyy, vec3<u32>(var_0.c, 27051u, var_0.b.a.x)) << (24375u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(12244u, 4294967295u, var_4.a.x) & abs(vec3<u32>(1u, 41422u, 0u)), ~(vec3<u32>(1u, global0.a.x, 10741u) ^ var_4.a.wzx)), 19981u, u_input.d), select(select(!vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(!var_1, true, all(vec4<bool>(var_0.a, var_1, var_0.a, var_1))), vec3<bool>(false != var_0.a, !var_0.a, select(false, var_2.x, var_1))), vec3<bool>(var_0.a && false, !(!var_0.a), !var_2.x), select(var_2, var_2, var_0.a)), Struct_1(select(~(var_0.b.a | vec4<u32>(54472u, u_input.d, u_input.d, 1u)), var_0.b.a, false), var_0.b.b, 1412f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d))), !(!vec2<bool>(var_1, all(vec4<bool>(var_2.x, var_1, true, false)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_2(func_2().a == false, arg_0.d, ~(~countOneBits(_wgslsmith_sub_u32(0u, global0.a.x))), arg_0.d.b.xy);
    let var_1 = func_3(~(-select(u_input.b, vec4<i32>(43936i, -42214i, -2147483647i, u_input.b.x), true) ^ u_input.b), func_2().b.a.zy, Struct_1(select(vec4<u32>(arg_0.d.a.x, u_input.d, _wgslsmith_mod_u32(76444u, 18089u), firstLeadingBit(40101u)), ~(global0.a << (vec4<u32>(105085u, 40982u, u_input.d, 31156u) % vec4<u32>(32u))), arg_1.d), ~arg_0.d.b ^ _wgslsmith_div_vec3_i32(vec3<i32>(-20924i, -2147483647i, u_input.a.x), ~vec3<i32>(u_input.a.x, arg_0.d.b.x, var_0.b.b.x)), -309f, global0.d));
    let var_2 = var_0.b;
    var var_3 = abs(0u);
    var var_4 = _wgslsmith_div_i32(var_2.b.x | _wgslsmith_sub_i32(func_2().b.b.x, var_0.b.b.x), ~(-1i));
    return vec4<i32>(i32(-1i) * -firstLeadingBit(5497i), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.d.b.x, 10893i), firstLeadingBit(arg_0.d.b.yx)), -reverseBits(_wgslsmith_sub_i32(var_0.b.b.x, global0.b.x)), arg_0.d.b.x) | countOneBits(~countOneBits(vec4<i32>(arg_2, -17968i, -35369i, -907i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c));
    var var_1 = ~func_4(func_3(vec4<i32>(func_1(Struct_4(vec3<f32>(var_0, 1056f, global0.d.x), global0.a, vec3<bool>(false, true, false), Struct_1(global0.a, vec3<i32>(u_input.c, global0.b.x, 42929i), global0.d.x, global0.d), vec2<bool>(true, true)), vec3<u32>(global0.a.x, u_input.d, u_input.d)), global0.b.x, _wgslsmith_add_i32(u_input.b.x, -1i), global0.b.x), global0.a.xx, func_2().b), Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(127f, var_0, 586f))), vec3<f32>(-513f, global0.c, 1030f))), !func_3(vec4<i32>(-44950i, global0.b.x, -1i, 51105i), global0.a.zx, Struct_1(global0.a, global0.b, -619f, global0.d)).c, vec3<u32>(global0.a.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(23543u, u_input.d, global0.a.x, global0.a.x), global0.a)), vec4<bool>(true, true, true, true)), ~global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0)))));
    var var_2 = global0.a.wyw;
    let var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-func_3(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, global0.b.x, global0.b.x, global0.b.x)), reverseBits(vec2<u32>(global0.a.x, 0u)), func_3(u_input.b, global0.a.wy, Struct_1(vec4<u32>(786u, u_input.d, 6064u, u_input.d), vec3<i32>(var_1.x, 0i, u_input.c), global0.d.x, vec2<f32>(global0.c, 2435f))).d).d.d.x), 1145f, -110f), vec3<bool>(select(!func_2().a, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true), all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), abs(vec3<u32>(~(~22531u), 8819u, abs(_wgslsmith_add_u32(1u, 1u)))), vec4<bool>(true, any(vec2<bool>(var_2.x == 4294967295u, all(vec2<bool>(true, true)))), !all(vec2<bool>(true, false)) & false, true));
    global0 = func_3(-_wgslsmith_add_vec4_i32(u_input.b, _wgslsmith_mult_vec4_i32(select(vec4<i32>(var_1.x, -1i, u_input.a.x, -1i), u_input.b, vec4<bool>(false, false, false, true)), vec4<i32>(19151i, global0.b.x, global0.b.x, var_1.x) >> (global0.a % vec4<u32>(32u)))), abs(var_3.c.yy), Struct_1(~abs(vec4<u32>(7347u, var_3.c.x, var_3.c.x, 4294967295u) << (global0.a % vec4<u32>(32u))), -select(-vec3<i32>(0i, u_input.b.x, var_1.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-3261i, u_input.b.x, -1i), vec3<i32>(-16748i, var_1.x, global0.b.x)), !var_3.d.x), _wgslsmith_f_op_f32(round(-615f)), vec2<f32>(func_3(~u_input.b, var_3.c.yx, Struct_1(global0.a, vec3<i32>(global0.b.x, global0.b.x, 0i), -639f, vec2<f32>(130f, var_0))).d.c, _wgslsmith_div_f32(global0.d.x, _wgslsmith_div_f32(-510f, global0.c))))).d;
    var var_4 = Struct_5(func_3(reverseBits(u_input.b), vec2<u32>(_wgslsmith_add_u32(var_2.x, ~global0.a.x), ~(~var_2.x)), Struct_1(countOneBits(reverseBits(global0.a)), (vec3<i32>(-2147483647i, u_input.c, 2147483647i) ^ vec3<i32>(9541i, -2214i, -3457i)) << (~vec3<u32>(65767u, 0u, 33745u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(127f - -390f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-269f, global0.d.x))))).d, Struct_4(var_3.a, global0.a, !vec3<bool>(func_2().a, true, all(vec3<bool>(true, false, true))), func_2().b, vec2<bool>(false || !var_3.d.x, true)), vec3<u32>(~max(firstTrailingBit(var_3.c.x), firstLeadingBit(global0.a.x)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(21536u, 123870u, 31349u) | vec3<u32>(4294967295u, u_input.d, u_input.d), max(vec3<u32>(0u, 9082u, 3288u), vec3<u32>(38638u, 58236u, 4294967295u)))), select(~_wgslsmith_dot_vec2_u32(vec2<u32>(9480u, u_input.d), var_2.zy), select(_wgslsmith_sub_u32(var_2.x, var_3.c.x), ~var_3.c.x, var_3.d.x), var_3.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global0.a.x, var_4.a.a.x >> (~firstLeadingBit(var_2.x) % 32u), ~_wgslsmith_add_u32(4294967295u, u_input.d), ~var_4.a.a.x));
}

