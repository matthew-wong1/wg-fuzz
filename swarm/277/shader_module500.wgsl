struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-35143i, 43841i), 85061u, vec3<bool>(false, true, false)), vec3<u32>(1u, 3274u, 15335u), Struct_1(vec2<i32>(-438i, 2147483647i), 4294967295u, vec3<bool>(false, false, true)), 4294967295u);

var<private> global1: array<vec4<f32>, 19>;

var<private> global2: array<vec4<u32>, 22>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = false;
    let var_1 = vec3<u32>(global0.c.b, arg_1.b, ~min(~46425u | ~global0.b.x, global0.c.b));
    global0 = Struct_2(arg_1, global0.b, arg_1, var_1.x);
    var var_2 = global0.c.c.x;
    let var_3 = _wgslsmith_clamp_u32(4294967295u, ~1u, ~47045u);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-446f, -1941f, 776f)) - vec3<f32>(1f, 1f, 1f)))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(469f - -1718f);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(countOneBits(~_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.a.x, 48663i, global0.a.a.x), vec3<i32>(-3233i, global0.c.a.x, global0.c.a.x))), Struct_1(global0.a.a, u_input.b, global0.a.c)));
    global1 = array<vec4<f32>, 19>();
    var var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(global0.c.a.x, 38108i, -5970i)), ~min(-vec3<i32>(global0.a.a.x, global0.c.a.x, global0.a.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.a.x, 2147483647i, 15550i), vec3<i32>(global0.c.a.x, 2147483647i, -45575i)))), vec3<i32>(~(-27912i), ~2147483647i, 15494i));
    return Struct_2(global0.c, firstLeadingBit(abs(firstLeadingBit(vec3<u32>(global0.d, 13703u, u_input.c.x)))) >> (vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(global0.b.x, global0.d), global0.a.b), u_input.c.x) % vec3<u32>(32u)), Struct_1(select(abs(vec2<i32>(-2147483647i, global0.a.a.x)), vec2<i32>(firstLeadingBit(0i), global0.c.a.x), vec2<bool>(!arg_0, true)), _wgslsmith_mult_u32(u_input.b, global0.d), vec3<bool>(!(!arg_0), false, false)), ~(~u_input.b));
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1025f + 1835f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1047f + -674f), _wgslsmith_f_op_f32(f32(-1f) * -1101f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -514f) * _wgslsmith_f_op_f32(sign(413f))))) - 807f));
    var var_1 = Struct_3(func_2(true));
    global0 = var_1.a;
    var var_2 = vec2<i32>(-1i, var_1.a.a.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 114f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, -453f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-387f, var_0, var_0), vec3<f32>(1330f, var_0, var_0))))))), var_1.a.c.c));
    return vec2<u32>(min(46267u, 124699u), 32244u) << (global0.b.zy % vec2<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_4) -> Struct_3 {
    var var_0 = u_input.c.x;
    var_0 = 1u;
    var var_1 = ~(vec4<i32>(arg_0, max(arg_3.c.c.a.x, -11011i), -42163i, -7202i) & _wgslsmith_mult_vec4_i32(~(-vec4<i32>(-1i, arg_0, -22549i, 0i)), vec4<i32>(arg_0, ~0i, _wgslsmith_mult_i32(arg_3.c.a.a.x, arg_0), 1i)));
    global2 = array<vec4<u32>, 22>();
    let var_2 = min(-21604i, arg_3.c.a.a.x);
    return arg_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(-(~(~global0.c.a.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(603f, 1000f, 1439f), vec3<f32>(-1808f, -449f, -1466f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, -872f))))))), false || !(!global0.c.c.x & false), Struct_4(func_1(), vec2<bool>(false, global0.c.c.x), Struct_2(global0.a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u) >> (u_input.c.www % vec3<u32>(32u)), abs(vec3<u32>(u_input.b, global0.d, 66933u))), Struct_1(vec2<i32>(global0.a.a.x, -2147483647i), _wgslsmith_add_u32(4294967295u, 0u), vec3<bool>(false, true, true)), 43038u), Struct_3(func_2(true))));
    let var_1 = (vec2<u32>(0u, ~u_input.b) >> (abs(~vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))) << (~(~vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(43514u, var_0.a.a.b, func_4(-1i, vec3<f32>(-1442f, -946f, -905f), global0.a.a.x <= global0.a.a.x, Struct_4(vec2<u32>(0u, 0u), select(global0.c.c.yx, var_0.a.a.c.zz, global0.c.c.yy), func_2(true), func_4(18261i, vec3<f32>(127f, 573f, 349f), global0.c.c.x, Struct_4(vec2<u32>(var_1.x, var_1.x), vec2<bool>(global0.c.c.x, false), var_0.a, Struct_3(var_0.a))))).a.d, (4294967295u & _wgslsmith_add_u32(4294967295u, var_1.x)) << ((~0u ^ _wgslsmith_div_u32(u_input.a, var_1.x)) % 32u)), vec4<u32>(_wgslsmith_add_u32(~17513u, ~var_1.x) | ~reverseBits(0u), 30305u, func_4(1801i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-270f, -705f, 321f), vec3<f32>(-1433f, 1500f, -1483f))))), var_0.a.a.c.x, Struct_4(~var_1, vec2<bool>(true, true), Struct_2(var_0.a.c, vec3<u32>(59506u, var_0.a.d, 0u), var_0.a.a, 27644u), Struct_3(Struct_2(Struct_1(vec2<i32>(-2055i, -13544i), 25574u, vec3<bool>(global0.c.c.x, false, global0.a.c.x)), vec3<u32>(4294967295u, 8815u, 11499u), Struct_1(global0.c.a, 1u, global0.c.c), 0u)))).a.b.x, _wgslsmith_mult_u32(1u, 26811u)));
    let var_3 = true;
    let var_4 = Struct_1(countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a.c.a << (var_0.a.b.zx % vec2<u32>(32u)), vec2<i32>(1i, var_0.a.c.a.x) ^ vec2<i32>(-5887i, global0.a.a.x)), func_4(0i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(577f, 860f, 1099f))), func_4(3668i, vec3<f32>(-1188f, 450f, -405f), true, Struct_4(vec2<u32>(var_1.x, 84979u), vec2<bool>(var_0.a.a.c.x, var_0.a.c.c.x), Struct_2(global0.c, global0.b, Struct_1(vec2<i32>(global0.c.a.x, 0i), 57476u, vec3<bool>(var_3, true, false)), 4294967295u), Struct_3(Struct_2(var_0.a.a, u_input.c.zxx, var_0.a.c, 59173u)))).a.a.c.x, Struct_4(var_2.yx, var_0.a.c.c.xx, var_0.a, Struct_3(Struct_2(Struct_1(var_0.a.c.a, var_2.x, vec3<bool>(global0.c.c.x, true, true)), global0.b, Struct_1(var_0.a.a.a, 1u, var_0.a.c.c), global0.c.b)))).a.a.a, vec2<i32>(-5966i, reverseBits(global0.a.a.x)))), func_2(var_0.a.a.c.x).a.b, vec3<bool>(var_3, true, !(func_4(global0.c.a.x, vec3<f32>(837f, 136f, -421f), global0.a.c.x, Struct_4(vec2<u32>(global0.d, 1u), var_0.a.c.c.zz, Struct_2(var_0.a.a, vec3<u32>(var_0.a.a.b, var_0.a.b.x, var_2.x), global0.c, u_input.b), Struct_3(var_0.a))).a.c.c.x || var_3)));
    var var_5 = func_4(global0.a.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1169f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-147f))))), !all(vec3<bool>(true, any(vec4<bool>(true, false, var_3, var_4.c.x)), var_4.c.x || var_0.a.a.c.x)), Struct_4(vec2<u32>(30317u, ~var_1.x) & var_0.a.b.yy, var_4.c.yx, func_2(false), func_4(abs(abs(var_4.a.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1147f, -910f, 1218f))))), var_3, Struct_4(~vec2<u32>(4294967295u, var_1.x), var_4.c.xy, func_2(false), func_4(var_0.a.c.a.x, vec3<f32>(-773f, -778f, -494f), true, Struct_4(vec2<u32>(4294967295u, var_4.b), var_4.c.zx, Struct_2(var_4, u_input.c.zxy, var_4, 4294967295u), Struct_3(var_0.a))))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(u_input.c.zw, _wgslsmith_div_vec2_u32(var_1 & var_2.ww, abs(var_2.wy)) ^ ~_wgslsmith_div_vec2_u32(var_0.a.b.zz, vec2<u32>(var_1.x, 30846u))), 1f, func_4(0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(864f, -397f, -1536f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1518f, -599f, -976f))))), !any(func_2(var_0.a.c.c.x).a.c), Struct_4(~global0.b.xz, var_0.a.a.c.yz, func_4(var_5.c.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(769f, -1165f, -694f)), global0.a.c.x || true, Struct_4(var_5.b.xz, global0.c.c.yx, Struct_2(global0.c, vec3<u32>(18301u, var_4.b, global0.c.b), var_4, 72413u), Struct_3(Struct_2(Struct_1(vec2<i32>(35948i, -2147483647i), u_input.c.x, vec3<bool>(var_3, var_3, false)), vec3<u32>(u_input.b, var_5.b.x, var_1.x), var_5.c, 4294967295u)))).a, Struct_3(Struct_2(Struct_1(vec2<i32>(3797i, -2123i), global0.a.b, global0.a.c), var_0.a.b, Struct_1(vec2<i32>(21569i, var_4.a.x), var_5.a.b, vec3<bool>(var_0.a.a.c.x, var_5.c.c.x, true)), 48782u)))).a.d, select(~_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(global0.a.a.x, var_5.c.a.x, global0.a.a.x)), -vec3<i32>(var_0.a.c.a.x, 1i, 2147483647i)), vec3<i32>(_wgslsmith_clamp_i32(~var_0.a.a.a.x, var_0.a.a.a.x, var_5.a.a.x), ~4826i >> (var_4.b % 32u), max(var_5.a.a.x, _wgslsmith_mult_i32(var_0.a.c.a.x, 1i))), var_4.c));
}

