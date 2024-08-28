struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<u32> {
    return ~u_input.a.zyz;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(firstTrailingBit(u_input.d), ~(~93009u), 1u)), func_3(Struct_2(true, arg_3.b, arg_1.x, arg_3.d, !arg_3.e), ~1u));
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = select(vec3<bool>(func_4(Struct_1(true, _wgslsmith_f_op_f32(836f - -110f), _wgslsmith_div_i32(2147483647i, 1i)), func_3(Struct_2(arg_2.b.a, arg_0, 8794u, vec2<f32>(-1089f, arg_2.d.x), false), max(1u, 24631u)), _wgslsmith_add_i32(-arg_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 26448i, 4221i), vec3<i32>(2147483647i, 23442i, arg_2.b.c))), arg_2), arg_0.a && false, false), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a.zwz, firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 75524u, 1u), vec3<u32>(68023u, 18610u, arg_2.c), u_input.a.zyy))), 31u)], arg_0.a);
    var var_1 = select(vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -591f)) > _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1729f, -608f)))), vec2<bool>(true, any(select(global0[_wgslsmith_index_u32(16589u, 31u)], global0[_wgslsmith_index_u32(39587u, 31u)], false)) | (_wgslsmith_div_i32(arg_2.b.c, arg_2.b.c) != arg_2.b.c)), all(!(!select(vec2<bool>(false, true), var_0.zx, var_0.xx))));
    var_0 = select(!(!select(select(vec3<bool>(arg_2.a, var_0.x, arg_2.b.a), global0[_wgslsmith_index_u32(1u, 31u)], arg_0.a), global0[_wgslsmith_index_u32(arg_2.c & arg_2.c, 31u)], !vec3<bool>(arg_0.a, true, false))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~1u), func_3(arg_2, 16702u).x), 31u)], !global0[_wgslsmith_index_u32(~0u, 31u)]);
    var_1 = select(select(select(vec2<bool>(any(vec3<bool>(true, arg_2.a, false)), !arg_2.e), var_0.xx, any(!vec2<bool>(true, arg_2.b.a))), vec2<bool>(!arg_2.a, true), true), vec2<bool>(arg_0.a, !any(vec2<bool>(true, true))), vec2<bool>(!arg_0.a, all(vec3<bool>(true | arg_0.a, false, func_4(Struct_1(arg_2.b.a, 852f, arg_2.b.c), u_input.a.zxz, arg_0.c, Struct_2(var_0.x, arg_0, 4294967295u, arg_2.d, var_1.x))))));
    var var_2 = false;
    return arg_2.b;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_vec2_u32(select(u_input.a.zx, abs(u_input.a.yy), true), u_input.a.xx << (_wgslsmith_div_vec2_u32(~(u_input.a.wy >> (u_input.a.wy % vec2<u32>(32u))), ~vec2<u32>(1u, u_input.d)) % vec2<u32>(32u)));
    var var_1 = !select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), !select(vec2<bool>(arg_1, false), select(vec2<bool>(true, arg_1), vec2<bool>(arg_0.a, false), arg_1), !vec2<bool>(true, arg_0.a)));
    var_1 = select(!select(select(vec2<bool>(var_1.x, arg_2), select(vec2<bool>(true, arg_1), vec2<bool>(true, true), arg_2), arg_1), select(vec2<bool>(true, true), vec2<bool>(true, var_1.x), !vec2<bool>(arg_0.a, arg_0.a)), !(!vec2<bool>(arg_1, true))), select(select(!vec2<bool>(arg_1, true), !vec2<bool>(false, arg_1), var_1.x), vec2<bool>(arg_1, true), func_2(func_2(arg_0, arg_0.b, Struct_2(arg_2, arg_0, 20316u, vec2<f32>(-290f, -871f), true), -1807f), arg_0.b, Struct_2(false, Struct_1(arg_0.a, -239f, arg_0.c), select(5633u, 0u, arg_1), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2258f, -811f), vec2<f32>(369f, arg_0.b))), !arg_0.a), -744f).a), vec2<bool>(var_1.x, true));
    let var_2 = ~abs(vec4<u32>(~var_0.x, 77410u, 4294967295u, 0u));
    let var_3 = true;
    return _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(select(vec4<u32>(33150u, var_0.x, 34779u, var_0.x), var_2, var_3), var_2), ~(~u_input.a));
}

