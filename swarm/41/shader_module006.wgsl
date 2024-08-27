struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> bool {
    global0 = array<vec4<i32>, 4>();
    return arg_1.x;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    global0 = array<vec4<i32>, 4>();
    let var_0 = select(vec4<u32>(59522u ^ firstTrailingBit(_wgslsmith_add_u32(u_input.b, u_input.a)), _wgslsmith_mod_u32(~u_input.b, ~27916u) ^ u_input.b, 59104u >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 0u, 80536u), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)), _wgslsmith_add_u32(35336u, u_input.b), true) % 32u), 23750u), ~select(vec4<u32>(firstTrailingBit(31158u), ~69633u, u_input.b, ~1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a, 37183u, u_input.b), min(vec4<u32>(u_input.a, u_input.a, 63205u, 0u), vec4<u32>(u_input.a, u_input.a, 11802u, u_input.a))), max(1u, 4294967295u) != (u_input.a & 35905u)), !vec4<bool>(false, func_3(Struct_1(false, vec2<u32>(4294967295u, u_input.b), vec4<bool>(true, false, false, false), vec4<i32>(-36541i, -22827i, -1i, 2147483647i)), vec4<bool>(true, true, true, true), -646f, Struct_1(false, vec2<u32>(u_input.b, u_input.a), vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(u_input.b, 4u)])), false, !any(vec3<bool>(false, true, true))));
    var var_1 = abs(~vec3<u32>(1u, 63423u, 0u));
    let var_2 = Struct_2(Struct_1(select(false, false, !(u_input.d.x < u_input.d.x)), _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(var_0.xy, var_0.wz)), _wgslsmith_sub_vec2_u32(var_0.xw, ~var_0.xz)), !vec4<bool>(true, false, any(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, false, true))), global0[_wgslsmith_index_u32(var_1.x, 4u)]), Struct_1(false, _wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(0u, 0u)), countOneBits(var_0.yy), var_0.zw), vec4<bool>(true, true, true, true), firstLeadingBit(global0[_wgslsmith_index_u32(var_1.x, 4u)])));
    let var_3 = Struct_2(var_2.a, var_2.b);
    return all(select(select(select(vec2<bool>(var_3.b.a, false), select(var_3.b.c.wy, vec2<bool>(var_3.b.a, var_3.a.c.x), vec2<bool>(var_2.a.c.x, true)), all(var_3.a.c.zwz)), select(select(vec2<bool>(true, var_3.a.c.x), vec2<bool>(var_2.a.a, false), vec2<bool>(var_2.a.c.x, false)), var_2.a.c.yy, !vec2<bool>(true, var_2.a.a)), var_3.a.c.wz), var_3.a.c.yx, any(vec4<bool>(any(vec3<bool>(var_2.a.a, var_2.b.a, var_2.a.c.x)), true, true, true))));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    global0 = array<vec4<i32>, 4>();
    global0 = array<vec4<i32>, 4>();
    global0 = array<vec4<i32>, 4>();
    global0 = array<vec4<i32>, 4>();
    var var_0 = Struct_2(Struct_1(!(!arg_0.a), _wgslsmith_div_vec2_u32(countOneBits(firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(89661u, u_input.b))), vec4<bool>(all(vec4<bool>(true, false, false, arg_0.a)), false, any(vec2<bool>(arg_0.a, true)), !func_2(vec4<f32>(-777f, 1312f, 1432f, 1000f))), vec4<i32>(_wgslsmith_div_i32(u_input.d.x, u_input.c.x), ~u_input.d.x, 2147483647i, 21045i)), Struct_1(true, _wgslsmith_sub_vec2_u32(select(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(8772u, 25855u)), arg_0.a), vec2<u32>(64540u, ~u_input.b)), vec4<bool>(arg_0.a, func_3(Struct_1(false, vec2<u32>(u_input.b, u_input.a), vec4<bool>(false, arg_0.a, arg_0.a, false), vec4<i32>(-1i, u_input.c.x, -18350i, -21193i)), !vec4<bool>(false, arg_0.a, arg_0.a, true), _wgslsmith_f_op_f32(435f - 363f), Struct_1(arg_0.a, vec2<u32>(19437u, 81132u), vec4<bool>(false, false, arg_0.a, true), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.c.x))), true, 978f >= _wgslsmith_f_op_f32(ceil(253f))), vec4<i32>(-_wgslsmith_mod_i32(10210i, -15400i), -min(u_input.d.x, u_input.c.x), -16440i, u_input.c.x)));
    return select(!var_0.b.c.xzw, !(!var_0.b.c.wyy), select(select(select(!vec3<bool>(var_0.b.a, true, var_0.b.a), var_0.a.c.zxx, func_2(vec4<f32>(274f, 1427f, 305f, -161f))), select(select(var_0.b.c.yyw, var_0.b.c.zwy, arg_0.a), vec3<bool>(false, true, true), var_0.a.c.yyz), !(!var_0.b.c.xwy)), vec3<bool>(arg_0.a, any(!var_0.a.c), !var_0.b.a), !var_0.a.c.zyz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(Struct_3(any(vec4<bool>(true, false, true, true)))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, true), func_1(Struct_3(true)), true), func_1(Struct_3(false))), true);
    var_0 = select(!select(vec3<bool>(var_0.x, func_2(vec4<f32>(379f, -675f, 826f, -895f)), any(vec3<bool>(var_0.x, true, true))), vec3<bool>(var_0.x && true, true, true), var_0.x), vec3<bool>(!var_0.x, ~u_input.c.x > abs(-u_input.d.x), true), var_0.x || !(-u_input.d.x < (i32(-1i) * -6652i)));
    let var_1 = u_input.d;
    var var_2 = Struct_3(all(!vec4<bool>(var_0.x, true, false, var_0.x)) || true);
    var var_3 = -_wgslsmith_dot_vec3_i32(vec3<i32>(-countOneBits(var_1.x), var_1.x, _wgslsmith_div_i32(_wgslsmith_div_i32(91361i, u_input.c.x), ~u_input.d.x)), ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -615f))))), global0[_wgslsmith_index_u32(~(~(~u_input.b)), 4u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-750f, 317f))), _wgslsmith_f_op_f32(-584f - -1794f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1920f * -150f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-368f, 642f, true))))));
}

