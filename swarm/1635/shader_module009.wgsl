struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-123f, 1061f, 1642f, -1423f), vec4<f32>(791f, 442f, -326f, 553f), vec4<f32>(1045f, 1000f, 303f, -1435f), vec4<f32>(-1000f, -1226f, -258f, -393f), vec4<f32>(261f, 1302f, 121f, 1142f), vec4<f32>(791f, -1269f, 1101f, 130f), vec4<f32>(606f, -609f, 2152f, -1765f), vec4<f32>(985f, 396f, 320f, -132f), vec4<f32>(1076f, 1000f, 1552f, -262f), vec4<f32>(-2088f, 1267f, -698f, -699f));

var<private> global3: bool;

var<private> global4: vec4<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = select(select(!select(vec4<bool>(arg_1.b, false, global4.x, true), select(vec4<bool>(arg_1.c, true, true, true), vec4<bool>(global1.b, global4.x, arg_1.c, arg_1.b), true), arg_1.b), select(select(!vec4<bool>(global1.c, arg_1.c, false, arg_1.c), select(vec4<bool>(false, true, global1.c, true), vec4<bool>(global4.x, true, global1.b, global4.x), vec4<bool>(false, false, true, arg_1.c)), vec4<bool>(true, global1.b, arg_1.b, global1.c)), vec4<bool>(true, true, false, global4.x | true), global1.b), vec4<bool>(true, any(select(vec4<bool>(true, global4.x, true, false), vec4<bool>(global1.b, false, arg_1.b, false), false)), any(global4.xyy), false)), !vec4<bool>(all(vec4<bool>(global4.x, global1.c, false, arg_1.c)) && global4.x, global4.x, all(select(vec2<bool>(global4.x, arg_1.b), global4.wx, true)), true), vec4<bool>(min(0u, global1.d) >= reverseBits(~u_input.a.x), any(!vec4<bool>(false, true, true, global1.c)), true, -22375i == arg_0));
    let var_1 = _wgslsmith_f_op_f32(sign(-1312f));
    return ~(~_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec2_u32(arg_1.a.zy, vec2<u32>(1u, 41365u))), arg_1.a.x));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(-1001f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(681f, _wgslsmith_f_op_f32(f32(-1f) * -379f))))), any(global4.zw)));
    global1 = Struct_1(countOneBits(global1.a << (~_wgslsmith_sub_vec4_u32(vec4<u32>(30950u, global1.d, 4294967295u, global1.d), vec4<u32>(0u, 0u, 92915u, 24448u)) % vec4<u32>(32u))), ~reverseBits(3023u) >= _wgslsmith_mult_u32(max(~u_input.c.x, ~u_input.a.x), 4294967295u), false, ~4139u);
    var var_1 = vec3<i32>(arg_0, ~13644i, ~(~_wgslsmith_add_i32(~u_input.d.x, arg_0)));
    var var_2 = ~_wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(abs(func_3(0i, Struct_1(global1.a, false, global4.x, global1.a.x))), global1.a.x));
    let var_3 = ~(-countOneBits(var_1.x));
    return select(select(!select(!vec4<bool>(false, global4.x, true, global1.c), !vec4<bool>(global1.b, true, global4.x, global1.b), vec4<bool>(global1.b, global4.x, global1.c, global4.x)), vec4<bool>(true, true, global1.b, select(global1.b, global1.c, true)), true), !(!vec4<bool>(global1.b, all(vec4<bool>(false, global1.b, false, false)), true, true)), global1.c);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> vec4<u32> {
    global1 = Struct_1(global1.a, all(func_2(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(80681i, 12414i)), vec2<i32>(arg_0, arg_0) | u_input.e))), false, ~_wgslsmith_dot_vec4_u32(global1.a, global1.a & abs(vec4<u32>(48822u, global1.a.x, 32349u, u_input.b))));
    var var_0 = firstLeadingBit(u_input.e);
    let var_1 = Struct_1(global1.a, true, true, select(~global1.a.x, 4294967295u, true));
    var var_2 = var_1;
    let var_3 = vec2<u32>(max(~((global1.d | 4294967295u) ^ 32461u), reverseBits(~(~global1.a.x))), ~var_1.d);
    return ~firstTrailingBit(vec4<u32>(abs(var_3.x) & (global1.a.x >> (1u % 32u)), _wgslsmith_dot_vec2_u32(var_1.a.wx << (vec2<u32>(var_1.a.x, 78195u) % vec2<u32>(32u)), ~vec2<u32>(u_input.b, 0u)), var_3.x, 1u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = arg_1.a.x;
    global0 = 953f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-285f)));
    global1 = Struct_1(global1.a, !(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) != 1f) && arg_1.b, any(!func_2(33016i).zw), 0u);
    var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(max(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1.d, global1.d), vec4<u32>(1u, arg_1.a.x, arg_1.a.x, 1u)), vec4<u32>(arg_1.d, global1.a.x, 4294967295u, 4294967295u))), ~_wgslsmith_sub_u32(14953u << (1u % 32u), 1u), u_input.b), max(_wgslsmith_mult_u32(firstTrailingBit(max(0u, arg_1.d)), arg_1.d), _wgslsmith_sub_u32(func_3(~u_input.e.x, Struct_1(global1.a, false, true, arg_1.d)), ~(~u_input.a.x))));
    var var_1 = any(vec2<bool>((-60216i & u_input.d.x) <= _wgslsmith_div_i32(-12588i, u_input.e.x), false));
    return Struct_1(arg_1.a, func_2(~_wgslsmith_mod_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-12514i, -19959i, -22246i, u_input.e.x), vec4<i32>(1i, -2147483647i, -1i, 35050i)))).x, !arg_2.x, u_input.a.x);
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = select(vec3<u32>(~11481u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.a.yzx << (global1.a.xww % vec3<u32>(32u)), func_4(vec3<f32>(488f, 190f, arg_1), Struct_1(arg_2.a, global1.b, true, u_input.c.x), vec4<bool>(true, global1.c, global4.x, arg_2.b)).a.wyw), ~vec3<u32>(0u, 32628u, global1.d)), func_3(-_wgslsmith_clamp_i32(-1i, u_input.e.x, u_input.d.x), Struct_1(max(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, global1.a.x), global1.a), !arg_2.c, true, 4294967295u))), vec3<u32>(u_input.b, max(16748u, u_input.a.x) << (arg_2.a.x % 32u), 4294967295u), !(!global4.zzw));
    var var_1 = Struct_1(max(vec4<u32>(0u, _wgslsmith_add_u32(1u, 19943u) ^ u_input.c.x, func_3(u_input.e.x & 1i, func_4(vec3<f32>(arg_1, -967f, arg_1), arg_2, vec4<bool>(arg_2.b, global1.b, true, false))), arg_2.a.x), vec4<u32>(~(~arg_2.a.x), _wgslsmith_div_u32(~1u, func_1(2147483647i, vec3<f32>(1959f, arg_0, arg_1)).x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_2.a.xzw, global1.a.yyy), max(global1.a.x, var_0.x)), 61333u)), arg_2.c, global1.c, 0u);
    var var_2 = Struct_1(~_wgslsmith_mod_vec4_u32(~(~global1.a), firstLeadingBit(abs(var_1.a))), var_1.b && !all(!vec2<bool>(arg_2.c, arg_2.b)), any(!vec3<bool>(false, false, var_1.b)), 23895u);
    var var_3 = func_4(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_f32(max(1f, arg_0))), Struct_1(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, var_1.a.x, 10898u, arg_2.d), abs(~vec4<u32>(0u, 29526u, arg_2.d, var_1.a.x))), global4.x, ~var_1.a.x >= 4294967295u, _wgslsmith_mult_u32(arg_2.d, ~arg_2.a.x)), !(!vec4<bool>(!var_2.c, true, arg_1 == arg_1, true)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true;
    var var_0 = Struct_1(select(~vec4<u32>(4294967295u, 12735u, u_input.c.x, global1.a.x), abs(vec4<u32>(53588u, global1.a.x, global1.d, 0u)), select(vec4<bool>(false, false, global1.b, global1.b), vec4<bool>(true, false, global4.x, false), select(false, global4.x, global1.c))) << (global1.a % vec4<u32>(32u)), true, any(!select(select(vec4<bool>(global1.b, true, true, global4.x), vec4<bool>(global1.b, true, global4.x, true), false), !vec4<bool>(global4.x, global4.x, global4.x, global4.x), select(vec4<bool>(true, global4.x, true, global4.x), vec4<bool>(false, true, true, true), true))), ~u_input.a.x);
    var var_1 = vec2<bool>(true, all(!(!(!global4.xzz))));
    var var_2 = _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>((-43666i << (u_input.a.x % 32u)) & -1i, ~(u_input.e.x << (u_input.a.x % 32u)))), u_input.e);
    var var_3 = ~var_2.x;
    var var_4 = func_5(2329f, -1047f, func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1518f, 425f, -1068f)), vec3<f32>(541f, 145f, -110f))))), Struct_1(_wgslsmith_mult_vec4_u32(func_1(var_2.x, vec3<f32>(-1809f, -1000f, 658f)), abs(vec4<u32>(0u, 13438u, 0u, 35351u))), true, any(!vec4<bool>(global4.x, var_0.c, var_1.x, false)), 1u), vec4<bool>(all(vec2<bool>(false, var_0.b)), global4.x, false, select(!var_1.x, true, true))));
    var var_5 = vec4<bool>(true, true, true && global4.x, global1.d < firstLeadingBit(_wgslsmith_mod_u32(var_0.a.x, func_3(var_2.x, Struct_1(vec4<u32>(1u, 28703u, 1u, 30778u), global1.c, true, 40162u)))));
    var var_6 = _wgslsmith_mod_vec2_u32(select(global1.a.xx, global1.a.wz, select(true, !all(var_5.wy), all(!global4.ww))), u_input.c);
    global3 = select(var_1.x, !all(select(vec2<bool>(global1.b, global4.x), select(var_5.xy, global4.zz, var_1.x), var_4.b | var_4.b)), global4.x && global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_5(-448f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -974f)), func_5(786f, _wgslsmith_f_op_f32(607f - -230f), Struct_1(global1.a, global1.b, var_1.x, var_0.d))).a.x, func_3(_wgslsmith_dot_vec2_i32(~u_input.e, firstTrailingBit(vec2<i32>(1i, -39950i))), func_5(-797f, 1116f, func_4(vec3<f32>(-999f, -165f, -1205f), Struct_1(vec4<u32>(0u, 126868u, global1.d, global1.a.x), true, global4.x, u_input.a.x), vec4<bool>(false, false, global4.x, global4.x)))), _wgslsmith_sub_u32(5126u, var_6.x)), var_0.a.xyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-300f + 1374f), _wgslsmith_div_f32(-1248f, -1035f))) * _wgslsmith_f_op_f32(-395f * _wgslsmith_f_op_f32(-374f - 1383f)))), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d.wyz, u_input.d.yyz), -35566i, firstTrailingBit(var_2.x), -35907i << ((~var_6.x ^ abs(0u)) % 32u)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-378f)))))));
}

