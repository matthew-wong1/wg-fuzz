struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1014f;

var<private> global1: array<bool, 31>;

var<private> global2: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(arg_0.b.e, arg_0.b.e));
    var var_1 = ~(~arg_0.b.b);
    let var_2 = ~(abs(arg_0.a) << (~arg_0.a % vec3<u32>(32u)));
    var var_3 = ~abs(arg_0.b.d.x);
    var_3 = ~19279i;
    return arg_0;
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(exp2(arg_2.a.b.e.x));
    global0 = _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-arg_2.e.e.x)));
    let var_0 = arg_2.e.b.xww;
    var var_1 = arg_2;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(ceil(var_1.e.c))), arg_2.e.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))) * -1000f))), -246f, 538f);
    return Struct_1(var_1.a.c, vec4<i32>(var_1.e.d.x, -57179i & _wgslsmith_dot_vec4_i32(-var_1.a.b.b, abs(var_1.a.b.b)), 35878i, -11661i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1008f)))), _wgslsmith_f_op_f32(-arg_2.e.e.x), true)))), var_1.e.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1948f) * _wgslsmith_f_op_f32(-441f - -207f)), 1000f, 280f, var_1.a.b.e.x));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_1(~countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), ~vec3<u32>(u_input.b.x, u_input.b.x, 11300u))), ~_wgslsmith_mult_vec4_i32(-select(vec4<i32>(2147483647i, 2147483647i, u_input.a, u_input.a), vec4<i32>(2147483647i, -19761i, -6201i, arg_0), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 31u)], false)), vec4<i32>(~(-33321i), -16494i, arg_0, 8643i)), -244f, vec4<i32>(u_input.a & arg_0, _wgslsmith_mod_i32(307i, i32(-1i) * -2147483647i), reverseBits(-1i), select(u_input.d, 1i, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]) ^ 1i) & ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, 42091i, 1017i), ~vec4<i32>(arg_0, 1i, arg_0, u_input.d), vec4<i32>(arg_0, arg_0, 1i, u_input.d) | vec4<i32>(arg_0, -21042i, -68525i, 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-553f, -544f, 1002f, -1663f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(289f, 1490f, -543f, 872f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2197f, 123f, -1245f, -811f) + vec4<f32>(485f, -888f, -1770f, -320f))))));
    var var_1 = -1343f;
    var var_2 = Struct_2(_wgslsmith_mult_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.b.x, 1u, u_input.c.x))), u_input.b), func_3(Struct_4(false), _wgslsmith_f_op_f32(-var_0.e.x), Struct_3(func_2(Struct_2(u_input.b, var_0, 0u, var_0.d.zw), ~u_input.c), -(~1i), -var_0.d.ww, vec2<i32>(abs(u_input.d), -var_0.d.x), func_2(Struct_2(u_input.b, Struct_1(u_input.c.x, vec4<i32>(0i, u_input.d, 0i, -16170i), 1000f, var_0.b, vec4<f32>(var_0.c, 245f, 1610f, -476f)), u_input.b.x, var_0.b.xw), u_input.b.yy).b)), 0u, firstTrailingBit(abs(~var_0.d.yx)));
    var_2 = func_2(Struct_2(reverseBits(vec3<u32>(var_0.a ^ u_input.c.x, var_0.a, 0u)), func_3(Struct_4(global1[_wgslsmith_index_u32(var_2.c, 31u)]), _wgslsmith_f_op_f32(-var_0.e.x), Struct_3(func_2(Struct_2(vec3<u32>(4294967295u, 1u, 51404u), Struct_1(u_input.c.x, vec4<i32>(var_0.b.x, u_input.a, 1i, var_0.d.x), -729f, vec4<i32>(0i, -26206i, -2147483647i, var_2.d.x), vec4<f32>(-393f, var_0.c, var_0.c, var_2.b.c)), var_2.a.x, var_2.d), var_2.a.zy), -22048i, var_2.b.b.yw, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, var_2.d.x), var_2.d, vec2<i32>(1i, -2922i)), Struct_1(var_0.a, var_2.b.b, -1740f, var_2.b.b, var_0.e))), var_2.b.a, vec2<i32>(firstLeadingBit(var_0.b.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, 5498i), u_input.d << (72507u % 32u)))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(~vec2<u32>(var_2.b.a, 20704u)), select(~var_2.a.yx, ~vec2<u32>(var_2.c, 1u), var_2.b.a <= var_0.a)), select(vec2<u32>(~var_2.a.x, reverseBits(var_0.a)), func_2(Struct_2(vec3<u32>(49789u, var_2.c, var_0.a), var_0, 1u, var_2.d), u_input.b.yy).a.zz, any(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.a, 31u)], false, global1[_wgslsmith_index_u32(var_0.a, 31u)])))));
    let var_3 = var_0;
    return !global1[_wgslsmith_index_u32(firstLeadingBit(var_2.c), 31u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_3(Struct_4(arg_1.x), func_2(Struct_2(vec3<u32>(0u, 20345u, 37412u), Struct_1(1u, vec4<i32>(-8635i, u_input.a, 50033i, u_input.a), arg_0.x, vec4<i32>(0i, -1i, -1i, 1i), arg_0), 4402u, vec2<i32>(u_input.a, -1i)), vec2<u32>(32817u, u_input.c.x)).b.e.x, Struct_3(Struct_2(vec3<u32>(u_input.c.x, 0u, 4294967295u), Struct_1(u_input.b.x, vec4<i32>(u_input.d, u_input.d, u_input.d, -22457i), arg_2.x, vec4<i32>(u_input.d, u_input.a, 0i, 1i), arg_0), 0u, vec2<i32>(u_input.d, u_input.a)), -7869i, vec2<i32>(17837i, 0i), vec2<i32>(-2147483647i, u_input.a), Struct_1(u_input.c.x, vec4<i32>(-25625i, 55807i, 2147483647i, -1i), -1000f, vec4<i32>(-1i, -2147483647i, u_input.e, 34017i), arg_0))).c))));
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    var var_0 = 30041u;
    let var_1 = u_input.b.x;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1857f) - _wgslsmith_f_op_f32(-777f * -354f)), 115f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - -596f))), _wgslsmith_f_op_f32(f32(-1f) * -475f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, -175f, 438f, -671f)))), vec4<bool>(func_1(reverseBits(u_input.d) | -34099i), !any(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(63016u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(35966u, 31u)], true, true), global1[_wgslsmith_index_u32(1u, 31u)])), select(true, true, global1[_wgslsmith_index_u32(~4294967295u, 31u)]), all(vec2<bool>(!global1[_wgslsmith_index_u32(u_input.c.x, 31u)], any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 31u)], true))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556f + 437f))), _wgslsmith_f_op_f32(f32(-1f) * -702f))));
    global2 = _wgslsmith_div_i32(-u_input.a, u_input.d);
    let var_0 = Struct_3(func_2(Struct_2(u_input.b, Struct_1(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.e, -2147483647i), vec4<i32>(-43197i, 2147483647i, -314i, -2147483647i)), -628f, -vec4<i32>(-1i, u_input.e, -25615i, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1253f, 854f, 224f, -310f))), firstTrailingBit(u_input.b.x), max(~vec2<i32>(u_input.d, -40724i), vec2<i32>(0i, 0i))), ~(~u_input.b.yx)), reverseBits(u_input.a), _wgslsmith_sub_vec2_i32(-vec2<i32>(-2147483647i, -65006i), vec2<i32>(_wgslsmith_mult_i32(abs(u_input.e), u_input.d), 16066i)), func_2(func_2(func_2(Struct_2(u_input.b, Struct_1(u_input.b.x, vec4<i32>(2147483647i, -1i, -8444i, u_input.d), -1216f, vec4<i32>(-17475i, 13635i, 44025i, u_input.e), vec4<f32>(-306f, 693f, -2647f, -1788f)), u_input.b.x, vec2<i32>(u_input.d, 19727i)), u_input.b.xy), firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x))), u_input.c).b.b.zz, func_3(Struct_4(false), 514f, Struct_3(func_2(func_2(Struct_2(u_input.b, Struct_1(u_input.c.x, vec4<i32>(u_input.a, 2147483647i, u_input.e, u_input.d), -1907f, vec4<i32>(80007i, -2147483647i, 0i, u_input.a), vec4<f32>(-771f, 768f, 1725f, 414f)), 0u, vec2<i32>(-1i, u_input.d)), vec2<u32>(u_input.c.x, 0u)), ~u_input.b.xz), u_input.a, vec2<i32>(1i, -u_input.d), vec2<i32>(u_input.e, u_input.d) << (u_input.b.yz % vec2<u32>(32u)), func_2(Struct_2(u_input.b, Struct_1(1u, vec4<i32>(u_input.e, u_input.a, u_input.d, u_input.a), -1528f, vec4<i32>(u_input.e, u_input.a, u_input.e, u_input.a), vec4<f32>(-1776f, -320f, -279f, -968f)), u_input.b.x, vec2<i32>(-52286i, u_input.a)), abs(vec2<u32>(10222u, 1u))).b)));
    let var_1 = true;
    global1 = array<bool, 31>();
    let var_2 = Struct_3(func_2(var_0.a, u_input.b.yx), var_0.c.x, ~var_0.e.b.xw, -(firstLeadingBit(~var_0.d) & max(vec2<i32>(var_0.d.x, 2147483647i), func_3(Struct_4(true), var_0.e.e.x, Struct_3(var_0.a, var_0.b, var_0.d, vec2<i32>(40058i, -2147483647i), Struct_1(var_0.a.c, vec4<i32>(0i, var_0.d.x, u_input.d, 2147483647i), -1000f, vec4<i32>(var_0.c.x, var_0.b, 1i, u_input.a), vec4<f32>(-2254f, 1186f, 659f, var_0.e.c)))).d.yx)), func_2(func_2(Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c.x, 11150u), u_input.b), var_0.e, reverseBits(var_0.a.c), -vec2<i32>(u_input.e, 2147483647i)), select(firstTrailingBit(vec2<u32>(0u, u_input.b.x)), _wgslsmith_sub_vec2_u32(var_0.a.a.zx, u_input.b.xz), var_1)), _wgslsmith_sub_vec2_u32(u_input.c, select(var_0.a.a.yy << (u_input.c % vec2<u32>(32u)), ~vec2<u32>(43400u, 4294967295u), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], true)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(758f, var_0.e.b.x);
}

