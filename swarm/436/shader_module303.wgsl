struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 95117u;

var<private> global1: Struct_2;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1.b.a.yz;
    var var_1 = false;
    let var_2 = Struct_2(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.a.x, 2111u), _wgslsmith_div_u32(7054u, global1.a.x)), min(arg_0.x | 0u, 1u), arg_0.x ^ arg_1.d), !arg_1.a.x);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.b.a - arg_1.b.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(829f, var_0.x, var_0.x)), vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(905f, var_0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_0)) * vec2<f32>(1747f, _wgslsmith_f_op_f32(min(157f, arg_1.b.b.x))))), -1i & (arg_1.b.e << (~_wgslsmith_mult_u32(u_input.e.x, 6450u) % 32u)), 0u, i32(-1i) * -1i);
    let var_4 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(362f)) + _wgslsmith_div_f32(1646f, var_3.a.x));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = select(global2.yz, global2.xz, !(!select(vec2<bool>(false, global1.b), global2.xw, !global2.wy)));
    let var_1 = u_input.e;
    global0 = ~(var_1.x | u_input.e.x);
    var var_2 = abs(-(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 2147483647i, -68142i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.d), vec3<i32>(u_input.d, -1i, u_input.d))) | firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-37463i, -2147483647i, -7529i), vec3<i32>(-1132i, u_input.d, -5147i)))));
    var var_3 = Struct_3(vec2<bool>(!any(vec2<bool>(global2.x, false)), any(vec2<bool>(global1.b, any(vec3<bool>(global1.b, var_0.x, global1.b))))), Struct_1(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.ww))) + vec2<f32>(_wgslsmith_f_op_f32(select(-535f, arg_0.x, true)), _wgslsmith_f_op_f32(-100f + -1824f))), -16854i, ~var_1.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, var_2.x, var_2.x) >> (vec3<u32>(u_input.e.x, global1.a.x, 49456u) % vec3<u32>(32u)), vec3<i32>(var_2.x, var_2.x, -1i))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-190f - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(243f, arg_0.x))))), 50375u & _wgslsmith_div_u32(_wgslsmith_div_u32(~var_1.x, ~27521u), firstTrailingBit(~var_1.x)));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d, 71478u << (global1.a.x % 32u)) >> (countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4185u), vec2<u32>(1u, global1.a.x))) % vec2<u32>(32u)), global1.a.zy), _wgslsmith_sub_u32(~u_input.a, firstTrailingBit(~5214u) >> (_wgslsmith_add_u32(0u, var_3.d & var_3.d) % 32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(u_input.e.xww, firstTrailingBit(~u_input.e.zyw), select(arg_2, true, false)), Struct_3(!global2.xy, arg_1, _wgslsmith_f_op_f32(-481f - _wgslsmith_f_op_f32(abs(1000f))), ~arg_1.d))));
    let var_1 = Struct_3(global2.zy, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-181f, arg_1.b.x, -1219f) + _wgslsmith_f_op_vec3_f32(trunc(arg_1.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(294f, -1000f), _wgslsmith_f_op_vec2_f32(round(arg_1.b)), vec2<bool>(true, arg_2))))), arg_1.c, _wgslsmith_clamp_u32(~(~global1.a.x), _wgslsmith_div_u32(1u, global1.a.x << (0u % 32u)), func_3(vec4<f32>(-404f, -351f, arg_1.a.x, -921f))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, -5153i) >> (arg_1.d % 32u), select(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, u_input.d, u_input.d), vec3<i32>(1i, -23901i, arg_1.c)), reverseBits(u_input.d), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(476f)))))), 95932u);
    var var_2 = var_1;
    let var_3 = false;
    let var_4 = true;
    return vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.x)))) == 836f, false, arg_2, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!select(func_1(global1.b, Struct_1(vec3<f32>(-310f, 1184f, 2400f), vec2<f32>(-1316f, 1325f), u_input.d, u_input.e.x, 1i), false), vec4<bool>(false && global1.b, true, all(vec2<bool>(global2.x, false)), !global2.x), func_1(global2.x & global1.b, Struct_1(vec3<f32>(1569f, -664f, -120f), vec2<f32>(714f, 757f), 0i, u_input.b, -6317i), any(vec2<bool>(false, global1.b)))));
    global0 = global1.a.x;
    global1 = Struct_2(global1.a, true);
    global2 = !select(select(!vec4<bool>(true, global1.b, false, false), !select(vec4<bool>(false, false, true, global1.b), vec4<bool>(true, true, global1.b, global1.b), vec4<bool>(true, false, global1.b, true)), vec4<bool>(true, any(global2.zyy), true, global2.x)), vec4<bool>(any(!vec2<bool>(global2.x, false)), true, global1.b, true), vec4<bool>(!(true != global2.x), -u_input.d <= 1i, func_1(global2.x & global1.b, Struct_1(vec3<f32>(-359f, 648f, 444f), vec2<f32>(881f, -554f), -25215i, 1u, 35184i), global1.b & global2.x).x, abs(u_input.e.x) >= _wgslsmith_dot_vec2_u32(vec2<u32>(35504u, 0u), vec2<u32>(4294967295u, 36508u))));
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(122f, -1103f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(461f, 1030f) * _wgslsmith_f_op_f32(-1000f + -1000f)) * 736f), _wgslsmith_f_op_f32(f32(-1f) * -705f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-336f, -670f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(881f, 520f), -637f)))), 0i, _wgslsmith_mod_u32(~(~(global1.a.x << (u_input.b % 32u))), global1.a.x), 1732i);
    let var_1 = var_0;
    var var_2 = min(vec2<i32>(var_1.c, -var_0.c) << (firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4169u, global1.a.x), u_input.e.zw)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(u_input.d, var_1.e, var_1.e) & (u_input.d ^ var_1.c), var_1.c)) | vec2<i32>(i32(-1i) * -54539i, min(-u_input.d, u_input.d));
    var var_3 = Struct_2(abs(vec3<u32>(22176u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global1.a.x, 27795u), min(vec3<u32>(u_input.e.x, var_1.d, var_0.d), vec3<u32>(u_input.e.x, 23669u, 75448u))), countOneBits(~0u))), true);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.x + 1235f), _wgslsmith_f_op_f32(-var_1.b.x), func_1(var_3.b, Struct_1(var_1.a, var_0.a.xx, -2147483647i, 0u, 5170i), global1.b).x)))), false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1590f)))))), -832f)), _wgslsmith_f_op_f32(f32(-1f) * -239f), var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.d, var_3.a.x << (var_3.a.x % 32u), firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(91113u, u_input.b), global1.a.xz)), ~(~_wgslsmith_div_u32(4294967295u, u_input.c))), vec4<i32>(~_wgslsmith_div_i32(u_input.d, u_input.d | 0i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-186i, var_1.c, -1i) ^ vec3<i32>(-16273i, 11671i, -2147483647i), max(vec3<i32>(0i, 2147483647i, var_1.e), vec3<i32>(-1i, -74781i, var_1.e))), abs(reverseBits(-1i)), _wgslsmith_div_i32(var_0.c, var_0.e) << (~4294967295u % 32u)), ~abs(firstLeadingBit(u_input.d)), var_2.x), select(_wgslsmith_div_u32(8412u, u_input.a), ~min(global1.a.x, var_3.a.x), global2.x) & _wgslsmith_dot_vec2_u32(~vec2<u32>(18474u, 29978u), ~(~vec2<u32>(u_input.c, 1u))), 4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~4294967295u, var_3.a.x), firstTrailingBit(func_3(vec4<f32>(149f, -151f, var_4.x, var_1.b.x)))), abs(_wgslsmith_mult_u32(var_0.d, var_1.d))));
}

