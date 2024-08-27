struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: Struct_4 = Struct_4(vec3<f32>(-595f, -205f, 288f));

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    var var_0 = ~(~vec3<u32>(1u, 1u, 1u) & _wgslsmith_mult_vec3_u32(vec3<u32>(25157u, 30370u, 16061u) | select(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 0u, 36142u), vec3<bool>(false, false, false)), vec3<u32>(1u, 1u, 1u)));
    var var_1 = vec3<bool>(true, any(vec3<bool>(false, !all(global3[_wgslsmith_index_u32(var_0.x, 13u)]), !select(false, true, true))), global2.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)));
}

fn func_3() -> bool {
    var var_0 = select(!vec3<bool>(true, true | (-1087f < global1.a.x), true), select(!vec3<bool>(true, all(vec4<bool>(global2.x, global2.x, global2.x, false)), all(vec4<bool>(global2.x, false, true, true))), !(!vec3<bool>(global2.x, global2.x, global2.x)), u_input.a.x != ~u_input.a.x), all(select(vec3<bool>(false, select(false, global2.x, true), true), !select(vec3<bool>(true, global2.x, true), vec3<bool>(global2.x, false, false), global2.x), vec3<bool>(global1.a.x <= -1000f, true, !global2.x))));
    var_0 = !(!select(select(!vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(global2.x, global2.x, var_0.x), vec3<bool>(global2.x, var_0.x, false), global2.x), any(vec4<bool>(false, global2.x, true, false))), !select(vec3<bool>(global2.x, var_0.x, true), vec3<bool>(true, var_0.x, global2.x), vec3<bool>(false, false, var_0.x)), true));
    var var_1 = Struct_4(global1.a);
    var var_2 = ~min(firstLeadingBit(_wgslsmith_div_u32(0u, 69529u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 2778u))) & ~_wgslsmith_clamp_u32(~1u, select(select(62691u, 1u, false), 1u, any(vec3<bool>(false, true, var_0.x))), ~18265u << (firstLeadingBit(4294967295u) % 32u));
    var var_3 = countOneBits(_wgslsmith_dot_vec3_i32(u_input.a.yyw, -(u_input.a.yxy ^ min(vec3<i32>(-1479i, u_input.a.x, -16704i), u_input.a.zyz))));
    return var_0.x;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(79694u, 27u)] + 213f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -138f) + 362f), !global2.x)), ~(~vec3<u32>(1u, 40256u, 4294967295u)) << (reverseBits(_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, 0u, 7557u)), select(vec3<u32>(2999u, 4294967295u, 36241u), vec3<u32>(103351u, 1u, 1u), vec3<bool>(global2.x, global2.x, global2.x)))) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(4294967295u, 13u)]);
    let var_1 = any(var_0.c.xx);
    let var_2 = vec3<bool>(true, true && global2.x, func_3());
    var var_3 = Struct_1(_wgslsmith_f_op_f32(1123f - global1.a.x), vec2<i32>(u_input.b.x & -1i, u_input.a.x), select(!select(select(var_0.c, global3[_wgslsmith_index_u32(var_0.b.x, 13u)], var_1), var_0.c, var_2.x), var_0.c, global2.x), ~(~17008u), vec4<f32>(704f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.x + -325f), _wgslsmith_f_op_f32(step(636f, var_0.a))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1801f - _wgslsmith_f_op_f32(-global1.a.x)), var_0.a, all(var_0.c.zy))), _wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a * global0[_wgslsmith_index_u32(var_0.b.x, 27u)]))))));
    var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(278f - _wgslsmith_f_op_f32(trunc(var_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(-218f + 1011f)))), min(~var_3.b, firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.b.x, -33239i), vec2<i32>(12133i, u_input.a.x)))) ^ var_3.b, var_0.c, 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(select(var_3.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1810f + global0[_wgslsmith_index_u32(var_3.d, 27u)]) - _wgslsmith_f_op_f32(round(var_0.a))), true)), 107f, -836f, 1494f));
    return Struct_4(global1.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> Struct_4 {
    let var_0 = Struct_2(!(!global2.x && global2.x), u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~51303u, 27u)])), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 10249i), vec2<i32>(51689i, u_input.b.x)), !global3[_wgslsmith_index_u32(~1u, 13u)], 1u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * global0[_wgslsmith_index_u32(4294967295u, 27u)]), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), 1504f)), _wgslsmith_sub_u32(1u, 1u));
    var var_1 = select(vec2<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, u_input.a.x, 1i, 1i), u_input.a) >= var_0.b), all(vec4<bool>(true, any(var_0.c.c.xw), global2.x, true))), vec2<bool>(true, all(vec4<bool>(!global2.x, any(global3[_wgslsmith_index_u32(1u, 13u)]), true, all(vec2<bool>(true, global2.x))))), any(!vec2<bool>(any(global3[_wgslsmith_index_u32(var_0.d, 13u)]), true)));
    var var_2 = func_2();
    global2 = !select(var_0.c.c.yy, !select(var_0.c.c.xz, select(var_0.c.c.xz, vec2<bool>(global2.x, var_1.x), vec2<bool>(true, true)), true), var_1.x);
    let var_3 = false;
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, 521f, -544f), var_0.c.e.zwz) - var_2.a) - func_2().a) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(func_2().a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 1474f, -378f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global1.a + arg_0))), var_0.c.c.wxy))));
}

