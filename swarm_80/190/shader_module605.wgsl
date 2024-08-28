struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, vec3<f32>(-658f, -404f, 1205f), Struct_1(1746f, 1u, vec4<i32>(1i, -33561i, 1i, 3490i), 2147483647i, vec4<f32>(-569f, 1579f, -1159f, 706f)));

var<private> global1: vec2<u32> = vec2<u32>(36171u, 91685u);

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, -6829i, 2147483647i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global0 = Struct_2(global0.a, vec3<f32>(global0.b.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-331f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)), 1u, abs(reverseBits(~global0.c.c)), _wgslsmith_add_i32(-_wgslsmith_mult_i32(u_input.a, global2.x), -(~(-56295i))), vec4<f32>(-1096f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a - -122f) * 488f), -1000f)));
    return ~(-reverseBits(~u_input.a)) << (abs(select(1u, countOneBits(35471u), _wgslsmith_f_op_f32(737f - global0.b.x) < _wgslsmith_f_op_f32(select(712f, arg_0.x, true)))) % 32u);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    global2 = vec3<i32>(func_3(vec4<f32>(-1477f, 998f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(536f, global0.b.x, global0.a)), _wgslsmith_f_op_f32(-821f * arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a) + _wgslsmith_f_op_f32(f32(-1f) * -394f)))), firstTrailingBit(-2147483647i), -1660i);
    global0 = Struct_2(true & global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.e.zwx - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.e.xwz))))), Struct_1(global0.b.x, _wgslsmith_mod_u32(u_input.e, 1u ^ _wgslsmith_sub_u32(1u, u_input.d)), firstTrailingBit(vec4<i32>(firstTrailingBit(global2.x), _wgslsmith_add_i32(u_input.a, arg_1.c.x), global2.x, 1i)), abs(-u_input.c), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1476f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a, -213f))), _wgslsmith_div_f32(arg_1.e.x, -3149f), 453f)));
    var var_0 = Struct_4(vec3<bool>(true, any(select(!vec4<bool>(false, global0.a, true, global0.a), !vec4<bool>(global0.a, true, global0.a, global0.a), true)), global0.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(min(global1.x, u_input.b.x), 48087u, u_input.b.x), vec3<u32>(1u, ~0u, ~arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1019f - 1120f))))));
    var var_1 = select(select(select(var_0.a, var_0.a, !(!var_0.a)), select(select(var_0.a, vec3<bool>(false, var_0.a.x, false), !vec3<bool>(var_0.a.x, false, true)), !select(vec3<bool>(false, global0.a, var_0.a.x), vec3<bool>(global0.a, true, global0.a), vec3<bool>(true, var_0.a.x, true)), var_0.a), !global0.a | global0.a), !select(var_0.a, select(var_0.a, !var_0.a, vec3<bool>(global0.a, var_0.a.x, false)), arg_1.a < _wgslsmith_f_op_f32(sign(-648f))), false);
    var var_2 = var_1.yz;
    return Struct_3(Struct_2(var_0.a.x, global0.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, arg_1.a))), arg_1.b, vec4<i32>(global2.x | -29158i, max(0i, global2.x), abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global2.x, 0i, arg_1.d), arg_1.c)), -51215i, _wgslsmith_div_vec4_f32(vec4<f32>(1140f, var_0.c, 1310f, arg_1.a), vec4<f32>(-634f, -1000f, arg_0, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -747f) * global0.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-192f + _wgslsmith_f_op_f32(-arg_0)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.xw - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-1000f, 339f), arg_3.b.x))));
    global1 = select(vec2<u32>(arg_1.a.c.b, ~u_input.e), vec2<u32>(1u, ~(~arg_3.c.b)), true);
    let var_2 = Struct_5(arg_2.xyw, _wgslsmith_mod_vec3_i32(arg_1.a.c.c.yzz, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(select(arg_1.a.c.c.wyy, vec3<i32>(-2147483647i, 2147483647i, u_input.c), vec3<bool>(arg_1.a.a, arg_2.x, true)), max(vec3<i32>(global2.x, u_input.a, arg_3.c.c.x), global0.c.c.yxx), reverseBits(vec3<i32>(arg_3.c.c.x, u_input.a, 20968i))), global0.c.c.yxz, firstTrailingBit(vec3<i32>(arg_3.c.c.x, -1i, global0.c.d)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, arg_1.a.c.b, 16325u), vec3<u32>(1u, 24323u, 59107u), vec3<u32>(u_input.b.x, global1.x, global1.x)) % vec3<u32>(32u)))), abs(func_3(_wgslsmith_f_op_vec4_f32(-arg_0))), arg_3);
    global2 = -(-firstLeadingBit(firstLeadingBit(vec3<i32>(global2.x, global2.x, 60837i))) << ((~vec3<u32>(arg_3.c.b, arg_3.c.b, 27459u) << (~(~vec3<u32>(17949u, var_2.d.c.b, global1.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(func_2(_wgslsmith_f_op_f32(round(1494f)), func_2(-1624f, Struct_1(579f, global0.c.b, arg_3.c.c, global0.c.d, arg_0)).a.c).a.b)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.d.b.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.b.x - arg_3.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + -1301f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3207f)), var_2.d.b.x)));
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = ~vec4<i32>(-1i, 2147483647i, 2147483647i, 36841i) >> (vec4<u32>(reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 1u)), global1.x, u_input.b.x | 0u, ~18201u) % vec4<u32>(32u));
    global0 = Struct_2(false, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(-436f, arg_1)), _wgslsmith_div_f32(arg_1, 570f), _wgslsmith_f_op_f32(abs(global0.c.e.x)), 1259f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2426f, -354f, 2240f, arg_1) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-449f, 577f, -1408f, 1453f) * vec4<f32>(arg_1, arg_1, global0.b.x, -1000f))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0.b.x)), global0.c), select(vec4<bool>(global0.a, true, any(vec4<bool>(global0.a, global0.a, true, global0.a)), global0.a), select(vec4<bool>(false, global0.a, global0.a, global0.a), !vec4<bool>(global0.a, global0.a, global0.a, false), select(vec4<bool>(true, global0.a, global0.a, true), vec4<bool>(true, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, false, true))), !select(vec4<bool>(false, false, global0.a, true), vec4<bool>(true, global0.a, global0.a, false), vec4<bool>(global0.a, true, global0.a, global0.a))), func_2(arg_1, Struct_1(_wgslsmith_f_op_f32(-global0.b.x), arg_0, -global0.c.c, firstTrailingBit(17500i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(340f, arg_1, 1004f, arg_1))))).a)), func_2(-331f, func_2(_wgslsmith_f_op_f32(min(global0.c.e.x, _wgslsmith_f_op_f32(global0.c.a - 1610f))), func_2(_wgslsmith_div_f32(global0.c.a, arg_1), func_2(arg_1, Struct_1(global0.c.e.x, global1.x, vec4<i32>(u_input.a, global2.x, -34853i, global2.x), 41305i, vec4<f32>(-766f, 767f, 500f, -903f))).a.c).a.c).a.c).a.c);
    var var_1 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1406f), arg_1, 836f, _wgslsmith_f_op_f32(-arg_1)), Struct_3(Struct_2(global0.a, vec3<f32>(arg_1, 669f, arg_1), Struct_1(global0.b.x, 1u, global0.c.c, global0.c.c.x, global0.c.e)), -884f), !vec4<bool>(global0.a, false, false, true), Struct_2(true, global0.c.e.xzw, global0.c))).x, false)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), Struct_1(_wgslsmith_f_op_f32(-arg_1), arg_0, firstTrailingBit(~global0.c.c), 60949i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(global0.c.e, vec4<f32>(-551f, -622f, global0.b.x, 1024f), global0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -177f, arg_1, global0.c.e.x) + vec4<f32>(arg_1, arg_1, global0.b.x, global0.c.a)))))).a.c).a;
    var var_2 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), func_2(var_1.c.a, global0.c).a.c);
    var var_3 = global2.yz;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec3<bool>(global0.a, any(vec4<bool>(global0.a, global0.a, true, global0.a)), global0.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.e));
    let var_2 = -20871i >> (select(func_1(abs(4294967295u) & global1.x, global0.c.a), ~(~global1.x), !(!global0.a)) % 32u);
    global1 = abs(u_input.b);
    global2 = select(_wgslsmith_div_vec3_i32(countOneBits(-vec3<i32>(var_2, -6478i, 2147483647i)), ~(~global0.c.c.wxy)), -(~vec3<i32>(var_2, -40450i, u_input.c)), !var_0) << ((vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(global0.c.b, u_input.b.x), 78901u), ~global1.x, global0.c.b) ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, global0.c.b, 0u), vec3<u32>(u_input.b.x, 4294967295u, 20661u), global0.a), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1.x, 1u), vec3<u32>(global1.x, global0.c.b, 4294967295u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 0u, global0.c.b), vec3<u32>(u_input.b.x, 0u, 49582u)), abs(vec3<u32>(global0.c.b, global1.x, 0u) >> (vec3<u32>(global0.c.b, 0u, global1.x) % vec3<u32>(32u))))) % vec3<u32>(32u));
    let var_3 = -1076f;
    var var_4 = Struct_4(vec3<bool>(false, false, var_0.x), (~(~2683u) << (~abs(u_input.b.x) % 32u)) ^ ~1u, _wgslsmith_f_op_f32(823f * var_3));
    var var_5 = !var_0.x;
    global0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -403f), global0.c).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.e)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 1915f, var_4.c, -2586f) + var_1) * _wgslsmith_f_op_vec4_f32(select(global0.c.e, global0.c.e, global0.a)))), vec4<f32>(var_4.c, var_1.x, 1235f, -391f)), _wgslsmith_sub_u32(~(~(~1u)), 42093u), _wgslsmith_add_vec4_i32(func_2(-900f, Struct_1(-603f, 7546u, vec4<i32>(27322i, 26515i, -2147483647i, 19013i), var_2, global0.c.e)).a.c.c, -vec4<i32>(-1i, global0.c.c.x, u_input.c, global2.x)) ^ vec4<i32>(~(global2.x ^ -49954i), global0.c.d, abs(21061i) << (~u_input.d % 32u), _wgslsmith_mult_i32(var_2 >> (1u % 32u), firstTrailingBit(global0.c.c.x))));
}

