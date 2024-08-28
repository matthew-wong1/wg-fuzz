struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(75749u, vec3<i32>(33511i, 11731i, -51457i)), 22925i, vec2<i32>(0i, 9972i), Struct_1(31313u, vec3<i32>(1i, i32(-2147483648), 45934i))), Struct_3(Struct_1(0u, vec3<i32>(-44708i, -27002i, 2147483647i)), i32(-2147483648), vec2<i32>(-1i, 0i), Struct_1(0u, vec3<i32>(0i, -1i, 45663i))), Struct_3(Struct_1(4294967295u, vec3<i32>(1i, -14227i, 0i)), -20226i, vec2<i32>(-4206i, -18420i), Struct_1(0u, vec3<i32>(2678i, 39026i, 13981i))), Struct_3(Struct_1(69293u, vec3<i32>(-1i, 0i, -27212i)), 1i, vec2<i32>(40335i, 67847i), Struct_1(14123u, vec3<i32>(-8344i, 0i, i32(-2147483648)))), Struct_3(Struct_1(4294967295u, vec3<i32>(i32(-2147483648), -1i, -6500i)), -1i, vec2<i32>(1303i, 2147483647i), Struct_1(8936u, vec3<i32>(0i, -14021i, 28143i))), Struct_3(Struct_1(7949u, vec3<i32>(-25162i, 13341i, 0i)), i32(-2147483648), vec2<i32>(-1i, 55379i), Struct_1(0u, vec3<i32>(70406i, 2147483647i, 9141i))), Struct_3(Struct_1(1u, vec3<i32>(33077i, -33027i, -1i)), -1i, vec2<i32>(i32(-2147483648), -11868i), Struct_1(9492u, vec3<i32>(-1i, i32(-2147483648), 4591i))), Struct_3(Struct_1(23914u, vec3<i32>(2147483647i, 2147483647i, -7355i)), -1i, vec2<i32>(1i, 28319i), Struct_1(22920u, vec3<i32>(-1i, 71312i, 0i))));

var<private> global2: u32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec2<i32> {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.e, arg_0.b.d, arg_0.b.d, arg_0.b.e) * vec4<f32>(arg_0.b.d, arg_0.b.d, arg_0.b.d, 1000f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b.d, arg_0.b.e, arg_0.b.d, 1158f), vec4<f32>(1062f, arg_0.b.e, arg_0.b.d, arg_0.b.e))))))));
    var var_2 = Struct_3(Struct_1(10770u, -(vec3<i32>(u_input.c, 42607i, -2147483647i) & vec3<i32>(20540i, u_input.c, -20205i)) | firstTrailingBit(~vec3<i32>(u_input.a.x, -44008i, u_input.c))), -12751i, ~_wgslsmith_mult_vec2_i32(u_input.a, reverseBits(countOneBits(vec2<i32>(-4926i, -1i)))), Struct_1(_wgslsmith_dot_vec2_u32(~(vec2<u32>(28069u, 4294967295u) >> (arg_0.b.b.wx % vec2<u32>(32u))), ~vec2<u32>(36682u, arg_1)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-20921i, 24801i, u_input.a.x), vec3<i32>(-65337i, u_input.a.x, u_input.c)))));
    let var_3 = Struct_4(true, Struct_2(arg_0.b.a, ~(~countOneBits(arg_0.b.a)), vec4<u32>(max(var_2.d.a, _wgslsmith_sub_u32(u_input.b, 15995u)), ~(~var_2.a.a), _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.b.b.x, u_input.b), _wgslsmith_div_u32(4294967295u, 4294967295u)), ~(~22207u)), -1172f, var_1.x));
    global2 = 4294967295u;
    return vec2<i32>(max(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, -2147483647i, -10530i, -11862i), vec4<i32>(2147483647i, u_input.c, var_2.a.b.x, var_2.a.b.x))), abs(-2147483647i), u_input.a.x & -5978i), 38005i), u_input.c);
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = u_input.b;
    var var_1 = Struct_3(Struct_1(~_wgslsmith_add_u32(0u, arg_0.a.x), _wgslsmith_mod_vec3_i32(firstTrailingBit(firstTrailingBit(vec3<i32>(u_input.c, u_input.a.x, u_input.c))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -51004i, u_input.a.x) << (vec3<u32>(arg_0.c.x, 1u, u_input.b) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)))), -u_input.c, ~_wgslsmith_clamp_vec2_i32(~u_input.a, -vec2<i32>(-53785i, 2147483647i), func_3(Struct_4(true, global0[_wgslsmith_index_u32(19144u, 10u)]), ~4294967295u)), Struct_1(_wgslsmith_add_u32(u_input.b, ~1u), vec3<i32>(u_input.a.x, -47779i, 1i)));
    let var_2 = Struct_2(arg_0.b << (~min(min(arg_0.b, arg_0.b), vec4<u32>(var_1.d.a, 4294967295u, 0u, 49516u) | arg_0.c) % vec4<u32>(32u)), ~arg_0.a, firstLeadingBit(~arg_0.c), arg_0.e, _wgslsmith_f_op_f32(174f * _wgslsmith_f_op_f32(-arg_0.d)));
    var var_3 = select(_wgslsmith_mod_vec2_u32(select(vec2<u32>(82729u, u_input.b), arg_0.c.xw, vec2<bool>(true, true)), arg_0.c.zz), ~vec2<u32>(15725u, ~50384u), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))) | select(~(~var_2.a.yw) << (~(~vec2<u32>(var_1.d.a, u_input.b)) % vec2<u32>(32u)), ~(arg_0.c.xw & ~var_2.c.wz), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_4 = select(vec3<bool>(u_input.a.x <= -1i, true, true), select(vec3<bool>(false, true, -1i != (1i | var_1.d.b.x)), vec3<bool>(true, select(true, true, false), true), vec3<bool>(true, true, true)), select(!vec3<bool>(false, true, arg_0.e >= var_2.e), select(vec3<bool>(arg_0.e >= arg_0.d, false, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), true), false));
    return u_input.a.x;
}

