struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_3,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
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

var<private> global0: vec3<f32> = vec3<f32>(-205f, -678f, -1042f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: bool) -> u32 {
    let var_0 = u_input.a;
    global0 = vec3<f32>(-735f, arg_2, arg_2);
    let var_1 = Struct_1(vec4<bool>(1378f > global0.x, true, arg_3, arg_3), vec4<bool>(arg_3, true, true, false), i32(-1i) * -select(u_input.b.x, -29231i, !arg_3));
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> bool {
    let var_0 = !(!vec4<bool>(~14608i == _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), !(arg_2.a.x != -673f), (1u & u_input.a.x) <= ~arg_0.b.x, true));
    var var_1 = arg_2.d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(671f)), var_1.c.x)), _wgslsmith_f_op_f32(exp2(arg_0.c.x))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c.x)))))));
    var var_3 = _wgslsmith_clamp_vec2_u32(~arg_0.b.yx, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u) << (vec2<u32>(arg_2.e, arg_0.b.x) % vec2<u32>(32u)), vec2<u32>(~var_1.b.x, u_input.a.x)), reverseBits(arg_2.d.b.zw & vec2<u32>(1u, arg_1)), ~(~vec2<u32>(var_1.b.x, var_1.b.x))), reverseBits(~arg_0.b.wx));
    var_3 = vec2<u32>(~func_3(1u, any(var_1.a.b.yz), global0.x, true), func_3(~(~arg_2.e), true, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(floor(-538f)), true)), false));
    return any(!var_1.a.a.zyw);
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, func_2(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), arg_0), u_input.a, global0.yz, u_input.b.zz), 1u, Struct_3(vec4<f32>(1197f, -1438f, global0.x, global0.x), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), 0i), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), 100980i), u_input.a, vec2<f32>(global0.x, global0.x), u_input.b.zy), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), 2147483647i), u_input.a, vec2<f32>(global0.x, global0.x), vec2<i32>(u_input.b.x, u_input.b.x)), 1u)), true), true));
    var var_1 = true;
    var_0 = true;
    var_0 = true;
    var var_2 = reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.a.zww), firstTrailingBit(vec3<u32>(29797u, u_input.a.x, u_input.a.x)))) >> (~u_input.a.xxx % vec3<u32>(32u));
    return !(!vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false)), false, true || any(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(Struct_1(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, false), select(func_1(u_input.b.x), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), 91012i), select(vec4<u32>(_wgslsmith_sub_u32(71404u, u_input.a.x), select(u_input.a.x, u_input.a.x, false), 0u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), abs(vec4<u32>(u_input.a.x, 54408u, u_input.a.x, u_input.a.x)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true)), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)), reverseBits(~(~vec2<i32>(19405i, u_input.b.x)))), firstLeadingBit(u_input.a | vec4<u32>(47834u, u_input.a.x, 110641u, u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 645f, 2061f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1393f, -388f) - vec3<f32>(global0.x, -1000f, global0.x)))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1226f, _wgslsmith_f_op_f32(global0.x * 1318f), _wgslsmith_f_op_f32(-global0.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, -1092f, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1747f, global0.x, 358f)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1101f, -1000f, global0.x)))))));
    var var_2 = 74428u;
    var_2 = u_input.a.x;
    var var_3 = select(-countOneBits(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, 1i), var_0.c, 23782i, var_0.c ^ 0i)), -(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, 42848i, -36370i, 21324i) << (vec4<u32>(u_input.a.x, 0u, 1u, 41972u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(-1i, -2147483647i, var_0.c, 35802i))) ^ vec4<i32>(reverseBits(var_0.c), -1i, 28777i | var_0.c, func_4(Struct_2(Struct_1(vec4<bool>(var_0.a.x, false, var_0.b.x, var_0.b.x), var_0.a, u_input.b.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), global0.xx, vec2<i32>(-2147483647i, 0i)), u_input.a).c)), func_1(var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(vec2<i32>(0i, max(-5676i, var_3.x)))));
}

