struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_3,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = 1f;
    return ~(abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-15981i, 72619i, 5656i, 8022i), vec4<i32>(-27495i, 1i, 0i, 15533i), vec4<i32>(9947i, 1i, -20209i, 3976i)), vec4<i32>(-21994i, 2147483647i, 0i, -2962i) << (vec4<u32>(u_input.a.x, 1u, 22453u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(-12126i, 8926i, -1i, 0i))) | _wgslsmith_add_vec4_i32(-vec4<i32>(55i, 1i, 49072i, -1i), -vec4<i32>(1i, 1i, 1i, 1i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec4<bool> {
    global0 = array<Struct_5, 4>();
    let var_0 = vec2<i32>(-24871i << (_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, countOneBits(5134u))) % 32u), -2147483647i);
    let var_1 = abs(1i);
    let var_2 = Struct_4(Struct_3(Struct_1(vec3<f32>(-2143f, 555f, _wgslsmith_f_op_f32(f32(-1f) * -2279f)), vec2<u32>(~u_input.a.x, ~0u)), vec3<u32>(4294967295u, u_input.a.x & u_input.a.x, select(1u, countOneBits(13243u), true)), abs(_wgslsmith_div_i32(min(var_0.x, 1i), -51107i)), select(true, true, true), select(arg_1.x, ~26660i, all(vec3<bool>(false, true, false)) & true)), ~(-var_0), Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -767f), 2174f, _wgslsmith_f_op_f32(sign(-1292f))), u_input.a.yz), firstLeadingBit(vec3<u32>(abs(30333u), ~54326u, u_input.a.x)), 10195i, !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true)), 1i), select(vec3<i32>(var_1, ~(arg_1.x | var_1), -_wgslsmith_mult_i32(-8696i, -5832i)), arg_1.yxx, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), Struct_1(vec3<f32>(1f, 1f, 1f), vec2<u32>(4294967295u, ~u_input.a.x) << (u_input.a.zx % vec2<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.a.a.x, var_2.e.a.x, var_2.c.a.a.x, 362f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1457f, -245f, 974f, 847f)), vec4<bool>(true, all(vec3<bool>(var_2.c.d, true, var_2.a.d)), true, any(vec3<bool>(var_2.a.d, var_2.a.d, true))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.a.a.x, var_2.a.a.a.x, var_2.e.a.x, var_2.c.a.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a.a.a.x + _wgslsmith_f_op_f32(2784f * -1274f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1965f))), var_2.c.a.a.x, 635f)));
    return vec4<bool>(var_2.a.d, var_2.c.d, var_2.a.d, true);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<f32> {
    global0 = array<Struct_5, 4>();
    global0 = array<Struct_5, 4>();
    let var_0 = arg_0;
    let var_1 = Struct_3(Struct_1(var_0.a.zwx, vec2<u32>(~(u_input.a.x & 71725u), ~abs(1u))), min(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(3235u, var_0.b.b.x), var_0.b.b.x), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(var_0.b.b.x, var_0.b.b.x)), ~var_0.b.b.x), u_input.a), abs(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-var_0.c.x, var_0.c.x, var_0.c.x), 1i, arg_0.c.x)), arg_1.x, _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(-2147483647i, -11451i)));
    let var_2 = _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(~_wgslsmith_div_u32(4294967295u, arg_0.b.b.x), _wgslsmith_dot_vec3_u32(countOneBits(u_input.a), countOneBits(vec3<u32>(14126u, arg_0.b.b.x, 4294967295u)))) | (arg_0.b.b.x & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 51268u, 0u) << (vec4<u32>(var_0.b.b.x, var_0.b.b.x, 11365u, var_0.b.b.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.b.b.x, 1u, var_0.b.b.x), vec4<u32>(u_input.a.x, 4294967295u, var_1.a.b.x, 25728u)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) * _wgslsmith_f_op_vec4_f32(ceil(arg_0.a))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f)), -2484f))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1822f, -754f, var_0, var_0) * vec4<f32>(-1841f, -2425f, 298f, -1639f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-288f, -964f, var_0, var_0))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1312f, var_0, -2033f)), ~vec2<u32>(u_input.a.x, u_input.a.x)), -_wgslsmith_sub_vec3_i32(vec3<i32>(21215i, 34048i, -1i), vec3<i32>(-17357i, -1144i, 2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 379f, 730f) + vec4<f32>(var_0, 909f, var_0, 1000f)), vec4<f32>(var_0, -1201f, -2458f, -2174f))), func_4(min(vec2<u32>(0u, 1u), countOneBits(vec2<u32>(4294967295u, 21890u))), func_3()))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(317f)), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-var_0), 529f), vec2<u32>(u_input.a.x | u_input.a.x, 1u) & abs(u_input.a.zx >> (u_input.a.zx % vec2<u32>(32u)))), _wgslsmith_clamp_vec3_i32(countOneBits(firstLeadingBit(vec3<i32>(0i, 1i, 62675i))), vec3<i32>(_wgslsmith_div_i32(1i, -41566i), _wgslsmith_div_i32(-32644i, ~57084i), _wgslsmith_dot_vec4_i32(vec4<i32>(-5131i, -2147483647i, -1i, 8802i), vec4<i32>(49232i, 39471i, -2147483647i, 23110i))), vec3<i32>(~1i << (~u_input.a.x % 32u), -_wgslsmith_mod_i32(51755i, -1i), _wgslsmith_div_i32(-2147483647i, -53484i) << (~u_input.a.x % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-607f, var_0, var_0, -512f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -718f, var_0, var_0)), select(false, false, false))))));
    var var_2 = ~(~min((vec4<i32>(-2660i, 11253i, -13145i, var_1.c.x) ^ vec4<i32>(var_1.c.x, -1i, var_1.c.x, var_1.c.x)) << (abs(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(var_1.c.x, var_1.c.x), _wgslsmith_add_i32(1i, 6934i), i32(-1i) * -1762i, reverseBits(var_1.c.x))));
    let var_3 = ~var_2.yw;
    let var_4 = -1i;
    return !(1000f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.d.x + 156f))), var_0)));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2, arg_3: vec3<u32>) -> bool {
    let var_0 = arg_0.c.d;
    let var_1 = arg_2.d.x;
    let var_2 = arg_2;
    global0 = array<Struct_5, 4>();
    let var_3 = -282f;
    return any(vec4<bool>(var_0, true && all(!vec3<bool>(arg_0.a.d, var_0, arg_0.c.d)), !(var_0 || true) & func_2(), 1267f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(735f - var_1) - 468f)));
}

