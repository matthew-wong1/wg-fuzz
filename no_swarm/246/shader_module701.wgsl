struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, true, false, false, true, true, false, false, false, false, false, true, false, false, false, true, true, true, true, false, true, true, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: u32) -> f32 {
    global0 = array<bool, 23>();
    var var_0 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<bool>(true, true), true), true), true), vec2<bool>(false | select(false | global0[_wgslsmith_index_u32(arg_2, 23u)], any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 23u)], true, global0[_wgslsmith_index_u32(arg_2, 23u)], false)), global0[_wgslsmith_index_u32(11418u, 23u)] | global0[_wgslsmith_index_u32(arg_2, 23u)]), true), false);
    var var_1 = reverseBits(countOneBits(-18534i));
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -2147483647i, ~(~max(u_input.a, 9290i))), u_input.b.yyw);
    var var_3 = -u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f - _wgslsmith_f_op_f32(min(-213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_1.x))))));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> f32 {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_add_i32(37204i, 1285i), 2675i ^ arg_0), !vec3<bool>(!(false == arg_2.x), true, global0[_wgslsmith_index_u32(23850u, 23u)] && arg_2.x), -781f);
    global0 = array<bool, 23>();
    return _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.c)), 1710f))), vec3<f32>(_wgslsmith_f_op_f32(step(-1362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_f_op_f32(min(1440f, _wgslsmith_f_op_f32(abs(-411f))))), 68539u));
}

fn func_1() -> i32 {
    let var_0 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 23u)], u_input.b.x, _wgslsmith_add_i32(~abs(u_input.b.x), ~u_input.a)), vec3<bool>(false, 22021u <= _wgslsmith_mod_u32(78263u, ~u_input.c), global0[_wgslsmith_index_u32(~(~reverseBits(u_input.d.x)), 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1677f * 390f), _wgslsmith_f_op_f32(-1384f * -586f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, var_0.c, var_0.c, _wgslsmith_f_op_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(659f * -221f), _wgslsmith_f_op_f32(min(-2015f, var_0.c)), _wgslsmith_f_op_f32(-512f + var_0.c)), vec3<f32>(-743f, -450f, _wgslsmith_f_op_f32(ceil(-571f))), 0u)))));
    var var_2 = var_0.a;
    let var_3 = u_input.e.x;
    var_2 = Struct_1(!(var_1.x <= _wgslsmith_f_op_f32(func_3(-25805i, !vec4<bool>(var_2.a, true, global0[_wgslsmith_index_u32(u_input.e.x, 23u)], var_0.a.a), var_0.b))), _wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.zw), -reverseBits(max(~var_0.a.c, u_input.a | var_2.c)));
    return -1i;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> Struct_3 {
    global0 = array<bool, 23>();
    let var_0 = Struct_3(select(_wgslsmith_sub_vec3_u32(u_input.d.wzy, vec3<u32>(_wgslsmith_mult_u32(1u, u_input.e.x), 5006u, ~u_input.c)), vec3<u32>((u_input.d.x << (u_input.e.x % 32u)) >> ((17083u ^ u_input.e.x) % 32u), (u_input.d.x ^ 0u) ^ _wgslsmith_add_u32(46734u, 1u), firstTrailingBit(u_input.d.x)), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, firstTrailingBit(74779u)), 23u)], any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 23u)], true)), true)), Struct_2(Struct_1(true | (arg_0.x == -1039f), u_input.b.x, arg_1 << ((u_input.c ^ 1u) % 32u)), !(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(1532u, 23u)])), _wgslsmith_f_op_f32(exp2(arg_0.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(arg_0.x)) == -357f, u_input.b.x, _wgslsmith_dot_vec2_i32(-u_input.b.ww, vec2<i32>(-1i, arg_1) ^ u_input.b.xy)), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e.x, 23u)] || true), select(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 23u)]), vec3<bool>(false, true, false), vec3<bool>(global0[_wgslsmith_index_u32(72983u, 23u)], true, false)), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 23u)], global0[_wgslsmith_index_u32(53418u, 23u)], false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e.x, 23u)])), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 23u)], false)), vec3<bool>(!global0[_wgslsmith_index_u32(1u, 23u)], true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 23u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], true)))), arg_0.x), _wgslsmith_div_f32(2510f, _wgslsmith_f_op_f32(f32(-1f) * -635f)));
    var var_1 = var_0;
    let var_2 = u_input.b;
    var_1 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(514f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -452f))))));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(699f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) + _wgslsmith_f_op_f32(1248f * 1000f)), -1303f))), _wgslsmith_div_i32(func_1(), u_input.a | _wgslsmith_add_i32(-u_input.b.x, 1i)));
    global0 = array<bool, 23>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.c, -143f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * 626f) - var_1.c.c))), -762f, global0[_wgslsmith_index_u32(var_1.a.x, 23u)]));
    var var_3 = _wgslsmith_mod_u32(0u, ~(~(~max(73254u, u_input.e.x))));
    global0 = array<bool, 23>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-590f + _wgslsmith_f_op_f32(f32(-1f) * -981f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(select(var_2, var_1.b.c, true))) - _wgslsmith_f_op_f32(-var_1.b.c)))) - var_2);
    let var_4 = var_1.b;
    var_0 = 653f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1077f, _wgslsmith_f_op_f32(round(var_4.c))))))));
}

