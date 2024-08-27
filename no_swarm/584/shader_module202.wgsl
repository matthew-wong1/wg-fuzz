struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(67199u, Struct_1(-5529i, 3421i, vec2<f32>(-2251f, -1112f), vec2<bool>(true, true), 4294967295u), 28252u, vec3<i32>(i32(-2147483648), -13206i, -27767i)), Struct_2(0u, Struct_1(-22612i, 2147483647i, vec2<f32>(-937f, -569f), vec2<bool>(false, true), 97222u), 18317u, vec3<i32>(8564i, i32(-2147483648), -14477i)), Struct_2(0u, Struct_1(-632i, -1i, vec2<f32>(339f, -1384f), vec2<bool>(true, true), 6107u), 1u, vec3<i32>(1i, -18523i, 0i)), Struct_2(1u, Struct_1(i32(-2147483648), -1i, vec2<f32>(1256f, -826f), vec2<bool>(false, false), 0u), 4294967295u, vec3<i32>(41279i, -3216i, 65981i)), Struct_2(27577u, Struct_1(13300i, 1i, vec2<f32>(1006f, -417f), vec2<bool>(false, true), 13785u), 134329u, vec3<i32>(13233i, 2147483647i, 28427i)), Struct_2(1u, Struct_1(41844i, 0i, vec2<f32>(1962f, -626f), vec2<bool>(true, false), 42523u), 15698u, vec3<i32>(2147483647i, -46987i, 1i)), Struct_2(1u, Struct_1(-557i, 1i, vec2<f32>(-1486f, -333f), vec2<bool>(false, false), 1u), 30503u, vec3<i32>(-49298i, -27352i, -41404i)), Struct_2(36540u, Struct_1(0i, 2147483647i, vec2<f32>(-1032f, -502f), vec2<bool>(false, false), 52575u), 20506u, vec3<i32>(1i, 34911i, 2147483647i)), Struct_2(31544u, Struct_1(1i, 47408i, vec2<f32>(804f, -216f), vec2<bool>(true, true), 1u), 11201u, vec3<i32>(30338i, 11269i, 24816i)), Struct_2(4294967295u, Struct_1(-71687i, 0i, vec2<f32>(272f, -388f), vec2<bool>(false, false), 0u), 1u, vec3<i32>(0i, 47992i, -45775i)), Struct_2(1u, Struct_1(-1i, -1203i, vec2<f32>(687f, 286f), vec2<bool>(true, false), 0u), 81960u, vec3<i32>(-10355i, -1i, 31044i)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-789f + _wgslsmith_div_f32(-1118f, 173f)), 968f) + -394f) + _wgslsmith_f_op_f32(f32(-1f) * -728f));
    let var_1 = 0u;
    var var_2 = max(-arg_0, reverseBits(-2147483647i));
    global0 = array<Struct_2, 11>();
    var_2 = abs(arg_0);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1333f, -1336f))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(435f, 621f)))))), vec2<f32>(-1211f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-828f)), _wgslsmith_f_op_f32(step(-861f, 1602f))))), true)));
}

