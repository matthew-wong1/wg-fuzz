struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 11038u;

var<private> global1: array<u32, 15>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-23055i, -1i), vec3<bool>(true, true, true), vec4<f32>(-1266f, -1591f, -258f, 1173f), false, vec2<bool>(true, true));

var<private> global3: Struct_1 = Struct_1(vec2<i32>(0i, 1i), vec3<bool>(true, true, true), vec4<f32>(-643f, 281f, 141f, 184f), true, vec2<bool>(false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec4<f32> {
    global0 = _wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)], 36033u) & _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~4294967295u, 15u)], countOneBits(u_input.a.x))) << (u_input.a.x % 32u);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(359f, global2.c.x)), -199f, _wgslsmith_f_op_f32(563f + _wgslsmith_f_op_f32(sign(global2.c.x))), -838f), _wgslsmith_f_op_vec4_f32(global3.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, -2836f, global2.c.x, global3.c.x))) * global3.c)), !(!any(!vec4<bool>(true, true, global3.b.x, true)))));
}

fn func_2(arg_0: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec3_u32(u_input.a.zwz, u_input.a.zxw) & _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(20664u, 15u)], 40734u);
    global3 = Struct_1(global3.a, !select(vec3<bool>(true, true, !global3.b.x), select(vec3<bool>(global2.d, true, false), global2.b, global3.b), vec3<bool>(true, true, any(vec4<bool>(global3.b.x, arg_0, global2.b.x, true)))), _wgslsmith_f_op_vec4_f32(func_3()), true, vec2<bool>(false, false));
    let var_1 = select(vec3<bool>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c.x * global2.c.x), _wgslsmith_f_op_f32(-global2.c.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -147f), global2.c.x != -301f), vec3<bool>(any(vec2<bool>(global2.e.x & false, arg_0)), ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) <= u_input.a.x, all(select(vec2<bool>(arg_0, global3.b.x), select(global2.b.yy, vec2<bool>(global3.b.x, global2.b.x), global2.b.yz), global3.b.x))), !arg_0);
    global3 = Struct_1(-vec2<i32>(1i, global3.a.x), select(global2.b, vec3<bool>(true, global3.b.x, true), global2.b), global3.c, global3.d, select(vec2<bool>(select(true, var_1.x, global2.e.x), global2.d), !(!select(global3.b.yx, vec2<bool>(true, true), global3.e)), -2147483647i <= _wgslsmith_div_i32(-2147483647i, global2.a.x)));
    var var_2 = abs(vec3<u32>(0u, ~(~4294967295u) | _wgslsmith_sub_u32(~u_input.a.x, 1u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_add_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 79676u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)] << (15119u % 32u), 15u)]))));
    return countOneBits(vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global3.a.x, global3.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.x, -2147483647i, 0i, global2.a.x), vec4<i32>(global3.a.x, -38726i, global2.a.x, -1i)), ~1i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(global3.a.x, -14711i, global2.a.x), vec3<i32>(41928i, global2.a.x, global2.a.x))), global3.a.x));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    global3 = Struct_1(min(_wgslsmith_mod_vec2_i32(global3.a, global3.a), vec2<i32>(0i, arg_1.x)), vec3<bool>(any(select(select(vec4<bool>(false, true, global2.d, true), vec4<bool>(true, global2.b.x, global3.d, global3.d), vec4<bool>(global2.e.x, true, global2.d, global3.b.x)), !vec4<bool>(global2.b.x, global2.b.x, global3.b.x, true), any(global3.b.xx))), !(any(vec3<bool>(true, global2.b.x, global3.d)) | !global3.d), true | all(select(vec2<bool>(true, global2.d), global2.b.xz, vec2<bool>(global2.d, global3.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3.c, global2.c) * global2.c), global3.e.x | true, vec2<bool>(any(vec2<bool>(true, true)), true));
    global0 = 0u;
    var var_0 = !global3.b;
    var var_1 = Struct_1(func_2(global2.b.x).zz, select(!select(select(global3.b, vec3<bool>(false, global3.e.x, true), global2.b), select(global3.b, vec3<bool>(false, global3.b.x, var_0.x), true), global3.b), !select(global3.b, select(global2.b, global2.b, global3.d), false), global2.d), vec4<f32>(739f, global2.c.x, arg_0, -415f), global2.b.x, select(select(select(vec2<bool>(false, global2.e.x), select(vec2<bool>(false, global2.d), global3.e, global2.d), var_0.xz), !select(var_0.yy, global3.b.zz, vec2<bool>(true, true)), any(vec4<bool>(global3.b.x, var_0.x, global2.b.x, true)) & global3.b.x), var_0.zx, !(!global3.e)));
    let var_2 = select(vec3<bool>(true, false & any(vec3<bool>(var_0.x, global3.d, global2.b.x)), var_1.b.x), global2.b, false);
    return Struct_1(countOneBits(-_wgslsmith_mult_vec2_i32(abs(global2.a), vec2<i32>(global3.a.x, var_1.a.x))), select(!select(!var_1.b, vec3<bool>(var_1.e.x, var_2.x, var_2.x), !var_2.x), global3.b, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0))), any(vec4<bool>(var_2.x, !var_0.x, true, false)), !(!var_0.xz));
}

