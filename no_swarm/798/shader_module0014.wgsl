struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(2147483647i, -1615i, -56400i), vec3<i32>(-42722i, i32(-2147483648), -13494i), vec3<i32>(31566i, -1597i, 26695i), vec3<i32>(-6654i, 28133i, 0i), vec3<i32>(1i, -7751i, 23723i), vec3<i32>(2992i, -23569i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(-18024i, 1i, 40253i), vec3<i32>(-4343i, 0i, 1i), vec3<i32>(28575i, 1i, -22424i), vec3<i32>(-1i, -14554i, 1i), vec3<i32>(0i, 20080i, 4009i), vec3<i32>(1i, 2147483647i, -39120i), vec3<i32>(1i, -1i, 12770i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(-36396i, 2147483647i, i32(-2147483648)), vec3<i32>(-54908i, -12234i, -17221i), vec3<i32>(0i, -74420i, -1i), vec3<i32>(1i, 7794i, 15626i), vec3<i32>(2147483647i, -1i, -51699i), vec3<i32>(-14986i, -64851i, i32(-2147483648)), vec3<i32>(16745i, -14850i, -43820i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(select(-1004f, _wgslsmith_f_op_f32(trunc(318f)), true));
    let var_1 = vec2<bool>(true, true);
    global0 = array<vec3<i32>, 22>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 1364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1504f) * _wgslsmith_f_op_f32(-var_0)))));
    let var_3 = (-(vec2<i32>(2147483647i, 2147483647i) & max(vec2<i32>(-1i, arg_0.b), vec2<i32>(arg_0.b, 2147483647i))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) | -_wgslsmith_sub_vec2_i32(~min(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(-19829i, arg_0.b)), vec2<i32>(-36683i, arg_0.b) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)));
    return all(vec3<bool>(false | any(!vec4<bool>(false, var_1.x, var_1.x, var_1.x)), all(vec3<bool>(true, true, true)), !var_1.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    global0 = array<vec3<i32>, 22>();
    let var_0 = Struct_4(vec4<bool>(_wgslsmith_mod_i32(arg_0.a.b, _wgslsmith_mult_i32(-31433i, arg_0.a.b)) < ~(-48537i), arg_1.x, arg_1.x, false), vec4<bool>(!all(!vec4<bool>(arg_1.x, false, arg_1.x, true)), arg_1.x, arg_0.a.a > -1446f, false), arg_0.a, vec4<bool>(func_3(Struct_1(_wgslsmith_f_op_f32(arg_0.a.a + arg_0.a.a), ~(-21920i))), true, func_3(arg_0.a), func_3(arg_0.a)));
    let var_1 = Struct_3(Struct_1(var_0.c.a, var_0.c.b), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.a))), -14070i)));
    var var_2 = select(select(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), ~vec3<u32>(60890u, u_input.b, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, ~39763u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.b, 4294967295u), vec3<u32>(1u, u_input.a, 0u))), !var_0.b.wzy), vec3<u32>(_wgslsmith_div_u32(81543u, max(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.a, 1u)))), firstTrailingBit(_wgslsmith_mult_u32(u_input.b ^ u_input.a, 4294967295u)), firstLeadingBit(32116u)), true);
    var var_3 = u_input.b;
    return 1000f;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec2<bool>) -> vec2<bool> {
    global0 = array<vec3<i32>, 22>();
    let var_0 = _wgslsmith_clamp_vec2_u32(~abs(~(vec2<u32>(28216u, arg_1) & vec2<u32>(arg_1, 8312u))), ~(~select(vec2<u32>(u_input.a, arg_1), ~vec2<u32>(19183u, arg_1), true)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~9461u, u_input.a, _wgslsmith_div_u32(arg_1, 68432u)), ~vec3<u32>(4294967295u, u_input.a, 4294967295u)), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(24328u, 4294967295u)) & ~22330u)));
    var var_1 = -_wgslsmith_mult_i32(-(~(-1i)), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(-14478i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(22228i, -56546i, 1i, 15265i), vec4<i32>(-2147483647i, -1i, 0i, 1i))));
    return arg_3;
}

