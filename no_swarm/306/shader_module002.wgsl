struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: i32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = global0.c.b.x;
    let var_1 = Struct_3(arg_0, true, Struct_1(arg_2.x, vec2<i32>(_wgslsmith_clamp_i32(min(arg_3, u_input.a), _wgslsmith_mod_i32(u_input.a, 1i), ~2147483647i), firstTrailingBit(u_input.d.x) >> (global0.c.a % 32u))));
    let var_2 = var_1.b;
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 559f, 1397f, arg_1)) * vec4<f32>(arg_1, arg_1, arg_1, 1060f))), Struct_1(_wgslsmith_dot_vec4_u32(select(vec4<u32>(8273u, 4294967295u, arg_0.a, var_1.c.a), vec4<u32>(var_1.c.a, 4294967295u, arg_2.x, 16415u), false), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 1u, arg_0.a, 4294967295u), vec4<u32>(arg_2.x, 35404u, var_1.c.a, global0.a.a))), vec2<i32>(45015i, 0i) ^ ~vec2<i32>(-58403i, arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1)), arg_1, true)), arg_1) - _wgslsmith_f_op_f32(arg_1 + -192f)), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2012f, 906f, -1307f, arg_1), vec4<f32>(arg_1, -402f, arg_1, -401f))))), global0.a), -12789i, ~(u_input.e.zwz ^ (_wgslsmith_clamp_vec3_i32(u_input.e.ywz, vec3<i32>(-15184i, arg_3, 1i), vec3<i32>(arg_3, var_1.c.b.x, 0i)) >> (abs(vec3<u32>(53557u, arg_0.a, 15511u)) % vec3<u32>(32u)))));
    var var_4 = ~arg_3;
    return select(select(!vec3<bool>(var_1.b, var_2, false), !(!select(vec3<bool>(var_2, global0.b, true), vec3<bool>(true, true, true), vec3<bool>(var_2, var_1.b, false))), all(select(vec4<bool>(global0.b, var_2, false, global0.b), vec4<bool>(false, true, var_1.b, true), vec4<bool>(global0.b, var_2, false, false))) && false), select(!(!(!vec3<bool>(var_1.b, true, var_2))), !(!(!vec3<bool>(var_1.b, true, false))), !(!select(vec3<bool>(global0.b, var_2, var_1.b), vec3<bool>(var_1.b, false, var_2), vec3<bool>(var_2, false, var_2)))), !(!var_2));
}

