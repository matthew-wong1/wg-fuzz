struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> bool {
    let var_0 = Struct_2(!select(!(!vec4<bool>(global2.x, true, global2.x, global1.x)), select(!vec4<bool>(global1.x, false, global2.x, true), !vec4<bool>(false, global2.x, true, false), !global1.x), vec4<bool>(any(vec4<bool>(true, true, global1.x, global2.x)), !global2.x, global1.x, true || global2.x)));
    global2 = vec3<bool>(any(!select(var_0.a.yzz, var_0.a.xzz, all(global1.yz))), global1.x, any(select(select(!global1.xy, global2.yy, global2.x), select(!global1.yz, select(vec2<bool>(global2.x, false), global1.xx, global1.x), all(var_0.a.xyx)), !select(vec2<bool>(true, var_0.a.x), vec2<bool>(true, global1.x), global2.yx))));
    let var_1 = select(vec3<bool>(true, true, var_0.a.x), !select(select(!var_0.a.zwz, var_0.a.zyw, true), select(!var_0.a.zzw, var_0.a.wwy, any(var_0.a.xwz)), ~global0.a.x > u_input.d), var_0.a.xww);
    var var_2 = arg_2.x;
    let var_3 = Struct_1(~((~global0.a | vec3<u32>(u_input.a.x, u_input.d, 4294967295u)) | _wgslsmith_mod_vec3_u32(global0.a << (global0.a % vec3<u32>(32u)), reverseBits(global0.a))));
    return var_0.a.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-12688i, u_input.b, arg_0), vec3<i32>(2147483647i, arg_2.x, arg_2.x)), vec3<i32>(-arg_0, select(2147483647i, 400i, false), _wgslsmith_mult_i32(-21729i, 33317i)), arg_2)), -vec3<i32>(_wgslsmith_mod_i32(max(u_input.c.x, arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 2147483647i, u_input.c.x, -37691i), vec4<i32>(arg_0, -1i, 18200i, 2120i))), arg_2.x, _wgslsmith_div_i32(arg_2.x, arg_2.x)));
    var var_1 = vec3<u32>(global0.a.x & ~u_input.d, ~countOneBits(7835u), _wgslsmith_mod_u32(global0.a.x, abs(~67262u)));
    var_0 = vec3<i32>(-1i) * -abs(vec3<i32>(-1i) * -arg_2);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-982f))) - -1498f))));
    var var_3 = Struct_1(vec3<u32>(~countOneBits(_wgslsmith_div_u32(4294967295u, global0.a.x)), var_1.x, ~_wgslsmith_clamp_u32(12568u >> (var_1.x % 32u), var_1.x ^ global0.a.x, ~97587u)));
    return -2591f;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-(~u_input.b), all(vec3<bool>(global1.x, func_3(vec3<f32>(arg_0, -1000f, arg_0), vec4<i32>(u_input.b, -40812i, -8352i, u_input.b), vec2<f32>(754f, arg_0)), true)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 2147483647i), vec3<i32>(u_input.c.x, u_input.b, u_input.b) | vec3<i32>(-2147483647i, -17782i, u_input.b)) & vec3<i32>(-1i, u_input.c.x, -2147483647i), Struct_2(select(select(vec4<bool>(true, true, global1.x, true), vec4<bool>(true, false, global1.x, true), vec4<bool>(true, global2.x, global2.x, true)), select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, global1.x, false), true), true)))));
    var var_0 = _wgslsmith_mod_vec3_u32(~(~global0.a), ~vec3<u32>(u_input.a.x, global0.a.x, max(firstTrailingBit(global0.a.x), global0.a.x & 1u)));
    var var_1 = true;
    global0 = Struct_1(global0.a | global0.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1368f, 759f, arg_0, _wgslsmith_f_op_f32(ceil(356f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f + 1258f) - _wgslsmith_f_op_f32(ceil(167f))), _wgslsmith_f_op_f32(abs(-721f)), arg_0, 501f)))));
    return Struct_2(vec4<bool>(any(select(vec4<bool>(global2.x, global1.x, global2.x, false), select(vec4<bool>(false, true, global2.x, true), vec4<bool>(false, global1.x, global1.x, global2.x), vec4<bool>(global1.x, global2.x, global2.x, true)), all(vec2<bool>(global1.x, true)))), false, true, global1.x));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = -(~_wgslsmith_mod_i32(-u_input.c.x, _wgslsmith_add_i32(u_input.c.x, u_input.b))) <= (_wgslsmith_div_i32(u_input.c.x << (1u % 32u), u_input.c.x) >> (1u % 32u));
    var var_1 = select(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-895f)) + _wgslsmith_div_f32(-2181f, 709f))).a.yx, select(select(func_2(_wgslsmith_div_f32(1383f, -1483f)).a.zw, !global1.xx, false), select(vec2<bool>(global1.x, any(arg_0.a)), global1.zx, !select(global2.yx, vec2<bool>(false, var_0), global2.x)), !any(select(vec3<bool>(true, global1.x, true), vec3<bool>(global2.x, var_0, var_0), arg_0.a.xwx))), !global1.xy);
    let var_2 = global1.zy;
    let var_3 = -vec2<i32>(-2147483647i, u_input.c.x);
    var var_4 = i32(-1i) * -2147483647i;
    return Struct_1(~global0.a);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_2(vec4<bool>(-1347f >= _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-746f, -945f), _wgslsmith_f_op_f32(round(2152f)))), all(select(!vec3<bool>(false, global1.x, true), !vec3<bool>(global2.x, global1.x, global2.x), vec3<bool>(false, global2.x, false))), true, true));
    let var_1 = func_5(func_2(_wgslsmith_f_op_f32(1638f - _wgslsmith_f_op_f32(floor(1000f)))), ~(~(~(~global0.a.x))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(115f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f)))).a.x);
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(ceil(1470f));
    var var_4 = 306f;
    return func_2(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -753f;
    let var_1 = Struct_2(vec4<bool>(any(select(global1.yz, global2.zx, all(global1.yz))), global1.x, true, any(vec3<bool>(false, false, true))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1000f)) + 833f));
    global1 = select(vec3<bool>(false, true, !global1.x), var_1.a.xzx, !select(!var_1.a.ywx, var_1.a.xww, !(u_input.d > 13820u)));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(min(-(~vec2<i32>(u_input.b, -2147483647i)), u_input.c), countOneBits(u_input.c) >> (global0.a.zz % vec2<u32>(32u))), u_input.c.x ^ u_input.b, 0i, _wgslsmith_mult_i32(firstTrailingBit(firstLeadingBit(u_input.c.x >> (u_input.a.x % 32u))), u_input.b));
    var var_3 = ~reverseBits(u_input.c.x);
    var var_4 = func_1(~abs(-var_2.wy));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.c.x) ^ -28156i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2058f, -739f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1134f, -423f) - vec2<f32>(1059f, 296f))), vec2<f32>(-766f, 511f))), 38357u, ~var_2.x, _wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d, u_input.d), global0.a), vec3<u32>(4294967295u, global0.a.x, u_input.d)), ~vec3<u32>(u_input.a.x, u_input.d, u_input.a.x)) >> (u_input.a.x % 32u));
}