fn func_1() -> vec2<bool> {
    var var_0 = true;
    var_0 = false;
    var_0 = select(false, any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) | true, true);
    return select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(627f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1004f * 829f) - _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(100f, 2147483647i)), vec2<bool>(false, true)))), false)), _wgslsmith_mult_u32(0u, u_input.b) | ~66907u, any(vec3<bool>(true, true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = vec4<bool>(arg_0.x, false, true, true);
    var_0 = !select(!vec4<bool>(arg_0.x & var_0.x, false, arg_0.x, true), select(!vec4<bool>(arg_0.x, true, false, false), !(!vec4<bool>(var_0.x, arg_0.x, arg_0.x, false)), true), vec4<bool>(arg_0.x | (arg_1.b.a.a == 838f), arg_0.x, true != all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), min(4294967295u, u_input.a) <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a), vec4<u32>(18830u, 0u, u_input.b, 1u))));
    var var_1 = arg_1.a;
    var_1 = Struct_1(_wgslsmith_f_op_f32(max(arg_1.b.a.a, -812f)), _wgslsmith_sub_i32(var_1.b, reverseBits(var_1.b)) >> ((_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 0u), countOneBits(vec2<u32>(4892u, u_input.b))) | 5255u) % 32u));
    global0 = array<vec3<i32>, 22>();
    return Struct_4(!(!(!vec4<bool>(true, false, var_0.x, false))), vec4<bool>(!any(!var_0.xzx), false, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * -1000f), min(_wgslsmith_div_u32(104740u, 75758u), u_input.a), all(vec4<bool>(false, false, true, true)), vec2<bool>(true, 36918u < u_input.a)).x, !arg_0.x), arg_1.b.a, vec4<bool>(!var_0.x, false, 885f == var_1.a, arg_0.x));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    let var_0 = vec3<u32>(~1u, ((1u ^ u_input.a) ^ 1u) & ~72792u, ~u_input.a) << (vec3<u32>(u_input.b, 10262u, 0u) % vec3<u32>(32u));
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(arg_2, arg_1.c.a)), 1700f), _wgslsmith_div_i32(abs(arg_1.c.b), _wgslsmith_div_i32(abs(0i), -1i))), Struct_2(arg_0.c));
    let var_2 = arg_0.b.yyy;
    global0 = array<vec3<i32>, 22>();
    let var_3 = arg_1.a.x || func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(arg_0.c.a, arg_0.c.a)), max(arg_0.c.b, arg_0.c.b)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(select(func_1(), vec2<bool>(any(vec2<bool>(false, true)), func_3(Struct_1(207f, 32956i))), vec2<bool>(true, false)), Struct_3(Struct_1(-124f, ~41058i), Struct_2(Struct_1(1709f, -2147483647i)))), Struct_4(select(vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), true), vec4<bool>(true, all(vec2<bool>(true, false)), true, all(vec4<bool>(true, true, false, true))), true), vec4<bool>((21729u < u_input.a) == true, true, _wgslsmith_dot_vec2_i32(vec2<i32>(54513i, -7673i), vec2<i32>(24370i, 0i)) >= 1i, any(vec3<bool>(false, true, true)) && true), func_5(select(vec2<bool>(false, false), vec2<bool>(true, true), func_5(vec2<bool>(false, false), Struct_3(Struct_1(-2157f, 1i), Struct_2(Struct_1(553f, -2147483647i)))).b.yw), Struct_3(Struct_1(239f, -30779i), Struct_2(Struct_1(-1205f, 9690i)))).c, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(1101f, 1i)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))))));
    var var_1 = all(vec2<bool>((var_0.a.b << (4294967295u % 32u)) > var_0.a.b, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(firstTrailingBit(firstLeadingBit(vec2<i32>(10904i, 1i))), vec2<i32>(_wgslsmith_sub_i32(var_0.a.b, var_0.a.b), var_0.a.b) | (_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.b, -1i), vec2<i32>(-45882i, var_0.a.b)) >> (vec2<u32>(6153u, u_input.b) % vec2<u32>(32u)))));
}

