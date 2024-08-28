struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(431f, -1772f, 308f, 484f) * vec4<f32>(1637f, 315f, 904f, 600f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(377f, 712f, -183f, -283f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-993f, -632f, 1410f, -1765f), vec4<f32>(-464f, 850f, 501f, -358f), true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1296f, 2086f, 116f, -425f)))), true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1170f, 377f, 1602f, 1344f) * vec4<f32>(455f, 1400f, -777f, 1730f))))))));
    return !(var_0.x >= -1722f) || (all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), var_0.x <= -955f)) & all(vec2<bool>(true, true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> i32 {
    let var_0 = true;
    var var_1 = func_3();
    let var_2 = ~u_input.c;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-515f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -514f))) + _wgslsmith_f_op_f32(ceil(161f))))));
    var var_4 = !(!select(!vec2<bool>(true, var_0), !(!vec2<bool>(var_0, var_0)), vec2<bool>(var_0, var_0 != true)));
    return _wgslsmith_add_i32(-(~13556i), i32(-1i) * -1i);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_5 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.c, arg_0.c), abs(1u));
    var var_1 = arg_1;
    var_0 = arg_0.c | _wgslsmith_add_u32(~u_input.a, 1u);
    var var_2 = arg_0.b.x;
    let var_3 = ~28262i;
    return Struct_5(vec4<bool>(!all(select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, false, true), arg_0.a.x)), true, arg_1 > ~(~arg_1), _wgslsmith_f_op_f32(-arg_0.d.x) <= _wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_div_f32(-693f, 278f)))), arg_0, vec2<bool>(any(select(vec3<bool>(arg_0.a.x, false, false), vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, true, false))), all(!(!vec4<bool>(arg_0.a.x, false, true, true)))));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(arg_0.b, min(-45569i, ~_wgslsmith_add_i32(func_2(vec4<u32>(0u, 4294967295u, 58373u, 23495u), u_input.a), _wgslsmith_mod_i32(arg_0.b.b.x, 2147483647i))));
    return func_4(Struct_1(!vec2<bool>(true, var_0.a.x), vec4<i32>(-countOneBits(-21703i), 30282i >> (min(25697u, 1u) % 32u), select(_wgslsmith_div_i32(var_0.b.b.x, 12006i), firstTrailingBit(u_input.b), arg_0.c.x), ~(-u_input.c)), 19708u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yyz * arg_0.b.d) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b.d.x, var_0.b.d.x, arg_1.x), vec3<f32>(-632f, var_0.b.d.x, 1621f)))), var_0.b.d, true))), reverseBits(arg_0.b.b.x)).b;
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5) -> bool {
    var var_0 = vec4<bool>(false, arg_1, select(!all(select(vec4<bool>(false, true, arg_2.c.x, arg_1), vec4<bool>(arg_1, arg_2.b.a.x, false, true), arg_2.a)), arg_2.a.x, true), all(select(select(vec4<bool>(arg_0.a.d.a.x, arg_1, true, true), arg_2.a, vec4<bool>(false, false, arg_1, true)), arg_2.a, arg_1)));
    var var_1 = func_4(arg_2.b, firstLeadingBit(1i)).b.a;
    var_0 = vec4<bool>(!var_0.x, arg_0.d & all(vec3<bool>(var_0.x, arg_2.a.x, arg_1)), all(select(select(!arg_2.a.zyz, vec3<bool>(true, arg_0.d, arg_0.a.d.a.x), vec3<bool>(true, arg_0.d, false)), var_0.zyz, true)), true);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(387f)), _wgslsmith_f_op_f32(2033f - 1000f))), arg_0.c.b.d.x, true)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) * _wgslsmith_f_op_f32(ceil(arg_0.b.d.x))))))));
    var var_3 = arg_0;
    return _wgslsmith_div_i32(select(countOneBits(min(-2147483647i, 23301i)), arg_0.c.b.b.x, true), _wgslsmith_mult_i32(u_input.b, min(var_3.a.b, arg_2.b.b.x) << (firstTrailingBit(4294967295u) % 32u))) == -2147483647i;
}

