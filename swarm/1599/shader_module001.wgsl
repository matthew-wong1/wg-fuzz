struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1>;

var<private> global1: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(12397i, ~1i, 41173i, max(min(-28427i, u_input.a), min(0i, 13402i))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, 16560i, u_input.c.x, u_input.a), vec4<i32>(u_input.b, u_input.b, u_input.a, -43735i)), vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.b, u_input.b, 2147483647i)), vec4<i32>(_wgslsmith_div_i32(u_input.b, -u_input.b), ~2147483647i, -(~u_input.b), _wgslsmith_sub_i32(1i, reverseBits(u_input.b)))), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, -2147483647i) & vec3<i32>(u_input.a, 45114i, u_input.b), ~vec3<i32>(1i, -1i, u_input.a)), 0i, _wgslsmith_mult_i32(25677i, 46632i) & (u_input.c.x >> (global1.a.x % 32u)), u_input.a & -u_input.a));
    var var_1 = Struct_3(Struct_2(select(all(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, true)), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1616f)), _wgslsmith_f_op_f32(abs(2421f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -891f))), 954f, all(vec2<bool>(arg_0 == arg_0, all(vec2<bool>(true, false))))), Struct_1(global1.a), Struct_2(all(vec2<bool>(any(vec2<bool>(true, false)), u_input.d.x == u_input.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(571f, -261f, -1073f) + vec3<f32>(arg_0, 1213f, arg_0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(675f, arg_0, arg_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, -1323f)))), -1085f, (abs(4294967295u) & (11200u ^ global1.a.x)) < global1.a.x), vec4<bool>(true, true, true, true));
    var var_2 = var_0.x ^ u_input.c.x;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b.x))))));
    var var_4 = 0u > (_wgslsmith_add_u32(_wgslsmith_mod_u32(select(0u, 4294967295u, false), abs(u_input.d.x)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 75581u), 58151u)) | var_1.b.a.x);
    return 1u;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    global1 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~(~global1.a.x), func_3(_wgslsmith_f_op_f32(f32(-1f) * -414f)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 15777u, 58832u), _wgslsmith_add_vec4_u32(vec4<u32>(31841u, global1.a.x, global1.a.x, 103331u), vec4<u32>(4294967295u, 77116u, u_input.d.x, 88076u)))), select(vec3<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 0u), global1.a.x, 27253u), u_input.d, select(true, arg_0.x, false))));
    let var_0 = Struct_3(Struct_2(arg_0.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(146f, 1535f, -1138f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(284f + _wgslsmith_f_op_f32(-593f + 319f)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -274f), arg_0.x))), arg_0.x), Struct_1(global1.a), Struct_2(all(select(arg_0, arg_0, select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, false), arg_0))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(959f, 1274f, -1382f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-363f, -1000f, -741f)))))), 195f, true), select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false), arg_0.x)), !(!vec4<bool>(arg_0.x, false, arg_0.x, false)), select(vec4<bool>(arg_0.x, arg_0.x, false, false), !vec4<bool>(true, arg_0.x, false, arg_0.x), any(vec4<bool>(false, false, true, true)))), !select(!vec4<bool>(arg_0.x, true, arg_0.x, true), select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(true, false, false, true), true), select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))), vec4<bool>(arg_0.x, !arg_0.x && all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), (false & arg_0.x) | false, !arg_0.x)));
    var var_1 = Struct_2(all(select(vec3<bool>(true, true, arg_0.x), !(!global0[_wgslsmith_index_u32(14280u, 1u)]), vec3<bool>(var_0.d.x, var_0.d.x, any(var_0.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1774f, _wgslsmith_f_op_f32(-var_0.a.b.x), var_0.a.c), vec3<f32>(_wgslsmith_f_op_f32(sign(1031f)), 258f, _wgslsmith_f_op_f32(-1984f + var_0.c.b.x))))), var_0.a.b.x, arg_0.x);
    let var_2 = Struct_4(true);
    var var_3 = min(1u, abs(_wgslsmith_mod_u32(~32324u, _wgslsmith_add_u32(var_0.b.a.x, var_0.b.a.x))));
    return _wgslsmith_mod_u32(~global1.a.x, _wgslsmith_dot_vec2_u32(~max(select(vec2<u32>(1u, var_0.b.a.x), vec2<u32>(global1.a.x, global1.a.x), var_0.d.xx), firstTrailingBit(vec2<u32>(var_0.b.a.x, 0u))), select(global1.a.zy, vec2<u32>(max(var_0.b.a.x, 1u), firstTrailingBit(u_input.d.x)), vec2<bool>(true, any(var_0.d.wyz)))));
}

