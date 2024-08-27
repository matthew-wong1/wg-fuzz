struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = max(firstLeadingBit((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, -2147483647i, 2147483647i, u_input.d.x), vec4<i32>(1i, 11056i, -19729i, 0i), vec4<i32>(-17573i, 0i, u_input.e, u_input.e)) >> ((u_input.a | u_input.a) % vec4<u32>(32u))) | min(vec4<i32>(u_input.d.x, u_input.e, -2147483647i, u_input.d.x), vec4<i32>(-2147483647i, u_input.d.x, 23459i, u_input.d.x))), firstLeadingBit(_wgslsmith_div_vec4_i32(select(vec4<i32>(1i, u_input.e, 86683i, 2147483647i), vec4<i32>(0i, u_input.e, u_input.e, -6126i), vec4<bool>(false, true, arg_0.x, arg_0.x)), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.e)) >> (u_input.a % vec4<u32>(32u))));
    let var_1 = Struct_1(select(select(vec3<bool>(true, true, arg_0.x), select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), false), !select(arg_0.yyz, vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, false)), true), arg_0.x && false), select(vec3<bool>(arg_0.x, false, all(vec2<bool>(arg_0.x, arg_0.x))), !select(arg_0.yzx, arg_0.xyz, arg_0.zwx), all(select(arg_0, vec4<bool>(true, false, arg_0.x, true), false)))), 1u, select(vec4<i32>(-var_0.x, u_input.e, var_0.x, _wgslsmith_sub_i32(1i, -6765i)), firstLeadingBit(_wgslsmith_mult_vec4_i32(var_0, var_0)), true) >> (reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(43550u, 4294967295u, 36914u, 64407u), ~u_input.a, ~u_input.a)) % vec4<u32>(32u)), _wgslsmith_div_i32(reverseBits(var_0.x), -(i32(-1i) * -44730i)), var_0.x);
    return 44729i;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(!select(arg_0.a.a, !arg_0.a.a, arg_0.a.a), ~((_wgslsmith_clamp_u32(arg_0.a.b, 0u, 0u) | min(u_input.b, 4294967295u)) | (arg_0.a.b | 1u)), vec4<i32>(~1i, _wgslsmith_mod_i32(u_input.e, 1i) | 0i, _wgslsmith_div_i32(arg_0.a.c.x, -44943i) ^ countOneBits(2147483647i), -_wgslsmith_add_i32(u_input.e, 0i)) << (~min(u_input.a, vec4<u32>(arg_0.a.b, arg_0.a.b, 11311u, arg_0.a.b)) % vec4<u32>(32u)), func_3(!(!vec4<bool>(false, false, arg_0.a.a.x, arg_0.a.a.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(select(-arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-12363i, u_input.e, arg_1.x, 15626i), vec4<i32>(arg_1.x, 21074i, -2147483647i, u_input.e)), arg_0.a.a.x), -firstTrailingBit(u_input.e), -1i & (-1i & arg_0.a.e)), vec3<i32>(u_input.d.x, _wgslsmith_sub_i32(arg_1.x, arg_1.x), -36099i) ^ _wgslsmith_div_vec3_i32(arg_0.a.c.zyx ^ vec3<i32>(arg_1.x, u_input.e, u_input.d.x), firstTrailingBit(vec3<i32>(10101i, u_input.d.x, -8319i)))));
    var var_1 = vec4<bool>(true, !(!arg_0.a.a.x), all(select(!vec4<bool>(false, true, arg_0.a.a.x, true), select(select(vec4<bool>(arg_0.a.a.x, true, true, false), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, true, true, var_0.a.x)), vec4<bool>(true, false, true, false), true), all(!var_0.a.xy))), true);
    return Struct_1(arg_0.a.a, u_input.b, var_0.c, -10836i | _wgslsmith_mod_i32(41245i, arg_0.a.d), firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, firstTrailingBit(~u_input.e))));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true)), abs(37086u), vec4<i32>(_wgslsmith_sub_i32(13106i, u_input.e), -1i, ~(-15702i), u_input.e), -u_input.d.x, u_input.d.x ^ -2147483647i));
    var var_1 = Struct_2(var_0.a);
    var_0 = Struct_2(func_2(Struct_2(var_0.a), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.e, 0i), vec3<i32>(-42022i, u_input.d.x, 3569i))));
    var_0 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_add_u32(func_2(Struct_2(var_1.a), vec3<i32>(-1506i, 6120i, -2147483647i) << (u_input.a.zyz % vec3<u32>(32u))).b, firstTrailingBit(var_0.a.b)), _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-13230i, u_input.d.x, u_input.d.x, -1i), vec4<i32>(u_input.e, 1566i, -14072i, -70641i)), var_1.a.c), ~u_input.e >> ((abs(u_input.b) ^ _wgslsmith_sub_u32(4294967295u, 38433u)) % 32u), 0i));
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(~1u, 19874u, ~(~4294967295u)), 4294967295u, max(_wgslsmith_mod_u32(var_1.a.b, ~_wgslsmith_div_u32(u_input.b, 41034u)), 1u), ~(~select(_wgslsmith_sub_u32(var_1.a.b, u_input.b), 4294967295u, all(vec4<bool>(true, false, var_1.a.a.x, false)))));
    return Struct_3(vec4<i32>(~0i >> (1u % 32u), min(func_3(vec4<bool>(false, false, var_0.a.a.x, false)), -_wgslsmith_clamp_i32(var_0.a.e, 16457i, u_input.d.x)), firstTrailingBit(-min(2147483647i, 52368i)), 2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1750f, _wgslsmith_f_op_f32(-1102f + 1702f), _wgslsmith_div_f32(962f, _wgslsmith_f_op_f32(step(-1042f, 492f))), _wgslsmith_f_op_f32(ceil(363f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(386f, 1852f), _wgslsmith_f_op_f32(sign(1854f)), _wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(f32(-1f) * -329f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-117f, -1314f, -1773f, 320f) + vec4<f32>(683f, -265f, -411f, -778f)), vec4<f32>(-232f, -273f, 900f, -1000f)))), true)), _wgslsmith_add_i32(firstLeadingBit(-31235i), var_1.a.d));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    return func_2(Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<bool>(true, true, arg_0), u_input.a.x, vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, arg_1.c), arg_1.c, u_input.d.x)), u_input.d)), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, -29268i, u_input.d.x), arg_1.a.zyw))), vec3<i32>(-1i) * -vec3<i32>(-u_input.e, 2147483647i, u_input.d.x & u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(all(vec3<bool>(true, true, true)), func_1(), false));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1996f + -842f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-122f, -588f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-400f - 545f), _wgslsmith_f_op_f32(f32(-1f) * -1201f)) + -650f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1060f, -1722f)), _wgslsmith_f_op_f32(sign(1542f))), func_1().b.x))));
    var var_2 = var_0.a.c.yw;
    var var_3 = Struct_1(vec3<bool>(any(vec4<bool>(false, true, var_0.a.a.x, false)), var_0.a.a.x, select(any(!vec2<bool>(false, var_0.a.a.x)), true, all(!vec4<bool>(true, var_0.a.a.x, false, false)))), 25565u, -(var_0.a.c << (u_input.a % vec4<u32>(32u))), u_input.d.x, 1i);
    var_3 = Struct_1(vec3<bool>(false, var_0.a.a.x, var_3.a.x), u_input.a.x, -(vec4<i32>(u_input.d.x, var_0.a.e, 21679i, 51155i) ^ -var_0.a.c) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_add_i32(firstLeadingBit(~(-var_3.c.x)), ~2147483647i), _wgslsmith_div_i32(var_2.x, i32(-1i) * -35894i));
    var_3 = func_4(731f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(189f, var_1.x)))), func_1(), true);
    let var_4 = var_0;
    var var_5 = _wgslsmith_mod_i32(firstLeadingBit(var_4.a.c.x), _wgslsmith_clamp_i32(u_input.d.x & _wgslsmith_dot_vec4_i32(var_0.a.c << (vec4<u32>(0u, var_0.a.b, 1u, var_3.b) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-42184i, var_0.a.e, u_input.e, 11413i), vec4<i32>(-1i, var_3.d, u_input.e, 2147483647i))), min(1i, 48501i), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(-2502i, 0i), var_2.x)));
    var var_6 = func_4(~(~1u) <= u_input.a.x, Struct_3(-(var_3.c | vec4<i32>(1i, u_input.d.x, u_input.d.x, u_input.d.x)) | _wgslsmith_mod_vec4_i32(var_3.c << (u_input.a % vec4<u32>(32u)), var_0.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1180f, var_1.x) - vec4<f32>(-592f, -1809f, var_1.x, var_1.x)), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), -21950i), func_4(func_4(!var_3.a.x, func_1(), false).a.x, Struct_3(vec4<i32>(~(-2147483647i), var_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.e, -1i)), func_1().c), vec4<f32>(var_1.x, -222f, _wgslsmith_f_op_f32(abs(2394f)), func_1().b.x), 45566i), func_4(all(var_3.a.xx), func_1(), var_4.a.a.x).a.x).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

