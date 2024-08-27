struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<bool>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_4(arg_1.b.d.a.x, !select(vec2<bool>(true, !global1.x), !(!arg_1.b.c.a.zz), arg_0.d.a.xz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, -575f, arg_1.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(980f, -739f, arg_1.c) * vec3<f32>(arg_1.c, arg_1.c, arg_1.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2353f, arg_1.c, arg_1.c) - vec3<f32>(arg_1.c, 409f, -254f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, -1478f, 462f) * vec3<f32>(arg_1.c, arg_1.c, arg_1.c))))), Struct_2(vec4<i32>(0i, u_input.d.x, -1i, global0.d.c.x & min(-6667i, -2147483647i)), arg_1.b.a & abs(vec4<u32>(4294967295u, arg_0.b.x, arg_1.d, 1u))), _wgslsmith_f_op_f32(-arg_1.c));
    global0 = Struct_3(vec4<u32>(~global0.b.x, ~(~_wgslsmith_mult_u32(var_0.d.b.x, 64426u)), arg_0.a.x, firstTrailingBit(min(arg_1.b.b.x, arg_0.a.x) >> (~arg_1.d % 32u))), firstLeadingBit(max(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 7070u, arg_1.b.b.x, 0u), vec4<u32>(0u, 22288u, u_input.c.x, u_input.c.x)), global0.b, !vec4<bool>(false, global0.c.a.x, false, true)), reverseBits(abs(vec4<u32>(global0.b.x, 92631u, u_input.c.x, var_0.d.b.x))))), arg_0.d, arg_1.b.c, select(all(vec2<bool>(6799u <= global0.a.x, arg_0.e)), all(select(select(vec4<bool>(true, false, true, var_0.b.x), vec4<bool>(true, global0.c.a.x, var_0.b.x, arg_1.b.d.a.x), false), select(vec4<bool>(false, true, var_0.a, false), vec4<bool>(true, arg_1.b.e, global0.e, arg_0.d.a.x), true), select(vec4<bool>(arg_0.c.a.x, true, arg_1.b.d.b, global0.d.b), vec4<bool>(false, arg_1.a, arg_1.a, true), vec4<bool>(global1.x, global0.d.b, false, var_0.b.x)))), global1.x));
    global1 = select(global0.d.a.yz, !select(vec2<bool>(true, true), vec2<bool>(arg_1.b.d.a.x, 2147483647i > arg_0.c.c.x), true | !global0.e), select(!vec2<bool>(-22305i <= global0.d.c.x, var_0.a), vec2<bool>(true, true), vec2<bool>(any(var_0.b), global1.x)));
    var var_1 = select(!arg_0.c.a, !select(select(select(arg_0.c.a, arg_0.c.a, vec3<bool>(arg_1.a, false, false)), global0.c.a, true), select(vec3<bool>(true, arg_0.c.a.x, true), vec3<bool>(true, true, true), global1.x), false), true);
    var var_2 = arg_0;
    return select(min(global0.b, vec4<u32>(firstTrailingBit(var_0.d.b.x), arg_1.d, min(arg_0.b.x, ~arg_0.a.x), ~arg_0.b.x)), var_0.d.b, !(!(!select(vec4<bool>(var_2.d.a.x, false, true, var_2.d.a.x), vec4<bool>(arg_1.a, true, var_2.c.b, arg_1.a), false))));
}