fn func_5(arg_0: bool, arg_1: Struct_4) -> f32 {
    global1 = arg_1;
    global3 = array<vec4<bool>, 13>();
    let var_0 = Struct_5(-7245i, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, 6490u, 1u, 69431u), vec4<u32>(155955u, 36817u, 1u, 0u), vec4<bool>(true, arg_0, arg_0, global2.x)), vec4<u32>(countOneBits(21551u), ~0u, 1u, 0u)) << (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 28904u), ~vec3<u32>(0u, 0u, 1u))) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.x, -1744f), arg_1.a.zy)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<u32>(1u, 1u, 1u), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 0u, 6398u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 36393u, 4294967295u), vec3<u32>(1u, 1u, 32805u))), firstTrailingBit(1u)), 13u)]));
    let var_1 = var_0.a;
    var var_2 = 9501u;
    return _wgslsmith_f_op_f32(-global1.a.x);
}

fn func_6(arg_0: vec2<f32>, arg_1: bool, arg_2: f32) -> Struct_4 {
    global3 = array<vec4<bool>, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -700f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1346f, arg_2)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1.a.x, 327f)), _wgslsmith_f_op_f32(arg_2 * -1287f))))));
    return func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, global1.a.x) + var_0.yyw) + global1.a) * global1.a), _wgslsmith_f_op_vec3_f32(var_0.xwz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 285f, arg_2)))))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 2209f, arg_2) * var_0.xxz))), func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = func_6(global1.a.yy, true, _wgslsmith_f_op_f32(func_5(select(select(!global2.x, u_input.b.x <= -1i, true), true, false), func_4(vec3<f32>(global0[_wgslsmith_index_u32(0u, 27u)], 1147f, _wgslsmith_f_op_f32(func_1())), func_2()))));
    let var_2 = vec4<bool>(any(global3[_wgslsmith_index_u32(15012u, 13u)]) && global2.x, max(~(var_0.x & 33629i), -1i) != ~reverseBits(~var_0.x), any(!select(select(vec2<bool>(false, true), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true)), !vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, false), global2.x))), !(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.a.yw, vec2<i32>(var_0.x, -38066i))) > -u_input.b.x));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 30007u), 27u)])) - global0[_wgslsmith_index_u32(1u, 27u)]), 379f)) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(50590u, 27u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + var_1.a.x)))));
    let var_4 = var_1.a.yy;
    var var_5 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_sub_u32(~29375u, 1u) >> (select(1u, 55253u, var_2.x) % 32u))), 27u)];
    var var_6 = firstTrailingBit(26247u);
    global3 = array<vec4<bool>, 13>();
    var var_7 = -492f;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, firstLeadingBit(-(~(~2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.x + var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_4(global1.a, var_1).a.x, _wgslsmith_f_op_f32(-var_4.x))))));
}

