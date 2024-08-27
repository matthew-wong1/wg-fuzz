struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, true, true, true, true, true, false, true, true, true, false, false, false, false, true, false, false, true);

var<private> global1: u32;

var<private> global2: bool;

var<private> global3: array<bool, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = Struct_2(-1i, Struct_1(vec3<bool>(true, arg_0.c.a.x, false), vec2<i32>(-u_input.c, select(-2147483647i, -85i, global0[_wgslsmith_index_u32(14634u, 18u)])) >> (~vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -800f), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], false, arg_0.d.x), vec3<bool>(true, true, false), u_input.b.x <= u_input.a), vec3<bool>(true, true, !arg_0.b.a.x), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.e.x, 1073f), arg_0.c.e, vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 18u)]))))) * vec2<f32>(arg_0.c.e.x, _wgslsmith_f_op_f32(-1531f * -515f)))), arg_0.b, !vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], false, !(true && global0[_wgslsmith_index_u32(0u, 18u)]), all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], arg_0.c.a.x, true, global3[_wgslsmith_index_u32(1u, 28u)]))));
    global1 = u_input.b.x;
    var_0 = Struct_2(_wgslsmith_mod_i32(~(~1i), u_input.c), arg_0.c, Struct_1(select(arg_0.b.a, !select(vec3<bool>(var_0.d.x, true, false), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(1u, 18u)]), false), (u_input.a < u_input.a) & (var_0.c.c == 812f)), vec2<i32>(min(~arg_0.c.b.x, reverseBits(-2147483647i)), ~(~arg_0.b.b.x)), _wgslsmith_f_op_f32(min(733f, -1000f)), select(vec3<bool>(true, true, any(vec3<bool>(global3[_wgslsmith_index_u32(23454u, 28u)], var_0.d.x, arg_0.c.a.x))), arg_0.c.d, !vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(0u, 18u)], true)), _wgslsmith_f_op_vec2_f32(arg_0.b.e - vec2<f32>(_wgslsmith_f_op_f32(566f * arg_0.c.c), _wgslsmith_f_op_f32(floor(2019f))))), vec4<bool>(true, false, arg_0.b.a.x, !(any(vec3<bool>(true, var_0.b.a.x, false)) & global3[_wgslsmith_index_u32(~u_input.b.x, 28u)])));
    let var_1 = u_input.b.x;
    var_0 = Struct_2(-firstTrailingBit(reverseBits(arg_0.a)) ^ -1i, Struct_1(!select(arg_0.b.a, var_0.b.d, var_0.d.zww), -_wgslsmith_mod_vec2_i32(-var_0.b.b, abs(vec2<i32>(var_0.b.b.x, var_0.b.b.x))), _wgslsmith_f_op_f32(select(-297f, arg_0.c.c, !any(var_0.b.d))), vec3<bool>(false, _wgslsmith_f_op_f32(1181f * -233f) >= _wgslsmith_f_op_f32(arg_0.b.c - -250f), global0[_wgslsmith_index_u32(1u, 18u)]), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c.c))), 278f)), Struct_1(var_0.b.d, ~arg_0.c.b, _wgslsmith_f_op_f32(sign(-2217f)), select(!vec3<bool>(true, arg_0.b.d.x, global3[_wgslsmith_index_u32(49454u, 28u)]), select(select(vec3<bool>(var_0.b.a.x, false, global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec3<bool>(false, true, true), false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(var_1, 18u)], false, true), global3[_wgslsmith_index_u32(var_1, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(6522u, 18u)], false, true)), vec3<bool>(all(var_0.b.d), true, any(vec4<bool>(arg_0.c.a.x, global3[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(var_1, 18u)], true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.e))), !select(var_0.d, select(!var_0.d, var_0.d, any(var_0.d.xxx)), select(var_0.d, arg_0.d, var_0.d)));
    return vec3<bool>(abs(~(~u_input.b.x)) > firstLeadingBit(var_1), !global0[_wgslsmith_index_u32(u_input.a, 18u)], false);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<u32> {
    global2 = global3[_wgslsmith_index_u32(u_input.b.x, 28u)];
    var var_0 = Struct_1(arg_2.xww, -abs(~(vec2<i32>(u_input.c, 23639i) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.c, -1000f) * -561f)))), func_3(arg_1), vec2<f32>(-640f, arg_3.c));
    var var_1 = min(~_wgslsmith_div_u32(_wgslsmith_add_u32(30169u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(17149u, 0u, u_input.b.x), u_input.b)), ~u_input.b.x) <= (_wgslsmith_div_u32(u_input.b.x, u_input.b.x) >> (~1u % 32u));
    var var_2 = Struct_1(arg_1.c.d, arg_0.c.b, 121f, vec3<bool>(false && (_wgslsmith_mult_u32(u_input.a, u_input.a) != _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), global3[_wgslsmith_index_u32(4294967295u ^ ~u_input.a, 28u)], all(vec3<bool>(var_0.b.x <= u_input.c, 688f >= arg_0.b.e.x, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1216f, arg_3.c), 444f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1072f, arg_0.b.e.x), vec2<f32>(arg_3.c, arg_3.c)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -1032f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1524f, arg_0.c.e.x), vec2<f32>(arg_0.b.c, arg_0.b.e.x))))), vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.c.c)), _wgslsmith_f_op_f32(-1255f * var_0.e.x))))));
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-21091i, -2147483647i, arg_0.a, -85502i), vec4<i32>(u_input.c, 16243i, var_0.b.x, var_2.b.x)), var_2.b.x ^ u_input.c), reverseBits(-23417i ^ arg_3.b.x), ~(~arg_0.b.b.x)), max(reverseBits(abs(vec3<i32>(u_input.c, arg_3.b.x, arg_1.c.b.x))), ~vec3<i32>(3511i, -1i, var_0.b.x))), vec3<i32>(-10177i, -(~(-26269i)), -27085i));
    return ~max(u_input.b, vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(~u_input.b.x, u_input.a), 4294967295u));
}

