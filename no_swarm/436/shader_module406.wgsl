struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_1(false, -8708i, i32(-2147483648), true, vec3<f32>(-632f, 790f, -156f)), 1i), Struct_4(Struct_1(false, -1i, 0i, true, vec3<f32>(356f, -242f, -452f)), i32(-2147483648)), Struct_4(Struct_1(false, 9020i, 2147483647i, false, vec3<f32>(-1770f, 1028f, -1666f)), -33943i), Struct_4(Struct_1(false, 1i, i32(-2147483648), false, vec3<f32>(-916f, -1128f, 355f)), -77921i), Struct_4(Struct_1(true, -7554i, 0i, true, vec3<f32>(628f, -1328f, -477f)), -1i), Struct_4(Struct_1(false, 21725i, 0i, true, vec3<f32>(-1000f, 1330f, 1546f)), 1i), Struct_4(Struct_1(true, -1i, i32(-2147483648), true, vec3<f32>(1051f, 1286f, 693f)), -1266i), Struct_4(Struct_1(true, i32(-2147483648), -61060i, false, vec3<f32>(1000f, -711f, 1000f)), -16002i), Struct_4(Struct_1(false, 40913i, -31013i, false, vec3<f32>(-246f, 252f, 1328f)), -1i), Struct_4(Struct_1(true, i32(-2147483648), 908i, true, vec3<f32>(-1138f, 465f, 1312f)), 2147483647i), Struct_4(Struct_1(false, 0i, 0i, true, vec3<f32>(417f, -910f, -363f)), 19952i), Struct_4(Struct_1(false, 1i, 10512i, true, vec3<f32>(105f, 1000f, 277f)), -40845i), Struct_4(Struct_1(false, -55919i, i32(-2147483648), false, vec3<f32>(1000f, 1031f, -1000f)), i32(-2147483648)), Struct_4(Struct_1(true, i32(-2147483648), 26850i, false, vec3<f32>(2804f, 1094f, -974f)), -11442i), Struct_4(Struct_1(false, 1i, i32(-2147483648), true, vec3<f32>(-1919f, -1632f, 423f)), -1i), Struct_4(Struct_1(true, 1i, -14022i, true, vec3<f32>(-570f, 1689f, 783f)), 24630i), Struct_4(Struct_1(false, -14758i, i32(-2147483648), true, vec3<f32>(-186f, 1727f, 1000f)), i32(-2147483648)), Struct_4(Struct_1(false, -20266i, -38575i, false, vec3<f32>(280f, -1784f, 229f)), 1i), Struct_4(Struct_1(false, 1i, 1i, false, vec3<f32>(-260f, -822f, 949f)), 53451i), Struct_4(Struct_1(false, 0i, 0i, true, vec3<f32>(-1197f, -488f, 1034f)), 1i), Struct_4(Struct_1(false, 29824i, 8717i, false, vec3<f32>(-1741f, 392f, 978f)), -1i), Struct_4(Struct_1(false, 17147i, 20960i, true, vec3<f32>(-636f, -1033f, 481f)), i32(-2147483648)), Struct_4(Struct_1(true, -1768i, 21643i, true, vec3<f32>(243f, -387f, -785f)), 17853i), Struct_4(Struct_1(true, -15335i, 0i, false, vec3<f32>(-701f, 161f, -1526f)), 4072i), Struct_4(Struct_1(false, i32(-2147483648), 0i, true, vec3<f32>(532f, 260f, 1000f)), -10176i), Struct_4(Struct_1(true, 229i, 57999i, false, vec3<f32>(857f, 2276f, 1544f)), 0i), Struct_4(Struct_1(false, 108408i, 38811i, true, vec3<f32>(-686f, -1000f, 163f)), 0i), Struct_4(Struct_1(false, -10472i, 1i, false, vec3<f32>(-1567f, 1000f, -1288f)), 2147483647i), Struct_4(Struct_1(true, 1i, 0i, false, vec3<f32>(-897f, -1264f, 989f)), -1i), Struct_4(Struct_1(false, -19434i, 2147483647i, true, vec3<f32>(1623f, -808f, 484f)), -57714i), Struct_4(Struct_1(false, -20418i, 1i, false, vec3<f32>(1000f, 291f, -300f)), 2147483647i));

