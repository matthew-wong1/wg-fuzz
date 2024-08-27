struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-695f, 1472f)), _wgslsmith_f_op_f32(661f + -529f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1321f)) + _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-685f, -410f))), vec3<bool>(any(select(arg_1.yy, vec2<bool>(arg_0, true), arg_0)), all(vec3<bool>(arg_0, false, arg_0)), true)), Struct_1(vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(725f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -199f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -571f) + _wgslsmith_f_op_f32(f32(-1f) * -785f))), !(!vec3<bool>(arg_0, false, arg_0))));
    let var_1 = ~(-1i >> (global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~4294967295u, ~4294967295u), 21u)] % 32u));
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.a * var_0.b.a), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), var_0.a.a.x, -796f)), select(select(!arg_1, select(arg_1, vec3<bool>(arg_1.x, arg_1.x, arg_0), vec3<bool>(var_0.a.b.x, true, false)), true | arg_1.x), !(!var_0.b.b), all(global1[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), 17u)]))), var_0.b, vec3<bool>(true, any(vec4<bool>(any(var_0.a.b), true, !arg_0, any(vec3<bool>(false, var_0.b.b.x, arg_0)))), arg_1.x), var_0.b, _wgslsmith_dot_vec2_u32(~u_input.c.yy, u_input.c.zw ^ u_input.c.zz));
    let var_3 = ~1u;
    global0 = array<u32, 21>();
    return select(!select(vec3<bool>(!arg_0, !arg_0, select(true, false, arg_1.x)), vec3<bool>(false, true, false), vec3<bool>(var_0.b.b.x, u_input.d != -32424i, true)), !select(vec3<bool>(!arg_1.x, true, true), vec3<bool>(var_0.a.b.x || true, var_0.b.b.x, var_2.d.b.x & true), vec3<bool>(arg_1.x, true, !arg_1.x)), select(vec3<bool>(!(arg_0 && true), arg_0, true), !(!arg_1), _wgslsmith_dot_vec2_u32(u_input.c.zz, min(vec2<u32>(4294967295u, 52621u), u_input.c.yz)) != firstLeadingBit(var_2.e)));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.c.xz;
    let var_1 = !(!arg_1.a.b.yz);
    let var_2 = Struct_4(arg_1.a, arg_1, vec3<i32>(_wgslsmith_add_i32(arg_2, arg_2), firstLeadingBit(u_input.d), 2147483647i), ~(var_0.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 45074u, global0[_wgslsmith_index_u32(1u, 21u)], 21901u) | vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 0u, 0u, arg_1.e), vec4<u32>(57915u, u_input.a, 28846u, 0u) | u_input.c) % 32u)));
    let var_3 = arg_1.a;
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b.d.a * var_3.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(416f, -100f, var_2.a.a.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1162f, var_2.b.d.a.x, arg_1.d.a.x)))), !select(func_3(false, vec3<bool>(arg_1.a.b.x, true, false)), !arg_1.d.b, !vec3<bool>(false, true, var_1.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.a.x - 1000f) * 1230f), arg_1.a.a.x, _wgslsmith_f_op_f32(arg_1.b.a.x - _wgslsmith_f_op_f32(max(-1921f, var_3.a.x)))), vec3<bool>(false, true, any(vec2<bool>(true, var_3.b.x)))), !(!select(!var_2.b.d.b, func_3(false, arg_1.a.b), true)), Struct_1(var_3.a, func_3(false, select(var_2.b.d.b, select(vec3<bool>(true, var_1.x, true), var_3.b, true), !var_2.b.c))), arg_1.e);
    return Struct_1(var_2.a.a, var_2.a.b);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_3(func_2(!all(!global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], 17u)]), Struct_3(arg_0.b, Struct_1(vec3<f32>(arg_0.b.a.x, 716f, arg_0.d.a.x), select(arg_0.a.b, vec3<bool>(arg_0.d.b.x, true, true), true)), func_2(arg_0.d.b.x, Struct_3(arg_0.d, arg_0.b, arg_0.d.b, Struct_1(arg_0.b.a, vec3<bool>(arg_0.d.b.x, false, false)), global0[_wgslsmith_index_u32(4294967295u, 21u)]), -u_input.d).b, arg_0.a, arg_0.e), max(-(u_input.d >> (4294967295u % 32u)), -25262i)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.a.a)), arg_0.b.a), vec3<f32>(_wgslsmith_div_f32(arg_0.d.a.x, arg_0.d.a.x), _wgslsmith_f_op_f32(sign(arg_0.d.a.x)), _wgslsmith_f_op_f32(ceil(-1397f)))), select(vec3<bool>(true, false & arg_0.a.b.x, true), func_3(arg_1 >= arg_0.e, arg_0.d.b), select(arg_0.d.b.x, false, arg_0.d.b.x) & true)), func_2(arg_0.c.x, Struct_3(func_2(false, Struct_3(Struct_1(arg_0.d.a, vec3<bool>(arg_0.b.b.x, true, arg_0.c.x)), arg_0.a, arg_0.c, arg_0.a, 4294967295u), 10928i), func_2(!arg_0.a.b.x, Struct_3(Struct_1(vec3<f32>(arg_0.d.a.x, arg_0.d.a.x, 506f), arg_0.d.b), Struct_1(arg_0.d.a, arg_0.a.b), vec3<bool>(arg_0.a.b.x, false, arg_0.a.b.x), Struct_1(arg_0.b.a, arg_0.a.b), 15214u), -16326i), arg_0.a.b, Struct_1(_wgslsmith_div_vec3_f32(arg_0.d.a, arg_0.b.a), func_3(true, arg_0.d.b)), 1u), ~(-37527i)).b, func_2(true, arg_0, -2147483647i), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~1u), u_input.c.yx << (u_input.c.zz % vec2<u32>(32u))), 21u)], 21u)]);
    var var_1 = Struct_3(func_2(false, Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.d.a - var_0.d.a), var_0.d.b), func_2(var_0.a.b.x, Struct_3(arg_0.b, Struct_1(arg_0.b.a, vec3<bool>(false, var_0.c.x, false)), vec3<bool>(false, arg_0.c.x, true), var_0.b, arg_0.e), _wgslsmith_mult_i32(11289i, u_input.b)), !var_0.a.b, var_0.d, 4294967295u), u_input.b), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(576f, var_0.d.a.x, var_0.b.a.x)))), vec3<bool>(arg_0.b.b.x, !(global0[_wgslsmith_index_u32(arg_1, 21u)] != 1u), false)), var_0.b.b, arg_0.d, ~0u);
    var var_2 = vec3<u32>(abs(arg_1), ~global0[_wgslsmith_index_u32(0u, 21u)], var_1.e);
    var var_3 = vec4<i32>(abs(firstTrailingBit(_wgslsmith_add_i32(u_input.b, u_input.d))), u_input.b, -_wgslsmith_div_i32(-20672i, _wgslsmith_div_i32(u_input.d, -17674i)), _wgslsmith_div_i32(i32(-1i) * -2147483647i, -1i)) | min(~_wgslsmith_mult_vec4_i32(~vec4<i32>(10505i, -26417i, 1i, u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -2147483647i, -29589i, u_input.d), vec4<i32>(u_input.d, u_input.b, -16495i, u_input.b))), ~vec4<i32>(-78111i, 54597i, u_input.d, _wgslsmith_sub_i32(7758i, u_input.b)));
    return var_1.a;
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_3(func_4(Struct_3(func_2(u_input.c.x >= 4294967295u, arg_0.b, i32(-1i) * -8851i), arg_0.b.d, !arg_2.zyx, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a.a)), arg_2.wzz), _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.c.wzx), u_input.c.zxy >> (vec3<u32>(79614u, arg_0.d, arg_0.b.e) % vec3<u32>(32u)))), abs(1u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0.b.d.a.x)), 721f)), _wgslsmith_f_op_f32(max(1f, 318f)), -1726f), arg_2.xzx), !arg_2.wzw, arg_0.b.d, u_input.a);
    let var_1 = var_0.e;
    var var_2 = Struct_2(func_4(Struct_3(func_2(true, arg_0.b, u_input.d & -2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b.a), var_0.c), vec3<bool>(var_0.b.b.x && true, false, var_0.d.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(max(var_0.a.a, vec3<f32>(893f, arg_0.b.d.a.x, var_0.d.a.x))), !vec3<bool>(arg_0.b.b.b.x, false, var_0.d.b.x)), ~0u), var_0.e), func_2(true, Struct_3(var_0.a, Struct_1(_wgslsmith_div_vec3_f32(var_0.b.a, vec3<f32>(-1267f, arg_1, 822f)), arg_0.a.b), !arg_2.xyy, var_0.d, _wgslsmith_div_u32(~u_input.c.x, 1u)), _wgslsmith_sub_i32(0i, arg_0.c.x) ^ 1i));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), -212f, _wgslsmith_f_op_f32(floor(arg_1))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(220f, arg_0.b.a.a.x, -1000f)))))), !(!var_2.a.b));
    global0 = array<u32, 21>();
    return Struct_2(Struct_1(func_4(arg_0.b, firstLeadingBit(arg_0.d)).a, func_3((0u & global0[_wgslsmith_index_u32(34913u, 21u)]) > (u_input.c.x << (u_input.a % 32u)), vec3<bool>(var_3.b.x & false, var_0.d.b.x, !var_2.a.b.x))), var_2.a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    global1 = array<vec4<bool>, 17>();
    let var_0 = ~u_input.c.x;
    let var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(var_0, 21u)], _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~var_0, 21u)], u_input.c.x, 40576u)), ~min(_wgslsmith_clamp_u32(u_input.a, ~var_0, 1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0, u_input.a), abs(global0[_wgslsmith_index_u32(50969u, 21u)]))));
    let var_2 = vec3<u32>(~1u, ~(~var_1 & var_0), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.c.ww, abs(vec2<u32>(var_1, var_1))), 1u));
    global0 = array<u32, 21>();
    return arg_0.b;
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_2 {
    global1 = array<vec4<bool>, 17>();
    let var_0 = arg_3.a;
    var var_1 = Struct_4(func_2(false, Struct_3(func_1(Struct_4(var_0, Struct_3(Struct_1(arg_3.b.a, arg_3.a.b), Struct_1(vec3<f32>(arg_0, -1051f, 400f), vec3<bool>(true, arg_3.d.b.x, false)), arg_3.d.b, var_0, 4294967295u), vec3<i32>(2147483647i, u_input.d, u_input.d), 4294967295u), arg_2.x, select(vec4<bool>(false, var_0.b.x, true, arg_3.c.x), vec4<bool>(var_0.b.x, var_0.b.x, arg_3.b.b.x, false), global1[_wgslsmith_index_u32(0u, 17u)])).a, var_0, func_2(u_input.d == 12038i, Struct_3(Struct_1(vec3<f32>(-600f, arg_3.b.a.x, -704f), arg_3.d.b), arg_3.a, var_0.b, var_0, arg_1), ~(-9421i)).b, Struct_1(arg_3.d.a, vec3<bool>(var_0.b.x, arg_3.a.b.x, var_0.b.x)), u_input.c.x), u_input.b), Struct_3(var_0, Struct_1(arg_3.a.a, !(!arg_3.b.b)), vec3<bool>(true, var_0.b.x, -1i >= u_input.b), var_0, u_input.c.x), _wgslsmith_add_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(13952i, -2147483647i, 1280i), vec3<i32>(u_input.d, 14006i, u_input.d)), vec3<i32>(-1i, u_input.b, 12159i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, 35194i), select(-vec3<i32>(u_input.b, u_input.d, u_input.b), ~vec3<i32>(-1i, -45493i, 3603i), select(var_0.b, var_0.b, var_0.b)))), _wgslsmith_clamp_u32(7102u, ~(~u_input.c.x ^ ~arg_1), _wgslsmith_mult_u32(arg_1, 42333u)));
    global0 = array<u32, 21>();
    var var_2 = var_1.b.c.zx;
    return Struct_2(func_1(Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(833f, var_0.a.x, var_0.a.x)), !vec3<bool>(arg_3.a.b.x, true, var_1.a.b.x)), Struct_3(Struct_1(vec3<f32>(arg_2.x, var_0.a.x, 600f), vec3<bool>(true, arg_3.d.b.x, false)), func_2(false, Struct_3(var_0, Struct_1(vec3<f32>(var_1.b.a.a.x, 1000f, 425f), var_1.a.b), vec3<bool>(var_0.b.x, false, var_1.a.b.x), Struct_1(vec3<f32>(-255f, var_1.b.a.a.x, 1000f), vec3<bool>(false, var_2.x, var_2.x)), 4294967295u), u_input.d), vec3<bool>(false, false, false), Struct_1(vec3<f32>(1000f, var_1.b.d.a.x, 2038f), vec3<bool>(false, true, arg_3.c.x)), _wgslsmith_mod_u32(var_1.d, 99860u)), var_1.c | -vec3<i32>(14316i, var_1.c.x, -1i), 31066u >> (~global0[_wgslsmith_index_u32(var_1.b.e, 21u)] % 32u)), var_1.a.a.x, select(select(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], !global1[_wgslsmith_index_u32(0u, 17u)], true), select(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3.e, 21u)], 21u)], 17u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1, arg_3.e, 17252u), 17u)], false), var_2.x)).a, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1[_wgslsmith_index_u32(u_input.c.x, 17u)];
    let var_1 = vec2<bool>(all(var_0.wxx), var_0.x);
    let var_2 = func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2316f * 675f)))))), global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mod_u32(~25665u, 34127u)), 21u)], _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1538f, -437f, -834f, -698f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(557f, -1000f, 1147f, -299f))))))), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-283f, 526f, 1286f), vec3<f32>(255f, -991f, 859f))))), var_0.yxw), func_5(func_1(Struct_4(Struct_1(vec3<f32>(-1000f, 1564f, -317f), var_0.zxw), Struct_3(Struct_1(vec3<f32>(-1000f, -253f, 892f), vec3<bool>(var_0.x, false, var_0.x)), Struct_1(vec3<f32>(-1579f, -345f, -2342f), vec3<bool>(false, false, var_0.x)), var_0.zwy, Struct_1(vec3<f32>(964f, -407f, 423f), vec3<bool>(var_1.x, var_1.x, true)), 36669u), vec3<i32>(u_input.d, u_input.d, u_input.d), u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -2253f), global1[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 21u)], 21u)]), 17u)]), func_1(Struct_4(Struct_1(vec3<f32>(-1523f, -821f, -322f), vec3<bool>(var_0.x, true, true)), Struct_3(Struct_1(vec3<f32>(-552f, -666f, 877f), vec3<bool>(var_1.x, true, var_0.x)), Struct_1(vec3<f32>(621f, 542f, 769f), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(var_0.x, true, true), Struct_1(vec3<f32>(-935f, 896f, -1068f), vec3<bool>(true, var_0.x, true)), 22061u), vec3<i32>(42803i, u_input.b, u_input.b), 85836u), func_4(Struct_3(Struct_1(vec3<f32>(481f, 1000f, -774f), vec3<bool>(var_1.x, var_1.x, false)), Struct_1(vec3<f32>(826f, 980f, -659f), vec3<bool>(true, var_1.x, true)), vec3<bool>(false, var_1.x, false), Struct_1(vec3<f32>(172f, -957f, -1000f), var_0.wxy), 0u), 27011u).a.x, vec4<bool>(var_0.x, true, true, false)), vec2<i32>(u_input.b, u_input.b & u_input.d)), var_0.wzz, Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(146f, -1000f, 125f)))), var_0.zwx), _wgslsmith_mod_u32(min(1u, u_input.a), ~0u ^ firstTrailingBit(0u))));
    var var_3 = vec4<u32>(13571u, firstTrailingBit(u_input.a), u_input.a | ~u_input.a, reverseBits(countOneBits(~62784u)));
    var var_4 = func_5(Struct_2(Struct_1(var_2.b.a, !func_5(var_2, Struct_2(Struct_1(var_2.a.a, vec3<bool>(false, var_2.b.b.x, var_2.b.b.x)), var_2.a), vec2<i32>(-2147483647i, -17094i)).b), func_6(var_2.a.a.x, global0[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a.x, var_2.a.a.x, var_2.b.a.x, -1239f)), vec4<f32>(var_2.a.a.x, var_2.a.a.x, var_2.b.a.x, var_2.b.a.x), u_input.d == 16299i)), Struct_3(func_1(Struct_4(var_2.a, Struct_3(var_2.a, Struct_1(vec3<f32>(var_2.b.a.x, -1277f, 405f), vec3<bool>(true, true, var_0.x)), var_2.b.b, var_2.b, 1u), vec3<i32>(1i, u_input.d, u_input.b), var_3.x), var_2.a.a.x, var_0).b, Struct_1(vec3<f32>(1742f, 260f, -1034f), var_0.yxx), vec3<bool>(var_2.a.b.x, var_1.x, true), Struct_1(var_2.b.a, var_0.xzx), _wgslsmith_mod_u32(u_input.a, var_3.x))).a), func_1(Struct_4(func_6(_wgslsmith_f_op_f32(var_2.a.a.x - 770f), global0[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a.x, -2133f, 406f, -1290f) - vec4<f32>(var_2.a.a.x, 1696f, -1000f, var_2.a.a.x)), Struct_3(var_2.a, Struct_1(vec3<f32>(var_2.a.a.x, var_2.b.a.x, -419f), var_2.b.b), var_2.a.b, Struct_1(var_2.b.a, var_0.zzy), 0u)).b, Struct_3(var_2.b, Struct_1(var_2.a.a, vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(true, var_0.x, var_0.x), func_4(Struct_3(Struct_1(var_2.a.a, var_0.zyx), Struct_1(var_2.a.a, vec3<bool>(var_2.a.b.x, var_1.x, var_2.a.b.x)), vec3<bool>(false, false, true), var_2.a, var_3.x), var_3.x), var_3.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -62917i, u_input.b), vec3<i32>(u_input.b, u_input.d, u_input.d)) << (~var_3.zwx % vec3<u32>(32u)), ~23476u), -1137f, !var_0), ~_wgslsmith_sub_vec2_i32(~(~vec2<i32>(-2147483647i, u_input.b)), firstLeadingBit(vec2<i32>(u_input.d, -23087i))));
    var_3 = min(~u_input.c, vec4<u32>(1u, u_input.c.x & u_input.a, ~(~(12667u ^ u_input.c.x)), ~_wgslsmith_mult_u32(var_3.x, ~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 8942u, u_input.c.x, 1u), u_input.c), ~vec4<u32>(u_input.c.x, var_3.x, var_3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 21u)], 21u)], 21u)], 21u)])), var_3.x | ~0u) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(var_3.x, 21u)] ^ 100999u, ~6135u, 0u), vec4<u32>(var_3.x, 50089u, global0[_wgslsmith_index_u32(1u, 21u)], 41517u) >> (~vec4<u32>(25209u, global0[_wgslsmith_index_u32(var_3.x, 21u)], u_input.c.x, var_3.x) % vec4<u32>(32u))));
}

