struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, true, true), 0u), false);

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(true, true, false, false), 62429u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-14451i, 55406i), u_input.c.wx), arg_1.xx), countOneBits(firstLeadingBit(max(u_input.c.ww, vec2<i32>(-2147483647i, u_input.c.x))))), vec2<i32>(u_input.c.x, _wgslsmith_div_i32(-2147483647i, -42171i)), vec2<i32>(countOneBits(arg_1.x), max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 55920i, -29226i) ^ u_input.c, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -2147483647i, 52953i), u_input.c)), -select(2147483647i, -54827i, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(572f, -1285f, 1296f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(236f, -1000f, 275f))) - vec3<f32>(947f, 937f, -133f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_div_f32(var_1.x, -561f), 1008f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(select(1512f, var_1.x, true)), var_1.x), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(1495f)), _wgslsmith_f_op_f32(select(var_1.x, -518f, arg_0.a.a.x)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 876f, -402f))))))));
    global1 = Struct_1(!arg_0.a.a, abs(15184u));
    global1 = global2.a;
    return ~(~firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.b, 4294967295u, 27289u), _wgslsmith_div_vec3_u32(vec3<u32>(global1.b, u_input.a.x, global1.b), vec3<u32>(16659u, 27454u, global2.a.b)))));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(global1.b, 1u)];
    global0 = array<Struct_2, 2>();
    let var_1 = ~func_3(Struct_2(Struct_1(var_0.a, 42483u), _wgslsmith_f_op_f32(-arg_1) <= 1000f), -firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1, -1000f))), -382f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -378f), vec2<f32>(arg_1, -322f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(888f, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(256f, arg_1))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -974f)), _wgslsmith_f_op_f32(round(arg_1))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -841f), vec2<f32>(639f, arg_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1576f, arg_1) * vec2<f32>(594f, arg_1))) * _wgslsmith_div_vec2_f32(vec2<f32>(-823f, 746f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))));
    var_0 = Struct_1(vec4<bool>(global1.a.x, global2.b, !var_0.a.x, -(i32(-1i) * -2147483647i) < u_input.c.x), ~u_input.a.x);
    return Struct_2(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_1.x, 4294967295u), 1u)], true);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    global2 = Struct_2(Struct_1(global1.a, u_input.a.x), arg_3);
    global0 = array<Struct_2, 2>();
    let var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(arg_2.x, u_input.c.x) << (_wgslsmith_sub_u32(global2.a.b, ~0u) % 32u), abs(0i), min(-u_input.c.x, ~arg_2.x), -52395i));
    let var_1 = any(select(global1.a, vec4<bool>(false, !func_2(false, 1928f).b, !func_2(true, 483f).b, func_2(4532u > global1.b, 971f).b), all(global1.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(291f - -1000f), _wgslsmith_f_op_f32(409f * -458f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) - _wgslsmith_f_op_f32(-330f + 353f)))));
    return global2.a;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_2.x, 2u)];
    var var_1 = Struct_2(func_4(func_2(!(arg_0 >= -534f), 475f), abs(vec4<i32>(_wgslsmith_mod_i32(-1i, 1i), _wgslsmith_div_i32(19509i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -1i), vec2<i32>(61715i, -22588i)), u_input.c.x)), u_input.c, var_0.a.a.x), true);
    global1 = func_2(!var_1.a.a.x, _wgslsmith_f_op_f32(arg_0 + -1454f)).a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 + arg_0), -430f)) + _wgslsmith_f_op_f32(arg_0 * arg_0)));
    var_0 = global0[_wgslsmith_index_u32(global2.a.b, 2u)];
    return firstTrailingBit(-12284i ^ _wgslsmith_div_i32(countOneBits(~(-29934i)), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c.x, -2147483647i), -u_input.c.x)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = u_input.c.wz;
    var var_1 = min(vec2<i32>(func_1(700f, 1u, select(vec2<u32>(0u, 47803u) & u_input.a, ~vec2<u32>(1u, global2.a.b), vec2<bool>(true, false))), max(1i, u_input.c.x)), min(-u_input.c.wx, _wgslsmith_mod_vec2_i32(vec2<i32>(~2147483647i, arg_0), vec2<i32>(-19239i, u_input.c.x ^ 39929i))));
    global2 = Struct_2(Struct_1(vec4<bool>(true, global2.b, global2.a.a.x, _wgslsmith_f_op_f32(ceil(-1259f)) >= 1000f), global2.a.b), arg_1.a.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14636u, ~(9405u & global2.a.b), ~u_input.b), ~(~firstTrailingBit(vec3<u32>(u_input.a.x, 35420u, global2.a.b)) & abs(abs(vec3<u32>(62825u, u_input.b, 0u))))), 2u)];
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 2u)];
    return Struct_2(var_2.a, false);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = countOneBits(u_input.c.xxz);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-791f, 629f, 1361f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1531f, -266f, 132f))) * vec3<f32>(508f, _wgslsmith_f_op_f32(-653f - -197f), _wgslsmith_f_op_f32(abs(-208f)))) * vec3<f32>(2044f, 2160f, _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1158f)), 1f, _wgslsmith_f_op_f32(-1000f + 274f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-935f, -715f, -661f)), vec3<f32>(1f, 1f, 1f)))))));
    global2 = Struct_2(func_5(18398i, Struct_1(vec4<bool>(arg_0, true, true, var_0.x < var_0.x), 0u), var_0.x >> (_wgslsmith_mod_u32(global1.b, 4294967295u) % 32u)).a, any(select(global1.a.wzy, arg_1.a.xwy, !global2.a.a.xyz)));
    let var_2 = ~(~var_0.x | _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, firstLeadingBit(var_0.x)), firstLeadingBit(u_input.c.x | -1i)));
    global3 = array<Struct_1, 1>();
    return func_2(any(arg_2.a.a.xy), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~13055u, 2u)];
    let var_1 = func_6(global1.a.x, Struct_1(vec4<bool>(!(u_input.c.x > 6222i), true, select(!global2.a.a.x, var_0.b, global1.a.x), true), global2.a.b), func_5(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1020f - -1252f), _wgslsmith_div_f32(-306f, -335f)), _wgslsmith_mult_u32(~var_0.a.b, ~var_0.a.b), u_input.a), global3[_wgslsmith_index_u32(func_2(false, 596f).a.b << (0u % 32u), 1u)], 1i | ((u_input.c.x & 27789i) >> (u_input.b % 32u))));
    global2 = Struct_2(Struct_1(vec4<bool>(false, ~1u >= func_3(Struct_2(Struct_1(global1.a, 1u), false), vec3<i32>(1i, 43768i, u_input.c.x)).x, !all(global2.a.a), true | global2.a.a.x), 42809u), var_0.b);
    var var_2 = _wgslsmith_mod_u32(53884u, ~(~(~0u)));
    var_2 = 65525u;
    var_2 = global2.a.b;
    var_2 = 37901u;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-1i) ^ u_input.c.x, ~global2.a.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(163f, -113f, -1523f, -198f), vec4<f32>(574f, -176f, 1532f, 867f))) - _wgslsmith_div_vec4_f32(vec4<f32>(830f, 1162f, -1032f, 1453f), vec4<f32>(-289f, -752f, 992f, -1000f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-685f, 978f, 648f, 1984f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(-616f)), 900f, 1300f, _wgslsmith_f_op_f32(select(199f, 246f, var_0.a.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1018f, -104f, -554f, -237f)), var_0.a.a)), global1.a.x)));
}