fn func_1() -> vec4<u32> {
    global2 = 0u;
    global0 = array<Struct_2, 10>();
    global1 = array<Struct_3, 8>();
    var var_0 = reverseBits(vec4<i32>(abs(max(reverseBits(-30747i), ~(-13671i))), u_input.a.x, ~reverseBits(_wgslsmith_div_i32(u_input.a.x, 1i)), u_input.a.x));
    let var_1 = !((select(func_2(global0[_wgslsmith_index_u32(u_input.b, 10u)]), u_input.c, any(vec2<bool>(false, true))) == ((u_input.c & u_input.c) >> (76262u % 32u))) == select(true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    return vec4<u32>(countOneBits(1u), ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b, 1u, 28959u)), vec3<u32>(63741u, u_input.b & u_input.b, ~u_input.b)), select(~46790u, firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 51625u, u_input.b), 0u, 34750u)), true), firstTrailingBit(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2122f;
    var var_1 = Struct_2(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 55014u, 48673u, u_input.b), max(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) & vec4<u32>(1u, u_input.b, u_input.b, 4294967295u), max(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 66148u, 0u)))), ~select(min(abs(vec4<u32>(4294967295u, u_input.b, 0u, 47949u)), countOneBits(vec4<u32>(4294967295u, 39184u, u_input.b, 50019u))), vec4<u32>(43067u, u_input.b, u_input.b, u_input.b), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, all(vec3<bool>(false, true, false)))), _wgslsmith_add_vec4_u32(func_1(), ~firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 8870u, u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(var_0, -973f, true)));
    var var_2 = any(select(!vec4<bool>(u_input.a.x < u_input.a.x, true, true, var_1.d > 453f), vec4<bool>(true, _wgslsmith_mult_u32(var_1.b.x, 59668u) == ~1u, (i32(-1i) * -47233i) == (u_input.c | 0i), 6108u >= reverseBits(u_input.b)), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false))));
    global1 = array<Struct_3, 8>();
    let var_3 = 741f;
    let var_4 = Struct_5(Struct_4(all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(u_input.b, 10u)]), Struct_2(vec4<u32>(u_input.b, 103882u, var_1.b.x, _wgslsmith_add_u32(var_1.c.x & 23632u, u_input.b)), min(~(~var_1.c), vec4<u32>(firstLeadingBit(u_input.b), countOneBits(u_input.b), ~var_1.b.x, 59240u)), abs(min(~var_1.a, vec4<u32>(0u, 4294967295u, var_1.b.x, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.e)) * -824f), var_1.e), Struct_1(~(~(~var_1.c.x)), vec3<i32>(_wgslsmith_div_i32(2147483647i, ~u_input.c), u_input.c, -(~(-49830i)))), Struct_1(40651u, max(vec3<i32>(u_input.c & u_input.c, countOneBits(-32635i), _wgslsmith_mod_i32(2147483647i, u_input.c)), -vec3<i32>(u_input.c, u_input.c, -20735i))), vec4<i32>(-_wgslsmith_mult_i32(2147483647i, u_input.a.x), u_input.a.x, countOneBits(u_input.a.x), u_input.c));
    var_2 = var_4.a.a;
    let var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.b.d, firstLeadingBit((_wgslsmith_mod_i32(u_input.a.x, var_5) & -8767i) >> (~0u % 32u)), vec4<u32>(1u, 0u, 4294967295u, _wgslsmith_dot_vec3_u32(var_1.b.zxy, ~var_1.c.wyx ^ _wgslsmith_div_vec3_u32(var_4.a.b.c.xxz, vec3<u32>(var_1.b.x, 0u, 49011u)))));
}

