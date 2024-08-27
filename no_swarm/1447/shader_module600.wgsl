struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    global1 = arg_1;
    global0 = 45009u;
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, -2147483647i), u_input.a);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(-984f - 1000f), false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -805f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(201f - -1576f), _wgslsmith_f_op_f32(-1506f - global1.x))) * global1.x));
    var var_2 = ~_wgslsmith_div_vec4_u32(vec4<u32>(910u, arg_0.x & 23338u, 62932u, abs(1u)), vec4<u32>(~_wgslsmith_div_u32(4294967295u, 64584u), _wgslsmith_div_u32(~arg_0.x, _wgslsmith_mod_u32(51521u, 19671u)), u_input.b, _wgslsmith_mod_u32(0u, reverseBits(20963u))));
    return Struct_1(vec3<bool>(true, false, arg_2), _wgslsmith_div_f32(var_1.x, -1217f));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(-2147483647i, -11565i, 1449i);
    global0 = _wgslsmith_add_u32(0u, 4294967295u);
    global0 = u_input.b;
    let var_1 = func_2(~vec4<u32>(firstLeadingBit(~38422u), _wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~4294967295u), 1u, select(33309u, _wgslsmith_add_u32(u_input.b, 0u), any(arg_1.a))), vec2<f32>(-882f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1253f)))))), any(!vec4<bool>(!arg_1.a.x, true, all(arg_1.a.zz), arg_1.a.x)));
    var var_2 = Struct_4(arg_1.a.yx, Struct_2(-222f, _wgslsmith_f_op_f32(arg_1.b + var_1.b), Struct_1(select(func_2(vec4<u32>(8967u, u_input.b, u_input.b, 10759u), vec2<f32>(arg_1.b, var_1.b), var_1.a.x).a, select(arg_1.a, arg_1.a, false), arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))), abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, u_input.b))), func_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, 25458u, 88565u), vec4<u32>(u_input.b, 67099u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b, arg_1.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.x) * vec2<f32>(-1209f, 1742f)), arg_1.a.xy)), !(var_1.a.x || false))), max(vec4<u32>(5844u, 1u, 1692u, 73587u), vec4<u32>(1u, 0u, u_input.b, _wgslsmith_mod_u32(~u_input.b, 0u))), var_1.b, Struct_2(arg_1.b, 1337f, func_2(~min(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(4294967295u, u_input.b, u_input.b, 46933u)), vec2<f32>(_wgslsmith_f_op_f32(var_1.b - 1091f), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(sign(global1.x)) >= _wgslsmith_f_op_f32(-global1.x)), u_input.b, var_1));
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> vec3<f32> {
    global0 = arg_1;
    var var_0 = arg_0.c.a.x;
    var_0 = true;
    let var_1 = arg_0.c.a.x;
    let var_2 = _wgslsmith_add_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(u_input.a, 0i), firstTrailingBit(0i | u_input.c)), ~(~_wgslsmith_sub_vec2_i32(-vec2<i32>(-2147483647i, -10852i), vec2<i32>(0i, 28855i))));
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2824f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-237f, 1108f) * global1.x))), _wgslsmith_div_f32(-930f, _wgslsmith_f_op_f32(f32(-1f) * -406f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_3(vec2<i32>(-1i, u_input.c) | vec2<i32>(8514i, 8668i), func_2(vec4<u32>(39538u, u_input.b, 28014u, u_input.b), vec2<f32>(200f, -2060f), true)), 1u | _wgslsmith_mod_u32(u_input.b, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, -631f)))))));
    global0 = u_input.b;
    global0 = 39934u;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-200f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.x)), 1189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - var_0.x))));
    return Struct_1(vec3<bool>(any(vec3<bool>(true, any(vec4<bool>(true, false, true, false)), true)), false, all(vec4<bool>(select(true, false, true), true, true, false))), -559f);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec4<u32>(u_input.b, u_input.b, arg_3.e.d, 31875u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_3.b.e.b)), select(true, arg_3.a.x, arg_1.a.x)).b)), arg_3.e.a, func_2(~(~arg_3.c & _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.b.d, 19984u, 46956u, arg_3.c.x), vec4<u32>(39414u, u_input.b, u_input.b, arg_3.b.d))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-496f + 1687f), _wgslsmith_f_op_f32(-arg_1.b)))), arg_0), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(22061u, u_input.b, arg_3.c.x), ~(~arg_3.c.zxw)), arg_3.c.zzz), Struct_1(!vec3<bool>(!arg_1.a.x, arg_3.b.c.a.x, arg_1.a.x), global1.x));
    global0 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(15229u, ~52238u), vec2<u32>(_wgslsmith_mult_u32(arg_3.b.d, arg_3.b.d), arg_3.e.d)));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2289f, arg_3.b.c.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(1182f, 578f) + vec2<f32>(-600f, var_0.a)))), vec2<f32>(_wgslsmith_f_op_f32(var_0.e.b * 1234f), _wgslsmith_f_op_f32(-1027f * arg_1.b)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2144f, arg_1.b) - vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), -1130f)), vec2<f32>(arg_3.d, _wgslsmith_f_op_vec3_f32(func_4(Struct_2(512f, arg_3.e.b, arg_3.e.e, var_0.d, arg_3.e.c), _wgslsmith_mult_u32(u_input.b, 0u), -1335f)).x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1372f, 343f))))))) * vec2<f32>(_wgslsmith_f_op_f32(-global1.x), 1315f));
    global0 = 0u;
    return _wgslsmith_f_op_f32(-arg_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -324f, global1.x, 472f)))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1384f, _wgslsmith_f_op_f32(f32(-1f) * -1143f)), -923f, _wgslsmith_f_op_f32(func_5(select(true, true, false), func_1(), ~u_input.c, Struct_4(vec2<bool>(true, true), Struct_2(global1.x, global1.x, Struct_1(vec3<bool>(true, true, false), global1.x), u_input.b, Struct_1(vec3<bool>(false, true, false), 329f)), vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u), -171f, Struct_2(global1.x, -830f, Struct_1(vec3<bool>(true, false, false), global1.x), u_input.b, Struct_1(vec3<bool>(false, false, true), 788f))))), -850f)));
    let var_1 = Struct_3(max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4453u, u_input.b), vec2<u32>(18131u, u_input.b), vec2<u32>(1u, u_input.b)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 77720u), max(vec2<u32>(u_input.b, 9290u), vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)), min(vec2<u32>(u_input.b, ~u_input.b), max(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, u_input.b)))), min((vec2<u32>(35432u, u_input.b) << (max(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) << ((select(vec2<u32>(17451u, u_input.b), vec2<u32>(34192u, 47902u), vec2<bool>(true, true)) | select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(9410u, 1u), false)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 10886u) << ((vec2<u32>(u_input.b, 30887u) << (vec2<u32>(14396u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(7108u, max(84057u, 4294967295u)))), Struct_2(_wgslsmith_f_op_f32(global1.x + global1.x), global1.x, Struct_1(vec3<bool>(false, true, false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 1000f) - -630f)), min(1u, u_input.b), func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -2147483647i) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), -vec2<i32>(u_input.a, 2147483647i), -vec2<i32>(1i, u_input.a)), Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-427f + 764f))).e), Struct_2(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1407f, -1000f))))), Struct_1(func_3(vec2<i32>(u_input.a, u_input.c) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), func_3(vec2<i32>(u_input.a, u_input.c), Struct_1(vec3<bool>(true, true, true), -1071f)).c).c.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_f_op_f32(func_5(false, Struct_1(vec3<bool>(false, false, true), var_0.x), u_input.a, Struct_4(vec2<bool>(true, true), Struct_2(1400f, 104f, Struct_1(vec3<bool>(true, false, true), global1.x), u_input.b, Struct_1(vec3<bool>(true, false, true), -922f)), vec4<u32>(u_input.b, 31428u, 1u, u_input.b), 933f, Struct_2(1954f, -1000f, Struct_1(vec3<bool>(true, false, false), global1.x), 5137u, Struct_1(vec3<bool>(false, false, false), -427f))))), false))), ~select(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(47299u, u_input.b, 1u), vec3<u32>(u_input.b, 4294967295u, u_input.b)), true), Struct_1(vec3<bool>(all(vec2<bool>(true, true)), true, func_3(vec2<i32>(u_input.c, 20433i), Struct_1(vec3<bool>(true, false, true), -1087f)).c.a.x), 1066f)), 1i);
    var var_2 = -899f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -406f))) - 1470f) - _wgslsmith_f_op_f32(410f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1263f))))));
    var_2 = var_0.x;
    var var_3 = func_1().b;
    var_3 = func_2(~vec4<u32>(var_1.d.d & ~4294967295u, 4294967295u, _wgslsmith_div_u32(var_1.d.d << (u_input.b % 32u), ~41770u), 37966u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.c.a)), _wgslsmith_f_op_f32(global1.x + var_1.c.b)) - _wgslsmith_f_op_vec2_f32(trunc(var_0.wx))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(sign(1000f)))), !(!(global1.x != var_0.x) | var_1.d.c.a.x)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 648f, var_1.d.c.b, _wgslsmith_f_op_f32(402f + 1364f)))))), countOneBits(-7519i));
}

