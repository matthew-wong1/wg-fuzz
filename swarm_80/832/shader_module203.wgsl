struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~vec2<u32>(~3334u, reverseBits(1u)), select(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), select(true, true, true)), !vec4<bool>(true, true, true, any(vec3<bool>(false, false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, false, true)), all(vec3<bool>(false, false, true)), true), vec4<bool>(true, true, true, true))), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, true)))), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), -(countOneBits(countOneBits(vec4<i32>(43192i, u_input.a, u_input.a, u_input.a))) | ~_wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, 32908i, -10377i), vec4<i32>(u_input.a, -24566i, -1i, -29147i))), firstTrailingBit(~(-(~vec4<i32>(53771i, -22431i, -28009i, -9250i)))));
    var var_1 = Struct_2(Struct_1(~((vec2<u32>(15329u, 24182u) & var_0.a) | (vec2<u32>(61303u, var_0.a.x) >> (vec2<u32>(var_0.a.x, var_0.a.x) % vec2<u32>(32u)))), select(select(!var_0.b, vec4<bool>(var_0.c.x, false, var_0.b.x, true), var_0.e.x > var_0.e.x), select(vec4<bool>(true, false, false, var_0.c.x), var_0.b, select(var_0.b, vec4<bool>(false, var_0.b.x, var_0.b.x, true), var_0.c.x)), any(select(var_0.c.xz, vec2<bool>(var_0.b.x, var_0.c.x), var_0.b.xz))), var_0.c, ~_wgslsmith_add_vec4_i32(var_0.d, select(var_0.e, vec4<i32>(2147483647i, -28047i, u_input.a, 2147483647i), vec4<bool>(true, false, false, false))), var_0.d), vec2<u32>(1u, ~var_0.a.x), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-var_0.e, var_0.d), reverseBits(var_0.e)), var_0.a.x, Struct_1(var_0.a, vec4<bool>(all(select(var_0.b.yx, var_0.b.xy, vec2<bool>(var_0.c.x, false))), true, any(!var_0.b.yz), var_0.c.x), vec3<bool>(select(!var_0.c.x, true, all(vec3<bool>(false, true, var_0.c.x))), all(var_0.b.yyz), true), ~min(vec4<i32>(u_input.a, -2828i, 9550i, var_0.e.x), abs(vec4<i32>(1i, var_0.d.x, 10308i, 0i))), abs(_wgslsmith_mult_vec4_i32(var_0.d, var_0.d))));
    let var_2 = var_1.e;
    var_1 = Struct_2(var_1.e, firstLeadingBit(var_0.a), -(~var_0.e), 0u, var_1.e);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1384f), -229f, _wgslsmith_f_op_f32(f32(-1f) * -1276f), _wgslsmith_f_op_f32(sign(797f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-607f, -1520f, -418f, -659f), vec4<f32>(-1115f, -504f, 707f, 1863f)) - vec4<f32>(634f, 909f, -101f, 787f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1256f, 375f, -1299f, -1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(361f, -509f, -145f, 825f), vec4<f32>(451f, 597f, -593f, -2460f))))));
    return ~7353u | countOneBits(var_2.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(~(~(vec4<u32>(arg_1.d, arg_1.e.a.x, 83019u, 31660u) ^ vec4<u32>(arg_1.b.x, arg_1.d, 14252u, 1u))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(22730u, 4294967295u, 53110u, 6976u)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(26842u, 5502u, 0u, 35827u) ^ vec4<u32>(arg_1.a.a.x, 20296u, 0u, 0u), ~vec4<u32>(arg_1.a.a.x, arg_2.a.x, 1u, arg_1.d), vec4<bool>(true, true, true, true)), ~vec4<u32>(13950u, arg_2.a.x, arg_2.a.x, arg_2.a.x) << (select(vec4<u32>(21935u, arg_2.a.x, 77135u, arg_1.b.x), vec4<u32>(arg_1.a.a.x, 65399u, arg_1.d, 0u), false) % vec4<u32>(32u))), ~(~vec4<u32>(arg_1.d, 1u, 4294967295u, 4294967295u))));
    var_0 = ~vec4<u32>(countOneBits(func_3()), 57656u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1.e.a.x, _wgslsmith_mult_u32(4294967295u, 1u)), 4294967295u), _wgslsmith_div_u32(func_3(), max(firstTrailingBit(arg_2.a.x), reverseBits(29934u))));
    var_0 = vec4<u32>(~arg_2.a.x, arg_2.a.x, _wgslsmith_mult_u32(firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(~0u, 1u, 8068u) >> ((var_0.x | 0u) % 32u)), _wgslsmith_div_u32(~_wgslsmith_sub_u32(arg_1.a.a.x, abs(21895u)), min(~countOneBits(79730u), ~1u)));
    let var_1 = arg_1.e;
    var var_2 = false;
    return Struct_1(arg_1.b, arg_1.e.b, select(select(vec3<bool>(true, var_1.c.x, true), vec3<bool>(any(vec4<bool>(var_1.b.x, var_1.c.x, arg_2.c.x, false)), false, true || arg_1.e.b.x), arg_1.a.b.zww), select(select(vec3<bool>(true, false, true), arg_2.c, select(arg_1.a.c, vec3<bool>(var_1.b.x, var_1.b.x, false), vec3<bool>(false, var_1.b.x, false))), !select(vec3<bool>(arg_1.a.b.x, arg_1.e.c.x, true), arg_1.e.c, vec3<bool>(arg_2.b.x, arg_1.a.b.x, true)), vec3<bool>(-1i > arg_2.d.x, var_1.c.x, any(vec4<bool>(arg_1.e.c.x, var_1.b.x, true, arg_2.b.x)))), !any(vec4<bool>(arg_2.c.x, true, false, false))), var_1.e, _wgslsmith_sub_vec4_i32(~countOneBits(vec4<i32>(2147483647i, arg_0.x, -26310i, -24792i) << (vec4<u32>(arg_1.d, 8951u, 1u, var_1.a.x) % vec4<u32>(32u))), arg_1.e.e));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = vec2<u32>(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, arg_2.a.x), vec3<u32>(arg_1.a.x, arg_2.a.x, 2968u)), vec3<u32>(arg_1.a.x, 66346u, arg_2.a.x) << (vec3<u32>(21830u, arg_2.a.x, 38665u) % vec3<u32>(32u))) | ~_wgslsmith_mod_u32(15u, arg_2.a.x)), arg_1.a.x);
    var var_1 = !func_2(arg_2.d.zzy, Struct_2(func_2(vec3<i32>(-2147483647i, -1i, 35690i), Struct_2(Struct_1(arg_1.a, arg_2.b, arg_1.b.zwz, arg_1.d, arg_2.e), var_0, vec4<i32>(0i, -12014i, arg_2.e.x, arg_2.e.x), 0u, arg_2), Struct_1(arg_2.a, arg_1.b, vec3<bool>(true, false, true), vec4<i32>(arg_1.d.x, 0i, 24310i, 3982i), arg_1.d)), vec2<u32>(var_0.x, arg_1.a.x), select(vec4<i32>(arg_2.d.x, -18096i, -40966i, arg_0), arg_2.e, arg_2.b) >> (~vec4<u32>(arg_1.a.x, arg_2.a.x, arg_1.a.x, arg_2.a.x) % vec4<u32>(32u)), var_0.x, arg_2), arg_1).b;
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(47803u, arg_2.a.x, arg_2.a.x) | vec3<u32>(arg_2.a.x, arg_2.a.x, var_0.x)), vec3<u32>(1u, var_0.x, ~var_0.x)) >> (~countOneBits(~vec3<u32>(var_0.x, 34034u, arg_2.a.x)) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, _wgslsmith_sub_u32(0u, arg_1.a.x), var_0.x) >> ((abs(firstTrailingBit(vec3<u32>(var_0.x, 4294967295u, arg_2.a.x))) >> (max(vec3<u32>(arg_1.a.x, 4294967295u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.x, var_0.x, 6836u), vec3<u32>(4294967295u, 25815u, 1u))) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(0u, arg_1.a.x, firstTrailingBit(7863u)));
    let var_3 = arg_1;
    let var_4 = Struct_2(arg_1, ~arg_2.a, max(arg_1.d, ~(~_wgslsmith_sub_vec4_i32(arg_2.d, vec4<i32>(arg_0, arg_1.d.x, arg_3, 2147483647i)))), 106639u << (reverseBits(arg_1.a.x) % 32u), arg_1);
    return -5255i;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_i32(~(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-13359i, 437i)) << (vec2<u32>(arg_1, 92253u) % vec2<u32>(32u))) & vec2<i32>(func_4(min(-19088i, 2147483647i), func_2(vec3<i32>(0i, -42418i, u_input.a), Struct_2(Struct_1(vec2<u32>(54758u, 53930u), vec4<bool>(false, false, true, true), vec3<bool>(true, false, true), vec4<i32>(u_input.a, -23161i, -1i, 0i), vec4<i32>(-17394i, u_input.a, -2147483647i, 34165i)), vec2<u32>(17917u, arg_1), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), 0u, Struct_1(vec2<u32>(arg_1, arg_1), vec4<bool>(false, true, false, true), vec3<bool>(false, true, true), vec4<i32>(u_input.a, u_input.a, 2147483647i, -34764i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))), Struct_1(vec2<u32>(arg_1, 0u), vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), vec4<i32>(u_input.a, u_input.a, u_input.a, -28246i), vec4<i32>(1i, 15562i, u_input.a, -7133i))), Struct_1(vec2<u32>(arg_1, arg_1), vec4<bool>(false, true, true, false), vec3<bool>(false, true, true), vec4<i32>(24361i, u_input.a, -23984i, 11626i), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), u_input.a), -_wgslsmith_mod_i32(-19290i, 3760i)), _wgslsmith_mod_vec2_i32(~select(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 14795i), vec2<i32>(65939i, u_input.a)), -vec2<i32>(-4211i, -40801i), true), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(25881i, u_input.a) >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), func_2(vec3<i32>(u_input.a, u_input.a, 0i), Struct_2(Struct_1(vec2<u32>(2272u, 102402u), vec4<bool>(true, true, true, false), vec3<bool>(false, false, true), vec4<i32>(u_input.a, u_input.a, 19070i, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), vec2<u32>(arg_1, 34618u), vec4<i32>(56759i, -26572i, 0i, -2147483647i), arg_1, Struct_1(vec2<u32>(1u, arg_1), vec4<bool>(false, false, true, false), vec3<bool>(true, true, false), vec4<i32>(2147483647i, u_input.a, -19504i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), Struct_1(vec2<u32>(49294u, arg_1), vec4<bool>(false, false, true, false), vec3<bool>(false, true, false), vec4<i32>(u_input.a, -1i, u_input.a, -2147483647i), vec4<i32>(-10027i, 0i, u_input.a, u_input.a))).e.zw))));
    var var_1 = vec3<i32>(-firstTrailingBit(-1i), ~var_0.x, _wgslsmith_add_i32(func_4(_wgslsmith_add_i32(-59683i, var_0.x), func_2(vec3<i32>(var_0.x, u_input.a, var_0.x), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec4<bool>(false, false, true, true), vec3<bool>(true, false, true), vec4<i32>(-13158i, 1i, u_input.a, var_0.x), vec4<i32>(-1i, -1i, u_input.a, var_0.x)), vec2<u32>(arg_1, arg_1), vec4<i32>(1i, var_0.x, 2147483647i, -45491i), 12231u, Struct_1(vec2<u32>(1u, arg_1), vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), vec4<i32>(var_0.x, -27958i, 2147483647i, var_0.x), vec4<i32>(u_input.a, u_input.a, var_0.x, -1i))), Struct_1(vec2<u32>(1u, arg_1), vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), vec4<i32>(54080i, 16221i, -23071i, 2147483647i), vec4<i32>(u_input.a, 18343i, var_0.x, u_input.a))), Struct_1(vec2<u32>(1u, arg_1), vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), vec4<i32>(-12431i, var_0.x, 9724i, 0i), vec4<i32>(-2147483647i, 0i, u_input.a, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 24021i, var_0.x, -18374i), vec4<i32>(var_0.x, 1i, -1i, 0i))) << (arg_1 % 32u), -(~u_input.a) | var_0.x));
    let var_2 = Struct_2(func_2(-(-vec3<i32>(var_1.x, -1i, var_1.x) & vec3<i32>(1i, 1i, -11488i)), Struct_2(func_2(vec3<i32>(var_1.x, -20926i, -1i), Struct_2(Struct_1(vec2<u32>(46103u, 0u), vec4<bool>(false, false, false, true), vec3<bool>(true, true, true), vec4<i32>(var_0.x, 21327i, 1i, var_1.x), vec4<i32>(28102i, var_0.x, var_1.x, -1i)), vec2<u32>(4294967295u, 4294967295u), vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a), arg_1, Struct_1(vec2<u32>(arg_1, arg_1), vec4<bool>(false, true, true, false), vec3<bool>(true, false, true), vec4<i32>(var_0.x, u_input.a, u_input.a, u_input.a), vec4<i32>(-25816i, u_input.a, var_0.x, u_input.a))), func_2(vec3<i32>(43845i, -20606i, var_0.x), Struct_2(Struct_1(vec2<u32>(4294967295u, arg_1), vec4<bool>(false, true, false, false), vec3<bool>(true, true, false), vec4<i32>(1i, -2147483647i, var_0.x, -2450i), vec4<i32>(5291i, var_1.x, 27775i, var_0.x)), vec2<u32>(1u, arg_1), vec4<i32>(1i, -1i, 6678i, var_1.x), arg_1, Struct_1(vec2<u32>(8233u, arg_1), vec4<bool>(false, true, true, false), vec3<bool>(true, false, false), vec4<i32>(var_0.x, var_0.x, -2147483647i, 18760i), vec4<i32>(var_0.x, u_input.a, -7326i, u_input.a))), Struct_1(vec2<u32>(arg_1, 13729u), vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), vec4<i32>(2169i, 1944i, -1i, var_1.x), vec4<i32>(-10366i, var_0.x, var_0.x, 0i)))), vec2<u32>(_wgslsmith_div_u32(arg_1, arg_1), reverseBits(arg_1)), select(-vec4<i32>(-6204i, var_0.x, -4162i, -1i), select(vec4<i32>(var_0.x, 48823i, 2147483647i, var_0.x), vec4<i32>(u_input.a, var_0.x, var_1.x, var_1.x), false), false), _wgslsmith_add_u32(~arg_1, abs(arg_1)), Struct_1(~vec2<u32>(15960u, 8640u), func_2(vec3<i32>(var_1.x, 18654i, var_1.x), Struct_2(Struct_1(vec2<u32>(71826u, 59395u), vec4<bool>(true, false, true, false), vec3<bool>(false, false, true), vec4<i32>(2147483647i, var_1.x, var_0.x, -54274i), vec4<i32>(32536i, 1i, var_0.x, var_0.x)), vec2<u32>(38068u, 4294967295u), vec4<i32>(-41215i, var_0.x, var_0.x, 26022i), arg_1, Struct_1(vec2<u32>(0u, 6397u), vec4<bool>(false, true, true, true), vec3<bool>(false, false, true), vec4<i32>(13140i, u_input.a, u_input.a, u_input.a), vec4<i32>(var_1.x, 37299i, 28599i, u_input.a))), Struct_1(vec2<u32>(arg_1, arg_1), vec4<bool>(false, false, false, false), vec3<bool>(false, false, true), vec4<i32>(var_0.x, var_0.x, var_1.x, 0i), vec4<i32>(var_0.x, -45051i, u_input.a, 0i))).b, func_2(vec3<i32>(u_input.a, u_input.a, 2147483647i), Struct_2(Struct_1(vec2<u32>(arg_1, arg_1), vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), vec4<i32>(2147483647i, var_0.x, -53220i, var_1.x), vec4<i32>(u_input.a, 23662i, u_input.a, var_1.x)), vec2<u32>(arg_1, 4294967295u), vec4<i32>(0i, var_1.x, 29658i, u_input.a), arg_1, Struct_1(vec2<u32>(arg_1, arg_1), vec4<bool>(false, true, false, true), vec3<bool>(true, false, true), vec4<i32>(var_0.x, 0i, -1i, u_input.a), vec4<i32>(0i, var_1.x, var_0.x, u_input.a))), Struct_1(vec2<u32>(0u, arg_1), vec4<bool>(true, false, true, true), vec3<bool>(true, true, false), vec4<i32>(var_1.x, -1i, 0i, u_input.a), vec4<i32>(-38762i, 0i, var_1.x, var_0.x))).b.zzx, select(vec4<i32>(36118i, var_1.x, -1i, u_input.a), vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), true), vec4<i32>(var_0.x, 0i, var_1.x, -75631i))), Struct_1(min(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(0u, arg_1)), ~vec2<u32>(arg_1, 109307u)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec3<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)), true), func_2(~vec3<i32>(var_0.x, var_0.x, 1i), Struct_2(Struct_1(vec2<u32>(1u, 4781u), vec4<bool>(false, false, true, false), vec3<bool>(true, true, false), vec4<i32>(-2147483647i, var_1.x, var_1.x, 0i), vec4<i32>(var_0.x, 49535i, 7371i, 1i)), vec2<u32>(arg_1, arg_1), vec4<i32>(var_1.x, 49374i, 0i, -22460i), arg_1, Struct_1(vec2<u32>(arg_1, arg_1), vec4<bool>(false, true, false, false), vec3<bool>(true, true, true), vec4<i32>(1i, var_1.x, u_input.a, 4779i), vec4<i32>(0i, var_0.x, 1i, -26237i))), Struct_1(vec2<u32>(arg_1, arg_1), vec4<bool>(false, true, false, false), vec3<bool>(true, true, true), vec4<i32>(-7328i, var_0.x, 0i, var_1.x), vec4<i32>(-1353i, var_1.x, 1i, u_input.a))).d, abs(-vec4<i32>(-45210i, -1i, var_1.x, 0i)))), countOneBits(firstLeadingBit(vec2<u32>(arg_1, arg_1))) << (abs(~select(vec2<u32>(1u, arg_1), vec2<u32>(arg_1, arg_1), false)) % vec2<u32>(32u)), ~vec4<i32>(-26176i, _wgslsmith_mod_i32(20658i, var_0.x), _wgslsmith_mod_i32(-var_0.x, var_1.x), 0i), arg_1, Struct_1(vec2<u32>(arg_1, (arg_1 ^ 4294967295u) ^ firstTrailingBit(1u)), select(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0.x, 1i), vec3<i32>(45693i, u_input.a, 28901i)), Struct_2(Struct_1(vec2<u32>(1110u, 118260u), vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), vec4<i32>(6940i, 15961i, var_0.x, var_0.x), vec4<i32>(var_0.x, u_input.a, var_1.x, -1i)), vec2<u32>(arg_1, 34669u), vec4<i32>(19331i, u_input.a, var_1.x, var_1.x), 36617u, Struct_1(vec2<u32>(arg_1, arg_1), vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), vec4<i32>(-1i, 30556i, u_input.a, var_1.x), vec4<i32>(var_1.x, 109569i, var_1.x, -2147483647i))), func_2(vec3<i32>(0i, -2147483647i, var_1.x), Struct_2(Struct_1(vec2<u32>(arg_1, 1u), vec4<bool>(false, false, true, false), vec3<bool>(true, true, true), vec4<i32>(8772i, u_input.a, u_input.a, -65076i), vec4<i32>(-1i, var_0.x, u_input.a, u_input.a)), vec2<u32>(0u, 1u), vec4<i32>(var_0.x, 2147483647i, 1i, u_input.a), arg_1, Struct_1(vec2<u32>(1u, 33471u), vec4<bool>(false, true, true, false), vec3<bool>(true, false, true), vec4<i32>(-2147483647i, var_1.x, 1i, var_1.x), vec4<i32>(var_1.x, u_input.a, var_0.x, -2147483647i))), Struct_1(vec2<u32>(arg_1, 1u), vec4<bool>(false, false, false, false), vec3<bool>(false, false, false), vec4<i32>(u_input.a, 0i, var_0.x, -1i), vec4<i32>(var_1.x, var_1.x, u_input.a, -2147483647i)))).b, select(func_2(vec3<i32>(u_input.a, var_0.x, var_1.x), Struct_2(Struct_1(vec2<u32>(arg_1, 9265u), vec4<bool>(false, true, true, false), vec3<bool>(true, false, false), vec4<i32>(var_1.x, 27971i, 0i, -46652i), vec4<i32>(37208i, -8524i, 0i, 0i)), vec2<u32>(5539u, arg_1), vec4<i32>(1i, var_0.x, u_input.a, -5607i), arg_1, Struct_1(vec2<u32>(7569u, 7895u), vec4<bool>(true, true, true, false), vec3<bool>(false, true, true), vec4<i32>(-3591i, 43644i, var_0.x, u_input.a), vec4<i32>(var_1.x, var_1.x, -2147483647i, -1i))), Struct_1(vec2<u32>(0u, arg_1), vec4<bool>(false, true, true, false), vec3<bool>(true, false, true), vec4<i32>(-2147483647i, var_0.x, 0i, 0i), vec4<i32>(0i, 1i, u_input.a, var_0.x))).b, vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), func_2(select(vec3<i32>(u_input.a, 0i, var_1.x), vec3<i32>(37816i, 1i, var_0.x), vec3<bool>(false, true, false)), Struct_2(Struct_1(vec2<u32>(arg_1, 4294967295u), vec4<bool>(false, true, false, false), vec3<bool>(false, true, false), vec4<i32>(var_0.x, 1919i, var_1.x, u_input.a), vec4<i32>(-77448i, 10348i, var_0.x, var_1.x)), vec2<u32>(1u, arg_1), vec4<i32>(u_input.a, u_input.a, -44942i, 0i), 49905u, Struct_1(vec2<u32>(arg_1, 0u), vec4<bool>(true, false, false, false), vec3<bool>(false, false, false), vec4<i32>(var_0.x, -2147483647i, -25106i, 60557i), vec4<i32>(4197i, -1i, 19806i, -7926i))), Struct_1(vec2<u32>(44636u, arg_1), vec4<bool>(false, false, true, false), vec3<bool>(true, true, true), vec4<i32>(var_0.x, -2147483647i, 2147483647i, u_input.a), vec4<i32>(2147483647i, var_0.x, var_1.x, 20594i))).b), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), ~vec4<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), -7406i, ~0i, u_input.a), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 1i, 1i, 2147483647i), vec4<i32>(u_input.a, u_input.a, var_0.x, 41022i) | vec4<i32>(var_1.x, -12708i, 0i, -26830i)))));
    return 10351u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-949f, 598f), vec2<f32>(-170f, -1661f), false)), abs(1u)) << (0u % 32u), 101314u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 42238u, 67691u), 0u), _wgslsmith_mult_u32(func_1(vec2<f32>(1000f, 1631f), 4294967295u), 73234u)), func_2(vec3<i32>(49270i, u_input.a & 51441i, u_input.a), Struct_2(Struct_1(vec2<u32>(49403u, 1235u), vec4<bool>(false, true, false, false), vec3<bool>(false, false, true), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec2<u32>(1u, 1u), vec4<i32>(-1i, u_input.a, 49192i, u_input.a) ^ vec4<i32>(0i, u_input.a, 36693i, -2147483647i), ~0u, func_2(vec3<i32>(0i, 1i, u_input.a), Struct_2(Struct_1(vec2<u32>(1u, 83646u), vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, 101315i, -63874i, 0i)), vec2<u32>(48418u, 12675u), vec4<i32>(-1i, u_input.a, 1i, u_input.a), 1u, Struct_1(vec2<u32>(2290u, 1u), vec4<bool>(true, true, true, true), vec3<bool>(false, true, true), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(u_input.a, 11039i, 7271i, u_input.a))), Struct_1(vec2<u32>(4294967295u, 38369u), vec4<bool>(false, false, false, true), vec3<bool>(true, false, false), vec4<i32>(-36488i, u_input.a, 45849i, -42582i), vec4<i32>(u_input.a, 0i, 1i, u_input.a)))), func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(19679i, u_input.a, 10954i), vec3<i32>(2147483647i, 2147483647i, u_input.a)), Struct_2(Struct_1(vec2<u32>(969u, 4294967295u), vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), vec4<i32>(16493i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, 1i, 2147483647i)), vec2<u32>(0u, 1u), vec4<i32>(-1i, -67622i, 1i, u_input.a), 23855u, Struct_1(vec2<u32>(60747u, 4294967295u), vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), vec4<i32>(21801i, -68825i, -24304i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 27606i))), func_2(vec3<i32>(2776i, u_input.a, u_input.a), Struct_2(Struct_1(vec2<u32>(110780u, 2044u), vec4<bool>(true, false, false, true), vec3<bool>(true, true, true), vec4<i32>(0i, u_input.a, 2147483647i, 2147483647i), vec4<i32>(u_input.a, u_input.a, -40000i, -49248i)), vec2<u32>(9164u, 1u), vec4<i32>(u_input.a, 34261i, -1i, -58039i), 8035u, Struct_1(vec2<u32>(1u, 1u), vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), vec4<i32>(u_input.a, u_input.a, 2601i, 8642i), vec4<i32>(-83530i, u_input.a, u_input.a, u_input.a))), Struct_1(vec2<u32>(7927u, 4620u), vec4<bool>(true, false, true, false), vec3<bool>(true, false, true), vec4<i32>(2147483647i, u_input.a, 25277i, -43429i), vec4<i32>(-40154i, u_input.a, u_input.a, u_input.a))))).a.x) ^ ~(~vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = !vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true);
    var var_2 = select(func_2(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-1i, 9672i))), -u_input.a >> (~var_0.x % 32u), 77312i), Struct_2(func_2(vec3<i32>(17103i, u_input.a, -8064i), Struct_2(Struct_1(var_0.xw, vec4<bool>(var_1.x, var_1.x, true, false), var_1, vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a)), vec2<u32>(0u, var_0.x), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), 0u, Struct_1(vec2<u32>(var_0.x, var_0.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, true), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, -24343i))), Struct_1(var_0.yy, vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1, vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i), vec4<i32>(0i, 0i, u_input.a, u_input.a))), ~vec2<u32>(1u, var_0.x) & vec2<u32>(109510u, var_0.x), -(vec4<i32>(u_input.a, u_input.a, 89624i, -23991i) | vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), abs(var_0.x), Struct_1(min(vec2<u32>(1u, var_0.x), var_0.xz), !vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec4<i32>(u_input.a, -9047i, u_input.a, -2147483647i), abs(vec4<i32>(-54640i, u_input.a, u_input.a, 41467i)))), func_2(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, -14674i) | vec3<i32>(1i, 0i, u_input.a), firstLeadingBit(vec3<i32>(5890i, -33054i, u_input.a))), Struct_2(Struct_1(vec2<u32>(59088u, var_0.x), vec4<bool>(true, var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true), vec4<i32>(-16560i, -25405i, u_input.a, 0i), vec4<i32>(-1694i, u_input.a, u_input.a, 16805i)), var_0.xw, vec4<i32>(2147483647i, -43269i, 46792i, u_input.a), var_0.x << (var_0.x % 32u), Struct_1(var_0.xw, vec4<bool>(true, false, var_1.x, false), vec3<bool>(false, true, var_1.x), vec4<i32>(u_input.a, -4620i, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 6597u), vec2<u32>(0u, var_0.x)), !vec4<bool>(false, true, true, var_1.x), var_1, vec4<i32>(6207i, -31563i, 2147483647i, u_input.a) << (vec4<u32>(1u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(10246i, -10731i, -21361i, 43533i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))))).c, !vec3<bool>(true, true, _wgslsmith_add_u32(var_0.x, 80098u) != 1u), var_1.x);
    var var_3 = Struct_1(firstLeadingBit(~(var_0.xx >> (vec2<u32>(14192u, 4294967295u) % vec2<u32>(32u))) << ((vec2<u32>(0u, var_0.x) ^ vec2<u32>(6585u, 29798u)) % vec2<u32>(32u))), !(!(!vec4<bool>(var_2.x, false, false, false))), !var_1, vec4<i32>(u_input.a, -(u_input.a & u_input.a), 1i, u_input.a & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, 0i))) << (select(abs(vec4<u32>(4294967295u, var_0.x, 119017u, 0u)), countOneBits(vec4<u32>(var_0.x, 106766u, var_0.x, var_0.x)), !vec4<bool>(false, var_1.x, var_2.x, true)) % vec4<u32>(32u)), vec4<i32>(u_input.a & ~(~u_input.a), _wgslsmith_add_i32(u_input.a, u_input.a), firstLeadingBit(2147483647i), u_input.a));
    let var_4 = Struct_2(Struct_1(var_0.xw, vec4<bool>(all(vec4<bool>(var_1.x, var_3.c.x, var_1.x, var_1.x)), any(vec2<bool>(var_1.x, false)), var_1.x, var_2.x), func_2(~var_3.e.ywx, Struct_2(Struct_1(vec2<u32>(45843u, 0u), vec4<bool>(var_3.b.x, false, var_2.x, var_1.x), var_3.b.wzy, vec4<i32>(u_input.a, var_3.e.x, 2256i, -14791i), vec4<i32>(0i, 6128i, 0i, 0i)), var_0.wz | vec2<u32>(var_0.x, 0u), vec4<i32>(var_3.e.x, -1i, var_3.d.x, -11980i), ~6009u, Struct_1(vec2<u32>(var_3.a.x, 1882u), vec4<bool>(false, var_3.c.x, var_3.b.x, true), var_1, var_3.e, vec4<i32>(var_3.e.x, var_3.e.x, 53051i, u_input.a))), func_2(~var_3.e.zxx, Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), var_3.b, var_3.c, var_3.e, var_3.e), var_3.a, vec4<i32>(u_input.a, 0i, -23012i, 1i), var_0.x, Struct_1(var_0.zz, var_3.b, var_1, var_3.d, var_3.d)), func_2(var_3.d.wzw, Struct_2(Struct_1(var_0.wx, vec4<bool>(var_2.x, true, var_3.c.x, false), var_3.c, var_3.d, vec4<i32>(1i, var_3.e.x, -19697i, 1i)), vec2<u32>(var_0.x, var_3.a.x), var_3.d, 0u, Struct_1(var_0.xx, var_3.b, vec3<bool>(false, true, var_1.x), var_3.e, var_3.d)), Struct_1(vec2<u32>(var_3.a.x, var_0.x), var_3.b, vec3<bool>(var_1.x, var_2.x, var_3.b.x), var_3.e, var_3.d)))).c, max(_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, 0i, -24966i, u_input.a), vec4<i32>(1i, -2147483647i, var_3.e.x, -2147483647i) << (var_0 % vec4<u32>(32u))), select(-vec4<i32>(31126i, var_3.d.x, var_3.e.x, -1i), vec4<i32>(2147483647i, -1i, 21540i, var_3.d.x), vec4<bool>(true, var_3.b.x, true, true))), var_3.d), var_3.a << (~reverseBits(var_3.a | var_0.wy) % vec2<u32>(32u)), vec4<i32>(reverseBits(-34987i), u_input.a, var_3.d.x, ~1i), 16109u, func_2(var_3.e.yww | var_3.e.zwz, Struct_2(func_2(var_3.e.zwx | var_3.e.xyy, Struct_2(Struct_1(vec2<u32>(var_0.x, 69764u), var_3.b, var_3.b.wxy, var_3.e, var_3.e), var_3.a, vec4<i32>(40918i, var_3.e.x, var_3.d.x, var_3.d.x), var_0.x, Struct_1(vec2<u32>(var_3.a.x, 58387u), vec4<bool>(var_3.b.x, true, false, var_2.x), vec3<bool>(var_1.x, false, true), vec4<i32>(2147483647i, 0i, 1i, u_input.a), var_3.d)), Struct_1(var_0.xw, vec4<bool>(var_3.c.x, var_3.c.x, var_2.x, true), vec3<bool>(var_3.b.x, var_1.x, true), vec4<i32>(u_input.a, var_3.e.x, u_input.a, u_input.a), var_3.e)), var_3.a, var_3.e, 4294967295u ^ var_0.x, Struct_1(var_0.ww, vec4<bool>(var_1.x, var_1.x, var_3.c.x, var_3.b.x), var_3.c, countOneBits(var_3.d), -var_3.d)), Struct_1(select(var_3.a, vec2<u32>(var_3.a.x, 4294967295u) & var_0.yy, func_2(var_3.d.wyx, Struct_2(Struct_1(var_0.xz, vec4<bool>(true, true, var_2.x, true), var_3.c, vec4<i32>(19385i, 2147483647i, -2147483647i, 8596i), vec4<i32>(u_input.a, 0i, var_3.e.x, -27605i)), vec2<u32>(4294967295u, 1u), var_3.e, 0u, Struct_1(vec2<u32>(var_0.x, var_3.a.x), vec4<bool>(false, var_1.x, true, var_2.x), var_3.c, var_3.d, vec4<i32>(u_input.a, 3074i, var_3.e.x, -2147483647i))), Struct_1(vec2<u32>(4294967295u, var_3.a.x), var_3.b, vec3<bool>(var_1.x, var_3.b.x, var_1.x), vec4<i32>(u_input.a, 0i, -19541i, 10143i), var_3.e)).b.ww), select(vec4<bool>(false, false, false, false), var_3.b, !var_1.x), !vec3<bool>(false, var_1.x, var_2.x), var_3.e, vec4<i32>(u_input.a | var_3.e.x, ~u_input.a, u_input.a, -u_input.a))));
    var_3 = func_2(var_3.e.xxz, var_4, Struct_1(vec2<u32>(func_1(vec2<f32>(-1000f, -927f), 33281u) | countOneBits(38509u), var_0.x), !(!select(vec4<bool>(true, var_4.e.c.x, true, false), var_4.e.b, var_3.b)), !select(var_3.c, vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_1.x, var_1.x, true)), var_3.d, vec4<i32>(u_input.a & firstTrailingBit(14280i), -2147483647i, -_wgslsmith_mod_i32(var_4.e.e.x, u_input.a), -u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec4_i32(func_2(var_3.d.xwx, Struct_2(Struct_1(var_0.zw, var_3.b, vec3<bool>(true, true, false), var_4.c, var_4.a.d), var_0.zw, var_4.e.d, var_0.x, Struct_1(var_3.a, vec4<bool>(var_2.x, var_2.x, false, true), vec3<bool>(false, true, true), vec4<i32>(u_input.a, 2147483647i, var_4.a.d.x, 31442i), vec4<i32>(var_3.e.x, var_4.a.e.x, 0i, -21807i))), Struct_1(vec2<u32>(var_0.x, 0u), var_4.a.b, vec3<bool>(true, var_2.x, var_4.a.c.x), var_4.e.e, var_4.c)).e | var_4.e.d, ~(~var_4.e.e)));
}