fn func_1() -> u32 {
    return _wgslsmith_dot_vec3_u32(((u_input.b & ~vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)) | ~select(u_input.b, vec3<u32>(u_input.a, u_input.b.x, 41202u), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(13984u, 18u)], true))) ^ _wgslsmith_add_vec3_u32(u_input.b, func_2(Struct_2(u_input.c, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(0u, 28u)], true), vec2<i32>(u_input.c, u_input.c), 504f, vec3<bool>(true, false, false), vec2<f32>(-606f, 1153f)), Struct_1(vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 28u)]), vec2<i32>(u_input.c, u_input.c), -626f, vec3<bool>(global0[_wgslsmith_index_u32(92671u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], true), vec2<f32>(-2177f, -691f)), vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 28u)], false, global3[_wgslsmith_index_u32(14997u, 28u)])), Struct_2(u_input.c, Struct_1(vec3<bool>(false, global0[_wgslsmith_index_u32(10638u, 18u)], false), vec2<i32>(u_input.c, -2147483647i), 151f, vec3<bool>(global0[_wgslsmith_index_u32(1u, 18u)], false, false), vec2<f32>(-844f, -1826f)), Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(1u, 28u)], true, false), vec2<i32>(u_input.c, u_input.c), -842f, vec3<bool>(false, true, false), vec2<f32>(2347f, 260f)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], false, false, global3[_wgslsmith_index_u32(u_input.b.x, 28u)])), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], true, false, global3[_wgslsmith_index_u32(2857u, 28u)]), Struct_1(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global3[_wgslsmith_index_u32(10025u, 28u)]), vec2<i32>(u_input.c, -1i), -1122f, vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global3[_wgslsmith_index_u32(29690u, 28u)], true), vec2<f32>(-439f, 1000f)))), ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -169f));
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(52736u, u_input.b.x | 11913u), 1u, ~_wgslsmith_mod_u32(129416u, 4294967295u)), ~vec3<u32>(firstTrailingBit(68909u), ~u_input.a, firstTrailingBit(u_input.b.x))) | vec3<u32>(30409u, 86224u, func_1());
    let var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), var_0))));
    let var_3 = ~countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(min(46322i, -9341i), u_input.c & u_input.c, u_input.c, min(u_input.c, u_input.c)), vec4<i32>(-3603i, -16055i, 1i, u_input.c) >> (select(vec4<u32>(4246u, var_1.x, var_1.x, 4294967295u), vec4<u32>(var_1.x, u_input.a, var_1.x, u_input.a), true) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c))));
    var_1 = vec3<u32>(abs(_wgslsmith_sub_u32(1u, u_input.b.x)) | abs(u_input.a), u_input.a, ~(~u_input.a));
    var var_4 = Struct_1(select(vec3<bool>(global0[_wgslsmith_index_u32(45406u, 18u)], any(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 28u)])), !(!global3[_wgslsmith_index_u32(36041u, 28u)])), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)] | global0[_wgslsmith_index_u32(u_input.a, 18u)], true, all(vec4<bool>(global3[_wgslsmith_index_u32(var_1.x, 28u)], true, global0[_wgslsmith_index_u32(u_input.a, 18u)], global3[_wgslsmith_index_u32(37130u, 28u)]))), select(vec3<bool>(global0[_wgslsmith_index_u32(~21924u, 18u)], false, !global3[_wgslsmith_index_u32(39064u, 28u)]), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 18u)], true), vec3<bool>(global0[_wgslsmith_index_u32(51077u, 18u)], true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 18u)], global0[_wgslsmith_index_u32(var_1.x, 18u)], false), vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(4294967295u, 18u)])), global3[_wgslsmith_index_u32(u_input.b.x, 28u)])), abs(~_wgslsmith_div_vec2_i32(vec2<i32>(var_3.x, u_input.c), max(var_3.yy, var_3.zy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 217f) * var_0) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(floor(var_0)))))), vec3<bool>(all(!(!vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 28u)], true))), global0[_wgslsmith_index_u32(~(~countOneBits(var_1.x)), 18u)], global3[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(0u, var_1.x), _wgslsmith_add_u32(75879u, _wgslsmith_div_u32(9041u, 20117u))), 28u)]), var_2);
    var_4 = Struct_1(func_3(Struct_2(1i, Struct_1(vec3<bool>(false, false, true), max(var_4.b, var_3.wz), _wgslsmith_f_op_f32(abs(2475f)), vec3<bool>(true, var_4.d.x, true), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4.c, 1149f)))), Struct_1(var_4.a, ~var_4.b, _wgslsmith_f_op_f32(step(var_4.c, var_4.c)), vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 18u)], false), vec2<f32>(var_0, var_4.e.x)), select(!vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(var_1.x, 28u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 18u)], global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(var_1.x, 28u)]), true | var_4.d.x))), var_4.b, -940f, var_4.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(var_0, var_0)), _wgslsmith_f_op_f32(578f - var_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-367f))))), global0[_wgslsmith_index_u32(var_1.x, 18u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-13184i >> (u_input.a % 32u), var_3.x), ~(vec4<u32>(_wgslsmith_add_u32(17046u, 1u), firstTrailingBit(60359u), u_input.a & u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 2488u), vec3<u32>(u_input.b.x, u_input.b.x, var_1.x))) >> (~vec4<u32>(u_input.b.x, var_1.x, var_1.x, 1u) % vec4<u32>(32u))), ~((var_3.x << (22401u % 32u)) << (~(~15664u) % 32u)));
}

