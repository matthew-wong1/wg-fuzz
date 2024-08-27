struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1() -> bool {
    global1 = array<vec2<f32>, 22>();
    global1 = array<vec2<f32>, 22>();
    let var_0 = Struct_5(0u, !vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true, all(vec3<bool>(false, true, true)), (0u == u_input.b) & true));
    global1 = array<vec2<f32>, 22>();
    global0 = true | any(var_0.b.wyw);
    return true;
}

fn func_3(arg_0: Struct_4) -> f32 {
    global1 = array<vec2<f32>, 22>();
    let var_0 = arg_0.b;
    var var_1 = var_0.a;
    let var_2 = 102231u;
    global0 = var_0.e.x;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) - -350f), var_0.a.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2237f))))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: i32) -> Struct_2 {
    global1 = array<vec2<f32>, 22>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a.a), ~arg_2, arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1.a, arg_0.a.d, arg_0.a.d) << (select(vec4<u32>(16991u, 23706u, arg_1.a, arg_0.a.d), vec4<u32>(1u, u_input.a.x, 18317u, 55851u), arg_1.b.x) % vec4<u32>(32u)), ~(~vec4<u32>(arg_0.a.d, u_input.a.x, 1u, 0u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec4<u32>(4294967295u, u_input.b, 1170u, 19941u), Struct_2(Struct_1(arg_0.a.a, arg_2, 1i, arg_1.a, global1[_wgslsmith_index_u32(0u, 22u)]), arg_1.b.xww, true, true, arg_1.b.wy), arg_0.a.d))) + _wgslsmith_f_op_f32(arg_0.a.a.x - arg_0.a.a.x)), arg_0.a.a.x)), select(arg_1.b.xwy, vec3<bool>(true, any(arg_1.b), true), false), !arg_1.b.x, true, select(arg_1.b.wz, vec2<bool>(!func_1(), true), arg_1.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> vec4<u32> {
    global0 = (true || !select(any(vec4<bool>(arg_2, true, arg_2, arg_2)), arg_0.c, false)) & arg_0.c;
    global1 = array<vec2<f32>, 22>();
    let var_0 = abs(~(~vec2<i32>(1i, 1i)));
    let var_1 = Struct_2(arg_0.a, select(select(func_2(Struct_3(arg_0.a), Struct_5(34494u, vec4<bool>(true, false, arg_2, arg_0.e.x)), 1i).b, vec3<bool>(arg_0.d, all(vec2<bool>(arg_2, arg_2)), !arg_0.d), !(-36916i < arg_0.a.b)), vec3<bool>(true, arg_0.e.x, false), func_1()), false, func_2(Struct_3(Struct_1(vec3<f32>(416f, 265f, arg_3.x), 10169i, -54850i, 32493u, vec2<f32>(331f, arg_0.a.e.x))), Struct_5(_wgslsmith_mult_u32(0u, 79855u), !vec4<bool>(arg_0.c, false, arg_0.c, false)), arg_0.a.b).a.d < u_input.a.x, arg_0.b.zy);
    let var_2 = var_1.a.b < 1i;
    return vec4<u32>(_wgslsmith_add_u32(~(arg_0.a.d ^ u_input.b), ~u_input.a.x), ~_wgslsmith_mult_u32(4294967295u, arg_0.a.d) & ~(~u_input.a.x), ~11430u, 1u) << ((firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.d, arg_0.a.d, arg_0.a.d, 4294967295u), vec4<u32>(var_1.a.d, arg_0.a.d, arg_0.a.d, 4294967295u)), vec4<u32>(arg_0.a.d, arg_0.a.d, 13363u, arg_0.a.d))) >> (max(~(~vec4<u32>(1u, 111537u, arg_0.a.d, var_1.a.d)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.b, var_1.a.d, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_1.a.d, 57640u, u_input.b), vec4<u32>(var_1.a.d, 58155u, 0u, u_input.a.x)), ~vec4<u32>(var_1.a.d, u_input.b, 4294967295u, arg_0.a.d))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(444f, -138f), -1822f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(573f - 290f))) * _wgslsmith_f_op_f32(f32(-1f) * -697f)), -1130f);
    global1 = array<vec2<f32>, 22>();
    var var_1 = !select(vec4<bool>(false, select(true, select(false, false, false), all(vec4<bool>(false, false, true, true))), !any(vec4<bool>(true, true, true, false)), true), vec4<bool>(true, false, true, !all(vec4<bool>(true, false, false, false))), !(func_1() || true));
    global1 = array<vec2<f32>, 22>();
    var var_2 = i32(-1i) * -4263i;
    var_1 = vec4<bool>(!var_1.x, true, true | all(!vec3<bool>(var_1.x, var_1.x, true)), all(select(!vec4<bool>(true, false, var_1.x, false), vec4<bool>(select(true, true, false), true, var_1.x, true), var_1.x | all(var_1.yy))));
    var var_3 = ~(~_wgslsmith_clamp_vec4_u32(func_4(func_2(Struct_3(Struct_1(var_0.xyx, -1i, 41922i, u_input.b, var_0.ww)), Struct_5(u_input.a.x, vec4<bool>(false, true, false, false)), 0i), 1i, var_1.x, var_0.wy), abs(~vec4<u32>(u_input.b, 1u, 93261u, 0u)), ~(~vec4<u32>(55408u, u_input.a.x, 106472u, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(770f, var_3.zxx, select(_wgslsmith_sub_vec2_i32(firstTrailingBit(min(vec2<i32>(0i, -2147483647i), vec2<i32>(-41846i, -1i))), countOneBits(vec2<i32>(1i, 1i))), _wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(1i), ~2147483647i), vec2<i32>(-12010i, ~1i)), !(var_1.x || false) || !var_1.x), u_input.b, 0u);
}

