struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_2(min(vec4<i32>(-u_input.a, firstTrailingBit(~u_input.c), u_input.c, _wgslsmith_mod_i32(1i >> (arg_2 % 32u), 1i)), -abs(-vec4<i32>(u_input.a, 23272i, 0i, u_input.a))));
    var var_1 = -23503i;
    var var_2 = vec4<bool>(!arg_1, all(vec3<bool>(false, arg_3.x, all(vec2<bool>(true, false)) || arg_0)), arg_1 && arg_0, arg_0);
    var var_3 = select(vec3<bool>(!any(vec4<bool>(var_2.x, arg_1, arg_3.x, true)) && arg_0, arg_0, true), vec3<bool>(!(~1u == (4294967295u | u_input.b.x)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-973f)) - _wgslsmith_f_op_f32(f32(-1f) * -628f)) == _wgslsmith_f_op_f32(f32(-1f) * -1148f)), vec3<bool>(_wgslsmith_f_op_f32(floor(-604f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-816f))), all(select(vec4<bool>(false, var_2.x, arg_1, false), !vec4<bool>(var_2.x, false, false, true), arg_3.x | var_2.x)), arg_0));
    let var_4 = var_0.a.zx;
    return _wgslsmith_f_op_f32(-666f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2359f))) - _wgslsmith_div_f32(-2519f, _wgslsmith_f_op_f32(select(-1294f, 1f, !var_2.x)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true, _wgslsmith_dot_vec3_u32(vec3<u32>(8446u, u_input.d.x, 1u), ~u_input.d.xwy), vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(906f))), -1585f));
    global0 = array<vec3<u32>, 12>();
    let var_1 = -2147483647i;
    global0 = array<vec3<u32>, 12>();
    let var_2 = vec4<u32>(38854u, 106933u, _wgslsmith_add_u32(4294967295u, ~abs(_wgslsmith_sub_u32(46092u, arg_0.x))), ~(~arg_0.x));
    return all(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> bool {
    let var_0 = Struct_5(Struct_1(firstLeadingBit(vec3<u32>(1u, abs(u_input.d.x), select(0u, 0u, arg_0.x))), max(~abs(vec3<i32>(u_input.c, -1i, u_input.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -26716i, 14078i), _wgslsmith_add_vec3_i32(vec3<i32>(3399i, 20630i, u_input.a), vec3<i32>(-7042i, u_input.a, 3836i)))), func_1(vec3<u32>(~u_input.b.x, 4294967295u, ~u_input.b.x), Struct_3(vec3<i32>(-25779i, -28758i, u_input.c)))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(996f))), u_input.a, !(select(false, true, arg_0.x) & (arg_0.x || arg_0.x)), -reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-8952i, -33469i), vec2<i32>(-1i, 1i)))), abs(~u_input.d) & vec4<u32>(min(~u_input.d.x, abs(u_input.d.x)), ~1u, u_input.b.x, 1u));
    global0 = array<vec3<u32>, 12>();
    var var_1 = Struct_3(var_0.a.b);
    let var_2 = var_0.a.c;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(~(-(~vec4<i32>(u_input.c, u_input.a, -2147483647i, 26221i))), -vec4<i32>(u_input.c, ~u_input.a, firstLeadingBit(-2147483647i), 2147483647i), _wgslsmith_mult_vec4_i32(-firstLeadingBit(vec4<i32>(32942i, u_input.c, u_input.a, u_input.a)), min(reverseBits(vec4<i32>(u_input.c, u_input.a, u_input.c, -28841i)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c), vec4<i32>(-2147483647i, -16573i, u_input.a, u_input.a))))));
    let var_1 = select(!(!vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, func_1(global0[_wgslsmith_index_u32(u_input.d.x, 12u)], Struct_3(var_0.a.xzx)))), vec4<bool>(true, true, any(vec4<bool>(any(vec2<bool>(false, false)), true, true, true)), ~u_input.c > (_wgslsmith_mod_i32(2147483647i, u_input.c) ^ -2147483647i)), vec4<bool>(select(true, false, false), true, false, true));
    let var_2 = Struct_5(Struct_1(global0[_wgslsmith_index_u32(41311u, 12u)], vec3<i32>(~(-3087i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0.a.x, u_input.a, 0i, -2147483647i)), -var_0.a), u_input.c), any(vec4<bool>(func_3(vec3<bool>(var_1.x, var_1.x, false), vec3<f32>(-1000f, -742f, -518f)), any(var_1), true, var_1.x))), Struct_4(_wgslsmith_f_op_f32(abs(610f)), -(49838i & var_0.a.x), true, ~1267i), u_input.d);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.a), _wgslsmith_f_op_f32(f32(-1f) * -276f), var_2.b.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-491f, -891f, var_2.b.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b.a, 1253f, var_2.b.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a, var_2.b.a, -570f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -594f, -1253f)))))), vec3<bool>(!all(vec4<bool>(var_2.b.c, var_2.b.c, false, var_1.x)) && true, all(select(var_1, !var_1, select(var_1, var_1, vec4<bool>(var_1.x, var_2.b.c, var_2.a.c, var_1.x)))), !var_2.b.c || any(var_1.wz))));
    let var_4 = _wgslsmith_add_i32(-2147483647i, var_2.a.b.x);
    var var_5 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1045f + var_2.b.a)), -_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, -var_0.a.x), abs(~var_0.a.x)), true, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 41192u, u_input.b.x, 1u), var_2.c), vec4<u32>(u_input.d.x, var_2.c.x, var_2.c.x, 4294967295u)), vec4<u32>(select(_wgslsmith_sub_u32(var_2.a.a.x, 0u), _wgslsmith_dot_vec3_u32(var_2.c.ywz, global0[_wgslsmith_index_u32(67835u, 12u)]), var_5.c), u_input.b.x, ~_wgslsmith_mod_u32(var_2.c.x, 79443u), 4294967295u)));
}

