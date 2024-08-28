struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(true, vec4<bool>(false, true, false, true), vec4<i32>(-1i, 50585i, i32(-2147483648), -1i)), Struct_2(true, vec4<bool>(false, false, true, false), vec4<i32>(-1i, 1i, -1i, i32(-2147483648))), Struct_2(false, vec4<bool>(true, false, false, true), vec4<i32>(-24234i, -17707i, -1i, -1i)), Struct_2(false, vec4<bool>(false, true, false, false), vec4<i32>(-29141i, -18398i, i32(-2147483648), 0i)), Struct_2(false, vec4<bool>(true, false, false, false), vec4<i32>(-2213i, 13592i, 2147483647i, 9146i)), Struct_2(false, vec4<bool>(false, true, false, false), vec4<i32>(2147483647i, -5648i, 12099i, 2147483647i)), Struct_2(false, vec4<bool>(true, false, false, false), vec4<i32>(-1i, 47776i, 1i, 25410i)), Struct_2(true, vec4<bool>(false, false, true, true), vec4<i32>(-47679i, -30704i, -16817i, 7999i)), Struct_2(true, vec4<bool>(false, false, true, true), vec4<i32>(-11118i, 1i, 2147483647i, 2147483647i)), Struct_2(false, vec4<bool>(false, false, false, true), vec4<i32>(-1i, i32(-2147483648), 16458i, i32(-2147483648))), Struct_2(true, vec4<bool>(true, false, true, false), vec4<i32>(1i, 19734i, -54588i, 22490i)));

var<private> global1: array<i32, 29> = array<i32, 29>(6157i, 22082i, -79950i, 40130i, 0i, -9700i, 39728i, 28598i, 2147483647i, -16780i, 35592i, 15204i, -33568i, -1i, i32(-2147483648), -1i, 20702i, -10559i, 1389i, 0i, i32(-2147483648), -85106i, 45346i, -46361i, 60961i, 2147483647i, 8059i, 1892i, 1i);

var<private> global2: i32 = i32(-2147483648);

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = !global3.x;
    let var_1 = Struct_1(vec4<bool>(true & (4294967295u >= u_input.d.x), !(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.d.x, 29u)], 0i) >= -arg_2.x), true, false), !(!(!(global1[_wgslsmith_index_u32(u_input.d.x, 29u)] != -2147483647i))));
    let var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 11u)];
    var var_3 = !var_2.b;
    var var_4 = vec3<bool>(select(true, var_1.a.x & true, 4294967295u > u_input.d.x), true, u_input.d.x >= ~u_input.d.x);
    return arg_3.x;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_0.a, ~(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 34650u), u_input.d.zz), 29u)]) >= _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -2147483647i, 2147483647i, -18140i), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(1i, u_input.a, global1[_wgslsmith_index_u32(1u, 29u)], -2147483647i)), vec4<i32>(-2147483647i, 2147483647i, global1[_wgslsmith_index_u32(1u, 29u)], 1i))));
    let var_1 = global3.x;
    global0 = array<Struct_2, 11>();
    let var_2 = ~(vec3<i32>(_wgslsmith_mod_i32(7924i, -1i), _wgslsmith_mult_i32(u_input.e.x, 0i), 0i) >> (u_input.d % vec3<u32>(32u)));
    global2 = min(abs(81093i) ^ (2147483647i << (u_input.d.x % 32u)), select(~_wgslsmith_clamp_i32(u_input.b, 13261i, global1[_wgslsmith_index_u32(14808u, 29u)]) & -1i, u_input.c, !all(!arg_0.a.wzy)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: i32) -> Struct_2 {
    global1 = array<i32, 29>();
    let var_0 = Struct_2(arg_2, select(select(vec4<bool>(u_input.c < arg_3, !global3.x, arg_2, global3.x), vec4<bool>(global3.x, !arg_2, true, !global3.x), !select(vec4<bool>(true, global3.x, arg_2, true), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, global3.x, true, false))), !select(select(vec4<bool>(global3.x, arg_2, global3.x, arg_2), vec4<bool>(true, global3.x, false, global3.x), vec4<bool>(arg_2, false, global3.x, arg_2)), vec4<bool>(false, arg_2, false, true), !vec4<bool>(true, false, true, global3.x)), arg_2), u_input.e);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1584f), true)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, 461f, 1562f, arg_0))), max(vec4<i32>(arg_3, 0i, 72700i, arg_3), vec4<i32>(0i, 2147483647i, arg_3, global1[_wgslsmith_index_u32(u_input.d.x, 29u)])) | vec4<i32>(-73942i, 36528i, arg_3, var_0.c.x), ~vec2<i32>(-4463i, 3686i), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(arg_0 - -600f), _wgslsmith_f_op_f32(arg_0 + -469f), arg_1)))) - vec2<f32>(-1180f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.b, false))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(func_3(Struct_1(var_0.b, false)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-347f, -1058f, -880f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, -558f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, 970f, arg_1), vec3<f32>(var_1.x, arg_1, 1000f), global3.ywy))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -585f, arg_0) - vec3<f32>(-1000f, var_1.x, -2186f)) * vec3<f32>(-1046f, arg_0, 188f)), vec3<bool>(false, !global3.x & any(vec3<bool>(true, var_0.a, arg_2)), true))));
    let var_3 = any(var_0.b.zw);
    return global0[_wgslsmith_index_u32(u_input.d.x, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global3.x, vec4<bool>(global3.x, false || global3.x, !(all(global3.wwy) == true), true), u_input.e);
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-409f + -475f), _wgslsmith_f_op_f32(888f + 723f))) * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1318f, 1000f))))), false, _wgslsmith_add_i32(firstTrailingBit(2147483647i), reverseBits(global1[_wgslsmith_index_u32(8116u, 29u)])));
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_2 = vec3<bool>(select(u_input.d.x == 1u, false, any(var_1.b.yyy)) & var_1.b.x, true, !func_1(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(var_1.a, true, global3.x, var_1.a), false))), 104f, !var_0.a, -var_1.c.x).a);
    let x = u_input.a;
    s_output = StorageBuffer(1u, 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-422f, -1000f), _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2268f, -503f), vec2<f32>(1319f, 1192f))))), !select(vec2<bool>(var_0.b.x, var_0.b.x), var_0.b.zw, var_0.b.x)))), 1000f);
}

