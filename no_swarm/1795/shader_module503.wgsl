struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> i32 {
    var var_0 = Struct_5(countOneBits(vec3<i32>(-1i, -2147483647i, select(_wgslsmith_dot_vec3_i32(global1.e.a.zxy, global1.e.a.ywz), 37076i >> (arg_0.a.e.e.x % 32u), true))), Struct_3(arg_0.a, !any(!vec2<bool>(true, arg_0.a.b))), false);
    global1 = arg_0.a;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.d)))), 265f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-293f, 288f, -1530f, 1580f), vec4<f32>(-504f, global1.d, var_1, -1257f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d, 981f, 944f, global1.d))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1427f, var_1, arg_0.a.d, arg_0.a.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(505f, 588f, var_0.b.a.d, 1151f)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(167f, arg_0.a.d, -761f, 239f) * vec4<f32>(arg_1, -139f, var_1, 583f)), vec4<f32>(1687f, 379f, 265f, arg_1))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-960f, 527f, -1442f, global1.d))))))));
    global0 = array<vec3<i32>, 15>();
    return 1i;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = vec4<i32>(~(-1i), i32(-1i) * -_wgslsmith_sub_i32(-arg_0, -u_input.a.x), func_3(Struct_3(Struct_2(~global1.e.e, true, 67793i, global1.d, global1.e), all(select(vec4<bool>(global1.b, true, global1.b, true), vec4<bool>(true, global1.b, global1.b, false), global1.b))), _wgslsmith_f_op_f32(global1.d * global1.d)), -abs(20971i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * global1.d));
    let var_2 = countOneBits(u_input.e);
    let var_3 = Struct_3(Struct_2(reverseBits(~_wgslsmith_sub_vec2_u32(global1.a, global1.a)), !any(select(vec4<bool>(false, true, global1.b, true), vec4<bool>(global1.b, global1.b, global1.b, false), vec4<bool>(false, false, false, true))), _wgslsmith_sub_i32(-2147483647i, var_0.x << (34577u % 32u)), 680f, Struct_1(vec4<i32>(u_input.a.x, abs(21829i), min(2650i, u_input.b), ~var_0.x), ~(i32(-1i) * -2147483647i), vec2<i32>(-6775i, countOneBits(var_0.x)), -5860i, vec2<u32>(global1.a.x, global1.e.e.x))), var_0.x < -23480i);
    var var_4 = var_3;
    return var_3;
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global0 = array<vec3<i32>, 15>();
    var var_0 = arg_0.x;
    let var_1 = func_2(1i);
    var var_2 = vec3<f32>(1000f, var_1.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1515f)));
    var var_3 = global0[_wgslsmith_index_u32(var_1.a.e.e.x, 15u)] << (min(vec3<u32>(~var_1.a.e.e.x >> (var_1.a.e.e.x % 32u), 0u, abs(~global1.a.x)), vec3<u32>(28093u, _wgslsmith_mod_u32(var_1.a.a.x, 62515u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(43376u, 1u, 6607u), ~global1.a.x))) % vec3<u32>(32u));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    let var_0 = ~func_2(u_input.e.x).a.a.x;
    return var_0;
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_5 {
    var var_0 = global1.b;
    var var_1 = global1.e;
    var var_2 = Struct_5(vec3<i32>(-global1.c, -10894i, _wgslsmith_add_i32(2147483647i, u_input.d)), func_2(~(u_input.c | _wgslsmith_dot_vec2_i32(vec2<i32>(global1.e.c.x, var_1.b), vec2<i32>(-14608i, 3402i)))), false);
    var_2 = Struct_5(-(var_1.a.zxz | var_1.a.wyx), var_2.b, !(!(!var_2.b.a.b)));
    let var_3 = Struct_1(-var_2.b.a.e.a, -5294i, abs(u_input.e.zx), 22173i, vec2<u32>(~arg_2.x, 1u));
    return Struct_5(firstLeadingBit(firstLeadingBit(abs(vec3<i32>(var_3.b, var_3.b, 0i)))), Struct_3(Struct_2(~arg_2.zz, any(select(vec4<bool>(var_2.c, var_2.b.b, false, var_2.b.b), vec4<bool>(global1.b, true, false, false), vec4<bool>(true, false, global1.b, global1.b))), -5914i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)), Struct_1(~vec4<i32>(-20089i, -43188i, 50661i, var_3.d), -9944i << (var_1.e.x % 32u), vec2<i32>(var_1.d, u_input.d), ~7831i, ~arg_2.yz)), global1.b), func_2(-14049i).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global1.d, vec4<u32>(~4326u, 38365u, func_4(select(select(vec4<bool>(global1.b, false, false, global1.b), vec4<bool>(global1.b, global1.b, true, true), vec4<bool>(false, global1.b, global1.b, true)), !vec4<bool>(global1.b, false, true, false), select(vec4<bool>(global1.b, false, true, global1.b), vec4<bool>(false, global1.b, false, global1.b), vec4<bool>(false, global1.b, true, false))), select(-global1.e.a, global1.e.a, true), func_1(global1.e.a & vec4<i32>(u_input.c, -1i, u_input.c, -1i))), func_4(vec4<bool>(global1.b, !global1.b, global1.b, !global1.b), abs(vec4<i32>(48541i, 1i, -7170i, global1.e.a.x) >> (vec4<u32>(12106u, 4294967295u, 1u, global1.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-global1.d) == global1.d)), vec4<u32>(global1.a.x, 18485u, _wgslsmith_dot_vec2_u32(global1.a, global1.a), 79028u));
    let var_1 = vec2<i32>(~(u_input.a.x ^ (firstTrailingBit(-2147483647i) ^ _wgslsmith_sub_i32(1i, u_input.a.x))), -2147483647i);
    global1 = func_5(_wgslsmith_f_op_f32(-global1.d), vec4<u32>(~(~func_4(vec4<bool>(var_0.b.a.b, var_0.b.a.b, false, global1.b), var_0.b.a.e.a, false)), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(var_0.b.a.a.x, 4294967295u, 4294967295u, global1.e.e.x)), vec4<u32>(func_2(u_input.d).a.a.x, _wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_div_u32(4294967295u, global1.a.x), var_0.b.a.e.e.x)), 10696u | reverseBits(var_0.b.a.e.e.x), global1.e.e.x | ~global1.e.e.x), ~(~(~vec4<u32>(1u, var_0.b.a.e.e.x, global1.a.x, 0u)))).b.a;
    var var_2 = true;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1594f) + _wgslsmith_f_op_f32(-var_0.b.a.d))), _wgslsmith_f_op_f32(f32(-1f) * -713f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.d) + _wgslsmith_f_op_f32(abs(-1157f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -115f, -374f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1559f, global1.d, 492f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 4294967295u, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.d))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.a.e.e.x, global1.e.e.x, 1u, var_0.b.a.e.e.x), vec4<u32>(var_0.b.a.a.x, 29585u, 1u, global1.a.x)), ~vec4<u32>(4294967295u, global1.a.x, 4294967295u, global1.a.x) | _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a.a.x, var_0.b.a.e.e.x, 97463u, 1u), vec4<u32>(var_0.b.a.a.x, global1.a.x, global1.e.e.x, 1u))).b.a.a.x, ~_wgslsmith_dot_vec2_u32(global1.a, var_0.b.a.e.e)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + 998f) - 1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.a.d)))))));
}

