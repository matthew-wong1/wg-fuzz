struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(333f, -1426f), vec2<f32>(-136f, 157f), vec2<f32>(783f, -363f), vec2<f32>(1000f, 1088f));

var<private> global1: i32 = -71987i;

var<private> global2: array<vec3<u32>, 30>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = vec4<bool>(!(!arg_0.a), arg_0.a, false, arg_0.a);
    global1 = _wgslsmith_add_i32(arg_1, _wgslsmith_add_i32(arg_1, -(~_wgslsmith_add_i32(arg_1, -2147483647i))));
    let var_1 = arg_0.d.x;
    let var_2 = var_1;
    var var_3 = u_input.a;
    return false;
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = !vec4<bool>(true, true | all(vec2<bool>(true, true)), !(u_input.a.x > -21443i), func_2(Struct_1(false, ~4294967295u, select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), arg_0.zz), -_wgslsmith_mod_i32(u_input.a.x, -73218i)));
    let var_1 = Struct_4(Struct_2(var_0.yz, vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x | 2783i), Struct_1(2147483647i >= (2621i | u_input.a.x), reverseBits(~0u), vec3<bool>(false, true, var_0.x), _wgslsmith_f_op_vec2_f32(-arg_0.zz))), ~vec4<i32>(_wgslsmith_add_i32(2147483647i, -1i), -13005i, _wgslsmith_mod_i32(-21497i, 1i), -1i) ^ vec4<i32>(u_input.a.x, ~(-2147483647i), _wgslsmith_mult_i32(u_input.a.x, -u_input.a.x), u_input.a.x), Struct_3(arg_0.x, _wgslsmith_dot_vec3_u32(~global2[_wgslsmith_index_u32(1544u, 30u)], reverseBits(vec3<u32>(29238u, 0u, 93002u))) >> (1u % 32u), Struct_1(true, 1u, select(!var_0.yxx, vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, true, var_0.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18316u), reverseBits(vec2<u32>(13369u, 1u))), 4u)]), select(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x, !(false == var_0.x))), abs(abs(~vec2<u32>(1u, 47523u))));
    global1 = -(~(max(-1i, u_input.a.x) >> (_wgslsmith_mult_u32(abs(16574u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.c.b, 67776u, var_1.a.c.b), global2[_wgslsmith_index_u32(28531u, 30u)])) % 32u)));
    global2 = array<vec3<u32>, 30>();
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xz) + var_1.c.c.d), vec2<f32>(var_1.a.c.d.x, arg_0.x), var_0.ww));
    return all(select(var_1.a.a, !select(select(var_0.wy, vec2<bool>(var_0.x, var_0.x), var_0.x), !vec2<bool>(var_0.x, var_0.x), !var_1.c.c.c.xx), !var_1.a.c.c.yx));
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    global0 = array<vec2<f32>, 4>();
    let var_1 = _wgslsmith_sub_i32(u_input.a.x, u_input.a.x) ^ _wgslsmith_clamp_i32(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 34006i, u_input.a.x), vec3<i32>(-21733i, u_input.a.x, -1i))), _wgslsmith_sub_i32(0i, firstTrailingBit(-459i)), _wgslsmith_mod_i32(55683i, _wgslsmith_clamp_i32(12105i, u_input.a.x, u_input.a.x)));
    var var_2 = _wgslsmith_div_u32(max(27083u, _wgslsmith_sub_u32(select(1u, 780u, true), 20630u)), ~1u);
    var_2 = ~18533u;
    return Struct_2(vec2<bool>(true, func_2(Struct_1(true, max(1u, 1u), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec2<f32>(688f, -984f)), var_1)), u_input.a.xw ^ u_input.a.zx, Struct_1(!(!func_3(vec3<f32>(-1850f, -2692f, 1568f))), ~0u, select(vec3<bool>(true, select(false, false, false), all(vec3<bool>(true, true, false))), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(58012u, 4u)])) * _wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(43103u, 4u)])))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    global2 = array<vec3<u32>, 30>();
    var var_0 = arg_0.c.c.x;
    var var_1 = select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.b, arg_1), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_0.c.b) & _wgslsmith_mod_vec2_u32(vec2<u32>(12845u, 41970u), vec2<u32>(1u, 15128u)), abs(vec2<u32>(1u, arg_0.c.b)))), arg_1, all(arg_0.c.c));
    let var_2 = arg_0.c.c.x;
    var_0 = func_1().a.x & false;
    return Struct_2(arg_0.c.c.yx, u_input.a.wz, func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1204f))), 1569f, -333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1659f, 799f)))))));
    global0 = array<vec2<f32>, 4>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.xyw, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.yxx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yxz)), vec3<bool>(true, true, true))))));
    let var_2 = func_4(func_1(), ~(~(~abs(4294967295u))));
    let var_3 = var_2.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

