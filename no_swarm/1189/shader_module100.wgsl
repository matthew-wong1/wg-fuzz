struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21>;

var<private> global1: array<Struct_2, 6>;

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-119f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(679f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1253f - 421f)))));
    global2 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-627f, _wgslsmith_f_op_f32(-var_0))) * vec2<f32>(var_0, var_0)), vec2<f32>(759f, 695f));
    var var_2 = vec3<i32>(1i, 1i, 1i);
    var var_3 = firstTrailingBit(vec2<i32>(15057i, -(i32(-1i) * -308i)));
    return true;
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(907f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1038f), -1000f, !func_3(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0))))));
    let var_2 = global2[_wgslsmith_index_u32(u_input.b.x, 21u)];
    let var_3 = arg_0.c;
    var var_4 = _wgslsmith_f_op_f32(-609f - -937f);
    return select(select(vec3<bool>(true, any(vec2<bool>(true, false)), true), !vec3<bool>(all(vec2<bool>(false, var_0)), var_0, true), true), vec3<bool>(any(select(select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), var_0), vec2<bool>(var_0, var_0), var_0)), 4294967295u <= _wgslsmith_sub_u32(u_input.b.x << (32308u % 32u), u_input.a | 23377u), !(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 90141u), vec3<u32>(var_3.a, 1u, 100903u)) >= 1u)), !any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(var_0, var_0, var_0))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = 19280u;
    let var_1 = !select(vec3<bool>(any(vec3<bool>(true, true, true)), false, false || any(vec3<bool>(false, true, false))), func_2(Struct_3(arg_0, 63738u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(3855u, arg_1.a), 21u)], ~arg_3, Struct_2(u_input.a, arg_1, arg_2.x, Struct_1(arg_0.a, arg_2.x, arg_1.c)))), vec3<bool>(false, true, false));
    var var_2 = _wgslsmith_add_i32(max(1i, abs(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_1.c, arg_0.b.c, arg_2.x), vec4<i32>(arg_0.d.c, arg_1.b, 3434i, arg_3.x))))), _wgslsmith_div_i32(_wgslsmith_mult_i32(-abs(56311i), 1i), max(countOneBits(_wgslsmith_mod_i32(arg_2.x, arg_3.x)), countOneBits(arg_1.b))));
    global2 = array<Struct_1, 21>();
    global0 = array<vec3<u32>, 21>();
    return !(!select(!(!vec4<bool>(false, var_1.x, var_1.x, true)), vec4<bool>(true, true, !var_1.x, false), !all(vec3<bool>(var_1.x, var_1.x, var_1.x))));
}

