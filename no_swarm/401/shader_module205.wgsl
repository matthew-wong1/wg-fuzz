struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false, vec3<i32>(44i, -62282i, i32(-2147483648)), false, false, -1i), Struct_1(false, vec3<i32>(0i, 0i, 19537i), false, false, 0i), Struct_1(false, vec3<i32>(16577i, -1i, 11797i), false, true, -13395i), Struct_1(true, vec3<i32>(1i, 2417i, -23079i), true, false, -5222i), Struct_1(true, vec3<i32>(21338i, -1i, 0i), true, true, -27907i), Struct_1(false, vec3<i32>(63559i, i32(-2147483648), -32917i), false, false, 32114i), Struct_1(false, vec3<i32>(-36355i, -31208i, 36189i), false, false, 1i), Struct_1(false, vec3<i32>(-26023i, 23049i, 1652i), false, false, -1i), Struct_1(true, vec3<i32>(17455i, -1774i, i32(-2147483648)), true, true, -11776i), Struct_1(false, vec3<i32>(22357i, i32(-2147483648), 2147483647i), false, true, i32(-2147483648)), Struct_1(false, vec3<i32>(-23023i, 21353i, -48984i), true, true, i32(-2147483648)), Struct_1(true, vec3<i32>(0i, 45537i, 0i), true, true, 0i), Struct_1(false, vec3<i32>(-9687i, -1i, -27560i), false, false, -1680i), Struct_1(false, vec3<i32>(13958i, 2147483647i, 1i), false, false, 22496i), Struct_1(false, vec3<i32>(0i, 0i, 0i), true, true, 3174i), Struct_1(false, vec3<i32>(12123i, -15539i, 0i), true, false, 1i), Struct_1(false, vec3<i32>(-3843i, 24455i, 28904i), false, false, 2147483647i), Struct_1(true, vec3<i32>(2147483647i, 1i, 2854i), false, false, 40894i), Struct_1(false, vec3<i32>(13306i, -6923i, 34194i), false, true, -58444i), Struct_1(false, vec3<i32>(-476i, i32(-2147483648), 18295i), true, true, 2147483647i), Struct_1(true, vec3<i32>(-81617i, 0i, -1i), true, false, -1i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> bool {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1118f, 1909f, arg_0.b.x, 1519f), vec4<f32>(-525f, arg_0.b.x, arg_0.b.x, -389f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-386f, 1908f, arg_0.b.x, 1571f))), vec4<f32>(arg_0.b.x, 960f, arg_0.b.x, 1372f))))));
    let var_2 = -2147483647i;
    var var_3 = 2147483647i;
    let var_4 = Struct_4(-23792i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-arg_0.b.x)) <= var_1.x, -vec3<i32>(_wgslsmith_mult_i32(5785i, -59461i), arg_1.b.x, -var_2), arg_1.d, arg_0.a, reverseBits(1i)), u_input.d, Struct_2(arg_3, Struct_1(true, -firstLeadingBit(arg_1.b), any(vec4<bool>(false, arg_3.x, false, arg_1.c)), arg_2, u_input.e.x), firstLeadingBit(max(firstTrailingBit(vec2<i32>(8709i, 1i)), vec2<i32>(8149i, u_input.c) ^ u_input.e.zx))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), var_1.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(237f))))))));
    return arg_0.b.x <= -1403f;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_3(func_3(Struct_3(var_0.x && select(var_0.x, true, var_0.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1951f, 1157f))))), global2[_wgslsmith_index_u32(~countOneBits(u_input.d), 21u)], true, !vec3<bool>(true, var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2, arg_2))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(322f, arg_2)))) + vec2<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 249f)))));
    var var_2 = Struct_3(var_0.x, _wgslsmith_f_op_vec2_f32(-var_1.b));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1681f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))));
    var_0 = !vec2<bool>(true, var_1.a);
    return all(vec4<bool>(u_input.e.x > (i32(-1i) * -14401i), all(select(vec4<bool>(var_0.x, var_2.a, var_2.a, true), vec4<bool>(var_2.a, var_0.x, var_1.a, var_1.a), !vec4<bool>(true, true, false, var_0.x))), !(!var_0.x), func_3(var_1, global1[_wgslsmith_index_u32(0u & arg_1, 24u)], true != var_2.a, vec3<bool>(var_1.a, false, false)) && (~(-1i) < arg_0)));
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    let var_1 = u_input.b.xy;
    var var_2 = vec4<bool>(true, true, all(!vec2<bool>(!var_0, true)), !all(vec3<bool>(true, true, true)) && true);
    var_2 = !(!select(vec4<bool>(!var_0, false, !var_2.x, true), vec4<bool>(func_2(u_input.e.x, 1u, -878f), !var_0, all(var_2.xyx), var_2.x), vec4<bool>(any(var_2.yzy), var_0, var_2.x, !var_0)));
    let var_3 = reverseBits(_wgslsmith_div_vec3_i32(u_input.b, u_input.b >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(33309u, 4294967295u, 4294967295u), ~vec3<u32>(0u, u_input.d, 76272u)) % vec3<u32>(32u))));
    return Struct_1(all(select(select(!vec2<bool>(var_2.x, var_0), !var_2.yy, var_1.x >= var_1.x), select(select(var_2.wx, var_2.xz, var_2.yz), select(var_2.wx, var_2.yx, var_2.zy), false), var_2.wy)), ~(~vec3<i32>(max(1i, -2147483647i), max(1i, -1i), 0i ^ var_3.x)), var_0, 1025f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(trunc(485f)))), -51046i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 18>();
    var var_0 = vec2<bool>(true, true);
    var var_1 = func_1();
    var_1 = func_1();
    var var_2 = ~(~u_input.d) | (_wgslsmith_sub_u32(u_input.d ^ ~1u, u_input.d) & u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(47595u, 1u), vec2<u32>(1u, u_input.d))), ~vec2<u32>(5421u, 4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-660f + 645f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, -2191f)), -244f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2262f * -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-768f, -802f, -1165f, 1135f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, -1000f, -529f, 1000f) - vec4<f32>(666f, -291f, -563f, 1568f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1497f, 463f, -448f)))), _wgslsmith_div_vec3_u32(~vec3<u32>(~0u, ~9075u, u_input.d), ~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 55534u), vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d)), vec3<u32>(1u, 4294967295u, 54975u), select(vec3<bool>(true, var_1.a, true), vec3<bool>(var_0.x, var_1.a, true), vec3<bool>(var_1.a, var_0.x, var_0.x)))), countOneBits(u_input.d));
}

