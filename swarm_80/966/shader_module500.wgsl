struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: Struct_2 = Struct_2(vec2<i32>(-4520i, 0i), vec3<u32>(0u, 1u, 22941u), Struct_1(0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> u32 {
    var var_0 = global2.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(147f, -445f, -1341f, 556f) - vec4<f32>(-1780f, 403f, 1840f, 177f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -446f, _wgslsmith_f_op_f32(select(315f, 538f, false)), -302f)))));
    global1 = array<vec3<f32>, 15>();
    var var_2 = ~global2.b.x;
    var_0 = global2.c;
    return min(select(global0.a, _wgslsmith_sub_u32(23226u, ~var_0.a), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true))) | (var_0.a ^ firstTrailingBit(global0.a)), 7183u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = array<vec3<f32>, 15>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, -300f, 1831f, -1447f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1270f, 640f, -125f, -2134f), vec4<f32>(-944f, 667f, -732f, 1597f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-539f, -471f, -2039f, -400f), vec4<f32>(-135f, -650f, 1731f, 327f))), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, -355f, 384f, -1814f)), select(false, all(vec3<bool>(true, false, false)), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(606f)), _wgslsmith_f_op_f32(-575f * 1000f), 558f, 1000f))));
    let var_1 = select(vec2<bool>(var_0.x == 648f, !(global2.a.x <= _wgslsmith_mult_i32(global2.a.x, global2.a.x))), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(false, true, false))), vec2<bool>(true, true), vec2<bool>(true, true)), true);
    var var_2 = ~vec2<u32>(global2.c.a, 39832u) << (select(~select(vec2<u32>(global2.c.a, global2.c.a), abs(vec2<u32>(83102u, 72142u)), select(var_1, var_1, vec2<bool>(true, true))), u_input.a.xz, vec2<bool>(var_1.x, any(!var_1))) % vec2<u32>(32u));
    var var_3 = vec4<bool>(~global0.a < (_wgslsmith_sub_u32(global0.a, _wgslsmith_sub_u32(global2.c.a, global0.a)) << (select(max(var_2.x, global0.a), u_input.a.x, any(vec2<bool>(var_1.x, true))) % 32u)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global2.a.x, 11066i, -19015i, -26665i), _wgslsmith_add_vec4_i32(vec4<i32>(43204i, 53550i, global2.a.x, global2.a.x), vec4<i32>(-489i, global2.a.x, global2.a.x, global2.a.x)), vec4<bool>(true, var_1.x, var_1.x, true)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, global2.a.x, -31455i), -vec4<i32>(global2.a.x, 1i, -36234i, global2.a.x))) != _wgslsmith_div_i32(global2.a.x | global2.a.x, -2147483647i), _wgslsmith_add_i32(~abs(2147483647i), countOneBits(~global2.a.x)) <= ~(i32(-1i) * -61680i), !(!(!any(vec3<bool>(false, var_1.x, var_1.x)))));
    return _wgslsmith_mult_u32(var_2.x | select(var_2.x, _wgslsmith_mult_u32(arg_0.a, max(u_input.a.x, arg_0.a)), true), 4294967295u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(~func_3(Struct_1(global0.a)), abs(global0.a), 0u);
    global2 = Struct_2(firstLeadingBit(-global2.a), _wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(0u, global2.c.a, 69242u))), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 0u))) >> (~(~global2.b) % vec3<u32>(32u)), Struct_1(firstTrailingBit(u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1279f + 118f), _wgslsmith_f_op_f32(round(-1070f)))) + _wgslsmith_f_op_f32(round(591f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(100f * _wgslsmith_f_op_f32(round(-640f)))))));
    global1 = array<vec3<f32>, 15>();
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(925f, 1053f) - vec2<f32>(-292f, 909f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1072f, 619f)))) + vec2<f32>(-950f, _wgslsmith_f_op_f32(1229f + -1147f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 833f) * vec2<f32>(-1000f, 668f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-788f, -1496f))), vec2<f32>(_wgslsmith_f_op_f32(-1158f * 1612f), -525f), all(vec3<bool>(true, false, false)))))));
    return global2.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    global1 = array<vec3<f32>, 15>();
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_1.a.x, i32(-1i) * -6873i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -20523i), arg_1.a)), arg_1.a.x, 0i, _wgslsmith_mod_i32(arg_1.a.x, arg_0.a.x)), select(-abs(vec4<i32>(arg_1.a.x, global2.a.x, global2.a.x, arg_1.a.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_0.a.x, 9471i, arg_1.a.x, -49988i), vec4<i32>(-2147483647i, arg_1.a.x, 1i, arg_0.a.x)), arg_2)) >> ((vec4<u32>(~69380u, ~_wgslsmith_dot_vec2_u32(global2.b.zz, vec2<u32>(1u, arg_0.c.a)), 0u, 1u) ^ select(vec4<u32>(_wgslsmith_clamp_u32(3533u, 32948u, 4294967295u), _wgslsmith_mod_u32(u_input.a.x, arg_0.c.a), ~4294967295u, u_input.a.x), ~firstLeadingBit(vec4<u32>(global2.b.x, arg_1.c.a, 1u, global2.c.a)), !(4294967295u <= arg_1.c.a))) % vec4<u32>(32u));
    global2 = Struct_2(var_0.yw, vec3<u32>(_wgslsmith_add_u32(4294967295u, global0.a), arg_1.c.a, 25910u), Struct_1(firstTrailingBit(~(~global2.c.a))));
    let var_1 = Struct_1(4294967295u);
    var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(global2.a.x, max(102992i, 0i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, -1i), vec2<i32>(global2.a.x, arg_0.a.x)), -10266i), -1i), vec4<i32>(global2.a.x, ~(i32(-1i) * -1i), -(-9071i ^ arg_0.a.x), global2.a.x) | -_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_1.a.x, arg_0.a.x, global2.a.x), vec4<i32>(arg_1.a.x, arg_0.a.x, 2147483647i, 1i), vec4<i32>(arg_0.a.x, 2147483647i, arg_1.a.x, 35043i)), select(vec4<i32>(1i, global2.a.x, 1i, arg_0.a.x), vec4<i32>(-62378i, -79958i, arg_0.a.x, -30642i), arg_2.x)));
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(select(arg_0.a, -arg_0.a >> ((vec2<u32>(global2.c.a, arg_0.c.a) ^ min(u_input.a.yx, arg_3.b.yz)) % vec2<u32>(32u)), false), arg_0.b, Struct_1(~arg_0.c.a & ~reverseBits(0u)));
    let var_1 = select(vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f * 1222f)) <= _wgslsmith_f_op_f32(round(194f)), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), all(vec3<bool>(true, false, true))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(~_wgslsmith_mult_u32(global0.a, arg_1) >= (~var_0.c.a >> (61575u % 32u)), any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true)), false));
    global0 = func_4(Struct_2(reverseBits(abs(vec2<i32>(global2.a.x, -31169i) | vec2<i32>(arg_3.a.x, 2147483647i))), _wgslsmith_clamp_vec3_u32(select(arg_3.b, firstLeadingBit(vec3<u32>(4294967295u, 1u, arg_3.b.x)), select(var_1, vec3<bool>(var_1.x, false, true), false)), vec3<u32>(reverseBits(arg_3.c.a), global2.c.a, _wgslsmith_sub_u32(arg_1, arg_3.c.a)), vec3<u32>(1u << (1u % 32u), u_input.a.x, global0.a)), arg_0.c), Struct_2(~arg_3.a, vec3<u32>(abs(arg_3.c.a), func_3(Struct_1(arg_1)), min(min(1u, 1u), func_3(Struct_1(0u)))), var_0.c), !vec4<bool>(all(!vec4<bool>(true, false, var_1.x, true)), !any(vec2<bool>(var_1.x, var_1.x)), any(!vec3<bool>(false, true, var_1.x)), any(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true)))));
    var var_2 = Struct_1(min(1u, ~(arg_0.b.x | 16464u) & firstTrailingBit(min(45522u, 1u))));
    var var_3 = 1308f;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(Struct_2(-_wgslsmith_div_vec2_i32(vec2<i32>(global2.a.x, 95698i), ~global2.a), vec3<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global0.a, global2.b.x), func_1(), 4294967295u), ~(~global2.c.a)), func_4(Struct_2(-global2.a, _wgslsmith_sub_vec3_u32(u_input.a, global2.b), func_2()), Struct_2(select(global2.a, vec2<i32>(global2.a.x, global2.a.x), vec2<bool>(true, true)), u_input.a, func_2()), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))), global0.a >> (~max(6317u, ~global2.b.x) % 32u), 1u, Struct_2(~vec2<i32>(_wgslsmith_div_i32(1i, global2.a.x), countOneBits(3817i)), vec3<u32>(_wgslsmith_dot_vec3_u32(~global2.b, global2.b), func_2().a, (u_input.a.x >> (4294967295u % 32u)) | func_3(global2.c)), func_2()));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-787f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-166f + 807f) + _wgslsmith_f_op_f32(round(1690f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1375f, var_0.x)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-651f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.x)))))));
    global1 = array<vec3<f32>, 15>();
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -470f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 2522f) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(858f, 623f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1749f), vec2<f32>(-709f, var_0.x), vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -753f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(-1555f, 974f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), 665f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(586f, var_0.x) * vec2<f32>(var_0.x, 1244f)) - vec2<f32>(1630f, var_0.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1410f, 1397f))))))));
    var var_2 = Struct_1(~global0.a);
    var_2 = Struct_1(max(~u_input.a.x, (~var_2.a << (21643u % 32u)) >> ((var_2.a << (global0.a % 32u)) % 32u)));
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(((1i >> (var_2.a % 32u)) & ~global2.a.x) & _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global2.a.x, global2.a.x, global2.a.x)), ~vec3<i32>(global2.a.x, 56777i, global2.a.x)), -3214i, global2.a.x | abs(0i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1312f, var_1.x, var_0.x, 126f)) + vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, 1702f)), var_0.x, -1169f, var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1879f, var_1.x, -202f, var_0.x))), (1i & (global2.a.x << (global2.b.x % 32u))) >= (_wgslsmith_add_i32(-2147483647i, 0i) & ~global2.a.x))));
}