fn func_4(arg_0: vec4<bool>) -> bool {
    let var_0 = vec2<u32>(min(u_input.a, 1u), _wgslsmith_clamp_u32(~(60191u >> (_wgslsmith_sub_u32(u_input.a, 28439u) % 32u)), (u_input.b.x >> (firstLeadingBit(u_input.b.x) % 32u)) | (~u_input.b.x >> (~55962u % 32u)), u_input.a));
    global0 = array<vec3<u32>, 21>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1444f)))), -871f)) + _wgslsmith_f_op_f32(460f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(755f, -145f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1177f, -344f), _wgslsmith_f_op_f32(sign(751f))))));
    var var_2 = Struct_5(firstTrailingBit(countOneBits(vec4<u32>(1u | var_0.x, u_input.a, u_input.a << (var_0.x % 32u), u_input.a ^ 60618u))));
    var var_3 = !all(arg_0.wy);
    return !arg_0.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(arg_3, arg_2, Struct_1(~(_wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(31119u, 1u, 0u, arg_3.a)) >> (_wgslsmith_clamp_u32(32872u, arg_3.d.a, u_input.a) % 32u)), -(~(-8832i)), arg_3.b.b & arg_3.c), ~(firstLeadingBit(vec3<i32>(17986i, 0i, -6160i)) ^ ((vec3<i32>(1i, arg_3.d.c, arg_3.b.b) << (global0[_wgslsmith_index_u32(49439u, 21u)] % vec3<u32>(32u))) | max(vec3<i32>(arg_3.b.b, 30486i, 16468i), vec3<i32>(37450i, arg_3.d.b, -50261i)))), Struct_2(0u, Struct_1(arg_2, -_wgslsmith_dot_vec2_i32(vec2<i32>(-35991i, -1i), vec2<i32>(arg_3.b.c, arg_3.c)), ~arg_3.c), -1i | arg_3.c, arg_3.b));
    var var_1 = Struct_4(u_input.b.x, Struct_2(~var_0.c.a, Struct_1(_wgslsmith_sub_u32(abs(arg_2), 4294967295u), ~_wgslsmith_add_i32(arg_3.b.c, arg_3.c), 101410i), -(_wgslsmith_dot_vec2_i32(var_0.d.yx, var_0.d.xy) >> (~4294967295u % 32u)), var_0.a.d));
    var var_2 = any(vec2<bool>(u_input.a != ~(~1950u), any(!select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)))));
    global1 = array<Struct_2, 6>();
    let var_3 = var_0;
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<bool>(func_4(!func_1(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(u_input.a, 21u)], vec3<i32>(-1i, 6574i, -22606i), vec3<i32>(-21640i, 0i, -1i))), true & ((u_input.a << (u_input.b.x % 32u)) < 4294967295u), all(!func_2(Struct_3(Struct_2(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 21u)], -13892i, Struct_1(u_input.b.x, 0i, -1i)), 49631u, global2[_wgslsmith_index_u32(u_input.a, 21u)], vec3<i32>(0i, -1i, -2553i), global1[_wgslsmith_index_u32(44845u, 6u)])))), Struct_5(firstTrailingBit(~vec4<u32>(63933u, 45565u, 12201u, 4294967295u) >> (abs(vec4<u32>(u_input.b.x, 52668u, u_input.b.x, u_input.a)) % vec4<u32>(32u)))), 1u << (~(~select(u_input.a, u_input.b.x, true)) % 32u), Struct_2(~_wgslsmith_mult_u32(~4294967295u, max(u_input.b.x, 14656u)), Struct_1(u_input.a, abs(i32(-1i) * -17627i), firstTrailingBit(firstLeadingBit(4180i))), _wgslsmith_sub_i32(0i, -42346i), Struct_1(u_input.a, -_wgslsmith_div_i32(1635i, 1932i), _wgslsmith_sub_i32(-1i, ~2147483647i))));
    var var_1 = global1[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(~1u, var_0.b.a)), 6u)];
    var var_2 = global1[_wgslsmith_index_u32(16415u, 6u)];
    let var_3 = Struct_5(countOneBits(max(vec4<u32>(u_input.b.x, 0u, var_0.a, var_2.a) & vec4<u32>(u_input.b.x, 0u, 33970u, var_2.a), firstTrailingBit(~vec4<u32>(u_input.b.x, var_0.b.a, 21633u, var_2.d.a)))));
    global1 = array<Struct_2, 6>();
    let var_4 = var_1.d;
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1161f, _wgslsmith_f_op_f32(round(1410f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1223f + -192f), _wgslsmith_f_op_f32(-456f + 747f)))), -439f)));
    let var_6 = var_0.a;
    let var_7 = select(var_3.a.xw, var_3.a.yx, !vec2<bool>(true, (var_4.b ^ var_4.c) >= var_1.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(var_5, vec2<f32>(var_5.x, -1022f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, _wgslsmith_f_op_f32(round(var_5.x)), var_5.x, var_5.x)))), ~max(u_input.a, ~_wgslsmith_div_u32(0u, 4294967295u)), reverseBits(abs(abs(vec3<i32>(var_0.d.b, var_2.c, -9213i)))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(abs(var_2.b.b), ~1i, -var_2.b.b), -_wgslsmith_add_vec3_i32(vec3<i32>(var_1.c, 0i, 2147483647i), vec3<i32>(1i, 1i, 2147483647i))));
}

