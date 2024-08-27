struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = arg_3.d.x;
    var var_1 = Struct_4(arg_2.b, arg_3.d.yw, vec4<bool>(!arg_3.b.a.x, ~_wgslsmith_add_u32(arg_0, arg_2.b.b.d) == arg_1, !(arg_3.b.a.x == (arg_2.b.c.x <= arg_2.b.c.x)), arg_2.b.b.a.x));
    var_1 = Struct_4(var_1.a, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -187f), arg_3.d.yy)), select(!vec4<bool>(true, arg_3.b.c || var_1.c.x, arg_3.b.a.x == true, arg_2.b.b.e.x >= var_1.b.x), vec4<bool>(true, 1412f <= _wgslsmith_f_op_f32(-arg_2.b.d.x), all(select(var_1.c.yzw, var_1.c.zxz, true)), true), false));
    var var_2 = -11009i << (~4294967295u % 32u);
    var var_3 = var_1.a.d.xxz;
    return ~vec4<i32>(firstLeadingBit(arg_2.a.x | arg_2.a.x), arg_2.a.x, arg_3.c.x, ~_wgslsmith_add_i32(2147483647i, arg_3.c.x));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = false;
    let var_1 = Struct_3(vec2<i32>(_wgslsmith_add_i32(-4313i ^ _wgslsmith_clamp_i32(55085i, -2147483647i, arg_1.c.x), arg_1.c.x), abs(-arg_1.c.x)), Struct_2(1u, arg_1.b, _wgslsmith_mod_vec3_i32(abs(arg_1.c), -abs(arg_1.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.d - arg_1.d) + _wgslsmith_div_vec4_f32(arg_1.d, vec4<f32>(arg_1.b.e.x, arg_1.d.x, 263f, 1196f))))));
    let var_2 = Struct_4(Struct_2(u_input.a, var_1.b.b, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, arg_1.c.x, 37380i), vec4<i32>(var_1.b.c.x, var_1.b.c.x, arg_1.c.x, var_1.b.c.x)), -2802i, var_1.a.x), _wgslsmith_f_op_vec4_f32(var_1.b.d - vec4<f32>(_wgslsmith_div_f32(var_1.b.d.x, -1000f), _wgslsmith_div_f32(arg_1.d.x, 135f), _wgslsmith_f_op_f32(-var_1.b.d.x), _wgslsmith_f_op_f32(627f * -1196f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.e.x)), -1966f)), vec4<bool>(!arg_0.x, true, arg_1.b.a.x, true));
    var var_3 = vec2<i32>(abs(47128i), var_2.a.c.x);
    var_3 = ~min(var_2.a.c.yz, arg_1.c.yx);
    return arg_0.zy;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = select(vec4<i32>(_wgslsmith_mod_i32(abs(-69616i) & (-25695i << (u_input.a % 32u)), abs(2147483647i)), -(_wgslsmith_add_i32(-14205i, 2147483647i) << (~arg_0 % 32u)), -(~(~(-2147483647i))), -(~1i)), reverseBits(_wgslsmith_mult_vec4_i32(func_2(arg_0, u_input.a, Struct_3(vec2<i32>(-34877i, 38599i), Struct_2(arg_0, Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, u_input.a, arg_0), false, arg_0, vec2<f32>(503f, -1493f)), vec3<i32>(-1i, -31469i, -1i), vec4<f32>(-299f, -219f, 336f, -767f))), Struct_2(0u, Struct_1(vec2<bool>(true, false), vec4<u32>(arg_0, 42693u, u_input.a, u_input.a), true, 844u, vec2<f32>(-2284f, -248f)), vec3<i32>(30527i, -14108i, -2147483647i), vec4<f32>(-341f, -192f, -1727f, -2499f))) << (vec4<u32>(23996u, u_input.a, u_input.a, 0u) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -1i, -1i, _wgslsmith_mod_i32(-8502i, 1i), -14385i))), all(vec4<bool>(!(arg_0 != arg_0), true, false, true)));
    global0 = any(select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(arg_0 == 59680u, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), func_3(vec3<bool>(true, false, true), Struct_2(u_input.a, Struct_1(vec2<bool>(false, false), vec4<u32>(u_input.a, 1u, 0u, 93672u), false, arg_0, vec2<f32>(-1255f, -984f)), vec3<i32>(-30170i, 22286i, 2147483647i), vec4<f32>(522f, 1462f, 1245f, 144f)), vec4<bool>(true, true, true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)))));
    global0 = select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-952f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1644f, 1634f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1303f))), !(!(!any(vec2<bool>(false, false)))), true);
    global0 = !(!(_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(var_0.x, -2147483647i, -46425i, -2147483647i)) < 7567i) | select(_wgslsmith_mod_u32(arg_0, arg_0) == ~arg_0, true, true));
    global0 = true;
    return 60978i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(1i ^ func_1(15880u), 1i, reverseBits((i32(-1i) * -29410i) >> (u_input.a % 32u)));
    var var_1 = _wgslsmith_dot_vec4_u32((~(~vec4<u32>(33632u, 23527u, u_input.a, 21560u)) >> (vec4<u32>(~u_input.a, _wgslsmith_mod_u32(16978u, 35654u), firstTrailingBit(28750u), 10574u) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(34028u, u_input.a, u_input.a, 0u), vec4<u32>(abs(1u), 0u, u_input.a, abs(u_input.a))), ~countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 1u), vec4<u32>(u_input.a, u_input.a, 0u, 35037u)), ~vec4<u32>(0u, 29925u, 27296u, u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-939f + 974f)) * 167f) * _wgslsmith_f_op_f32(sign(-774f))) + -127f);
    var_2 = _wgslsmith_f_op_f32(floor(-1027f));
    let var_3 = vec2<bool>(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(-1i >> (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u)), var_0.xz, -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, i32(-1i) * -2147483647i, ~(-15909i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 30135i, var_0.x) & vec3<i32>(74661i, var_0.x, var_0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(var_0.x, var_0.x, -19427i), vec3<i32>(0i, var_0.x, var_0.x)))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(select(~vec4<i32>(var_0.x, var_0.x, var_0.x, 28523i), ~vec4<i32>(85199i, var_0.x, var_0.x, var_0.x), vec4<bool>(var_3.x, var_3.x, false, var_3.x)), vec4<i32>(~2147483647i, _wgslsmith_mult_i32(var_0.x, var_0.x), var_0.x, var_0.x), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(1i, 15944i)), var_0.x, 36314i ^ var_0.x, _wgslsmith_mod_i32(var_0.x, var_0.x))), vec4<i32>(23383i, ~3257i, ~1i, ~var_0.x)), _wgslsmith_add_u32(select(u_input.a, 14275u, true), reverseBits(1u)));
}