fn func_1(arg_0: vec2<f32>) -> vec4<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(global2.c.x)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(184f))), -2152f, _wgslsmith_f_op_f32(f32(-1f) * -325f));
    var var_1 = func_4(-105f, max(select(func_2(false), ~vec3<i32>(-2147483647i, -1i, global2.a.x), true && global2.e.x), vec3<i32>(global2.a.x, global2.a.x, global2.a.x | 26721i)) & (_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-28585i, -46972i, 1i)), vec3<i32>(36050i, -41450i, 2147483647i)) & -select(vec3<i32>(-64931i, global2.a.x, -11433i), vec3<i32>(2147483647i, global3.a.x, 20028i), global3.b)), abs(0u));
    let var_2 = Struct_1(firstLeadingBit(abs(global3.a)), !global3.b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(525f, func_4(var_1.c.x, -vec3<i32>(2147483647i, global3.a.x, 0i), firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 15u)])).c.x, _wgslsmith_div_f32(257f, _wgslsmith_div_f32(-1000f, 1161f)), _wgslsmith_f_op_f32(floor(global3.c.x))))), var_1.b.x, vec2<bool>(true, true));
    var var_3 = -550f;
    var var_4 = var_2;
    return select(vec4<bool>(true, select(false, func_4(var_2.c.x, -vec3<i32>(-2147483647i, -29219i, 2147483647i), ~u_input.a.x).e.x, !(-1118f <= global2.c.x)), !(_wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.a.xw) < _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)])), true), vec4<bool>(var_2.b.x && !(!var_2.e.x), any(select(select(vec2<bool>(var_1.e.x, true), vec2<bool>(true, false), vec2<bool>(global2.e.x, false)), func_4(844f, vec3<i32>(1i, var_1.a.x, -44822i), 1u).e, var_4.e.x)), !var_2.b.x, all(select(vec2<bool>(true, var_2.b.x), !global2.e, var_4.d))), !select(!vec4<bool>(false, global2.e.x, global2.e.x, true), vec4<bool>(true, true, true, true), func_4(_wgslsmith_f_op_f32(exp2(var_2.c.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-31582i, -6994i, var_4.a.x), vec3<i32>(0i, -49776i, global3.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.xx)).d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(71371u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)]) & 24239u, 15u)], 15u)] & (min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(49462u, 15u)], u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(1u, 15u)]), u_input.a)) >> (global1[_wgslsmith_index_u32(max(~1u, ~1u), 15u)] % 32u)), _wgslsmith_dot_vec2_u32(~u_input.a.yz ^ ~(~u_input.a.ww), u_input.a.xy), ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)], ~(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(4294967295u, 15u)] & 4294967295u), 15u)] ^ u_input.a.x));
    global0 = ~(~1849u);
    global1 = array<u32, 15>();
    var var_1 = select(!select(vec4<bool>(false, true, select(false, false, true), select(false, global3.b.x, true)), select(select(vec4<bool>(true, global3.e.x, true, false), vec4<bool>(global2.b.x, true, global2.e.x, global2.b.x), global3.b.x), select(vec4<bool>(global3.b.x, global3.e.x, global2.d, global2.b.x), vec4<bool>(false, global3.b.x, global2.d, global3.b.x), vec4<bool>(false, global2.e.x, true, true)), !vec4<bool>(false, global2.d, true, true)), !select(vec4<bool>(global3.d, global3.b.x, global2.e.x, global3.b.x), vec4<bool>(false, global2.b.x, false, true), global3.d)), func_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(498f)), _wgslsmith_f_op_f32(min(-166f, global2.c.x))), vec2<f32>(global3.c.x, 422f)))), false);
    let var_2 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(global3.a, func_4(global3.c.x, ~vec3<i32>(global2.a.x, global2.a.x, global3.a.x), 0u).a), global3.a), global3.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global3.c.x, global2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f + 724f)), _wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(f32(-1f) * -1135f)), _wgslsmith_f_op_f32(abs(-356f)))), true, vec2<bool>(any(!vec2<bool>(global3.e.x, true)) & true, true));
    let var_3 = var_2.a.x;
    let var_4 = vec2<i32>(global3.a.x >> (var_0.x % 32u), -firstLeadingBit(-var_3) | -1i);
    var var_5 = Struct_1(vec2<i32>(select(-20697i, 41386i, var_1.x) >> (var_0.x % 32u), 17447i) >> (~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global1[_wgslsmith_index_u32(var_0.x, 15u)], 4294967295u, 32818u, 76945u)), 1u) % vec2<u32>(32u)), vec3<bool>(!var_2.d, !var_2.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * var_2.c.x) + _wgslsmith_div_f32(global2.c.x, global2.c.x)) != _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.c.x, -267f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2192f, 354f, global2.c.x, var_2.c.x), vec4<f32>(global3.c.x, global3.c.x, 1488f, global2.c.x), var_2.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c.x, -286f, 429f, var_2.c.x), global3.c, var_1.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c), var_2.c))), true, func_1(global2.c.wy).zy);
    let x = u_input.a;
    s_output = StorageBuffer(-22914i, ~(~u_input.a.yx), vec3<i32>(-var_2.a.x, func_2(true).x, -global2.a.x), var_5.c.yy);
}

