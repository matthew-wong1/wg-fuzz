struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(20839i, -29004i), vec2<i32>(-14898i, 993i), vec2<i32>(0i, -19689i), vec2<i32>(2147483647i, -40118i), vec2<i32>(-9405i, 2147483647i), vec2<i32>(24529i, -12963i), vec2<i32>(-31540i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -13960i));

var<private> global1: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(28835i, i32(-2147483648)), vec2<i32>(1i, 9088i), vec2<i32>(-1i, 49538i));

var<private> global2: array<Struct_5, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_3((_wgslsmith_add_vec2_u32(u_input.a.yz, _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 20375u), u_input.a.xz)) & _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 62775u), vec2<u32>(1u, 0u)), u_input.b.xw, vec2<u32>(28369u, 22091u))) & _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.a.x, 53283u)), firstLeadingBit(u_input.b.ww), countOneBits(~u_input.b.yy)), _wgslsmith_dot_vec3_i32(max(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(6982i, -2147483647i, -1i), vec3<i32>(-49297i, -2147483647i, 0i))), select(vec3<i32>(41675i, 1379i, -1i) >> (vec3<u32>(47280u, u_input.a.x, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, -5230i, -67407i), 15687u >= u_input.a.x)), ~(vec3<i32>(-1i) * -vec3<i32>(1i, 29658i, 23027i))), arg_1.x, ~(~(~u_input.b ^ ~u_input.b)), !(!arg_1));
    let var_1 = Struct_1(abs(var_0.b));
    global0 = array<vec2<i32>, 10>();
    let var_2 = !arg_1.x | !any(vec2<bool>(var_0.e.x, var_0.c));
    let var_3 = Struct_1(reverseBits(var_1.a));
    return Struct_2(u_input.a.x, abs(countOneBits(u_input.c.xz << (var_0.d.wz % vec2<u32>(32u)))) >> ((vec2<u32>(u_input.c.x, firstTrailingBit(1u)) & var_0.d.zx) % vec2<u32>(32u)), ~(-27689i), Struct_1(0i), Struct_1(-firstTrailingBit(-var_1.a)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> bool {
    global2 = array<Struct_5, 27>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f) + 910f)))), _wgslsmith_f_op_f32(-481f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-796f, -357f)), -181f))));
    return select(true, arg_0.x, all(vec3<bool>(arg_3.d.a == arg_1.a, arg_0.x, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))))) & (arg_0.x && true);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    let var_0 = 0u;
    let var_1 = any(!vec3<bool>(true, all(vec2<bool>(true, true)), func_3(vec4<bool>(true, true, true, true), Struct_1(arg_1), 1u, func_2(u_input.c.x, vec2<bool>(false, false)))));
    var var_2 = Struct_4(Struct_2(firstLeadingBit(u_input.a.x), vec2<u32>(~min(0u, 4294967295u), u_input.a.x), reverseBits(_wgslsmith_mult_i32(arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(71408i, 26955i, arg_1), vec3<i32>(arg_1, 45689i, arg_1)))), Struct_1(~arg_1), func_2(firstLeadingBit(0u), select(select(vec2<bool>(var_1, false), vec2<bool>(true, var_1), vec2<bool>(var_1, var_1)), select(vec2<bool>(true, var_1), vec2<bool>(true, true), var_1), !vec2<bool>(true, var_1))).e));
    let var_3 = Struct_4(Struct_2(var_2.a.b.x, select(u_input.b.wy, var_2.a.b, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(var_1, true), var_1), select(vec2<bool>(true, true), vec2<bool>(false, var_1), var_1))), ~1i << (var_2.a.b.x % 32u), func_2(75009u, !select(vec2<bool>(false, false), vec2<bool>(var_1, var_1), vec2<bool>(true, true))).d, func_2(select(_wgslsmith_mod_u32(var_0, var_2.a.b.x), ~var_2.a.a, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(var_1, var_1)), !var_1)).d));
    var var_4 = arg_0.x;
    return 71646u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(24763u, var_0.x, 53291u, 50419u), u_input.b), u_input.b), _wgslsmith_add_vec4_u32(firstTrailingBit(u_input.b), select(~u_input.b, vec4<u32>(var_0.x, 1u, u_input.b.x, 1u) << (vec4<u32>(u_input.b.x, u_input.a.x, 0u, u_input.c.x) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)))), min(~_wgslsmith_sub_vec4_u32(~u_input.b, vec4<u32>(u_input.c.x, var_0.x, u_input.a.x, u_input.c.x)), vec4<u32>(abs(0u ^ u_input.b.x), max(firstTrailingBit(var_0.x), var_0.x), u_input.c.x, 2806u)));
    var var_2 = var_0.x;
    global2 = array<Struct_5, 27>();
    var var_3 = Struct_4(Struct_2(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1157f, -429f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1357f, -239f) + vec2<f32>(-394f, 1000f))), 1i), ~var_1.zw, _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(var_1.x, 3u)], global0[_wgslsmith_index_u32(var_1.x, 10u)]), -1i), func_2(0u, vec2<bool>(true, true)).d, func_2(select(select(var_0.x, 1u, false), 4785u, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)).d));
    let var_4 = 23688i;
    let var_5 = var_3.a.e;
    let var_6 = -855f;
    let var_7 = select(vec2<bool>(false, all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))))), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), vec2<bool>(true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(select(u_input.b, vec4<u32>(var_3.a.a, var_0.x, var_1.x, var_0.x), vec4<bool>(true, false, true, var_7.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6 * _wgslsmith_f_op_f32(min(var_6, -1000f)))), -(vec3<i32>(1i, countOneBits(-6882i), var_5.a) ^ (-vec3<i32>(-5073i, 1i, -2147483647i) >> (~vec3<u32>(var_0.x, var_3.a.b.x, 4294967295u) % vec3<u32>(32u)))));
}