fn func_2(arg_0: u32) -> u32 {
    global0 = array<Struct_2, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-501f, 1669f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-342f)))), _wgslsmith_f_op_f32(-3354f + -665f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(-29664i)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(886f, 1514f)))))));
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_1 = global0[_wgslsmith_index_u32(~0u << (_wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(1u, 4294967295u, 112931u)) << (vec3<u32>(arg_0, 4294967295u, 95797u) % vec3<u32>(32u)), vec3<u32>(arg_0, 65727u | arg_0, ~20185u)), vec3<u32>(arg_0, select(arg_0, ~arg_0, false), ~20107u)) % 32u), 11u)];
    return _wgslsmith_dot_vec3_u32(select(vec3<u32>(max(83153u, min(0u, 0u)), var_1.a, _wgslsmith_div_u32(1u >> (arg_0 % 32u), _wgslsmith_add_u32(48323u, 62430u))), ~max(~vec3<u32>(1u, 4294967295u, 0u), ~vec3<u32>(arg_0, 20303u, 4192u)), select(!select(vec3<bool>(false, true, true), vec3<bool>(var_1.b.d.x, true, true), vec3<bool>(var_1.b.d.x, true, var_1.b.d.x)), !select(vec3<bool>(true, false, var_1.b.d.x), vec3<bool>(var_1.b.d.x, true, true), var_1.b.d.x), all(var_1.b.d))), abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c, arg_0, var_1.b.e), vec3<u32>(0u, arg_0, arg_0) & vec3<u32>(var_1.a, var_1.b.e, var_1.c)) << (vec3<u32>(arg_0, 1u, _wgslsmith_clamp_u32(49659u, arg_0, 4294967295u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    return global0[_wgslsmith_index_u32(abs(firstLeadingBit(arg_0.x)), 11u)];
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = func_4(max(abs(abs(~vec3<u32>(arg_2.x, arg_2.x, arg_2.x))), min(~_wgslsmith_clamp_vec3_u32(vec3<u32>(13055u, arg_2.x, 1u), vec3<u32>(0u, 27531u, 5590u), vec3<u32>(arg_2.x, arg_2.x, arg_2.x)), ~vec3<u32>(77741u, 0u, 147487u))), (reverseBits(abs(vec4<i32>(arg_0, u_input.a.x, arg_1.x, -1i))) >> (abs(vec4<u32>(16372u, 18410u, 11156u, 4294967295u)) % vec4<u32>(32u))) >> ((vec4<u32>(~arg_2.x, _wgslsmith_add_u32(5245u, 14754u), abs(13341u), func_2(4294967295u)) | vec4<u32>(_wgslsmith_mult_u32(arg_2.x, 21632u), arg_2.x, 1u, ~1u)) % vec4<u32>(32u)), 2147483647i);
    var var_1 = _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, var_0.d.x), _wgslsmith_mod_i32(var_0.d.x, -2147483647i), arg_0), vec3<i32>(min(arg_0, 0i), 57497i, _wgslsmith_mod_i32(var_0.d.x, 0i)))), min(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(arg_1.x, var_0.d.x, arg_0) | vec3<i32>(-36313i, u_input.a.x, -25322i)), u_input.a), _wgslsmith_add_i32(-14295i, var_0.b.b)));
    let var_2 = max(33228i, arg_0);
    let var_3 = max(arg_2, select(vec2<u32>(~(~var_0.b.e), _wgslsmith_mod_u32(func_4(vec3<u32>(arg_2.x, 4294967295u, 1u), vec4<i32>(var_2, var_2, arg_1.x, arg_1.x), u_input.a.x).c, arg_2.x)), arg_2, !var_0.b.d.x));
    var var_4 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(34288i, 2147483647i, 10691i, u_input.a.x), vec4<i32>(-1i, ~arg_0, reverseBits(18775i), -u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(-75212i, 22720i, 1i, arg_1.x), vec4<i32>(1i, -12530i, 46934i, u_input.a.x)) & abs(vec4<i32>(-1i, arg_0, u_input.a.x, 1i))), _wgslsmith_mod_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, arg_0, -18013i, 41879i), vec4<i32>(24281i, u_input.a.x, 21875i, 2147483647i)), ~vec4<i32>(arg_0, 1i, -11270i, var_2)), vec4<i32>(arg_1.x, u_input.a.x, 2147483647i, var_0.b.a) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, 4294967295u, 154u, 59993u), vec4<u32>(var_0.b.e, 79610u, var_3.x, 22933u)) % vec4<u32>(32u))), ~min(select(vec4<i32>(u_input.a.x, 39887i, arg_1.x, 0i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, var_0.d.x), var_0.b.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d.x, 15311i, var_0.d.x, -1i), vec4<i32>(-2147483647i, var_2, arg_0, var_2)))), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.b, -2147483647i), vec2<i32>(-28017i, var_2)), var_2, 0i, _wgslsmith_dot_vec2_i32(var_0.d.yz, vec2<i32>(2147483647i, -32738i))), _wgslsmith_mult_vec4_i32(vec4<i32>(28868i, u_input.a.x, -21732i, var_2) >> (vec4<u32>(var_3.x, arg_2.x, 4294967295u, 11380u) % vec4<u32>(32u)), -vec4<i32>(0i, var_0.b.b, var_0.b.b, 2147483647i)))));
    return _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.x, var_3.x, arg_2.x), vec3<u32>(var_0.a, 0u, 38469u)), ~vec3<u32>(0u, var_0.a, 15567u))) >> (select(~vec3<u32>(14179u, 0u, arg_2.x), countOneBits(~vec3<u32>(4294967295u, arg_2.x, 16810u)), !select(vec3<bool>(var_0.b.d.x, true, false), vec3<bool>(false, var_0.b.d.x, true), var_0.b.d.x)) % vec3<u32>(32u)), vec3<u32>(max(~(~var_0.b.e), ~(~1u)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_2.x, 0u), vec2<u32>(1491u, 43221u), var_0.b.d), select(var_3, vec2<u32>(4294967295u, 1u), var_0.b.d)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 11>();
    let var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(0u, 12296u), _wgslsmith_div_u32(select(40532u, 40491u, false), ~38504u), ~42861u), vec3<u32>(1u, 1u, 1u));
    let var_1 = vec2<u32>(max(var_0, func_1(u_input.a.x, vec3<i32>(-16392i, u_input.a.x, u_input.a.x), vec2<u32>(var_0, var_0 << (50015u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1373f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2079f, 528f), vec2<f32>(-624f, -1977f)))))), reverseBits(max(~14425u, 1u)));
    global0 = array<Struct_2, 11>();
    var var_2 = !vec3<bool>(_wgslsmith_f_op_f32(-286f + _wgslsmith_f_op_f32(-1000f - -279f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(745f, 157f, true)) - 1f), false, all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    var var_3 = vec2<i32>(-_wgslsmith_div_i32(1i, u_input.a.x), u_input.a.x);
    let var_4 = select(vec4<bool>(false, var_2.x, !var_2.x, true), vec4<bool>(var_2.x, !var_2.x, !(all(vec3<bool>(var_2.x, true, var_2.x)) | !var_2.x), !(var_3.x != var_3.x) & func_4(~vec3<u32>(var_1.x, var_0, var_1.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), -10796i).b.d.x), false);
    var_3 = u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yy);
}