fn func_2() -> Struct_3 {
    var var_0 = global0.c.a.x || all(global0.c.a);
    var var_1 = select(all(select(global0.c.a.xz, vec2<bool>(true, !global1.x), global0.c.a.xy)), true, _wgslsmith_f_op_f32(-210f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(444f)) - -1048f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 905f) + -1068f) - _wgslsmith_f_op_f32(min(949f, _wgslsmith_f_op_f32(f32(-1f) * -534f)))));
    var_1 = global1.x;
    global0 = Struct_3(global0.a, ~func_3(Struct_3(~global0.b, _wgslsmith_mod_vec4_u32(global0.a, global0.b), Struct_1(vec3<bool>(true, true, true), true, vec3<i32>(1i, u_input.b, 0i)), global0.d, global0.e), Struct_5(false, Struct_3(global0.b, vec4<u32>(0u, u_input.c.x, 77250u, 4294967295u), Struct_1(global0.c.a, true, global0.d.c), Struct_1(global0.d.a, global1.x, global0.d.c), global1.x), -1346f, global0.a.x), vec4<i32>(2351i, 9101i, 2147483647i, u_input.e) | firstTrailingBit(vec4<i32>(0i, 39150i, -15377i, u_input.a))), global0.d, Struct_1(!(!global0.c.a), all(!select(vec2<bool>(false, global1.x), vec2<bool>(global0.c.b, true), true)), countOneBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -1i, global0.c.c.x), global0.c.c))), global1.x);
    global0 = Struct_3(max(~(vec4<u32>(109053u, 29463u, global0.a.x, global0.a.x) & global0.b), global0.a) & global0.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(min(u_input.c.x, _wgslsmith_add_u32(6402u, 15048u)), ~func_3(Struct_3(global0.a, vec4<u32>(global0.b.x, 4294967295u, global0.a.x, global0.a.x), global0.c, Struct_1(vec3<bool>(false, false, global0.d.b), true, global0.d.c), false), Struct_5(global0.e, Struct_3(vec4<u32>(global0.a.x, global0.b.x, global0.a.x, 65841u), global0.a, global0.c, global0.c, global0.d.b), 538f, 3974u), vec4<i32>(global0.d.c.x, global0.c.c.x, global0.d.c.x, -41669i)).x, 31059u, 1u), abs(vec4<u32>(abs(1u), 0u, ~0u, ~global0.b.x)), vec4<u32>(u_input.c.x, ~8946u, u_input.c.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(global0.a.x, 1u), _wgslsmith_sub_u32(19259u, global0.a.x)))), Struct_1(global0.c.a, true, global0.c.c), Struct_1(select(vec3<bool>(true != global1.x, true, global1.x), vec3<bool>(true, global1.x && global1.x, global0.e || global1.x), global0.c.a), u_input.c.x <= reverseBits(70764u), global0.d.c), !(select(false, any(vec3<bool>(false, false, false)), false) || global0.e));
    return Struct_3(firstLeadingBit(vec4<u32>(4294967295u, global0.a.x, abs(u_input.c.x), _wgslsmith_mult_u32(global0.b.x & global0.b.x, func_3(Struct_3(global0.b, vec4<u32>(0u, u_input.c.x, global0.b.x, 8140u), Struct_1(global0.d.a, global0.e, vec3<i32>(global0.c.c.x, global0.c.c.x, 0i)), Struct_1(vec3<bool>(global1.x, global0.e, false), false, vec3<i32>(u_input.e, 0i, u_input.d.x)), false), Struct_5(false, Struct_3(vec4<u32>(1u, 1u, 0u, u_input.c.x), global0.a, Struct_1(vec3<bool>(global1.x, true, true), global0.c.a.x, global0.d.c), global0.d, global1.x), 1476f, global0.b.x), vec4<i32>(global0.d.c.x, global0.c.c.x, -53742i, global0.c.c.x)).x))), countOneBits(global0.a), global0.c, global0.c, global0.d.b);
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = func_2();
    global0 = func_2();
    global1 = !global0.c.a.zy;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-636f, 528f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-261f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1500f)) * -1153f), all(func_2().c.a)))), vec2<f32>(_wgslsmith_f_op_f32(150f * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(-327f, -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1229f - -2292f) - _wgslsmith_f_op_f32(floor(569f)))))), global0.c.a.zz));
    let var_2 = select(global0.d.a.yz, var_0.c.a.yy, vec2<bool>(!var_0.e, true));
    return 1867f;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_5 {
    global1 = select(!(!vec2<bool>(!global1.x, any(vec3<bool>(false, global1.x, global1.x)))), vec2<bool>(arg_1.x, !(all(vec4<bool>(global1.x, true, global0.d.a.x, false)) != any(vec4<bool>(false, false, false, global0.c.a.x)))), arg_1);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-573f, 419f, arg_2.x, arg_2.x))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return Struct_5(all(vec2<bool>(-356f > var_0.x, true)) & all(vec4<bool>(arg_1.x, func_2().d.b, arg_1.x, true)), func_2(), -708f, 4294967295u);
}

