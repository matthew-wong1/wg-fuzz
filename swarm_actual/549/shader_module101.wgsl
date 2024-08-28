struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(vec2<u32>(min(135123u, 111550u), 0u))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, select(11514u, arg_2, arg_1)), ~abs(vec2<u32>(23574u, arg_2)), vec2<u32>(~arg_2, arg_2)), u_input.c.yz));
    global0 = array<vec2<bool>, 28>();
    let var_1 = var_0.a;
    var_0 = Struct_2(var_0.a, ~var_1.a);
    let var_2 = Struct_4(Struct_2(var_0.a, abs(vec2<u32>(_wgslsmith_mod_u32(var_1.a.x, 0u), var_0.b.x))), Struct_1(~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.zx, u_input.c.yx), _wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.a.a.x), var_0.a.a))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(21194u, 44468u, var_1.a.x, arg_2), vec4<u32>(var_1.a.x, arg_2, 0u, arg_2))), reverseBits(countOneBits(vec4<u32>(0u, 4294967295u, u_input.c.x, 4294967295u))), vec4<u32>(6637u, _wgslsmith_div_u32(var_1.a.x, arg_2), ~1u, arg_2)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, u_input.d, 1u) >> (abs(vec4<u32>(18790u, arg_2, u_input.c.x, 0u)) % vec4<u32>(32u)), vec4<u32>(var_0.b.x, ~u_input.c.x, 98971u, ~var_1.a.x), ~(~vec4<u32>(u_input.d, u_input.c.x, 20241u, 4294967295u)))), all(select(global0[_wgslsmith_index_u32(arg_2, 28u)], !(!vec2<bool>(arg_1, arg_1)), arg_1 == arg_1)), var_0.a);
    return select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), var_2.d), select(vec3<bool>(any(vec2<bool>(true, false)) && false, select(var_2.d, true, false) & any(vec4<bool>(arg_1, arg_1, false, arg_1)), !(12543u != u_input.d)), vec3<bool>(arg_1, all(!vec2<bool>(false, arg_1)), !var_2.d), all(!(!vec2<bool>(false, arg_1)))), select(vec3<bool>(!any(vec3<bool>(false, arg_1, true)), true, arg_1), select(vec3<bool>(all(vec2<bool>(false, var_2.d)), true, false & var_2.d), vec3<bool>(arg_1, false, all(vec3<bool>(true, true, arg_1))), true), _wgslsmith_sub_i32(4981i | u_input.a.x, u_input.a.x | -29503i) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i) ^ u_input.a, ~u_input.a)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(countOneBits(max(vec2<u32>(45787u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.d, 0u), vec4<u32>(u_input.c.x, u_input.b, 12130u, 1u))), u_input.c.zx)));
    let var_1 = select(select(vec3<bool>(true, select(true, true, true), true), func_3(1490f, true, (var_0.a.x | 51967u) ^ ~var_0.a.x), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true))), !func_3(2349f, true, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(19675u, u_input.c.x)), vec2<u32>(1u, 43277u) & var_0.a)), select(!vec3<bool>(all(vec4<bool>(true, true, false, false)), u_input.d != var_0.a.x, true), !vec3<bool>(all(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true)), true), false));
    let var_2 = Struct_1(vec2<u32>(1u, u_input.c.x));
    let var_3 = _wgslsmith_mod_u32(countOneBits(var_2.a.x), _wgslsmith_clamp_u32(var_0.a.x, abs(firstLeadingBit(u_input.c.x)), ~1u) ^ ~u_input.d);
    let var_4 = any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.x, true, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), select(vec4<bool>(true, true, var_1.x, true), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1.x), false || func_3(875f, var_1.x, u_input.b).x), vec4<bool>(true, select(true, var_1.x, false) || !var_1.x, var_1.x, var_1.x), true));
    return Struct_4(Struct_2(var_0, _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_3, 0u)), var_0.a) >> (abs(_wgslsmith_mult_vec2_u32(var_0.a, u_input.c.zz)) % vec2<u32>(32u))), Struct_1(~var_2.a << (vec2<u32>(min(u_input.c.x, 93845u), 76699u) % vec2<u32>(32u))), abs(abs(~select(vec4<u32>(u_input.d, 4294967295u, 9813u, var_2.a.x), vec4<u32>(4294967295u, u_input.c.x, var_2.a.x, 830u), vec4<bool>(var_1.x, var_4, true, true)))), var_1.x, var_2);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> vec2<i32> {
    global0 = array<vec2<bool>, 28>();
    var var_0 = _wgslsmith_mod_i32(-reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), min(vec2<i32>(2147483647i, -1i), u_input.a))), -_wgslsmith_div_i32(-1i, -1i));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(-239f)), _wgslsmith_f_op_f32(trunc(1012f)), 579f);
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(999f, var_1.x, var_1.x) * vec3<f32>(var_1.x, 452f, var_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-348f, 1017f, -1567f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, var_1.x, var_1.x) * vec3<f32>(var_1.x, var_1.x, var_1.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -117f) - _wgslsmith_f_op_f32(sign(var_1.x))), var_1.x, var_1.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), -231f)))))));
    return u_input.a;
}

fn func_1() -> i32 {
    global0 = array<vec2<bool>, 28>();
    var var_0 = true;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, ~u_input.a.x), vec2<i32>(~15954i << (~u_input.d % 32u), -2147483647i)), ~max(func_4(-1i > u_input.a.x, u_input.d, Struct_1(u_input.c.yx), func_2()), -vec2<i32>(-34178i, -38269i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 28>();
    let var_0 = u_input.a.x;
    let var_1 = vec4<i32>(func_1() << (reverseBits(u_input.d) % 32u), -2147483647i, -_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -1i);
    let var_2 = u_input.c.yx;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1135f * -573f)))))), 126f);
    let var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(733f * 177f), _wgslsmith_f_op_f32(abs(2143f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(266f, 626f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-502f, -166f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2006f, 2804f) - vec2<f32>(-927f, 1258f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1213f, 1000f))))));
    var var_5 = Struct_1(vec2<u32>(1u, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(335f, abs(~(_wgslsmith_add_vec3_u32(vec3<u32>(96663u, 58526u, var_5.a.x), vec3<u32>(0u, 9942u, 1u)) | _wgslsmith_sub_vec3_u32(u_input.c, u_input.c))), _wgslsmith_div_i32(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mult_i32(var_1.x, u_input.a.x)), reverseBits(select(1i, var_0, false))), var_1.x));
}

