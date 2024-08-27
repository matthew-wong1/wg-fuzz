struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    return all(vec2<bool>(true, true));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: i32, arg_3: vec4<bool>) -> Struct_3 {
    global0 = arg_1 <= arg_1;
    let var_0 = 1u;
    global0 = -1i != arg_2;
    global0 = arg_3.x;
    let var_1 = Struct_3(_wgslsmith_div_f32(-303f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * -674f), _wgslsmith_f_op_f32(-2136f - 1325f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-172f - 2406f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~u_input.d.xz, u_input.d.yx), ~(~(-7555i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-744f, 1000f)))));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(round(-532f)))), -3222f, arg_1, var_1.d);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = !arg_1;
    let var_1 = u_input.d;
    let var_2 = func_3(u_input.c, var_1.x, firstTrailingBit(-1i), vec4<bool>(false, true, (abs(var_1.x) >> (min(1u, 1u) % 32u)) >= var_1.x, func_2(vec3<bool>(true, true, true))));
    let var_3 = Struct_1(!(!select(vec2<bool>(false, true), select(vec2<bool>(true, arg_0), vec2<bool>(true, false), var_0), true)), _wgslsmith_div_vec4_i32(~vec4<i32>(func_3(u_input.b, 50711i, var_2.c, vec4<bool>(arg_2, false, true, var_0)).c, var_1.x, var_2.c, _wgslsmith_add_i32(var_2.c, var_2.c)), ~(vec4<i32>(-1i) * -vec4<i32>(3263i, var_2.c, u_input.d.x, var_1.x))), !(!(!vec3<bool>(arg_1, true, arg_1))), arg_2 | (arg_0 | arg_2));
    var var_4 = u_input.c.x > u_input.b.x;
    return 1u;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_5) -> bool {
    global0 = arg_1.a.a.x;
    global0 = false;
    global0 = select(all(select(vec2<bool>(arg_1.a.d, false), !arg_1.a.c.xx, any(!arg_1.a.c.xz))), !arg_2.a.c.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, u_input.d.x), max(1i, -61952i)), _wgslsmith_mod_i32(47721i, abs(-1i))) != _wgslsmith_clamp_i32(arg_0.a.x, -30926i, ~(-1i)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = Struct_2(countOneBits((vec4<u32>(64182u, 0u, 5031u, 102791u) >> (vec4<u32>(1u, 23649u, 4294967295u, arg_0.d) % vec4<u32>(32u))) >> (~vec4<u32>(arg_0.c.x, arg_0.d, 27283u, 1u) % vec4<u32>(32u))) << (vec4<u32>(~19971u, u_input.c.x, u_input.c.x, ~88452u) % vec4<u32>(32u)), arg_2.a, 4294967295u >> (countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, arg_0.e), vec3<u32>(4294967295u, 35565u, arg_0.c.x))) % 32u), !select(select(!arg_1.a.a, !arg_1.a.c.xx, select(arg_1.a.a, vec2<bool>(arg_1.a.c.x, arg_1.a.c.x), true)), vec2<bool>(arg_2.a.a.x, all(arg_1.a.c.zy)), (u_input.d.x <= -1i) || true), vec3<i32>(72096i, u_input.a << (~_wgslsmith_mult_u32(u_input.b.x, u_input.c.x) % 32u), countOneBits(firstTrailingBit(10777i))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, func_4(Struct_4(-(vec4<i32>(2147483647i, -6518i, u_input.a, -46847i) ^ vec4<i32>(2147483647i, 27855i, 63241i, -2147483647i)), u_input.a, u_input.b, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, 88074u), func_1(false, false, false)), max(43650u, _wgslsmith_mult_u32(u_input.b.x, 1u))), Struct_5(Struct_1(vec2<bool>(true, true), -vec4<i32>(-44278i, 2147483647i, -38333i, u_input.a), vec3<bool>(true, true, true), true)), Struct_5(Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), -vec4<i32>(-2147483647i, u_input.a, -954i, u_input.a), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), any(vec2<bool>(false, true))))), func_2(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))));
    global0 = !func_4(Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.a, 2147483647i, u_input.a), countOneBits(vec4<i32>(-30295i, u_input.d.x, 2147483647i, u_input.a))), abs(u_input.a), ~u_input.b << (firstLeadingBit(vec2<u32>(11383u, u_input.c.x)) % vec2<u32>(32u)), ~max(88974u, u_input.b.x), u_input.c.x), Struct_5(Struct_1(select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)), reverseBits(vec4<i32>(1i, -22277i, -7529i, 27511i)), !vec3<bool>(false, var_0, var_0), true)), Struct_5(Struct_1(vec2<bool>(false, var_0), vec4<i32>(u_input.a, -31218i, u_input.d.x, 1i), !vec3<bool>(var_0, var_0, var_0), u_input.d.x < u_input.a)));
    global0 = !(!var_0);
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(-1i, u_input.d.x, -1844i, 2147483647i)), firstTrailingBit(-vec4<i32>(u_input.d.x, 2147483647i, u_input.a, 1i))), select(52693i, u_input.d.x, all(vec4<bool>(var_0, var_0, false, var_0)) || var_0), firstLeadingBit(_wgslsmith_clamp_i32(u_input.d.x, abs(-7746i), u_input.d.x))) >> (abs(countOneBits(vec3<u32>(0u, 4294967295u, u_input.b.x) & vec3<u32>(u_input.b.x, 23706u, u_input.c.x)) ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) % vec3<u32>(32u));
    global0 = false;
    global0 = false;
    let var_2 = -(vec4<i32>((var_1.x & -16478i) ^ u_input.d.x, 2147483647i, _wgslsmith_add_i32(u_input.a, i32(-1i) * -14380i), ~(-1i)) ^ select(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.d.x), vec4<i32>(34741i, 9698i, var_1.x, -1i), vec4<i32>(11854i, u_input.a, u_input.a, 1i)), min(vec4<i32>(u_input.a, var_1.x, var_1.x, u_input.a), vec4<i32>(var_1.x, 31998i, 45188i, -5094i))), ~vec4<i32>(u_input.d.x, 49819i, -5998i, 1i), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(478f, 202f, var_0)), -2056f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1168f)), -1468f)) - 1000f), _wgslsmith_div_vec3_i32(~var_2.wyx, vec3<i32>(countOneBits(countOneBits(0i)), u_input.a, _wgslsmith_sub_i32(-1i, var_1.x) >> (~u_input.c.x % 32u))));
}