fn func_1() -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(reverseBits(_wgslsmith_dot_vec3_u32(u_input.d, ~u_input.d))), 1u)];
    var var_1 = _wgslsmith_clamp_u32(11448u, func_2(select(select(!var_0.xy, !vec2<bool>(var_0.x, false), var_0.x || false), !vec2<bool>(var_0.x, false), vec2<bool>(false, select(var_0.x, true, true)))), _wgslsmith_add_u32(~min(_wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.d.yy), u_input.d.x), _wgslsmith_dot_vec2_u32(global1.a.xy >> (_wgslsmith_mult_vec2_u32(u_input.d.zz, vec2<u32>(u_input.d.x, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(firstLeadingBit(1u), abs(global1.a.x)))));
    let var_2 = select(_wgslsmith_dot_vec3_i32(-(firstLeadingBit(vec3<i32>(u_input.b, u_input.a, u_input.c.x)) ^ (vec3<i32>(49823i, u_input.a, 14235i) & vec3<i32>(u_input.c.x, 1i, -37706i))), -_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-52391i, -52i, 21i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.b), vec3<i32>(u_input.c.x, u_input.b, -2147483647i)))), -_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), var_0.x);
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1663f, -335f), vec2<f32>(341f, -1782f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-302f, 952f) - vec2<f32>(-354f, -580f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-867f, 757f), vec2<f32>(-1487f, 689f), vec2<bool>(var_0.x, true)))))));
    global0 = array<vec3<bool>, 1>();
    return Struct_4(false);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: u32) -> Struct_4 {
    global1 = Struct_1(abs(vec3<u32>(arg_3, arg_3, reverseBits(u_input.d.x) >> (u_input.d.x % 32u))));
    let var_0 = -min(vec4<i32>(-_wgslsmith_mult_i32(10779i, 20839i), ~(-u_input.c.x), abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2822i, u_input.a, -1i), vec4<i32>(-24050i, -8522i, 2147483647i, -10307i))), firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-32454i, u_input.c.x, u_input.c.x, u_input.a), vec4<i32>(1i, -29776i, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.c.x))));
    let var_1 = arg_2.zy;
    global0 = array<vec3<bool>, 1>();
    let var_2 = reverseBits(min(_wgslsmith_add_i32(_wgslsmith_sub_i32(-30572i, -1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, 28066i), var_0.yxw)), _wgslsmith_dot_vec3_i32(var_0.wyy | (var_0.wwx >> (vec3<u32>(0u, 42163u, arg_3) % vec3<u32>(32u))), abs(max(var_0.wwz, var_0.wwy)))));
    return func_1();
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    var var_0 = func_4(arg_0, func_1(), !(!select(!global0[_wgslsmith_index_u32(32642u, 1u)], global0[_wgslsmith_index_u32(countOneBits(u_input.d.x), 1u)], true)), 1u | _wgslsmith_add_u32(~(~4294967295u), min(u_input.d.x, ~1u)));
    var var_1 = ~(~(~u_input.d.yx ^ _wgslsmith_mod_vec2_u32(global1.a.zy, vec2<u32>(global1.a.x, 73861u))) ^ ~vec2<u32>(~global1.a.x, ~global1.a.x));
    global1 = Struct_1(select(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_1.x, 58854u), 1u, select(6747u, global1.a.x, var_0.a)), ~u_input.d >> (~vec3<u32>(40588u, 50717u, global1.a.x) % vec3<u32>(32u))), global1.a, false));
    global1 = Struct_1(global1.a);
    let var_2 = _wgslsmith_f_op_f32(abs(-1431f));
    return Struct_1(~(~min(vec3<u32>(61373u, var_1.x, 1u) >> (u_input.d % vec3<u32>(32u)), ~vec3<u32>(var_1.x, global1.a.x, global1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(377f, 296f), -705f, -703f, _wgslsmith_f_op_f32(-284f - -210f)), vec4<f32>(1f, 1306f, -1000f, -532f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(292f, -622f, 974f, -125f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-225f, -288f, 266f, -309f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1302f, 1497f, 962f, 897f) + vec4<f32>(816f, 1062f, 737f, 1745f)))))));
    let var_1 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(20343i, -1i))), u_input.c.x), u_input.a);
    let var_2 = func_5(func_4(Struct_4(false), func_1(), vec3<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true)), true), firstLeadingBit(0u)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 343f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-492f - _wgslsmith_f_op_f32(trunc(2178f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1394f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-657f - var_0.x), var_0.x)))));
    var var_3 = ~(~countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(global1.a.x, u_input.d.x)), ~global1.a.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(~_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(-2147483647i, 2491i))), _wgslsmith_f_op_f32(step(-1100f, var_0.x)), 2147483647i);
}

