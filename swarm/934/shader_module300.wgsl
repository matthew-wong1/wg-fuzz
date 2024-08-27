struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec3<i32>(-1i, -22330i, -25617i), Struct_1(vec4<u32>(6044u, 1u, 1u, 0u), true, -1000f), Struct_1(vec4<u32>(2369u, 46326u, 40564u, 15314u), false, -1524f)), Struct_2(vec3<i32>(-19541i, i32(-2147483648), 8229i), Struct_1(vec4<u32>(0u, 52207u, 1u, 4294967295u), false, 269f), Struct_1(vec4<u32>(0u, 64141u, 52958u, 9316u), true, 403f)), -23687i);

var<private> global1: f32 = 121f;

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    global2 = global0.b.c;
    global2 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(~max(global0.b.c.a.zwy, global2.a.ywz), global2.a.xyy), ~global2.a.x, 38380u, _wgslsmith_dot_vec2_u32(~(global0.b.b.a.xw ^ vec2<u32>(u_input.b.x, global2.a.x)), global2.a.wz)), global0.a.b.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.b.c.c))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.c)) * 697f), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.c, global2.c), -1083f)))));
    global0 = Struct_4(global0.b, global0.a, global0.a.a.x);
    let var_0 = ~(~vec3<i32>(u_input.c.x, -_wgslsmith_mod_i32(-2408i, global0.a.a.x), 40956i));
    var var_1 = vec4<i32>(u_input.a, var_0.x, _wgslsmith_sub_i32(var_0.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.x, var_0.x), ~0i)), -2147483647i) >> (vec4<u32>(0u | ~global0.b.b.a.x, _wgslsmith_add_u32(global2.a.x, 0u), ~0u, 5427u) % vec4<u32>(32u));
    return global0.a;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> Struct_2 {
    global2 = Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, ~global2.a.x, arg_1.b.c.a.x, 1u), vec4<u32>(arg_1.a.b.a.x >> (0u % 32u), _wgslsmith_sub_u32(arg_1.a.b.a.x, 0u), select(0u, 4294967295u, global0.b.c.b), min(global0.b.c.a.x, 27745u))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(558f)) * global2.c), global2.c));
    return Struct_2(-global0.b.a, func_2().b, Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, arg_1.a.c.a.x, 4294967295u), _wgslsmith_sub_vec4_u32(arg_1.b.b.a | global0.a.b.a, ~vec4<u32>(5878u, arg_2.a.x, 4294967295u, u_input.b.x))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c.c))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_0.a.a, Struct_1(vec4<u32>(global0.b.c.a.x, 50767u, 0u, 19083u), ~firstTrailingBit(0i) < firstTrailingBit(min(34579i, -4009i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-969f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, global0.b.c.c))))), arg_0.a.b);
    var_0 = global0.b;
    var var_1 = vec4<u32>(~var_0.b.a.x, global2.a.x, _wgslsmith_add_u32(abs(80609u), ~(~func_2().b.a.x)), 49999u);
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = firstLeadingBit((abs(vec4<i32>(43128i, var_0.a.x, -23744i, 0i)) & ~firstTrailingBit(vec4<i32>(var_0.a.x, 8364i, 19762i, -2146i))) | reverseBits(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.a.x, u_input.c.x, 2147483647i, var_0.a.x), vec4<i32>(u_input.a, -31061i, global0.b.a.x, -12511i), vec4<i32>(arg_3.a.x, -1624i, global0.a.a.x, arg_0.a.a.x)), firstTrailingBit(vec4<i32>(var_0.a.x, 2147483647i, -1i, global0.c)), vec4<bool>(true, arg_0.a.b.b, var_0.c.b, arg_1.b))));
    return Struct_2(arg_0.a.a, func_3(Struct_4(arg_3, func_3(Struct_4(Struct_2(vec3<i32>(arg_0.c, 16991i, 12185i), var_0.c, Struct_1(vec4<u32>(55513u, 29518u, 49950u, 4294967295u), true, -694f)), Struct_2(vec3<i32>(arg_0.c, 2147483647i, var_3.x), arg_0.a.b, Struct_1(vec4<u32>(0u, 84416u, 1u, 1u), arg_1.b, arg_3.c.c)), -22471i), Struct_4(arg_0.a, Struct_2(vec3<i32>(var_3.x, arg_3.a.x, 2147483647i), arg_0.a.b, Struct_1(global2.a, false, 1286f)), global0.a.a.x), arg_1), var_0.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.b.a.x, 1521u), arg_0.a.b.a.zz) % 32u)), Struct_4(arg_3, arg_0.a, _wgslsmith_dot_vec2_i32(var_0.a.yy, var_0.a.zz << (var_0.c.a.xy % vec2<u32>(32u)))), func_2().c).c, func_2().b);
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    var var_0 = func_3(Struct_4(func_3(Struct_4(global0.b, func_4(arg_0, arg_0.a.b, 353f, Struct_2(vec3<i32>(u_input.a, -1i, global0.a.a.x), Struct_1(global2.a, arg_0.a.c.b, global2.c), arg_0.a.c)), _wgslsmith_sub_i32(u_input.a, -14496i)), Struct_4(func_4(arg_0, Struct_1(vec4<u32>(0u, global2.a.x, 60374u, arg_0.a.b.a.x), false, arg_0.a.b.c), -712f, arg_0.a), global0.b, func_3(Struct_4(arg_0.a, global0.a, -92010i), Struct_4(Struct_2(global0.a.a, Struct_1(vec4<u32>(global0.b.c.a.x, global2.a.x, global0.b.b.a.x, u_input.b.x), true, global0.a.b.c), global0.a.c), Struct_2(arg_0.a.a, global0.a.b, global0.b.b), arg_1), global0.a.c).a.x), func_2().c), Struct_2(_wgslsmith_sub_vec3_i32(~global0.b.a, vec3<i32>(arg_1, -16780i, arg_1)), Struct_1(firstLeadingBit(global2.a), true, _wgslsmith_f_op_f32(min(arg_0.a.c.c, global2.c))), Struct_1(vec4<u32>(20295u, 0u, arg_0.a.c.a.x, arg_0.a.c.a.x) ^ vec4<u32>(13341u, global0.b.c.a.x, 6560u, 0u), arg_0.a.c.b, global2.c)), -22395i), Struct_4(Struct_2((arg_0.a.a ^ vec3<i32>(arg_1, arg_1, arg_0.a.a.x)) & arg_0.a.a, func_2().b, Struct_1(vec4<u32>(global2.a.x, global0.b.b.a.x, arg_0.a.b.a.x, arg_0.a.c.a.x), func_3(Struct_4(arg_0.a, arg_0.a, arg_1), Struct_4(global0.b, Struct_2(global0.a.a, arg_0.a.c, arg_0.a.b), -1i), Struct_1(arg_0.a.c.a, true, global2.c)).c.b, 1627f)), Struct_2(firstLeadingBit(reverseBits(global0.b.a)), arg_0.a.c, Struct_1(vec4<u32>(arg_0.a.c.a.x, 44178u, global2.a.x, 41142u) | vec4<u32>(49658u, global0.a.b.a.x, 106101u, 0u), false, _wgslsmith_f_op_f32(f32(-1f) * -1483f))), global0.b.a.x), func_2().c).b.b;
    var var_1 = -1016f;
    var var_2 = func_4(arg_0, func_3(Struct_4(Struct_2(firstLeadingBit(global0.a.a), arg_0.a.c, global0.b.c), arg_0.a, firstTrailingBit(0i)), Struct_4(Struct_2(abs(vec3<i32>(0i, arg_0.a.a.x, arg_1)), func_2().c, arg_0.a.c), func_3(Struct_4(Struct_2(global0.b.a, global0.b.c, Struct_1(vec4<u32>(arg_0.a.b.a.x, global2.a.x, global2.a.x, u_input.b.x), global2.b, global2.c)), Struct_2(arg_0.a.a, global0.a.b, Struct_1(arg_0.a.c.a, global2.b, global0.a.b.c)), 2147483647i), Struct_4(Struct_2(vec3<i32>(u_input.c.x, -1i, arg_0.c), Struct_1(vec4<u32>(global2.a.x, global0.a.b.a.x, u_input.b.x, arg_0.a.c.a.x), true, global2.c), Struct_1(vec4<u32>(u_input.b.x, 18372u, 13933u, 40422u), true, global2.c)), arg_0.a, arg_0.a.a.x), func_3(Struct_4(Struct_2(global0.a.a, Struct_1(global2.a, false, global0.b.c.c), global0.b.b), arg_0.a, arg_1), Struct_4(Struct_2(arg_0.a.a, arg_0.a.b, Struct_1(vec4<u32>(arg_0.a.b.a.x, 1u, arg_0.a.c.a.x, global2.a.x), false, 117f)), Struct_2(global0.b.a, arg_0.a.c, Struct_1(vec4<u32>(global0.a.c.a.x, 52290u, 3831u, 38414u), false, arg_0.b.x)), -1i), global0.b.b).c), global0.b.a.x), Struct_1(arg_0.a.b.a, !any(vec3<bool>(global0.a.b.b, arg_0.a.b.b, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-646f, 340f, false)))))).b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1758f))) - arg_0.a.b.c))), func_2());
    var_0 = !arg_0.a.c.b;
    var_0 = !(!(~arg_1 > 1i));
    return Struct_4(func_3(Struct_4(func_2(), func_2(), 1i), Struct_4(global0.b, Struct_2(arg_0.a.a, func_4(Struct_3(arg_0.a, arg_0.b, -47521i), arg_0.a.c, -115f, Struct_2(var_2.a, arg_0.a.c, Struct_1(vec4<u32>(57817u, u_input.b.x, arg_0.a.b.a.x, 69681u), true, -1253f))).c, func_4(Struct_3(global0.b, vec4<f32>(arg_0.a.c.c, var_2.c.c, global0.b.c.c, -1237f), 2147483647i), Struct_1(vec4<u32>(u_input.b.x, 51521u, arg_0.a.b.a.x, global0.b.b.a.x), true, 1191f), 1465f, global0.a).b), 21545i), Struct_1(global0.b.c.a | vec4<u32>(u_input.b.x, 4307u, 72233u, 1u), true, 499f)), arg_0.a, arg_0.c);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = func_5(Struct_3(func_4(Struct_3(func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, 1432f, 2633f, global2.c) + vec4<f32>(-933f, -1020f, 995f, global0.b.b.c)), countOneBits(global0.b.a.x)), func_2().b, _wgslsmith_f_op_f32(-global0.a.c.c), func_3(Struct_4(global0.b, global0.a, global0.c), Struct_4(global0.b, Struct_2(arg_3.xxx, Struct_1(global2.a, false, global0.a.b.c), Struct_1(global2.a, false, global0.b.b.c)), u_input.a), global0.a.b)), vec4<f32>(1f, global0.a.b.c, _wgslsmith_div_f32(-728f, 1043f), _wgslsmith_f_op_f32(-func_4(Struct_3(Struct_2(arg_3.xxw, Struct_1(vec4<u32>(global2.a.x, 44768u, 0u, u_input.b.x), false, global2.c), Struct_1(global0.a.b.a, true, 1739f)), vec4<f32>(-321f, global2.c, global2.c, -1433f), u_input.a), Struct_1(global2.a, true, -1086f), global2.c, global0.a).c.c)), func_2().a.x), _wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_add_i32(25031i, arg_0), _wgslsmith_div_i32(0i, arg_2.x), -40376i));
    var var_1 = func_5(Struct_3(func_4(Struct_3(func_5(Struct_3(global0.b, vec4<f32>(global2.c, 547f, global2.c, -136f), 20984i), var_0.c).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, var_0.a.c.c, var_0.b.c.c, 1189f)), arg_0), func_5(Struct_3(global0.b, vec4<f32>(-432f, -1000f, 730f, -416f), arg_2.x), -1i).b.b, 857f, func_4(Struct_3(var_0.a, vec4<f32>(global2.c, -572f, var_0.b.b.c, 706f), u_input.c.x), global0.a.b, _wgslsmith_f_op_f32(-global0.a.c.c), Struct_2(var_0.a.a, Struct_1(var_0.a.b.a, false, var_0.a.c.c), Struct_1(var_0.a.b.a, global2.b, 1016f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-304f, -1945f), _wgslsmith_f_op_f32(-global0.b.c.c), _wgslsmith_f_op_f32(global0.a.c.c - var_0.b.c.c), -589f)), -2147483647i), 34014i).a.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-829f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(293f, -1557f))))));
    let var_2 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.c.c, _wgslsmith_f_op_f32(trunc(-1000f)), !func_4(Struct_3(Struct_2(arg_3.wyw, global0.a.b, var_0.b.b), vec4<f32>(global0.a.c.c, 1134f, global0.b.c.c, 377f), arg_0), global0.b.c, global0.a.b.c, Struct_2(vec3<i32>(u_input.c.x, arg_2.x, -1i), Struct_1(vec4<u32>(4294967295u, 1u, 58400u, u_input.b.x), false, var_0.b.b.c), global0.b.c)).b.b)) - global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b.c.c - global2.c), _wgslsmith_f_op_f32(func_1(global0.c, vec2<bool>(true, global0.a.c.b), vec4<i32>(0i, 47031i, u_input.c.x, global0.c), vec4<i32>(-23412i, 2147483647i, 2147483647i, 9896i))), true)) + global0.b.b.c)), -402f, !any(!(!vec2<bool>(global2.b, global0.a.c.b)))));
    let var_0 = func_5(Struct_3(global0.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.b.c, 278f, global2.c, _wgslsmith_f_op_f32(abs(212f))))), _wgslsmith_sub_i32(u_input.a, u_input.c.x)), u_input.a);
    let var_1 = -582f;
    global1 = _wgslsmith_f_op_f32(-616f - _wgslsmith_f_op_f32(select(-981f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c.c))), global2.b)));
    global2 = func_3(var_0, Struct_4(Struct_2(_wgslsmith_mod_vec3_i32(var_0.b.a, vec3<i32>(var_0.b.a.x, var_0.a.a.x, 0i)) ^ vec3<i32>(u_input.a, var_0.c, -12227i), global0.a.c, global0.b.c), var_0.a, 60590i), var_0.a.c).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(27707i, func_5(Struct_3(var_0.a, vec4<f32>(global0.b.c.c, var_0.b.b.c, global2.c, global0.a.c.c), -2147483647i), var_0.c).b.a.x << (~abs(4294967295u) % 32u)));
}

