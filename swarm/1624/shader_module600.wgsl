struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(false, false), 5992u, -181f), Struct_1(vec2<bool>(true, false), 54719u, -767f), Struct_1(vec2<bool>(false, true), 53u, 236f), Struct_1(vec2<bool>(true, false), 0u, -2118f), Struct_1(vec2<bool>(false, true), 1u, 790f), Struct_1(vec2<bool>(false, false), 12430u, 1127f), Struct_1(vec2<bool>(false, true), 1u, 1397f), Struct_1(vec2<bool>(true, true), 4618u, -1128f), Struct_1(vec2<bool>(true, true), 44606u, 702f), Struct_1(vec2<bool>(true, true), 29850u, -1000f), Struct_1(vec2<bool>(true, false), 4294967295u, -395f), Struct_1(vec2<bool>(true, true), 4294967295u, 1177f), Struct_1(vec2<bool>(false, false), 32683u, 897f), Struct_1(vec2<bool>(true, true), 50476u, 280f), Struct_1(vec2<bool>(true, false), 4294967295u, 464f), Struct_1(vec2<bool>(false, true), 51569u, 1000f), Struct_1(vec2<bool>(false, true), 37574u, 1207f), Struct_1(vec2<bool>(true, false), 1u, -271f), Struct_1(vec2<bool>(true, true), 19918u, -728f), Struct_1(vec2<bool>(true, true), 1u, -1000f), Struct_1(vec2<bool>(true, true), 4294967295u, 1403f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = -(vec2<i32>(~(-2147483647i), ~(2147483647i << (u_input.a.x % 32u))) & firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-3750i, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-7242i, 2147483647i)))));
    let var_1 = arg_1;
    let var_2 = vec2<u32>(1u, _wgslsmith_mod_u32(arg_1.b, ~(~(15198u & u_input.a.x))));
    var_0 = vec2<i32>(i32(-1i) * -(reverseBits(var_0.x) >> (_wgslsmith_div_u32(arg_1.b, u_input.a.x) % 32u)), abs(33104i));
    var_0 = firstTrailingBit(vec2<i32>(var_0.x, ~_wgslsmith_add_i32(29177i, -1i)) & vec2<i32>(2147483647i, 0i));
    return _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(var_1.b, var_2.x, u_input.a.x, 31924u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(max(37472u, var_1.b), ~u_input.a.x, 24179u, 0u), _wgslsmith_add_vec4_u32(u_input.a >> (vec4<u32>(65925u, 66008u, u_input.a.x, 0u) % vec4<u32>(32u)), vec4<u32>(arg_0, var_2.x, var_2.x, arg_1.b)), ~(~vec4<u32>(1426u, 97033u, 1u, 57304u)))));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_0 = abs(-23930i);
    let var_1 = !any(select(!(!vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_1.x)), vec4<bool>(true, arg_2.d.a.x, 10089u >= arg_2.d.b, arg_1.x), true));
    global0 = array<Struct_1, 21>();
    return 0u;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = vec2<bool>(false, !(arg_0 == arg_0));
    var var_1 = global0[_wgslsmith_index_u32(~func_4(u_input.a.x, select(!vec2<bool>(var_0.x, true), !var_0, true), Struct_2(-432f, var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1208f, -1000f) + vec2<f32>(-2291f, -1412f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, 414f))), Struct_1(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), ~3013u, arg_0), vec3<u32>(func_3(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), 1u, ~3565u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1296f, arg_0, 1421f))), 21u)];
    var var_2 = Struct_1(select(select(!vec2<bool>(false, var_0.x), !select(vec2<bool>(var_1.a.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true), select(var_1.a, var_1.a, true)), vec2<bool>(false, !var_1.a.x), all(!vec3<bool>(var_0.x, var_0.x, false))), u_input.a.x, _wgslsmith_f_op_f32(-1141f + -582f));
    var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    return -select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1969i, -31474i, -1853i), -vec4<i32>(-55347i, 1i, 2039i, 15471i)) << (abs(u_input.a.x) % 32u), ~_wgslsmith_mult_i32(-12701i, -44646i), var_1.a.x);
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_0 = func_2(_wgslsmith_f_op_f32(round(821f)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_1, arg_1))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1398f, arg_1), _wgslsmith_div_f32(-650f, 1306f))))), !(true & (true && any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1504f))))), Struct_1(vec2<bool>(true | (arg_0 >= arg_0), true), _wgslsmith_mod_u32(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 64647u, 1u), vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x)), Struct_1(vec2<bool>(true, true), 27523u, 1722f)), 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_1))))), ~u_input.a.xyw);
    return -1i <= _wgslsmith_sub_i32(~arg_0, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x | u_input.a.x;
    global0 = array<Struct_1, 21>();
    let var_1 = select(true & !func_1(~(-45395i), -379f), true, !any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)));
    var var_2 = _wgslsmith_f_op_f32(abs(1000f));
    let var_3 = abs(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, -13796i, 0i, -2147483647i), ~vec4<i32>(-31001i, -45057i, 1i, -10602i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x & var_3.x, vec3<f32>(988f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(747f, -2256f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-127f + -966f)), 1f, true))), reverseBits(u_input.a));
}

