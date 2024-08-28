struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = -19005i;
    var var_1 = Struct_2(Struct_1(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 0u, arg_0.a, u_input.c.x), u_input.b), firstTrailingBit(31678u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1292f, 983f, arg_0.b.x), vec3<f32>(arg_0.b.x, arg_0.b.x, -833f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(floor(arg_0.b.x)), _wgslsmith_f_op_f32(exp2(arg_0.b.x))))), !select(arg_0.e.yw, !arg_0.c, vec2<bool>(arg_0.c.x, false)), arg_0.d, vec4<bool>(true, ~u_input.a.x > u_input.a.x, true, true == (arg_0.d < 56907i))), arg_0.b.x, Struct_1(min(_wgslsmith_mult_u32(4294967295u, 0u | u_input.b.x), u_input.b.x), arg_0.b, arg_0.c, 40287i, select(vec4<bool>(all(vec2<bool>(arg_0.c.x, arg_0.e.x)), arg_0.c.x, true, select(true, true, arg_0.c.x)), arg_0.e, !arg_0.e)));
    var var_2 = select(!select(arg_0.e, var_1.c.e, !vec4<bool>(false, true, arg_0.c.x, true)), !vec4<bool>((u_input.c.x << (4294967295u % 32u)) >= ~18294u, !(var_1.c.e.x || arg_0.e.x), !arg_0.c.x, !(!var_1.a.e.x)), any(arg_0.e));
    var_0 = -(~firstTrailingBit(_wgslsmith_mod_i32(var_1.c.d, arg_0.d))) ^ ~(-9672i);
    var_2 = !select(!(!arg_0.e), !arg_0.e, vec4<bool>(true, var_1.a.c.x, !any(arg_0.e.zzx), 12975u > u_input.b.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.b)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.a.b.x, var_1.b)), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(var_1.c.b.x, 292f)), vec3<f32>(arg_0.b.x, _wgslsmith_div_f32(-264f, var_1.a.b.x), _wgslsmith_f_op_f32(arg_0.b.x * -217f))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(round(277f)), _wgslsmith_div_f32(-206f, -868f), 473f), vec2<bool>(true, true), u_input.a.x, select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false)), vec4<bool>(true, true, true, true), !any(vec2<bool>(true, false)))));
    var_0 = Struct_3(Struct_1(firstLeadingBit(1u) ^ select(var_0.a.a & var_0.a.a, var_0.a.a, false), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-199f, _wgslsmith_f_op_f32(-var_0.a.b.x), var_0.a.b.x))), select(vec2<bool>(true, true), select(select(var_0.a.c, vec2<bool>(var_0.a.c.x, true), var_0.a.e.wz), select(var_0.a.e.yx, vec2<bool>(var_0.a.e.x, true), var_0.a.e.zx), select(var_0.a.e.yz, var_0.a.e.yy, var_0.a.c)), vec2<bool>(!var_0.a.c.x, false)), ~max(u_input.a.x, u_input.a.x) ^ 2147483647i, select(vec4<bool>(any(vec3<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.e.x)), false, all(vec4<bool>(var_0.a.e.x, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x)), var_0.a.a >= u_input.b.x), !select(vec4<bool>(true, var_0.a.c.x, false, var_0.a.e.x), var_0.a.e, true), _wgslsmith_f_op_f32(var_0.a.b.x * 607f) == _wgslsmith_f_op_f32(-var_0.a.b.x))));
    let var_1 = Struct_1(2675u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.b.x), var_0.a.b.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.b - vec3<f32>(var_0.a.b.x, 651f, -1068f)) * vec3<f32>(var_0.a.b.x, -758f, 1093f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(48380u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1022f, 554f, 1034f) + vec3<f32>(-590f, var_0.a.b.x, -714f)), !var_0.a.e.zy, var_0.a.d, vec4<bool>(true, false, false, false)))))), !var_0.a.c, var_0.a.d << (u_input.c.x % 32u), !select(!select(var_0.a.e, vec4<bool>(false, true, var_0.a.e.x, var_0.a.e.x), vec4<bool>(true, var_0.a.e.x, true, false)), select(vec4<bool>(true, true, var_0.a.e.x, true), !var_0.a.e, false | var_0.a.e.x), var_0.a.e));
    return Struct_1(abs(var_1.a), var_0.a.b, !var_0.a.e.zw, _wgslsmith_dot_vec4_i32(vec4<i32>(~(~(-2147483647i)), min(~var_1.d, select(-2147483647i, var_0.a.d, var_0.a.c.x)), min(select(u_input.a.x, -18975i, false), u_input.a.x), ~countOneBits(2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(-1i), -2147483647i, _wgslsmith_sub_i32(-13688i, 19625i), u_input.a.x), max(~vec4<i32>(35109i, var_1.d, var_1.d, -1i), vec4<i32>(u_input.a.x, var_1.d, u_input.a.x, u_input.a.x) & vec4<i32>(-14818i, var_1.d, 67960i, -2147483647i)))), vec4<bool>(var_1.e.x, true, var_1.e.x, all(var_1.e)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = func_2();
    let var_2 = Struct_3(var_1);
    var var_3 = var_1;
    var var_4 = ~vec4<u32>(~31590u, 0u, 71795u, ~8414u);
    return Struct_1(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b << (~abs(vec4<u32>(var_1.a, 1u, 0u, var_2.a.a)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1409f, func_2().b.x, -186f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 410f, var_0.b.x)), var_0.e.wzw)), var_0.c, arg_0.x, !(!var_2.a.e));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -611f;
    var var_1 = 0i & u_input.a.x;
    let var_2 = Struct_2(Struct_1(~_wgslsmith_mult_u32(1u, ~u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(824f, -481f), var_0), vec2<bool>(true, false), 10792i, select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, select(false, false, true), false, false))), var_0, func_4(vec3<bool>(true, true, true), vec2<u32>(~(~16680u), firstLeadingBit(u_input.c.x)), Struct_2(func_1(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), true, _wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, 4294967295u), vec2<bool>(true, true)), 347f, Struct_1(1u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1462f, -865f, var_0), vec3<f32>(var_0, var_0, -467f))), vec2<bool>(true, false), ~u_input.a.x, vec4<bool>(true, true, true, true)))));
    var_1 = ~u_input.a.x;
    let var_3 = u_input.a;
    let var_4 = Struct_3(func_1(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, var_2.c.d, var_2.c.d, var_3.x), abs(vec4<i32>(u_input.a.x, 1706i, var_2.a.d, 25852i))), u_input.a.x, -1i), true, func_1(vec4<i32>(var_2.a.d ^ 2147483647i, _wgslsmith_mod_i32(42552i, u_input.a.x), countOneBits(0i), u_input.a.x << (0u % 32u)), false, 1u, func_1(reverseBits(vec4<i32>(var_3.x, var_3.x, var_2.c.d, var_2.c.d)), true, countOneBits(33767u), var_2.c.c).c).a, vec2<bool>(true, false)));
    let var_5 = _wgslsmith_f_op_f32(step(var_4.a.b.x, _wgslsmith_f_op_f32(abs(-828f))));
    var var_6 = 2147483647i;
    var_6 = var_4.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec4_i32(abs(vec4<i32>(var_4.a.d, 0i, var_2.a.d, -2147483647i)), max(vec4<i32>(3487i, 16259i, var_4.a.d, u_input.a.x), vec4<i32>(-1i, var_3.x, -1i, var_4.a.d)))), select(_wgslsmith_sub_i32(~(var_4.a.d & var_3.x), var_2.c.d), firstLeadingBit(-2147483647i), var_4.a.c.x));
}