fn func_2() -> i32 {
    let var_0 = select(select(vec3<bool>(false, true, true), select(!(!vec3<bool>(true, false, global0.b)), vec3<bool>(false | global0.b, global0.b, false), vec3<bool>(true, true, true)), select(false, global0.b, global0.b)), select(func_3(global0.c, 328f, ~vec2<u32>(global0.a.a, 88005u), u_input.e.x), !select(vec3<bool>(global0.b, global0.b, false), select(vec3<bool>(false, global0.b, global0.b), vec3<bool>(global0.b, false, false), false), select(vec3<bool>(false, false, global0.b), vec3<bool>(false, global0.b, global0.b), false)), !global0.b), !vec3<bool>(false, true, (global0.b & global0.b) && false));
    var var_1 = vec4<bool>(any(select(vec4<bool>(func_3(global0.c, -1438f, vec2<u32>(35045u, 0u), global0.c.b.x).x, global0.b, false != var_0.x, all(var_0.zy)), vec4<bool>(true, true, var_0.x, true), false)), !global0.b, global0.b, var_0.x);
    global0 = Struct_3(global0.c, var_0.x, Struct_1(global0.a.a, -firstTrailingBit(u_input.c.yy >> (vec2<u32>(23552u, 0u) % vec2<u32>(32u)))));
    let var_2 = Struct_1(_wgslsmith_div_u32(global0.a.a, ~4294967295u), u_input.c.yy);
    let var_3 = Struct_5(Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1052f, -1491f, -1750f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-389f, 1521f, -655f, 480f), vec4<f32>(-272f, 341f, -1134f, -613f))), Struct_1(30479u, _wgslsmith_add_vec2_i32(global0.a.b, vec2<i32>(-2147483647i, 688i)))), -1600f, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 666f, -254f, -1807f))), global0.c), -2147483647i, u_input.c.yzx >> (vec3<u32>(firstLeadingBit(26505u), ~40462u, ~4294967295u) % vec3<u32>(32u))));
    return (i32(-1i) * -1i) | _wgslsmith_div_i32(~global0.c.b.x & -_wgslsmith_mult_i32(global0.c.b.x, global0.a.b.x), _wgslsmith_mult_i32(-2147483647i ^ _wgslsmith_sub_i32(var_3.a.e.x, -2147483647i), 2147483647i));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_5) -> Struct_4 {
    var var_0 = _wgslsmith_div_i32(func_2() ^ 74849i, _wgslsmith_add_i32(~u_input.d.x, _wgslsmith_clamp_i32(firstTrailingBit(-41146i), -_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(global0.c.b.x, u_input.e.x, 2147483647i, -2147483647i)), 14013i)));
    global0 = Struct_3(global0.c, any(vec2<bool>(false, global0.b)), Struct_1(~18490u, select(global0.a.b, vec2<i32>(u_input.b << (global0.a.a % 32u), u_input.b), false)));
    var var_1 = -vec4<i32>(_wgslsmith_sub_i32(arg_1.a.d, max(arg_1.a.e.x, arg_0.x)), -countOneBits(_wgslsmith_add_i32(u_input.d.x, u_input.e.x)), -func_2(), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.d, arg_0.x, 2883i, 0i), u_input.e), 2147483647i, ~(-1i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-434f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.c.a.x - 1487f), _wgslsmith_f_op_f32(round(arg_1.a.c.a.x)))) - _wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(-272f + 225f))));
    global0 = Struct_3(arg_1.a.c.b, !global0.b, arg_1.a.c.b);
    return Struct_4(arg_1.a.c, 668f, Struct_2(arg_1.a.c.a, Struct_1(~arg_1.a.a.b.a, ~(global0.a.b >> (vec2<u32>(global0.c.a, 62747u) % vec2<u32>(32u))))), -var_1.x, firstLeadingBit(~arg_0));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_3(func_1(vec3<i32>(~(-arg_2.c.b.x), -15645i, _wgslsmith_sub_i32(firstLeadingBit(8640i), ~arg_2.a.b.x)), arg_0).c.b, arg_2.b, arg_1.a);
    var var_1 = Struct_5(arg_0.a);
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(1u, arg_0.a.a.b.a, var_1.a.a.b.a, global0.c.a))), ~(~min(vec4<u32>(38184u, var_1.a.c.b.a, var_0.c.a, var_1.a.c.b.a), vec4<u32>(var_1.a.a.b.a, 1u, 14988u, global0.c.a)))), firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_2.c.a, arg_2.a.a, arg_2.c.a), vec4<u32>(1u, 22935u, arg_1.a.a, 1u)), firstTrailingBit(vec4<u32>(arg_1.c.a, arg_0.a.c.b.a, 4294967295u, 7954u))), ~(vec4<u32>(28059u, var_1.a.c.b.a, var_1.a.c.b.a, var_1.a.a.b.a) >> (vec4<u32>(1u, arg_1.a.a, 15657u, 4294967295u) % vec4<u32>(32u))))));
    let var_3 = func_1(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(u_input.c.yyy, u_input.e.wxy & vec3<i32>(arg_2.c.b.x, -5608i, arg_0.a.a.b.b.x)), Struct_5(Struct_4(func_1(u_input.e.yww, Struct_5(Struct_4(var_1.a.a, var_1.a.c.a.x, Struct_2(arg_0.a.a.a, Struct_1(arg_0.a.a.b.a, var_1.a.a.b.b)), arg_0.a.a.b.b.x, arg_0.a.e))).c, -1472f, arg_0.a.c, arg_0.a.c.b.b.x, var_1.a.e))).a;
    let var_4 = max(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a.b.a, global0.a.a), abs(vec2<u32>(global0.c.a, 48741u))), 6305u), ~4294967295u, arg_1.a.a, ~arg_1.c.a), vec4<u32>(countOneBits(var_0.c.a), ~(~19662u), ~firstTrailingBit(89977u) >> (~global0.c.a % 32u), countOneBits(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.a, 18600u), vec2<u32>(arg_0.a.c.b.a, arg_1.a.a))))));
    return func_1(countOneBits(vec3<i32>(func_2(), arg_0.a.c.b.b.x, max(1i, ~arg_1.c.b.x))), arg_0).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.c.a, ~vec2<i32>(~select(5804i, -2147483647i, false), 1i));
    let var_1 = vec4<bool>(true, global0.b, any(vec3<bool>(true, false, global0.b)), any(vec2<bool>(global0.b, true)));
    var var_2 = Struct_3(global0.a, true, global0.a);
    let var_3 = Struct_1(countOneBits(var_0.a & 28543u), global0.c.b);
    let var_4 = func_4(Struct_5(func_1(-countOneBits(vec3<i32>(var_0.b.x, var_3.b.x, -5824i)), Struct_5(Struct_4(Struct_2(vec4<f32>(-312f, 2795f, -381f, 654f), Struct_1(25076u, vec2<i32>(0i, -1i))), -544f, Struct_2(vec4<f32>(410f, 239f, 421f, -789f), var_2.a), -2147483647i, vec3<i32>(-1i, 1i, u_input.d.x))))), Struct_3(var_2.c, func_3(func_1(~u_input.d, Struct_5(Struct_4(Struct_2(vec4<f32>(-2151f, 1233f, 1504f, -3157f), var_3), -1000f, Struct_2(vec4<f32>(1658f, -464f, 1000f, -1328f), Struct_1(0u, var_2.c.b)), global0.a.b.x, vec3<i32>(global0.a.b.x, -2147483647i, var_0.b.x)))).c.b, 1f, vec2<u32>(~0u, select(8362u, var_0.a, false)), ~(~(-2147483647i))).x, var_2.c), Struct_3(Struct_1(var_3.a, global0.c.b), !(var_0.a >= var_3.a), func_1(select(firstTrailingBit(u_input.e.wzx), vec3<i32>(0i, -2147483647i, 2147483647i) >> (vec3<u32>(4294967295u, 6058u, var_2.c.a) % vec3<u32>(32u)), var_1.zwx), Struct_5(func_1(vec3<i32>(2147483647i, 2147483647i, var_2.c.b.x), Struct_5(Struct_4(Struct_2(vec4<f32>(-1586f, 960f, 843f, -2261f), var_2.a), 643f, Struct_2(vec4<f32>(-1152f, -727f, 975f, 401f), var_2.a), 2147483647i, vec3<i32>(var_2.a.b.x, var_2.c.b.x, 10049i)))))).c.b), func_3(func_1(u_input.e.yyy << (vec3<u32>(32054u, 4927u, global0.a.a) % vec3<u32>(32u)), Struct_5(func_1(vec3<i32>(-1i, global0.c.b.x, -13310i), Struct_5(Struct_4(Struct_2(vec4<f32>(536f, -302f, 1621f, 731f), var_3), -1235f, Struct_2(vec4<f32>(165f, 1096f, -1333f, -1000f), Struct_1(global0.a.a, vec2<i32>(1356i, var_2.c.b.x))), global0.c.b.x, u_input.c.yyz))))).c.b, -340f, (vec2<u32>(40524u, var_0.a) & ~vec2<u32>(var_2.a.a, global0.c.a)) << (vec2<u32>(_wgslsmith_add_u32(0u, 1u), ~37948u) % vec2<u32>(32u)), -31493i).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_4.b.a, 0u, global0.c.a), vec4<u32>(var_2.a.a, var_4.b.a, 1u, 32473u)), min(vec4<u32>(1u, var_0.a, var_3.a, var_2.a.a), vec4<u32>(var_3.a, var_0.a, var_0.a, 64858u))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.a, 0u, var_4.b.a, global0.c.a) & vec4<u32>(4294967295u, global0.a.a, 30180u, global0.c.a), vec4<u32>(var_3.a, global0.c.a, var_0.a, var_3.a) << (vec4<u32>(var_2.c.a, var_0.a, 22797u, var_0.a) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(7232u, 4294967295u, var_4.b.a, var_3.a))), ~abs(vec4<u32>(4294967295u, 93905u, var_4.b.a, 36081u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(179f, -416f)) + _wgslsmith_f_op_f32(-var_4.a.x)));
}

