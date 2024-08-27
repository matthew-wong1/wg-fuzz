struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: Struct_3;

var<private> global2: vec4<bool>;

var<private> global3: f32 = -337f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> Struct_5 {
    global0 = vec3<bool>(select(!global0.x, select(false, arg_3.a.c, true), global0.x), true, global0.x);
    let var_0 = arg_3.b;
    var var_1 = min(_wgslsmith_div_vec4_i32(global1.d.a, global1.a.a << (select(~vec4<u32>(44178u, arg_0, 58681u, 54578u), _wgslsmith_div_vec4_u32(vec4<u32>(4153u, 1u, 0u, arg_0), vec4<u32>(1u, 95130u, arg_0, 4294967295u)), vec4<bool>(false, true, global2.x, arg_3.a.c)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~global1.a.a, vec4<i32>(~global1.b, ~arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(10514i, 36573i), arg_3.e.a.xz), -33488i)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(59i, arg_2), 1i), global1.b, _wgslsmith_clamp_i32(1i << (u_input.c.x % 32u), -2147483647i, ~1i), -39119i)));
    global1 = arg_3.a;
    return Struct_5(global1.a.a.xzz, vec4<bool>(global2.x, arg_1, true, arg_3.a.c & (~arg_0 != 2541u)), vec3<f32>(_wgslsmith_f_op_f32(-661f - _wgslsmith_f_op_f32(-116f + var_0)), 1127f, var_0));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_u32(u_input.c.x, u_input.c.x);
    global3 = arg_1.c.x;
    let var_1 = Struct_4(Struct_3(Struct_2(vec4<i32>(2147483647i | global1.d.a.x, arg_2.a.x, ~2147483647i, arg_0.b)), _wgslsmith_div_i32(global1.d.a.x, firstTrailingBit(global1.d.a.x)), all(arg_1.b.zxz), arg_0.a), _wgslsmith_f_op_f32(-arg_1.c.x), func_2(0u, any(select(arg_1.b.wxy, func_2(u_input.c.x, true, 11230i, Struct_4(arg_0, -1053f, 128f, u_input.c.x, arg_2)).b.xwz, global0.x)), -arg_0.d.a.x, Struct_4(Struct_3(arg_0.d, firstLeadingBit(-17410i), arg_1.c.x < arg_1.c.x, arg_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c.x)) + _wgslsmith_f_op_f32(floor(arg_1.c.x))), arg_1.c.x, 1u, Struct_1(vec3<i32>(arg_1.a.x, arg_2.a.x, -7172i)))).c.x, 27190u, Struct_1(arg_0.d.a.zzw));
    let var_2 = Struct_3(global1.a, 56983i, arg_1.b.x, Struct_2(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a.x, -1i, var_1.e.a.x, global1.b), var_1.a.d.a)));
    var_0 = _wgslsmith_add_u32(~0u, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x ^ 10260u, u_input.c.x), ~abs(u_input.c.x))));
    return _wgslsmith_add_u32(~53845u, 4294967295u << ((min(firstTrailingBit(12559u), firstLeadingBit(42408u)) >> (u_input.c.x % 32u)) % 32u));
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = 0u;
    let var_1 = countOneBits(firstLeadingBit(~vec3<i32>(global1.b, global1.d.a.x, 19814i))) << (max(vec3<u32>(17412u, 4294967295u, func_3(Struct_3(Struct_2(arg_0.a), arg_0.a.x, true, Struct_2(arg_0.a)), func_2(u_input.c.x, global0.x, u_input.b, Struct_4(Struct_3(global1.d, -70243i, true, Struct_2(vec4<i32>(u_input.b, 2147483647i, -6122i, global1.b))), -2112f, -682f, 10144u, Struct_1(vec3<i32>(26940i, u_input.b, 2147483647i)))), Struct_1(vec3<i32>(-2147483647i, 57732i, -2147483647i)))), u_input.c) % vec3<u32>(32u));
    global0 = vec3<bool>(!any(vec4<bool>(func_2(45008u, true, 14888i, Struct_4(Struct_3(arg_0, 2147483647i, true, Struct_2(arg_0.a)), 475f, -213f, u_input.c.x, Struct_1(var_1))).b.x, true, any(global2.zxy), all(vec4<bool>(global2.x, global2.x, global0.x, global2.x)))), !func_2(1u, func_2(~4294967295u, global0.x, -2147483647i, Struct_4(Struct_3(Struct_2(arg_0.a), -19501i, global2.x, Struct_2(vec4<i32>(17230i, -8114i, arg_0.a.x, arg_0.a.x))), -799f, -211f, u_input.c.x, Struct_1(vec3<i32>(u_input.a, global1.a.a.x, arg_0.a.x)))).b.x, -49409i, Struct_4(Struct_3(global1.d, -2147483647i, false, Struct_2(vec4<i32>(u_input.a, arg_0.a.x, 6638i, global1.d.a.x))), _wgslsmith_div_f32(-1872f, 1240f), _wgslsmith_f_op_f32(abs(1856f)), u_input.c.x, Struct_1(vec3<i32>(-2287i, u_input.a, global1.b)))).b.x, true);
    global0 = select(select(vec3<bool>(false, true, any(vec2<bool>(global2.x, global1.c))), !func_2(~1u, false, -2147483647i, Struct_4(Struct_3(Struct_2(vec4<i32>(-7227i, arg_0.a.x, var_1.x, global1.b)), u_input.b, global1.c, global1.a), -506f, 456f, u_input.c.x, Struct_1(vec3<i32>(0i, 18310i, global1.b)))).b.wyw, any(func_2(~u_input.c.x, true, 34524i, Struct_4(Struct_3(Struct_2(vec4<i32>(arg_0.a.x, 0i, var_1.x, -13777i)), 0i, global1.c, Struct_2(global1.a.a)), -721f, -1588f, u_input.c.x, Struct_1(vec3<i32>(global1.a.a.x, global1.a.a.x, -2147483647i)))).b.zw)), vec3<bool>(true, true, all(func_2(u_input.c.x, global0.x, u_input.a, Struct_4(Struct_3(arg_0, 1i, true, global1.a), 628f, 384f, 19774u, Struct_1(arg_0.a.wyz))).b.ww) != false), all(vec4<bool>(false, !all(global2.yyy), global0.x, _wgslsmith_f_op_f32(round(697f)) > _wgslsmith_f_op_f32(f32(-1f) * -1175f))));
    global1 = Struct_3(Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global1.a.a, arg_0.a), arg_0.a), -16856i, _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(global1.a.a.yy, vec2<i32>(53882i, var_1.x))), func_2(u_input.c.x, false, _wgslsmith_add_i32(global1.a.a.x, 0i), Struct_4(Struct_3(global1.a, -1i, global0.x, Struct_2(arg_0.a)), 1000f, 379f, 83643u, Struct_1(arg_0.a.zyw))).a.x)), u_input.a, global2.x, Struct_2(abs(arg_0.a)));
    return vec3<i32>(arg_0.a.x, -10543i, arg_0.a.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> vec4<u32> {
    var var_0 = select(vec4<u32>(u_input.c.x, u_input.c.x, ~(u_input.c.x | 1u), u_input.c.x), vec4<u32>(((u_input.c.x >> (1671u % 32u)) << (u_input.c.x % 32u)) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 728u, u_input.c.x), vec4<u32>(u_input.c.x, 10068u, 0u, 59246u)), countOneBits(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_mult_u32(154063u, u_input.c.x))), 23042u, 2976u), !vec4<bool>(!(arg_1 < -507f), !global1.c | (global1.c || false), false, false));
    let var_1 = vec2<u32>(~firstLeadingBit(var_0.x | ~u_input.c.x), u_input.c.x);
    global2 = !vec4<bool>(true, all(select(!vec4<bool>(global1.c, global2.x, false, global1.c), !vec4<bool>(false, global0.x, global1.c, global2.x), arg_0.x < 10561i)), false, any(vec4<bool>(false, true, global1.c, true)) | false);
    global3 = _wgslsmith_f_op_f32(496f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))));
    let var_2 = vec2<bool>(global1.c, ~var_0.x >= ~(~var_0.x));
    return ~vec4<u32>(1u, var_1.x, var_0.x, _wgslsmith_clamp_u32(~12498u, 0u, abs(abs(var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -161f;
    var var_1 = _wgslsmith_dot_vec4_u32(func_4(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.b, u_input.b, -1i), global1.d.a.zyx << (vec3<u32>(14190u, 0u, 0u) % vec3<u32>(32u))), func_1(global1.d)), func_2(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x), global1.c, global1.d.a.x, Struct_4(Struct_3(Struct_2(global1.d.a), 14805i, global2.x, Struct_2(global1.d.a)), _wgslsmith_f_op_f32(step(-395f, -538f)), -451f, 1u, Struct_1(vec3<i32>(u_input.b, u_input.b, 2147483647i)))).c.x, _wgslsmith_f_op_f32(f32(-1f) * -428f)), func_4(-vec3<i32>(-14430i, min(global1.d.a.x, global1.a.a.x), 20440i), var_0, var_0));
    let var_2 = global0.x;
    global1 = Struct_3(global1.a, abs(global1.a.a.x), true, Struct_2(vec4<i32>(_wgslsmith_add_i32(global1.d.a.x, -8824i), ~u_input.b, -_wgslsmith_dot_vec2_i32(global1.d.a.zx, vec2<i32>(u_input.b, u_input.b)), global1.d.a.x)));
    global3 = var_0;
    var_1 = ~1u;
    var var_3 = all(select(!(!global0.xy), vec2<bool>(!any(vec2<bool>(false, global2.x)), false), _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_add_u32(u_input.c.x, u_input.c.x)) == 0u));
    var var_4 = Struct_3(global1.a, global1.d.a.x, true, global1.a);
    var var_5 = Struct_1(func_2(u_input.c.x, func_2(abs(countOneBits(u_input.c.x)), !func_2(u_input.c.x, false, var_4.b, Struct_4(Struct_3(Struct_2(var_4.a.a), -61905i, false, global1.d), var_0, -1471f, u_input.c.x, Struct_1(var_4.a.a.yzz))).b.x, 1i, Struct_4(Struct_3(global1.a, -1i, false, Struct_2(global1.a.a)), 995f, -547f, 4294967295u, Struct_1(vec3<i32>(var_4.a.a.x, u_input.a, global1.a.a.x)))).b.x, -1i, Struct_4(Struct_3(Struct_2(vec4<i32>(global1.d.a.x, var_4.d.a.x, 1i, var_4.d.a.x)), abs(global1.d.a.x), true, global1.a), _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), ~u_input.c.x ^ ~u_input.c.x, Struct_1(~var_4.a.a.xyz))).a);
    let x = u_input.a;
    s_output = StorageBuffer(1u >> ((_wgslsmith_add_u32(u_input.c.x, firstTrailingBit(0u)) ^ abs(u_input.c.x)) % 32u), global1.d.a, select(~(var_4.a.a.xy << (_wgslsmith_sub_vec2_u32(u_input.c.yx, vec2<u32>(u_input.c.x, 43285u)) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(~var_5.a.yz, vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.b))), !global1.c), -6838i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-631f, 491f, 870f, var_0))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 997f)))) + vec4<f32>(-1583f, -508f, -107f, var_0)));
}

