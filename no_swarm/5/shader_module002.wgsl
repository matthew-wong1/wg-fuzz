struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> vec4<bool> {
    let var_0 = arg_2;
    let var_1 = ~vec4<u32>(0u, 0u, arg_3 | reverseBits(arg_3), max(arg_2.b.b.x, 10155u));
    let var_2 = arg_2;
    var var_3 = arg_2.d.x;
    var var_4 = true;
    return var_2.d;
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: u32) -> vec4<i32> {
    var var_0 = vec3<u32>(abs(_wgslsmith_add_u32(select(arg_0.a.b.x, arg_2, true), 4294967295u)), arg_2, 64702u) << (~select(vec3<u32>(32759u, countOneBits(u_input.a), 2067u), arg_0.a.b.wyy, !func_1(arg_0.c, arg_0.d, Struct_2(1586f, arg_0.a, Struct_1(-79124i, arg_0.a.b, arg_0.a.d.x, arg_0.a.d, arg_0.d), vec4<bool>(false, arg_0.d, arg_0.a.e, true)), arg_2).zxz) % vec3<u32>(32u));
    var_0 = _wgslsmith_mult_vec3_u32(arg_0.a.b.wyw, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, arg_0.a.b.x | var_0.x, 4294967295u << (0u % 32u))), vec3<u32>(u_input.a, ~reverseBits(4294967295u), 4294967295u)));
    let var_1 = abs(-arg_1);
    var_0 = countOneBits(firstTrailingBit(~arg_0.a.b.xww >> (~countOneBits(vec3<u32>(arg_2, var_0.x, 0u)) % vec3<u32>(32u))));
    let var_2 = u_input.b;
    return vec4<i32>(var_2, var_1.x, -1i, -1i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(68624u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(38551u, 44575u, u_input.a), arg_0.a.b.zyx)), ~(var_0.x & arg_2), arg_2), min(arg_0.a.b, ~vec4<u32>(arg_2, 0u, var_0.x, 82360u))) % vec4<u32>(32u));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(34488i, u_input.b, firstTrailingBit(arg_0), u_input.b)), _wgslsmith_mult_vec4_i32(func_3(Struct_4(Struct_1(u_input.b, vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), 1000f, vec3<f32>(264f, -499f, -284f), true), min(30209u, u_input.a), true, true), countOneBits(reverseBits(vec2<i32>(2147483647i, 2147483647i))), abs(abs(24611u))), vec4<i32>(1i, firstTrailingBit(58146i), func_3(Struct_4(Struct_1(0i, vec4<u32>(4294967295u, 4294967295u, u_input.a, 14084u), -547f, vec3<f32>(-2075f, -431f, 889f), true), u_input.a, false, true), _wgslsmith_add_vec2_i32(vec2<i32>(31404i, 1i), vec2<i32>(0i, u_input.b)), 47402u).x, -41727i)));
    let var_1 = true && any(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), true));
    var_0 = -74209i;
    var_0 = -_wgslsmith_mod_i32(-countOneBits(-arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, 35850i) & vec4<i32>(10955i, -52436i, -41046i, 1i), abs(vec4<i32>(-1i, arg_0, arg_0, u_input.b))) | u_input.b);
    var_0 = arg_0;
    return 1182f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(-15630i))));
    var var_1 = arg_1.a;
    let var_2 = arg_2;
    return Struct_3(Struct_1(0i, _wgslsmith_mod_vec4_u32(~(vec4<u32>(var_1.b.x, 19614u, u_input.a, var_1.b.x) | arg_2.b.b), vec4<u32>(_wgslsmith_sub_u32(59715u, 0u), ~9967u, var_2.c.b.x, 1u)), var_1.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_2.c.d)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, var_2.a, 399f))))), true), true, Struct_1(_wgslsmith_add_i32(arg_2.c.a, arg_1.a.a), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.b.x, arg_2.c.b.x, 111356u, 1u) << (arg_2.b.b % vec4<u32>(32u)), vec4<u32>(260u, 4294967295u ^ arg_2.b.b.x, reverseBits(0u), 104133u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(sign(-355f))), arg_2.b.d, any(var_2.d.yx)), max(1u, ~(arg_1.b ^ 35832u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!(_wgslsmith_f_op_f32(ceil(-289f)) != _wgslsmith_f_op_f32(floor(-752f))), any(func_1(false, true, Struct_2(1387f, Struct_1(u_input.b, vec4<u32>(13133u, u_input.a, u_input.a, 4294967295u), 778f, vec3<f32>(1856f, -154f, -858f), true), Struct_1(u_input.b, vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), -745f, vec3<f32>(-890f, -299f, 193f), false), vec4<bool>(true, true, false, true)), abs(1u))), true);
    let var_1 = func_4(Struct_1(48654i, vec4<u32>(~u_input.a, 0u, countOneBits(_wgslsmith_mod_u32(0u, u_input.a)), 4294967295u), _wgslsmith_f_op_f32(func_2(u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), true && !(false || var_0.x)), Struct_4(Struct_1(u_input.b, vec4<u32>(~u_input.a, 1u, abs(u_input.a), u_input.a), -866f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1970f, -1000f, 1642f) + vec3<f32>(842f, -1351f, -245f)), _wgslsmith_div_vec3_f32(vec3<f32>(1375f, -585f, -746f), vec3<f32>(-1000f, -553f, -992f)))), var_0.x), u_input.a, !(~u_input.b < u_input.b), !select(select(var_0.x, var_0.x, false), var_0.x, false)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(978f - 576f))), Struct_1(_wgslsmith_div_i32(0i, -u_input.b), ~(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(4294967295u, 1u, u_input.a, u_input.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-474f, -543f))), vec3<f32>(_wgslsmith_f_op_f32(step(-2017f, 705f)), 1110f, _wgslsmith_f_op_f32(select(1331f, -1427f, false))), var_0.x), Struct_1(firstTrailingBit(~u_input.b), min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u) | vec4<u32>(7581u, 44739u, 3079u, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -335f), vec3<f32>(_wgslsmith_div_f32(756f, -1830f), _wgslsmith_div_f32(-1000f, 692f), _wgslsmith_f_op_f32(-988f * 1042f)), all(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false), false))), func_1(false, !var_0.x, Struct_2(1209f, Struct_1(3800i, vec4<u32>(4294967295u, u_input.a, 14134u, u_input.a), -340f, vec3<f32>(1995f, 381f, 855f), var_0.x), Struct_1(u_input.b, vec4<u32>(u_input.a, u_input.a, u_input.a, 51364u), 578f, vec3<f32>(1091f, -1127f, -703f), var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), firstLeadingBit(~u_input.a))));
    var_0 = vec3<bool>(min(2147483647i, u_input.b) < reverseBits(~(~u_input.b)), false, false);
    var var_2 = func_4(func_4(Struct_1(func_4(Struct_1(-1i, vec4<u32>(var_1.c.b.x, var_1.d, 1u, 1671u), 1942f, vec3<f32>(-225f, 1473f, 639f), var_1.b), Struct_4(Struct_1(u_input.b, vec4<u32>(0u, 4294967295u, var_1.d, 1u), -297f, vec3<f32>(var_1.a.d.x, 334f, var_1.a.c), true), var_1.d, var_0.x, false), Struct_2(1280f, Struct_1(var_1.a.a, var_1.a.b, 619f, vec3<f32>(-1000f, var_1.a.d.x, var_1.a.d.x), true), Struct_1(var_1.c.a, vec4<u32>(u_input.a, 4294967295u, u_input.a, var_1.d), var_1.c.c, vec3<f32>(1900f, var_1.a.c, var_1.c.c), var_0.x), vec4<bool>(var_0.x, true, var_1.a.e, var_1.b))).c.a ^ 1i, ~(~var_1.a.b), -806f, var_1.c.d, var_1.c.c > _wgslsmith_f_op_f32(-var_1.c.c)), Struct_4(var_1.c, var_1.c.b.x, func_4(func_4(var_1.c, Struct_4(Struct_1(var_1.a.a, var_1.c.b, var_1.c.c, vec3<f32>(630f, 172f, -851f), var_0.x), 0u, false, true), Struct_2(1232f, Struct_1(var_1.a.a, var_1.a.b, var_1.c.c, vec3<f32>(var_1.a.c, var_1.a.d.x, 958f), var_0.x), var_1.c, vec4<bool>(true, true, var_0.x, var_1.b))).c, Struct_4(var_1.a, var_1.a.b.x, var_0.x, true), Struct_2(1000f, Struct_1(2147483647i, vec4<u32>(var_1.d, u_input.a, 1073u, var_1.d), 406f, var_1.c.d, var_1.a.e), Struct_1(0i, var_1.c.b, var_1.c.c, vec3<f32>(1000f, 845f, var_1.a.d.x), var_1.a.e), vec4<bool>(var_1.a.e, true, false, false))).c.e, _wgslsmith_f_op_f32(var_1.c.d.x * var_1.c.c) < var_1.c.c), Struct_2(_wgslsmith_f_op_f32(-970f - var_1.a.c), Struct_1(i32(-1i) * -47579i, var_1.c.b, _wgslsmith_f_op_f32(-538f * var_1.c.c), vec3<f32>(556f, 1811f, var_1.a.d.x), false), func_4(Struct_1(var_1.c.a, vec4<u32>(10193u, var_1.a.b.x, u_input.a, var_1.a.b.x), var_1.a.d.x, var_1.a.d, true), Struct_4(var_1.a, var_1.c.b.x, true, var_0.x), Struct_2(var_1.c.d.x, Struct_1(2147483647i, var_1.c.b, var_1.c.c, vec3<f32>(-323f, var_1.a.d.x, 1217f), var_0.x), Struct_1(1i, var_1.a.b, var_1.a.c, vec3<f32>(var_1.c.c, var_1.c.d.x, 940f), true), vec4<bool>(var_0.x, var_0.x, true, false))).a, !vec4<bool>(var_0.x, true, var_0.x, true))).a, Struct_4(func_4(var_1.c, Struct_4(var_1.a, u_input.a, var_0.x, var_1.c.d.x < -248f), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1180f), Struct_1(var_1.a.a, var_1.a.b, 1277f, vec3<f32>(-723f, var_1.c.c, var_1.c.d.x), var_0.x), func_4(Struct_1(2147483647i, vec4<u32>(u_input.a, u_input.a, u_input.a, var_1.d), var_1.c.d.x, var_1.a.d, var_1.c.e), Struct_4(var_1.a, 16139u, var_1.c.e, var_1.b), Struct_2(781f, var_1.c, Struct_1(0i, vec4<u32>(u_input.a, u_input.a, 1u, var_1.c.b.x), var_1.c.d.x, vec3<f32>(-1506f, var_1.a.d.x, var_1.a.c), var_0.x), vec4<bool>(true, var_0.x, true, var_1.b))).c, !vec4<bool>(true, true, false, var_0.x))).a, min(firstTrailingBit(var_1.c.b.x) & var_1.c.b.x, ~13466u << (var_1.a.b.x % 32u)), func_4(var_1.c, Struct_4(Struct_1(var_1.c.a, var_1.c.b, var_1.c.c, vec3<f32>(716f, var_1.c.d.x, var_1.a.d.x), var_0.x), var_1.a.b.x, -1726i >= var_1.c.a, false), Struct_2(var_1.a.d.x, func_4(Struct_1(var_1.c.a, vec4<u32>(1u, var_1.c.b.x, var_1.d, 4294967295u), 1017f, vec3<f32>(1294f, 170f, var_1.a.c), var_1.c.e), Struct_4(Struct_1(u_input.b, var_1.a.b, var_1.a.c, var_1.c.d, true), u_input.a, true, false), Struct_2(var_1.a.c, var_1.a, Struct_1(var_1.c.a, var_1.c.b, var_1.c.d.x, vec3<f32>(-507f, var_1.a.c, var_1.c.d.x), true), vec4<bool>(var_0.x, var_0.x, false, true))).a, var_1.a, vec4<bool>(true, var_0.x, var_1.a.e, var_0.x))).b, all(select(vec4<bool>(false, false, var_1.a.e, true), vec4<bool>(var_1.c.e, false, var_1.a.e, var_1.a.e), !var_0.x))), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.c.d.x, _wgslsmith_f_op_f32(-1000f + var_1.c.c)))), Struct_1(21839i, select(var_1.a.b, vec4<u32>(var_1.c.b.x, 49280u, 0u, var_1.a.b.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1.a.c)))), var_1.c.d, true), Struct_1(_wgslsmith_mod_i32(1i, 1i), vec4<u32>(var_1.a.b.x ^ u_input.a, ~u_input.a, select(var_1.a.b.x, 22751u, var_1.a.e), ~34304u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1073f, var_1.c.c, 330f)), true), select(!vec4<bool>(var_1.b, true, false, true), !vec4<bool>(var_1.c.e, var_0.x, var_0.x, var_1.c.e), !select(vec4<bool>(true, var_1.c.e, var_1.a.e, var_0.x), vec4<bool>(var_1.c.e, true, var_0.x, var_0.x), true)))).c.e;
    let var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1456f))), 123f), _wgslsmith_f_op_vec2_f32(-var_1.c.d.yz)));
    var_2 = any(vec4<bool>(var_0.x, var_3.x != _wgslsmith_f_op_f32(var_1.c.c * var_3.x), true, any(select(vec3<bool>(true, var_1.b, false), func_1(var_1.b, var_1.c.e, Struct_2(-702f, var_1.c, Struct_1(0i, vec4<u32>(var_1.c.b.x, u_input.a, 11641u, var_1.a.b.x), 607f, var_1.a.d, true), vec4<bool>(var_1.a.e, true, var_1.c.e, var_0.x)), var_1.a.b.x).wzw, true))));
    let var_4 = !var_0.x;
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_mod_vec2_u32(~firstLeadingBit(func_4(Struct_1(0i, var_1.c.b, 399f, vec3<f32>(1044f, var_3.x, var_1.a.d.x), var_4), Struct_4(var_1.c, 3565u, var_4, true), Struct_2(var_1.a.d.x, Struct_1(var_1.a.a, var_1.c.b, var_1.a.d.x, vec3<f32>(var_3.x, var_1.a.d.x, var_3.x), var_1.c.e), Struct_1(var_1.c.a, var_1.c.b, var_1.a.d.x, var_1.c.d, var_4), vec4<bool>(var_4, var_1.b, var_4, var_0.x))).c.b.xw), _wgslsmith_mod_vec2_u32(~(~var_1.a.b.wz), var_1.c.b.xy)), select(23080i, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c * 346f)) <= _wgslsmith_f_op_f32(-417f - _wgslsmith_f_op_f32(select(var_1.a.d.x, -1432f, false)))), 1594f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.d.x, -110f, var_1.c.d.x, _wgslsmith_div_f32(var_1.c.c, -2412f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_1.c.d.x, var_1.a.d.x, var_3.x), vec4<f32>(var_1.c.d.x, -225f, -366f, -454f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-241f, var_1.c.c, var_1.a.c, -1441f), vec4<f32>(var_3.x, var_1.a.c, -2084f, 1000f)))))));
}