fn func_6(arg_0: u32, arg_1: vec4<bool>) -> vec3<i32> {
    global0 = array<Struct_5, 4>();
    global0 = array<Struct_5, 4>();
    return vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -1i, select(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -652i, ~(-1i)), 0i, false), 1i), 1i, -_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(-59172i, 1i)), vec2<i32>(firstLeadingBit(-47162i), _wgslsmith_clamp_i32(0i, 0i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(i32(-1i) * -1i, ~56500i) >> (u_input.a.x % 32u), -(~(~1i))), -firstLeadingBit(vec3<i32>(-1i, -53076i, -9924i)) | func_6(select(u_input.a.x, 4294967295u, true) ^ firstTrailingBit(0u), vec4<bool>(false, true, select(false, false, false), func_1(Struct_4(Struct_3(Struct_1(vec3<f32>(-234f, -2838f, -1978f), vec2<u32>(u_input.a.x, 1u)), u_input.a, 30272i, true, -1i), vec2<i32>(-2147483647i, -7152i), Struct_3(Struct_1(vec3<f32>(-551f, 1120f, 1000f), u_input.a.yz), u_input.a, 2147483647i, false, 0i), vec3<i32>(-2147483647i, 1i, -1i), Struct_1(vec3<f32>(-1347f, 900f, -444f), u_input.a.yy)), -1i, Struct_2(vec4<f32>(-1000f, -1941f, 1537f, 1000f), Struct_1(vec3<f32>(2041f, -1071f, 1000f), u_input.a.yz), vec3<i32>(-1i, 20930i, -24911i), vec4<f32>(839f, -2165f, -1000f, 1222f)), vec3<u32>(u_input.a.x, 0u, 57374u)))));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-2373f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1261f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(176f * 592f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1475f + -1127f)), _wgslsmith_f_op_f32(f32(-1f) * -2086f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1526f, -757f))))), ~vec2<u32>(_wgslsmith_sub_u32(8812u >> (u_input.a.x % 32u), 26758u | u_input.a.x), ~u_input.a.x));
    global0 = array<Struct_5, 4>();
    var var_2 = _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-283f + var_1.a.x) - _wgslsmith_f_op_f32(round(var_1.a.x))))))));
    var_2 = _wgslsmith_f_op_f32(floor(var_1.a.x));
    var var_3 = reverseBits(reverseBits(-_wgslsmith_mult_vec3_i32(abs(var_0), ~vec3<i32>(-1i, 1i, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, -var_0.xy);
}