var<private> global1: vec2<f32> = vec2<f32>(261f, -2472f);

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(min(161f, 935f));
    global1 = arg_0.d.c.e.yz;
    var var_1 = arg_0;
    let var_2 = 30739u;
    global0 = array<Struct_4, 31>();
    return _wgslsmith_f_op_vec3_f32(trunc(arg_0.e.e));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec2<i32>) -> bool {
    global0 = array<Struct_4, 31>();
    var var_0 = u_input.a;
    var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.e.yx)), arg_1.a.e.zx, all(select(!(!vec3<bool>(false, arg_1.a.a, true)), !(!vec3<bool>(arg_0, true, false)), !vec3<bool>(false, arg_0, arg_0)))));
    let var_2 = _wgslsmith_div_vec2_u32(global2.xz, ~vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.x, 4294967295u), vec3<u32>(global2.x, global2.x, global2.x)), 22870u));
    return false;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = arg_0.zy;
    let var_0 = Struct_3(_wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(~4294967295u << (~u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.x, 48426u), vec3<u32>(u_input.a, 4294967295u, 15656u) | vec3<u32>(global2.x, u_input.a, u_input.a)))), global2.xx, Struct_2(Struct_1(global1.x == -232f, reverseBits(_wgslsmith_sub_i32(0i, 6072i)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 14597i, -3127i, 1i), vec4<i32>(16193i, -1i, 0i, 1i)), firstTrailingBit(vec4<i32>(0i, 2147483647i, 0i, 0i))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, true)) - vec3<f32>(-1743f, 1000f, 626f))), _wgslsmith_f_op_f32(max(-224f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 223f))), Struct_1(all(vec4<bool>(true, true, false, true)), 0i, 1i >> (1u % 32u), true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1166f, global1.x, arg_0.x), vec3<f32>(global1.x, global1.x, arg_0.x), false))), Struct_1(true, _wgslsmith_sub_i32(1i, i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(min(vec3<i32>(6452i, 2147483647i, 34685i), vec3<i32>(65643i, 5553i, 35268i)), -vec3<i32>(0i, 1i, 2147483647i)), !any(vec3<bool>(false, false, true)), vec3<f32>(_wgslsmith_f_op_f32(-289f * 1124f), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))), Struct_2(Struct_1(func_3(true, global0[_wgslsmith_index_u32(u_input.a | u_input.a, 31u)], -vec2<i32>(7775i, -23148i)), _wgslsmith_mod_i32(-35967i, -1855i), 1i, !all(vec3<bool>(false, true, false)), arg_0), _wgslsmith_f_op_f32(-global1.x), Struct_1(true, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 12334i, -2147483647i), vec3<i32>(3472i, 1915i, -1i)), -vec3<i32>(1i, 14705i, -47062i)), ~(-1i) << (_wgslsmith_mult_u32(global2.x, u_input.a) % 32u), true, arg_0), Struct_1(any(vec4<bool>(false, false, false, true)), -_wgslsmith_clamp_i32(-2147483647i, -1i, 7813i), _wgslsmith_mult_i32(-19473i, select(-23693i, -1i, true)), !all(vec3<bool>(false, false, false)), _wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(362f, arg_0.x, 392f)))))), Struct_1(all(vec2<bool>(true, true)), -firstTrailingBit(firstTrailingBit(-1i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -34796i, 32266i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(-2147483647i, 0i, 2147483647i))), 1i >= _wgslsmith_dot_vec3_i32(vec3<i32>(1223i, -1i, -1i), -vec3<i32>(0i, 2147483647i, 0i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, global1.x, 1000f), arg_0))));
    var var_1 = var_0.e.e.xy;
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-40630i, -44161i), _wgslsmith_mult_vec2_i32(vec2<i32>(-4007i, -61044i), vec2<i32>(var_0.e.c, 1i))), min(-5905i, var_0.e.c)), -38948i);
    var_2 = -41297i;
    return var_0.e;
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_add_i32(16067i, arg_1.b), arg_1.a.b, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, arg_1.a.c), vec2<i32>(arg_1.a.c, arg_1.b)))) & _wgslsmith_add_i32(arg_1.a.c, _wgslsmith_dot_vec4_i32(vec4<i32>(36792i, 8099i, 1i, 3217i), max(vec4<i32>(arg_1.a.b, 0i, arg_1.a.c, -2147483647i), vec4<i32>(0i, arg_1.b, arg_1.b, arg_1.a.b)))), arg_1.a.c, ~(-arg_1.b), 0i);
    var var_1 = select(false, false, true);
    global2 = vec3<u32>(~0u << (global2.x % 32u), global2.x, ~0u);
    var var_2 = arg_1.a.e.x;
    var var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(~var_0.zx, -abs(-vec2<i32>(0i, var_0.x))), var_0.x, var_0.x);
    return Struct_2(arg_1.a, _wgslsmith_f_op_f32(-1f), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(175f, 1040f, global1.x)))))), Struct_1(true, ~(~(arg_1.b & -41814i)), i32(-1i) * -35735i, !all(select(vec4<bool>(arg_1.a.d, true, arg_1.a.a, arg_1.a.a), vec4<bool>(arg_1.a.a, arg_1.a.d, true, arg_1.a.a), arg_1.a.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_1.a.e + _wgslsmith_f_op_vec3_f32(select(arg_1.a.e, arg_1.a.e, vec3<bool>(arg_1.a.d, false, arg_1.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(173f, global1.x, -1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(22219u, Struct_4(func_2(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(1u, global2.yz, Struct_2(Struct_1(true, 14752i, 0i, false, vec3<f32>(1701f, 2557f, global1.x)), 1337f, Struct_1(false, -1i, 0i, false, vec3<f32>(global1.x, global1.x, global1.x)), Struct_1(false, -19977i, 1i, true, vec3<f32>(global1.x, global1.x, 193f))), Struct_2(Struct_1(true, 2317i, 0i, true, vec3<f32>(409f, global1.x, global1.x)), -1032f, Struct_1(false, 38998i, 2147483647i, true, vec3<f32>(272f, global1.x, global1.x)), Struct_1(true, -1i, 0i, true, vec3<f32>(global1.x, 1403f, 1410f))), Struct_1(true, -1835i, 31098i, false, vec3<f32>(-449f, global1.x, global1.x))), _wgslsmith_mult_u32(u_input.a, global2.x)))), 3385i));
    global0 = array<Struct_4, 31>();
    let var_1 = 285f;
    var var_2 = vec2<u32>(u_input.a, ~u_input.a);
    let var_3 = true;
    var var_4 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 4294967295u, global2.x), vec3<u32>(19282u, u_input.a, var_2.x)), vec3<u32>(var_2.x, 0u, var_2.x)), ~(64134u & global2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 57329u, u_input.a) & vec3<u32>(0u, 1u, var_2.x), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(8359u, u_input.a, u_input.a))), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 1u), 1u)), select(~(~vec4<u32>(global2.x, 0u, global2.x, global2.x)), min(vec4<u32>(global2.x, global2.x, var_2.x, 37963u), vec4<u32>(52982u, 9936u, global2.x, 24824u)), vec4<bool>(var_3, true, var_3, false))), ~(~(global2.yy | global2.xz)), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.c.e * vec3<f32>(global1.x, -313f, var_1)), func_4(122909u, Struct_4(Struct_1(true, -25622i, var_0.c.b, var_3, var_0.a.e), 10681i)).a.e, var_0.d.a))), 985f, Struct_1(any(!vec4<bool>(var_0.c.d, true, var_0.c.a, false)), var_0.a.c, 48284i & var_0.d.b, firstTrailingBit(global2.x) <= (u_input.a | u_input.a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-955f, var_0.c.e.x, var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, var_1, var_0.d.e.x) * var_0.c.e)))), func_2(_wgslsmith_f_op_vec3_f32(var_0.c.e - func_4(u_input.a, global0[_wgslsmith_index_u32(var_2.x, 31u)]).d.e))), func_4(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_2.x, 19358u)), vec2<u32>(33567u, var_2.x)), 2720u, abs(global2.x)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 31u)]), func_4(var_2.x, Struct_4(var_0.c, _wgslsmith_clamp_i32(var_0.d.b, var_0.a.c, ~49454i))).a);
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

