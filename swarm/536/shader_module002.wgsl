struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(56693u, 0u), vec2<u32>(15826u, 23489u), vec2<u32>(4294967295u, 1u), vec2<u32>(21917u, 8064u), vec2<u32>(1u, 1u), vec2<u32>(29041u, 42207u), vec2<u32>(44179u, 1u), vec2<u32>(4294967295u, 90168u), vec2<u32>(72030u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 30787u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    global1 = ~(~(~1u >> (_wgslsmith_mult_u32(1u, 1u) % 32u)));
    global0 = array<bool, 3>();
    var var_0 = global2[_wgslsmith_index_u32(abs(1u), 22u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.x)) * _wgslsmith_f_op_f32(-var_0.d.x))) - 1546f));
    let var_2 = -17608i;
    return !arg_0.a;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(select(func_3(Struct_2(select(vec4<bool>(true, global0[_wgslsmith_index_u32(78474u, 3u)], true, global0[_wgslsmith_index_u32(34946u, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(64785u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], false, global0[_wgslsmith_index_u32(60296u, 3u)], global0[_wgslsmith_index_u32(7083u, 3u)]))), Struct_2(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], false, true))), !select(!vec4<bool>(global0[_wgslsmith_index_u32(35425u, 3u)], global0[_wgslsmith_index_u32(23293u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], false), vec4<bool>(global0[_wgslsmith_index_u32(77447u, 3u)], global0[_wgslsmith_index_u32(9611u, 3u)], global0[_wgslsmith_index_u32(8991u, 3u)], false), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(52531u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(8999u, 3u)], false, global0[_wgslsmith_index_u32(68455u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), global0[_wgslsmith_index_u32(4294967295u, 3u)])), !vec4<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, false)), true, arg_0.a <= 4045i)));
    var var_1 = ~(select(~abs(6464u), ~_wgslsmith_clamp_u32(1u, 4294967295u, 1u), true) >> (1u % 32u));
    var var_2 = _wgslsmith_div_f32(-997f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(864f)), _wgslsmith_div_f32(-1000f, -1355f)))))));
    var var_3 = !all(!(!var_0.a.yxx));
    let var_4 = _wgslsmith_mod_u32(~1u, ~70289u);
    return global2[_wgslsmith_index_u32(0u, 22u)];
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec2<u32> {
    var var_0 = vec2<bool>(all(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 3u)], true, global0[_wgslsmith_index_u32(arg_2, 3u)])), select(func_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 3u)], false, arg_0.a, global0[_wgslsmith_index_u32(arg_2, 3u)])), Struct_2(vec4<bool>(arg_0.a, false, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]))).yyy, !vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 3u)], arg_0.a, true), true), !arg_0.a && arg_0.a)), global0[_wgslsmith_index_u32(arg_2, 3u)]);
    global2 = array<Struct_1, 22>();
    var var_1 = ~u_input.b;
    global0 = array<bool, 3>();
    let var_2 = Struct_3(_wgslsmith_add_i32(0i, _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, firstLeadingBit(arg_1)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0.c, 31128i, arg_0.c)), -vec3<i32>(arg_0.c, -2147483647i, 29849i)))));
    return global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~arg_2, arg_2)), 11u)];
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_add_vec2_u32(min(func_4(func_2(Struct_3(arg_1.a)), firstLeadingBit(u_input.c), select(4294967295u, 4294967295u, true)), max(global3[_wgslsmith_index_u32(1u, 11u)], vec2<u32>(0u, 37432u))), global3[_wgslsmith_index_u32(min(~4294967295u, 1u) >> (1u % 32u), 11u)]));
    global1 = 35796u;
    let var_1 = arg_3;
    var var_2 = 13061u;
    let var_3 = u_input.d;
    return -1814f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(-1427f));
    let var_1 = 0u;
    let var_2 = _wgslsmith_mod_vec3_i32(u_input.d.zyy, ~_wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 13003i, -47430i), u_input.d.wxz)), -vec3<i32>(-2147483647i, 40690i, -1i)));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1102f, 1014f, global0[_wgslsmith_index_u32(var_1, 3u)])), _wgslsmith_f_op_f32(748f - -943f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(floor(-236f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(11138i, Struct_3(1i), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(21045u, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)], true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(42282u, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)])), Struct_2(vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_1, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)])))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(176f * 760f))))))));
    let var_3 = reverseBits(global3[_wgslsmith_index_u32(abs(var_1), 11u)]);
    var var_4 = !(!select(!func_3(Struct_2(vec4<bool>(true, global0[_wgslsmith_index_u32(2980u, 3u)], global0[_wgslsmith_index_u32(38669u, 3u)], global0[_wgslsmith_index_u32(58876u, 3u)])), Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], false, true, global0[_wgslsmith_index_u32(var_3.x, 3u)]))), func_3(Struct_2(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_3.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)])), Struct_2(vec4<bool>(false, true, false, true))), select(vec4<bool>(global0[_wgslsmith_index_u32(var_3.x, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)], global0[_wgslsmith_index_u32(16777u, 3u)], true), select(vec4<bool>(global0[_wgslsmith_index_u32(69005u, 3u)], false, global0[_wgslsmith_index_u32(var_3.x, 3u)], global0[_wgslsmith_index_u32(73914u, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(72200u, 3u)], global0[_wgslsmith_index_u32(4199u, 3u)], true, global0[_wgslsmith_index_u32(var_3.x, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(52511u, 3u)], global0[_wgslsmith_index_u32(var_1, 3u)], false, global0[_wgslsmith_index_u32(var_1, 3u)])), !global0[_wgslsmith_index_u32(var_3.x, 3u)])));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(select(4294967295u, _wgslsmith_mod_u32(var_1, var_1), any(vec3<bool>(false, true, var_4.x))) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5341u, 25071u), vec2<u32>(13171u, 1u)), var_1), ~1u), ~1u);
}

