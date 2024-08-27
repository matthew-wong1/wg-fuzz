struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false));

var<private> global1: vec4<i32> = vec4<i32>(-1i, -28297i, 66134i, -53437i);

var<private> global2: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(-59505i, 55338i), vec2<i32>(-1i, 14149i), vec2<i32>(1i, 0i), vec2<i32>(11699i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, 47818i), vec2<i32>(0i, -11054i), vec2<i32>(-26903i, 18077i), vec2<i32>(i32(-2147483648), 19089i), vec2<i32>(-10005i, 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(1i, 19852i), vec2<i32>(2147483647i, -1i), vec2<i32>(17481i, 5019i), vec2<i32>(-43121i, -35702i), vec2<i32>(0i, 36185i), vec2<i32>(2147483647i, 21631i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, 12051i), vec2<i32>(20406i, 44881i), vec2<i32>(4989i, 6011i), vec2<i32>(-18429i, 1i));

var<private> global3: Struct_5 = Struct_5(Struct_3(false, vec3<i32>(1i, 2147483647i, -1i), -119f, Struct_1(46962u, 1i, vec4<bool>(true, true, false, false))), 0i, 427f, Struct_2(true, vec3<bool>(true, true, false), false));

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<u32> {
    global1 = _wgslsmith_add_vec4_i32(-vec4<i32>(~countOneBits(u_input.a), 2147483647i, 12326i, reverseBits(_wgslsmith_div_i32(u_input.a, -2147483647i))), -vec4<i32>(0i, global1.x, firstTrailingBit(u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), global3.a.b.zz)) | _wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.b.x, global1.x, 8447i, 2147483647i) | vec4<i32>(global3.a.d.b, -2147483647i, 2147483647i, 34491i), ~vec4<i32>(-29743i, global3.b, u_input.a, 26889i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.a, -2147483647i), ~vec4<i32>(8160i, u_input.d, 37728i, -7845i)), abs(vec4<i32>(u_input.a, u_input.a, -9070i, u_input.a) | vec4<i32>(global3.b, -43723i, global3.a.d.b, 1i))));
    return u_input.c.xw;
}

fn func_2() -> Struct_1 {
    let var_0 = ~func_3();
    var var_1 = Struct_4(global3.a.d.c.yyw, global3.a, _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(global3.a.d.b, 2147483647i) | _wgslsmith_div_i32(global1.x, -75337i), ~abs(global1.x)), 22483i, _wgslsmith_mod_i32(_wgslsmith_div_i32(~global3.a.b.x, abs(-9331i)), -15292i)), Struct_2(select(global3.a.a, all(!global3.a.d.c.yz), select(35147i, -5386i, global3.a.a) < u_input.d), vec3<bool>(!(global3.d.c & global3.d.b.x), true, false), global3.d.a), global3.a.d);
    let var_2 = Struct_5(Struct_3(false, firstTrailingBit(vec3<i32>(reverseBits(global3.b), _wgslsmith_mult_i32(7679i, u_input.b.x), global1.x)), 1409f, global3.a.d), ~firstTrailingBit(abs(countOneBits(1i))), global3.a.c, Struct_2(-39040i < var_1.c, var_1.e.c.zzz, global3.a.a));
    let var_3 = _wgslsmith_mod_vec2_u32(~u_input.c.wy & ~var_0, vec2<u32>(~(~_wgslsmith_clamp_u32(12069u, u_input.c.x, 46806u)), max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_1.b.d.a), vec2<u32>(60012u, 32448u)), var_1.b.d.a)));
    global0 = array<vec4<bool>, 31>();
    return Struct_1(56521u, 8636i, select(var_1.b.d.c, !var_1.e.c, global3.a.d.c.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> Struct_5 {
    var var_0 = Struct_3(global3.a.d.c.x, firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(-global3.c), func_2());
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(1i, max(-93343i, _wgslsmith_sub_i32(2147483647i, abs(arg_1)))), vec2<i32>(u_input.d ^ func_2().b, ~(-1i)));
    global1 = vec4<i32>(~global1.x >> (var_0.d.a % 32u), arg_1, 0i, ~global1.x);
    let var_2 = Struct_5(global3.a, var_1.x, arg_0.x, Struct_2(true, !vec3<bool>(global3.d.a, true, any(var_0.d.c)), true));
    global4 = var_0.b.x;
    return Struct_5(Struct_3(true, abs(~_wgslsmith_clamp_vec3_i32(global1.xxy, global3.a.b, var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(373f)), -1667f), func_2()), var_1.x, arg_0.x, global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(floor(global3.c)), 1f, _wgslsmith_f_op_f32(-1000f * global3.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.c, -472f, global3.c, 197f)))), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c << ((max(countOneBits(vec4<u32>(0u, 4294967295u, 38935u, 0u)), u_input.c) ^ _wgslsmith_mod_vec4_u32(min(u_input.c, vec4<u32>(7937u, 78743u, global3.a.d.a, 0u)), ~vec4<u32>(1u, 43942u, var_0.a.d.a, 0u))) % vec4<u32>(32u)), func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.c - 642f), 403f, -194f, _wgslsmith_f_op_f32(-global3.c)))), global1.x).b, _wgslsmith_mod_i32(u_input.d, 1i), -7351i, ~46345u);
}

