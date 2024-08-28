struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 501f;

var<private> global1: array<i32, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = Struct_4(Struct_3(Struct_2(vec2<i32>(reverseBits(u_input.e.x), global1[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f)), Struct_1(1u, vec4<i32>(-66450i, -2147483647i, u_input.e.x, 32005i), all(vec4<bool>(arg_0.x, arg_0.x, false, true)))), Struct_1(23986u, ~vec4<i32>(u_input.e.x, global1[_wgslsmith_index_u32(u_input.c.x, 25u)], u_input.e.x, u_input.e.x), arg_0.x & arg_0.x), arg_0.x, Struct_1(u_input.b, vec4<i32>(u_input.e.x | 259i, _wgslsmith_dot_vec3_i32(u_input.e.xzw, vec3<i32>(-9232i, -1i, -2147483647i)), ~26703i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)])), true)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.b, 4294967295u, 1u), _wgslsmith_sub_vec3_u32(u_input.a.ywy, vec3<u32>(u_input.d, 4294967295u, u_input.c.x)), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x)), max(vec3<u32>(u_input.c.x, 103u, u_input.c.x), vec3<u32>(4294967295u, 0u, 1u) ^ vec3<u32>(44904u, 1u, u_input.d)), vec3<u32>(countOneBits(1366u), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 6421u))) << (vec3<u32>((4294967295u << (u_input.d % 32u)) ^ u_input.b, reverseBits(select(4294967295u, 51194u, arg_0.x)), 29136u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-174f, -1523f, 1767f), vec3<f32>(1132f, -310f, 975f)))))))));
    global1 = array<i32, 25>();
    var var_1 = var_0;
    global1 = array<i32, 25>();
    var var_2 = false;
    return firstTrailingBit(var_1.a.a.c.a) ^ _wgslsmith_dot_vec2_u32(var_0.b.zy, vec2<u32>(min(var_0.b.x, ~u_input.c.x), var_0.b.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(~u_input.e.zy << (~(~vec2<u32>(u_input.a.x, u_input.c.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-177f + -364f), -805f))), Struct_1(1u, u_input.e, false)), Struct_1(0u, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, 0i, u_input.e.x), firstTrailingBit(u_input.e), vec4<i32>(u_input.e.x, -1416i, 2147483647i, global1[_wgslsmith_index_u32(76719u, 25u)])), countOneBits(-vec4<i32>(-1i, u_input.e.x, -2147483647i, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-990f - 1576f) * -1000f) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(275f * -1214f), -1465f))), !((_wgslsmith_mod_u32(u_input.d, u_input.c.x) & func_3(vec2<bool>(false, false))) > countOneBits(~4294967295u)), Struct_1(u_input.d, firstLeadingBit(~(~u_input.e)), all(vec4<bool>(true, true, true, any(vec2<bool>(false, false))))));
    let var_1 = u_input.a.yw;
    global1 = array<i32, 25>();
    global1 = array<i32, 25>();
    var var_2 = func_3(!vec2<bool>(var_0.d.c, select(var_0.b.c & var_0.a.c.c, false, select(false, var_0.d.c, var_0.b.c))));
    return Struct_1(_wgslsmith_sub_u32(var_1.x, ~var_0.d.a), var_0.a.c.b >> (~(vec4<u32>(u_input.c.x, 0u, 31668u, 50675u) << (~vec4<u32>(1u, 15160u, var_0.a.c.a, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), var_0.c);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = Struct_5(~u_input.a.zx, arg_1.a.c.a);
    global1 = array<i32, 25>();
    return arg_1.a;
}

fn func_5(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_5 {
    let var_0 = func_4(firstLeadingBit(abs(0u)), Struct_3(arg_2, func_4(_wgslsmith_sub_u32(u_input.d, func_3(vec2<bool>(true, arg_2.c.c))), Struct_3(func_4(15557u, Struct_3(arg_2, Struct_1(0u, vec4<i32>(2147483647i, -3434i, arg_2.c.b.x, u_input.e.x), true), arg_2.c.c, Struct_1(4294967295u, arg_2.c.b, true))), func_2(), true, Struct_1(arg_1.x, vec4<i32>(-356i, -36026i, arg_2.a.x, global1[_wgslsmith_index_u32(u_input.b, 25u)]), true))).c, false, func_4(arg_2.c.a, Struct_3(Struct_2(vec2<i32>(u_input.e.x, -2147483647i), 785f, arg_2.c), func_4(u_input.a.x, Struct_3(arg_2, Struct_1(4294967295u, vec4<i32>(-45102i, u_input.e.x, u_input.e.x, -20743i), false), arg_2.c.c, arg_2.c)).c, !arg_2.c.c, func_4(62882u, Struct_3(arg_2, Struct_1(29447u, vec4<i32>(-2147483647i, u_input.e.x, u_input.e.x, -2147483647i), true), false, arg_2.c)).c)).c));
    var var_1 = Struct_3(var_0, func_2(), false, arg_2.c);
    let var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * _wgslsmith_f_op_f32(1000f + arg_2.b)), var_1.a.b) * vec2<f32>(var_0.b, arg_2.b)));
    return Struct_5(~firstTrailingBit(vec2<u32>(125597u, var_0.c.a)), 12157u);
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    var var_0 = arg_0.a.a;
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(var_0.c.a, 267u), arg_0.a.d.a);
    var var_2 = func_5(Struct_5(u_input.c, _wgslsmith_clamp_u32(5076u << (0u % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 31752u), var_1), ~u_input.b ^ reverseBits(var_0.c.a))), arg_0.b.zz, func_4(~(1u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, arg_0.b.x, 1u), u_input.a)), Struct_3(arg_0.a.a, Struct_1(~arg_0.a.a.c.a, vec4<i32>(18360i, u_input.e.x, var_0.c.b.x, -9953i), true), true, func_2())));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(Struct_2(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(37597u, 25u)], -2147483647i)), u_input.e.xw), _wgslsmith_f_op_f32(1215f + _wgslsmith_f_op_f32(floor(316f))), func_1(Struct_4(Struct_3(Struct_2(vec2<i32>(u_input.e.x, u_input.e.x), -337f, Struct_1(58u, vec4<i32>(-25857i, 32511i, u_input.e.x, u_input.e.x), false)), Struct_1(7718u, u_input.e, false), false, Struct_1(29275u, vec4<i32>(global1[_wgslsmith_index_u32(64201u, 25u)], u_input.e.x, -22725i, 2147483647i), false)), vec3<u32>(u_input.d, u_input.b, 60435u), vec3<f32>(-1556f, -1879f, 466f)))), func_1(Struct_4(Struct_3(Struct_2(vec2<i32>(u_input.e.x, -3131i), 524f, Struct_1(u_input.d, vec4<i32>(global1[_wgslsmith_index_u32(1u, 25u)], 0i, -12843i, 1i), true)), Struct_1(u_input.b, vec4<i32>(2147483647i, u_input.e.x, global1[_wgslsmith_index_u32(1u, 25u)], -26403i), true), true, Struct_1(u_input.c.x, vec4<i32>(36585i, -25930i, 1736i, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]), false)), countOneBits(u_input.a.ywx), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-436f, 1335f, 968f))))), all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false), true)), func_2()), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(u_input.a.wxz), u_input.a.zzy), ~(~vec3<u32>(u_input.d, u_input.d, u_input.b))) ^ vec3<u32>(~77392u, ~0u ^ _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(u_input.d, u_input.b)), ~1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-910f)), _wgslsmith_f_op_f32(f32(-1f) * -1483f), _wgslsmith_f_op_f32(-1086f - 992f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(121f, -456f, 916f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(283f * 730f), _wgslsmith_f_op_f32(round(-510f)), _wgslsmith_f_op_f32(f32(-1f) * -1252f)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-753f, _wgslsmith_f_op_f32(var_0.a.a.b * -1644f))) * -1094f);
    let var_1 = 987f;
    global1 = array<i32, 25>();
    global1 = array<i32, 25>();
    let var_2 = countOneBits(var_0.a.b.b.ywx) >> (vec3<u32>(u_input.d, ~(~33750u), ~13285u) % vec3<u32>(32u));
    global1 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, vec4<u32>(~(~24386u), _wgslsmith_add_u32(~u_input.b, 23170u), 1u, (32193u >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 4294967295u, 0u, 0u)) % 32u)) >> (_wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 30902u), var_0.b.xy)) % 32u)), min(firstLeadingBit(vec3<i32>(firstLeadingBit(-1i), -55382i, -33622i)), vec3<i32>(-31579i, 1i, _wgslsmith_div_i32(u_input.e.x, var_0.a.d.b.x) | -var_2.x)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, 0i), vec2<i32>(-2147483647i, -1i)), u_input.e.wz);
}