fn func_1() -> bool {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~48939u, _wgslsmith_sub_u32(4294967295u, u_input.a.x), _wgslsmith_div_u32(4294967295u, u_input.b)), ~(~u_input.a.yzw)), u_input.d) ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(func_5(func_2(Struct_1(true, -1445f, var_0), -1857f, Struct_2(true, Struct_1(false, 1000f, var_0), 79324u, vec2<f32>(-680f, -472f), true), 391f), true, true), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.c, 1u, u_input.a.x), abs(vec4<u32>(u_input.d, 61234u, 32639u, u_input.b)), vec4<u32>(4294967295u, 4294967295u, 7274u, u_input.c))), ~func_3(Struct_2(false, Struct_1(true, 142f, var_0), u_input.c, vec2<f32>(951f, -938f), false), countOneBits(u_input.c)).x, 1u);
    let var_2 = u_input.a.wz;
    var_1 = reverseBits(4294967295u);
    let var_3 = Struct_1(true, _wgslsmith_f_op_f32(max(func_2(Struct_1(true, _wgslsmith_f_op_f32(-337f * -1000f), ~(-26165i)), _wgslsmith_f_op_f32(max(933f, _wgslsmith_f_op_f32(sign(-633f)))), Struct_2(true, Struct_1(false, 550f, var_0), 43822u, _wgslsmith_div_vec2_f32(vec2<f32>(854f, 433f), vec2<f32>(-268f, -1038f)), any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(f32(-1f) * -1758f)).b, _wgslsmith_f_op_f32(f32(-1f) * -681f))), _wgslsmith_div_i32(-reverseBits(-var_0), var_0));
    return all(select(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(903u, reverseBits(4294967295u)), 31u)], select(vec3<bool>(var_3.a, true, false), global0[_wgslsmith_index_u32(min(u_input.a.x, var_2.x), 31u)], select(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)], vec3<bool>(false, true, false))), true), !global0[_wgslsmith_index_u32(48673u, 31u)], select(!(!vec3<bool>(var_3.a, var_3.a, true)), select(vec3<bool>(var_3.a, var_3.a, true), vec3<bool>(var_3.a, true, true), true), any(!vec2<bool>(false, var_3.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(!vec2<bool>(true, all(global0[_wgslsmith_index_u32(41846u, 31u)]))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(u_input.b), 14117u), 31u)], vec3<bool>(true, true, true))), true, func_1());
    var_0 = !vec4<bool>(true, var_0.x, true, !var_0.x);
    var_0 = !(!vec4<bool>(true, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !(!var_0.x), var_0.x));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), -44610i, -2147483647i, ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, 0i, 1i), vec3<i32>(2147483647i, -1428i, 0i)), -vec3<i32>(-2147483647i, 0i, 4672i))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i) << (u_input.a % vec4<u32>(32u)), vec4<i32>(-2147483647i, -15525i >> (u_input.a.x % 32u), -1i, -40459i << (1u % 32u)), vec4<bool>(true, true, !var_0.x, var_0.x & true)), countOneBits(~vec4<i32>(-1i, 2147483647i, 52672i, 2147483647i)) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(41600i, 0i), vec2<i32>(1i, 2147483647i)), 1i, ~(-1i), _wgslsmith_div_i32(1i, -26110i))));
    var var_2 = select(vec2<bool>(var_0.x, true), vec2<bool>(true, _wgslsmith_dot_vec3_i32(-vec3<i32>(-41884i, var_1, var_1), -vec3<i32>(0i, var_1, 0i)) == var_1), vec2<bool>(!(!all(vec3<bool>(true, var_0.x, false))), func_1()));
    var_0 = vec4<bool>(!var_2.x, var_0.x, any(select(vec4<bool>(1i > var_1, var_0.x & true, !var_0.x, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, var_0.x, var_2.x)), func_3(Struct_2(var_0.x, Struct_1(false, 1722f, var_1), 12888u, vec2<f32>(1092f, -1673f), var_2.x), u_input.d).x <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.a.zx))), any(vec4<bool>(true, true, false, true)));
    var_2 = vec2<bool>(false, _wgslsmith_clamp_i32(-(~(-29913i)), 0i, var_1 ^ 23140i) <= var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1 & countOneBits(_wgslsmith_div_i32(46813i, -38012i)), min(firstTrailingBit(-1i), select(36514i, var_1, true)), var_1, 1450i), min(_wgslsmith_add_i32(var_1, abs(abs(12902i))), var_1));
}

