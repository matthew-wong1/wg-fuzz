struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> i32 {
    global0 = array<bool, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(173f, _wgslsmith_f_op_f32(845f * 528f), !global0[_wgslsmith_index_u32(u_input.c, 32u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_2.x, arg_1.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))), 1864f))));
    global0 = array<bool, 32>();
    let var_1 = 2147483647i;
    let var_2 = vec2<u32>(~u_input.b >> (~_wgslsmith_mod_u32(~1324u, 1u) % 32u), ~reverseBits(1u));
    return u_input.a.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(339f, _wgslsmith_div_f32(-1667f, 1000f)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(277f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1222f, -751f) + _wgslsmith_div_f32(-326f, -588f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1792f))))));
    let var_1 = Struct_3(Struct_1(func_3(vec2<f32>(-1554f, -1257f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1685f), -930f, _wgslsmith_f_op_f32(-106f + -483f), -663f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-443f, -740f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, -179f, -1552f, -1011f)), vec4<f32>(-702f, -1453f, -2635f, -1364f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, 677f, 1052f, 1625f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1119f, 1500f, -172f, -1754f)))), select(vec4<bool>(true, true, true, false), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 32u)], false), false))), 29424i, !arg_1), _wgslsmith_div_vec3_u32((~vec3<u32>(1u, 0u, u_input.b) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(33154u, 4294967295u, 81584u), vec3<u32>(u_input.b, u_input.b, 1u)) % vec3<u32>(32u))) << (select(vec3<u32>(34398u, 4294967295u, 51727u), vec3<u32>(u_input.c, u_input.b, 48237u) | vec3<u32>(u_input.c, 0u, u_input.c), false) % vec3<u32>(32u)), min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c), vec3<u32>(u_input.b, 26775u, 46604u)), reverseBits(vec3<u32>(u_input.b, u_input.c, 27064u))) | vec3<u32>(u_input.c & 22186u, _wgslsmith_add_u32(9971u, 28352u), ~u_input.c)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.b.xzw));
    var var_3 = vec2<f32>(var_2.x, -859f);
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> bool {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    return arg_0.a.d.x;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = !vec4<bool>(func_4(Struct_3(func_2(vec2<bool>(global0[_wgslsmith_index_u32(45137u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(21391u, 32u)], false, global0[_wgslsmith_index_u32(u_input.c, 32u)]), u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 32u)]), vec3<u32>(u_input.b, 0u, u_input.b)), vec2<bool>(false, true)), global0[_wgslsmith_index_u32(4294967295u, 32u)], true, true);
    var var_1 = vec3<i32>(~u_input.a.x, ~u_input.a.x, u_input.a.x);
    var_0 = !vec4<bool>(global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(u_input.b, 20466u), _wgslsmith_div_u32(u_input.b | u_input.c, ~0u)), 32u)], _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, 421f))) > _wgslsmith_f_op_f32(trunc(arg_0.x)), any(var_0.wx), !any(select(vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(0u, 32u)]), var_0.ww, global0[_wgslsmith_index_u32(4294967295u, 32u)])));
    let var_2 = Struct_2(arg_0.x, var_1.xx);
    global0 = array<bool, 32>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1309f)), u_input.a.zy);
    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(func_1(vec2<f32>(-1180f, 419f)), ~firstLeadingBit(12058u)), u_input.b & u_input.c)), 32u)];
    global0 = array<bool, 32>();
    var var_2 = Struct_3(func_2(select(vec2<bool>(false, true), select(func_2(vec2<bool>(false, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 32u)], false, global0[_wgslsmith_index_u32(u_input.b, 32u)]), var_0.b.x, false).d.yy, func_2(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(14997u, 32u)], true), u_input.a.x, true).d.zx, var_0.a < var_0.a), 48301u <= _wgslsmith_mod_u32(u_input.c, 0u)), select(func_2(!vec2<bool>(global0[_wgslsmith_index_u32(10534u, 32u)], false), vec3<bool>(global0[_wgslsmith_index_u32(68536u, 32u)], false, global0[_wgslsmith_index_u32(3872u, 32u)]), _wgslsmith_add_i32(1i, u_input.a.x), global0[_wgslsmith_index_u32(abs(1u), 32u)]).d, vec3<bool>(global0[_wgslsmith_index_u32(1u >> (u_input.c % 32u), 32u)], true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 8164u), vec2<u32>(u_input.c, u_input.c)), 32u)]), true), var_0.b.x, global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -1347f))) ^ u_input.c, 32u)]), vec3<u32>(u_input.c, _wgslsmith_mult_u32(4294967295u, 1u), u_input.c));
    global0 = array<bool, 32>();
    var var_3 = Struct_3(var_2.a, ~countOneBits(select(var_2.b, var_2.b, var_2.a.d)) << (vec3<u32>(~_wgslsmith_mod_u32(4452u, u_input.b), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_2.a.b.x))), max(firstTrailingBit(var_2.b.x), abs(u_input.b))) % vec3<u32>(32u)));
    let var_4 = !vec3<bool>(1u >= (_wgslsmith_sub_u32(var_2.b.x, 58996u) & 4922u), true, all(func_2(vec2<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 32u)], false), select(vec3<bool>(var_3.a.d.x, var_2.a.d.x, var_3.a.d.x), var_3.a.d, var_3.a.d.x), i32(-1i) * -1i, false | var_3.a.d.x).d.xz));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(firstLeadingBit(vec2<u32>(4294967295u, 1u))), -2147483647i, var_2.b.x, -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, 0i, var_0.b.x, -35075i)), vec4<i32>(-1i, 2147483647i, -2147483647i, _wgslsmith_mult_i32(-35752i, 1i))), var_3.b.x);
}