fn func_5(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = global0.c;
    let var_1 = arg_2;
    let var_2 = Struct_1(func_4(_wgslsmith_f_op_f32(f32(-1f) * -632f), arg_2.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1737f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.c.x, var_1.c.x)))).b.c.a, select(!(!func_2().c.a.x), arg_2.a, all(vec4<bool>(true, true, true, true)) && (arg_0.b.c.b != true)), ~var_0.c & min(func_4(_wgslsmith_f_op_f32(-arg_0.c), vec2<bool>(var_0.b, var_0.b), _wgslsmith_f_op_vec3_f32(round(arg_2.c))).b.d.c, vec3<i32>(-1i) * -var_1.d.a.xxw));
    let var_3 = Struct_4(var_2.b, var_1.b, _wgslsmith_f_op_vec3_f32(trunc(arg_2.c)), var_1.d, arg_2.c.x);
    global0 = arg_0.b;
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec3_u32(global0.b.yxx, ~(global0.b.xzy & max(global0.b.wyx, vec3<u32>(u_input.c.x, 4294967295u, 1312u))));
    var var_1 = Struct_3(global0.b, vec4<u32>(max(var_0.x, var_0.x), ~global0.b.x, 4294967295u, _wgslsmith_mod_u32(4294967295u, countOneBits(4294967295u) << (1u % 32u))), func_5(func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(global0.b.zx)))), select(func_2().c.a.yy, func_2().c.a.zz, !global0.c.a.yz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1894f, 1000f, -190f) - vec3<f32>(-626f, -312f, -2082f)))), global0.b.wzy, Struct_4(!global1.x, vec2<bool>(true && global0.c.b, !global1.x), vec3<f32>(_wgslsmith_f_op_f32(-771f * -540f), -594f, _wgslsmith_f_op_f32(f32(-1f) * -358f)), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.c.x, u_input.b, 22044i, u_input.d.x), vec4<i32>(u_input.e, global0.c.c.x, 1673i, -25263i)), abs(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 0u))), _wgslsmith_div_f32(func_4(-981f, global0.d.a.zx, vec3<f32>(-1769f, 266f, -1870f)).c, _wgslsmith_f_op_f32(264f * 762f))), vec3<u32>(u_input.c.x, 1u, 1u)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<bool>(!all(global0.d.a.yz), all(vec2<bool>(true, false))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f), _wgslsmith_f_op_f32(abs(-482f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1253f)) - _wgslsmith_f_op_f32(555f - -1315f)), -424f)).b.c, false);
    global0 = Struct_3(vec4<u32>(var_0.x | ~global0.b.x, 1u, var_1.b.x, ~var_1.a.x), global0.b, func_4(-853f, var_1.d.a.yy, vec3<f32>(1f, 1f, 1f)).b.d, Struct_1(global0.d.a, global0.e, reverseBits(firstTrailingBit(-var_1.d.c))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-654f, 1607f), vec2<f32>(1539f, 293f)))))) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -1193f), -1135f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1242f - 2859f) - -206f))), ~_wgslsmith_div_i32(var_1.c.c.x, u_input.d.x) ^ ~(-_wgslsmith_dot_vec2_i32(u_input.d, global0.c.c.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1326f, _wgslsmith_f_op_f32(-403f * 375f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(763f, -1053f, -114f), vec3<f32>(-397f, -1110f, 1947f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-398f, 1000f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1503f, -1373f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 219f, 162f) + vec3<f32>(-393f, -1374f, -1306f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(606f, 1000f, -612f))), vec3<f32>(151f, -309f, 843f))), !(!(!vec3<bool>(false, false, global0.e))))), vec4<f32>(-1143f, func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-847f)))), vec2<bool>(false != var_1.c.b, all(vec2<bool>(true, global0.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2034f, -269f, -775f) - vec3<f32>(-867f, 572f, 745f)))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(var_1.a.yy, global0.b.xw, global0.d.a.zy))) + -986f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 661f)))));
}