fn func_6(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_5(arg_0, func_4(func_1(func_4(Struct_1(vec2<bool>(arg_0.x, false), vec4<i32>(u_input.b, u_input.c, u_input.c, -2147483647i), 4294967295u, vec3<f32>(628f, -1216f, 643f)), i32(-1i) * -2147483647i), vec4<f32>(-1312f, 1f, _wgslsmith_f_op_f32(abs(840f)), 1043f)), -(1i | select(2147483647i, 2147483647i, arg_0.x))).b, func_1(func_4(func_4(Struct_1(vec2<bool>(arg_0.x, false), vec4<i32>(-9623i, u_input.c, u_input.b, u_input.b), u_input.a, vec3<f32>(1397f, 383f, 1484f)), _wgslsmith_add_i32(u_input.b, 1i)).b, firstLeadingBit(-2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3181f, 981f, -1122f, 2858f))), vec4<f32>(1f, 1f, 1f, 1f))).a);
    var var_1 = 29206i;
    var var_2 = Struct_2(-1000f, func_4(var_0.b, -firstLeadingBit(u_input.b)).b);
    var_1 = -22382i;
    let var_3 = select(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(51585u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_2.b.c), vec3<u32>(u_input.a, var_2.b.c, 2684u)), var_2.b.c), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 32889u, 0u, 1u), vec4<u32>(41318u, u_input.a, 79941u, var_0.b.c)))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_2.b.c, 14821u, 16831u, 17066u) | select(vec4<u32>(12041u, 0u, u_input.a, u_input.a), vec4<u32>(var_2.b.c, 0u, var_2.b.c, 4294967295u), var_0.a), vec4<u32>(32534u, var_2.b.c, 10653u, 4294967295u))), vec4<u32>(func_1(Struct_5(func_4(var_2.b, -1i).a, var_0.b, select(arg_0.xx, vec2<bool>(var_0.c.x, var_2.b.a.x), var_2.b.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d.x, -1000f, var_0.b.d.x, -253f))).c, u_input.a, reverseBits(firstTrailingBit(var_0.b.c)), abs(max(4294967295u, countOneBits(4294967295u)))), vec4<bool>(false, any(var_2.b.a), any(vec2<bool>(386f > var_2.a, true)), var_2.b.a.x));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec4<bool>(any(vec2<bool>(true, true)), ~(-u_input.b) == u_input.b, func_5(Struct_4(Struct_3(u_input.a, u_input.c, vec4<i32>(u_input.b, 2147483647i, -1i, 44826i), Struct_1(vec2<bool>(false, false), vec4<i32>(u_input.b, 23908i, u_input.c, u_input.b), u_input.a, vec3<f32>(1000f, -142f, -345f))), func_1(Struct_5(vec4<bool>(true, true, true, true), Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), 1u, vec3<f32>(1684f, -925f, 387f)), vec2<bool>(true, true)), vec4<f32>(-2193f, -115f, -1386f, -863f)), Struct_2(-129f, Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, 2147483647i, u_input.c, 40007i), u_input.a, vec3<f32>(-463f, -894f, -1908f))), all(vec4<bool>(true, true, true, false))), true, func_4(Struct_1(vec2<bool>(false, false), vec4<i32>(u_input.c, u_input.b, u_input.c, 1i), 48475u, vec3<f32>(643f, -674f, -919f)), max(u_input.c, -2147483647i))), true));
    var var_1 = ~abs(~48368u);
    var var_2 = ~_wgslsmith_mod_u32(u_input.a, 50009u);
    let var_3 = select(~vec3<u32>(4294967295u, 0u, u_input.a << (1u % 32u)), vec3<u32>(51855u, u_input.a, ~abs(~u_input.a)), true);
    var_1 = var_3.x;
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(~22191u, u_input.a)), _wgslsmith_div_u32(~5641u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.x, u_input.a), var_3.yy))), u_input.a, ~_wgslsmith_div_u32(7448u, ~0u)), var_3.x, countOneBits(vec3<i32>(max(u_input.c, _wgslsmith_add_i32(u_input.b, u_input.c)), 35817i, 1i >> (_wgslsmith_mult_u32(var_3.x, u_input.a) % 32u))), firstTrailingBit(_wgslsmith_sub_u32(u_input.a, 4294967295u)), abs(~(~(vec3<i32>(u_input.c, u_input.b, 2147483647i) | vec3<i32>(u_input.b, u_input.c, -12339i)))));
}

