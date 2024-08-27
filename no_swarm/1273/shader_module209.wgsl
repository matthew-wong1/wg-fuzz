struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(1000f), Struct_1(-319f), Struct_1(-1477f), Struct_1(189f), Struct_1(-333f), Struct_1(1000f), Struct_1(-150f), Struct_1(-274f), Struct_1(-490f), Struct_1(-434f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(~(~4294967295u), 10u)];
    global0 = array<Struct_1, 10>();
    var var_1 = -412f;
    var var_2 = select(!select(!select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), vec4<bool>(true, false, !arg_0.x, true), vec4<bool>(true, !arg_0.x, true, true)), select(!vec4<bool>(arg_0.x, true, arg_0.x, !arg_0.x), select(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(true, false, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(false, arg_0.x, false, true))), !(!vec4<bool>(true, arg_0.x, false, false)), !(!vec4<bool>(true, false, arg_0.x, false))), vec4<bool>(arg_0.x && true, !(arg_3 > arg_2.x), select(true, !arg_0.x, true), true)), true);
    global0 = array<Struct_1, 10>();
    return vec4<u32>(47252u, _wgslsmith_mod_u32(reverseBits(71384u), abs(select(0u, 29197u, arg_0.x))) << (1u % 32u), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(42680u, 4294967295u), vec2<u32>(35785u, 1201u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(9738u, 17822u), vec2<u32>(13559u, 0u))) << (abs(~firstLeadingBit(30957u)) % 32u), 1u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = true;
    var var_1 = reverseBits(~(~(~func_3(vec3<bool>(false, false, false), -6474i, vec4<f32>(1000f, arg_1.x, -658f, -130f), arg_1.x))));
    return Struct_2(global0[_wgslsmith_index_u32(~(~0u), 10u)], arg_0, _wgslsmith_f_op_f32(-arg_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    global0 = array<Struct_1, 10>();
    var var_0 = arg_3;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(func_3(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2116f, arg_3.b.a, 1022f, var_0.b.a))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.b.a, -643f, arg_1, 1222f)))), _wgslsmith_f_op_f32(-arg_1)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(72627u, 4294967295u, 17120u, 0u), vec4<u32>(1u, 37276u, 25211u, 5178u)))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, _wgslsmith_div_u32(1u, 4294967295u), firstTrailingBit(4294967295u))));
    var var_2 = select(!(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false))), vec4<bool>(false, true, !(!all(vec3<bool>(true, false, false))), true), all(vec2<bool>(true, _wgslsmith_f_op_f32(ceil(189f)) > -705f)));
    var_2 = !(!vec4<bool>(true, select(true, select(var_2.x, var_2.x, true), all(var_2.zxx)), _wgslsmith_div_f32(arg_2.c, 458f) < _wgslsmith_f_op_f32(arg_3.b.a * arg_2.c), any(vec3<bool>(false, false, true))));
    return vec3<bool>(var_2.x, var_2.x, var_2.x);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.a + -1279f), -1397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.b.a)))), 1f))), -236f);
    var var_1 = !(!select(vec3<bool>(var_0.x != -1251f, !arg_1, false), func_4(Struct_1(var_0.x), 1925f, func_2(Struct_1(-784f), var_0.ywx), arg_0), true));
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - var_0.x)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.a, arg_0.b.a, arg_1))))));
    return func_2(global0[_wgslsmith_index_u32(firstLeadingBit(min(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u)), ~4250u), 29506u << (1u % 32u))), 10u)], _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.a + -1561f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~32982u, ~4294967295u), 10u)], Struct_1(-136f), -1000f), true);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-457f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) * 1706f), _wgslsmith_f_op_f32(f32(-1f) * -385f))), _wgslsmith_f_op_f32(-var_0.b.a))));
    var var_3 = func_1(func_2(func_2(func_1(func_1(Struct_2(global0[_wgslsmith_index_u32(0u, 10u)], Struct_1(var_2), var_2), true), true).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, var_0.b.a, var_0.b.a) - vec3<f32>(var_2, var_0.a.a, var_0.a.a)))).a, vec3<f32>(var_2, 292f, var_2)), ~(~reverseBits(0u)) >= ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(65064u, 46461u, 0u, 18696u)), select(vec4<u32>(1u, 1u, 0u, 16951u), vec4<u32>(1u, 4294967295u, 113163u, 4294967295u), false)));
    var_3 = func_2(global0[_wgslsmith_index_u32(abs(1u), 10u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_3.a.a), var_0.c, -430f)))));
    let var_4 = -reverseBits(-1i) << ((1u >> (~4294967295u % 32u)) % 32u);
    let var_5 = _wgslsmith_mult_vec2_u32(min(vec2<u32>(_wgslsmith_clamp_u32(0u, 1u, 1u), 0u), firstTrailingBit(vec2<u32>(select(0u, 1u, false), ~4294967295u))), vec2<u32>(1u, ~_wgslsmith_add_u32(~1u, select(4294967295u, 14561u, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(10770i, -2147483647i, -23962i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, 0i, -1i)), -vec4<i32>(u_input.a.x, -31917i, 62772i, var_4)), countOneBits(vec4<i32>(u_input.c, var_4, 1i, 2147483647i)) << ((vec4<u32>(var_5.x, 41287u, 54804u, 39786u) >> (vec4<u32>(var_5.x, var_5.x, var_5.x, var_5.x) % vec4<u32>(32u))) % vec4<u32>(32u))), 1i));
}

