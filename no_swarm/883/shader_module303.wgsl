struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_3,
    d: vec4<i32>,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> vec3<bool> {
    var var_0 = !select(!(!arg_1.a.zww), vec3<bool>(true, (arg_1.a.x & true) & !arg_2, all(arg_1.a)), !arg_1.a.zyw);
    var var_1 = Struct_2(Struct_1(arg_1.a.zw, global0.c, -vec3<i32>(_wgslsmith_div_i32(1i, arg_3), u_input.b, _wgslsmith_add_i32(14608i, -2147483647i)), arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1335f, -1241f, 645f) + vec3<f32>(1954f, 307f, arg_0))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.c.x, arg_1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(834f, arg_0, arg_0) - vec3<f32>(1478f, -1052f, global0.c.x)))))), Struct_1(select(arg_1.a.zx, select(arg_1.a.wy, select(vec2<bool>(arg_2, var_0.x), vec2<bool>(false, arg_1.a.x), var_0.x), !vec2<bool>(arg_2, false)), !select(arg_1.a.xw, vec2<bool>(false, arg_1.a.x), vec2<bool>(arg_1.a.x, arg_2))), global0.c, abs(vec3<i32>(global0.a, -11144i | u_input.b, _wgslsmith_div_i32(31178i, u_input.d.x))), select(!vec4<bool>(false, true, var_0.x, var_0.x), arg_1.a, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(538f, 306f, global0.c.x)))))), Struct_1(var_0.zx, global0.c, firstLeadingBit(vec3<i32>(arg_3, u_input.b, 1634i) << (vec3<u32>(4294967295u, 1u, 14580u) % vec3<u32>(32u))) & -vec3<i32>(82173i, 32558i, arg_3), !select(select(vec4<bool>(false, var_0.x, arg_1.a.x, false), vec4<bool>(false, arg_1.a.x, true, arg_2), arg_2), arg_1.a, !var_0.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_1.b, 1391f), vec3<f32>(821f, arg_1.b, arg_1.b))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(322f)))), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_0)))));
    let var_2 = vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-299f, _wgslsmith_f_op_f32(-614f + global0.c.x))))));
    var var_3 = !vec4<bool>(all(vec4<bool>(select(var_0.x, var_1.c.a.x, true), true, true, arg_1.a.x || false)), all(!arg_1.a.wwy) & true, true, var_0.x);
    let var_4 = ~max(firstLeadingBit(vec4<i32>(2147483647i, -1i, -2147483647i, global0.a)), vec4<i32>(-18434i, 1240i, -1i, -1i)) >> (~(~vec4<u32>(~1u, ~u_input.e, _wgslsmith_add_u32(0u, global0.b.x), min(global0.b.x, global0.b.x))) % vec4<u32>(32u));
    return vec3<bool>(all(var_0.yx), var_1.a.a.x, !select(all(vec2<bool>(var_1.b.a.x, false)) | true, var_3.x, (global0.b.x < u_input.c) & false));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    var var_1 = abs(global0.b.yz);
    let var_2 = arg_1;
    var var_3 = select(global0.b, u_input.a.zyy, select(func_3(_wgslsmith_f_op_f32(arg_2.b.x - _wgslsmith_f_op_f32(step(arg_2.e.x, arg_2.b.x))), Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -614f)), arg_1, _wgslsmith_sub_i32(~u_input.b, var_0.c.x)), arg_2.d.xwx, 14188u <= ~u_input.a.x));
    global0 = Struct_5(reverseBits(-max(0i, ~global0.a)), vec3<u32>(~4294967295u, u_input.e, u_input.c), _wgslsmith_f_op_vec2_f32(sign(arg_2.e.xz)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1398f - _wgslsmith_f_op_f32(exp2(global0.c.x)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(floor(global0.c.x)) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, false), true, Struct_1(vec2<bool>(false, true), global0.c, vec3<i32>(-2147483647i, 48412i, u_input.d.x), vec4<bool>(true, true, false, false), vec3<f32>(-2447f, 246f, global0.c.x)))), global0.c.x))), vec2<f32>(1000f, -323f), vec3<i32>(global0.a, select(-countOneBits(global0.a), ~select(u_input.b, 0i, true), (1473f <= global0.c.x) && any(vec2<bool>(true, true))), i32(-1i) * -1875i), !select(vec4<bool>(all(vec2<bool>(true, false)), true, true, all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, false, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2072f) * _wgslsmith_f_op_f32(step(global0.c.x, global0.c.x)))), global0.c.x, global0.c.x));
    var var_1 = Struct_5(firstLeadingBit(-1i), max(global0.b, vec3<u32>(global0.b.x, u_input.a.x, global0.b.x)), global0.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(var_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global0.c + var_1.c)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-var_1.c.x))))));
    let var_3 = ~(~global0.b.yx);
    let var_4 = 4294967295u;
    return Struct_1(!vec2<bool>(all(var_0.d), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, var_0.e.x)), _wgslsmith_sub_vec3_i32(~(select(vec3<i32>(6114i, 0i, var_1.a), var_0.c, var_0.a.x) & vec3<i32>(var_0.c.x, var_0.c.x, -22881i)), abs(var_0.c)), var_0.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -173f), global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.c.x)), var_2.x)), 1723f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-529f, global0.c.x, -423f, 1430f))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, 806f, global0.c.x), vec4<f32>(1000f, -365f, 250f, global0.c.x)), true)), vec4<f32>(_wgslsmith_f_op_f32(global0.c.x - global0.c.x), _wgslsmith_f_op_f32(global0.c.x - global0.c.x), _wgslsmith_f_op_f32(-1250f * -1000f), _wgslsmith_f_op_f32(-global0.c.x))))), func_1(), Struct_3(vec4<bool>(!(u_input.e <= global0.b.x), !any(vec3<bool>(false, false, false)), _wgslsmith_add_u32(global0.b.x, 118011u) >= abs(4294967295u), !all(vec3<bool>(true, false, false))), 2804f), vec4<i32>(_wgslsmith_sub_i32(~u_input.d.x >> (20191u % 32u), u_input.d.x), ~(-1i), 2147483647i, -1i), global0.a ^ -18073i);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1107f, var_0.c.b, 390f, 1258f) + vec4<f32>(global0.c.x, global0.c.x, -824f, -399f)), vec4<f32>(-262f, global0.c.x, global0.c.x, -749f))))), func_1(), var_0.c, min(abs(vec4<i32>(1i, global0.a, _wgslsmith_sub_i32(u_input.d.x, var_0.b.c.x), -1i)), countOneBits(var_0.d)), _wgslsmith_add_i32(u_input.b, 0i | (0i | global0.a)));
    global0 = Struct_5(67466i & -(~(-u_input.d.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~max(global0.b.x, 1u), ~(global0.b.x | 0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.b.x, global0.b.x, 1u), abs(vec3<u32>(u_input.c, 31570u, 36348u)))), vec3<u32>(u_input.e, reverseBits(u_input.a.x) << (421u % 32u), 1u), u_input.a.xwy), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.c, var_0.b.e.zy)) * _wgslsmith_div_vec2_f32(vec2<f32>(-471f, -483f), _wgslsmith_f_op_vec2_f32(-global0.c))), var_0.b.e.xx)));
    global0 = Struct_5(-_wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a, var_0.d.x, u_input.b), var_0.d.zyx), ~abs(var_0.d.yzx)), select(vec3<u32>(_wgslsmith_div_u32(global0.b.x, global0.b.x), global0.b.x, u_input.a.x) ^ ~(vec3<u32>(0u, u_input.a.x, 0u) << (global0.b % vec3<u32>(32u))), ~(~vec3<u32>(global0.b.x, u_input.e, u_input.a.x)), vec3<bool>(true, false, false)), _wgslsmith_div_vec2_f32(func_1().e.xz, global0.c));
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(131f)), -661f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.b, global0.c.x))) + _wgslsmith_f_op_f32(global0.c.x - 976f)), global0.c.x), var_0.b, var_0.c, ~(~(vec4<i32>(-33930i, -5321i, u_input.b, -39060i) | var_0.d)), ~_wgslsmith_div_i32(var_0.e, ~min(u_input.d.x, 0i)));
    var var_2 = Struct_2(func_1(), func_1(), var_1.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-178f, -128f, global0.c.x)) + vec3<f32>(var_0.a.x, var_1.a.x, var_1.a.x)))))));
    global0 = Struct_5(0i, vec3<u32>(54374u, 6054u, ~(~u_input.c)) << (vec3<u32>(global0.b.x, ~global0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), global0.b.zz) >> (u_input.a.x % 32u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_2.d.zz + vec2<f32>(734f, 1427f))))))));
    var var_3 = Struct_5(-var_2.b.c.x, ~_wgslsmith_mult_vec3_u32(~vec3<u32>(10751u, global0.b.x, 26490u), _wgslsmith_add_vec3_u32(vec3<u32>(70297u, u_input.e, 9583u), u_input.a.zzz)) << (global0.b % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.b.e.yy))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.b), _wgslsmith_f_op_f32(round(global0.c.x))), 619f)));
    global0 = Struct_5(_wgslsmith_add_i32(select(-5196i, global0.a, true), var_3.a) >> (_wgslsmith_mod_u32(select(88040u, firstLeadingBit(1u), false), countOneBits(0u)) % 32u), reverseBits(u_input.a.xwy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c - _wgslsmith_div_vec2_f32(var_1.a.yw, var_2.d.zx)) + _wgslsmith_f_op_vec2_f32(-var_3.c)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -104f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec3_u32(max(vec3<u32>(1u, var_3.b.x, 4294967295u), vec3<u32>(var_3.b.x, u_input.a.x, 67629u)), firstTrailingBit(vec3<u32>(4294967295u, global0.b.x, var_3.b.x)))), global0.b.x, _wgslsmith_f_op_f32(-func_1().b.x));
}

