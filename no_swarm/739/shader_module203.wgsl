struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
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

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, -43782i, 33661i, -1i);

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(min(abs(~arg_1), 20531u), 17u)], Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-189f, arg_0.a)), _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, false)))))));
    var var_1 = vec2<bool>(!select(var_0.a.a, var_0.a.a, var_0.a.a), arg_0.a < _wgslsmith_f_op_f32(step(var_0.b.a, -1202f)));
    let var_2 = ~(~_wgslsmith_sub_u32(arg_1, ~(~4294967295u)));
    global1 = array<Struct_2, 17>();
    let var_3 = all(vec4<bool>(!var_1.x, false, all(select(vec2<bool>(var_0.a.a, var_0.a.a), vec2<bool>(false, var_0.a.a), vec2<bool>(var_1.x, true))), true));
    return u_input.d;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -349f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -856f), 1000f));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-var_0.x)), func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(290f * -657f))), ~firstTrailingBit(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(trunc(1438f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -230f))));
    var_1 = Struct_4(Struct_1(-538f), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), var_1.c) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.x))))));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 17u)];
    let var_3 = (_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 128f), -813f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * -451f)) - -741f)) & false;
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-311f - var_0.x));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(any(vec2<bool>(arg_0.a, arg_0.a)))), 1900f)) == -969f;
    var var_1 = Struct_3(Struct_2(arg_0.a), Struct_1(_wgslsmith_f_op_f32(-arg_1)));
    let var_2 = Struct_2(select(var_1.a.a, true, (all(vec4<bool>(arg_0.a, arg_0.a, arg_2.a, false)) != true) & !arg_0.a));
    var var_3 = Struct_1(arg_1);
    let var_4 = false & (_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.a.zz) ^ min(4294967295u, u_input.a.x)) >= _wgslsmith_mult_u32(_wgslsmith_mod_u32(11724u, u_input.a.x | u_input.a.x), 0u));
    return Struct_1(arg_1);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = Struct_2(!(~(~u_input.a.x) <= ~countOneBits(0u)));
    var var_1 = true;
    var_1 = !all(vec3<bool>(true, any(vec3<bool>(var_0.a, var_0.a, true)), !(var_0.a && false)));
    var var_2 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, firstLeadingBit(~(u_input.a | u_input.a))) ^ u_input.a;
    var_2 = min(u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, 1u, 4294967295u), u_input.a));
    return Struct_2(true);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(arg_2, u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(trunc(arg_2.a))))));
    var_0 = Struct_4(func_1(global1[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(-arg_2.a), arg_0, Struct_2(!(-16804i >= u_input.b))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 7210i, 1i, -20477i), vec4<i32>(var_0.b.x, var_0.b.x, u_input.c, u_input.d.x)), vec4<i32>(-10484i, global0.x, 19258i, -7235i)), vec4<i32>(min(var_0.b.x, u_input.d.x), var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, 1i, var_0.b.x), vec3<i32>(13032i, u_input.b, -24031i)), 2147483647i & global0.x)) ^ select(~select(vec4<i32>(-3985i, global0.x, var_0.b.x, u_input.d.x), vec4<i32>(global0.x, var_0.b.x, 28714i, -18484i), vec4<bool>(true, arg_0.a, true, arg_1)), var_0.b, !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false)), _wgslsmith_f_op_f32(899f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1151f + arg_2.a), _wgslsmith_f_op_f32(-arg_2.a), true)), arg_2.a))));
    let var_1 = var_0.c;
    var var_2 = u_input.a.x;
    let var_3 = 18312u;
    return global1[_wgslsmith_index_u32(78343u, 17u)];
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = max(~min(select(-60094i, abs(u_input.b), true), global0.x ^ (-2147483647i | u_input.d.x)), global0.x ^ _wgslsmith_mult_i32(arg_0.x, _wgslsmith_mod_i32(6081i, _wgslsmith_dot_vec3_i32(global0.xwz, arg_0.xyy))));
    return Struct_2(all(select(vec3<bool>(all(vec4<bool>(false, true, false, false)), arg_1.a, all(vec2<bool>(false, true))), select(select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, false, false), vec3<bool>(false, true, arg_1.a)), vec3<bool>(arg_1.a, arg_1.a, true), true), !select(true, arg_1.a, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec4<i32>(18071i, -2147483647i, _wgslsmith_mod_i32(global0.x, firstLeadingBit(-global0.x)), u_input.c), func_5(func_4(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), Struct_4(func_1(global1[_wgslsmith_index_u32(21360u, 17u)], -416f, Struct_2(true), global1[_wgslsmith_index_u32(68884u, 17u)]), -vec4<i32>(-2147483647i, global0.x, -4314i, u_input.b), -853f)), true, func_1(func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), Struct_4(Struct_1(187f), vec4<i32>(u_input.b, -1i, -1i, 32580i), 922f)), 1248f, Struct_2(true), global1[_wgslsmith_index_u32(0u, 17u)])));
    var var_1 = -(~vec3<i32>(1i, 1i << (u_input.a.x % 32u), global0.x)) | -global0.zyy;
    var var_2 = -122f;
    var_0 = global1[_wgslsmith_index_u32(abs(~4294967295u), 17u)];
    global0 = u_input.d;
    let var_3 = abs(1u);
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -1i) & u_input.b);
}

