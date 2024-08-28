struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<bool, 23>;

var<private> global2: Struct_2 = Struct_2(Struct_1(4294967295u, vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec2<f32>(505f, -713f)));

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(29051u, vec3<i32>(-73297i, 11992i, -1i), vec2<f32>(298f, -740f)), Struct_1(34458u, vec3<i32>(2147483647i, 0i, 16369i), vec2<f32>(721f, 560f)), Struct_1(1u, vec3<i32>(i32(-2147483648), -66163i, 38004i), vec2<f32>(1080f, -1038f)), Struct_1(0u, vec3<i32>(39314i, 57171i, -34098i), vec2<f32>(-280f, -1000f)), Struct_1(46170u, vec3<i32>(4428i, 0i, 18366i), vec2<f32>(782f, -710f)), Struct_1(11316u, vec3<i32>(-1i, 2461i, 2147483647i), vec2<f32>(383f, 729f)), Struct_1(21947u, vec3<i32>(14936i, 2147483647i, 0i), vec2<f32>(-1000f, -325f)), Struct_1(85542u, vec3<i32>(-3445i, -42966i, 1i), vec2<f32>(-446f, -1795f)), Struct_1(21258u, vec3<i32>(-1i, 10049i, -1i), vec2<f32>(-1133f, -1000f)), Struct_1(0u, vec3<i32>(-1i, -24251i, 2147483647i), vec2<f32>(207f, -320f)), Struct_1(69887u, vec3<i32>(-1i, -3785i, 0i), vec2<f32>(-687f, 210f)), Struct_1(1u, vec3<i32>(8353i, 0i, -8499i), vec2<f32>(2231f, -1077f)), Struct_1(18466u, vec3<i32>(i32(-2147483648), 1i, -23239i), vec2<f32>(479f, 1104f)), Struct_1(26782u, vec3<i32>(-23185i, 21748i, 22561i), vec2<f32>(781f, -1017f)), Struct_1(4294967295u, vec3<i32>(-1i, -13153i, 17325i), vec2<f32>(853f, 837f)), Struct_1(12738u, vec3<i32>(1i, 26849i, 1299i), vec2<f32>(-1920f, 1647f)), Struct_1(53497u, vec3<i32>(6135i, -4717i, 2147483647i), vec2<f32>(-143f, -1192f)), Struct_1(1u, vec3<i32>(-23422i, 286i, -25776i), vec2<f32>(500f, 1785f)), Struct_1(1u, vec3<i32>(i32(-2147483648), -66091i, -18416i), vec2<f32>(195f, 1298f)), Struct_1(0u, vec3<i32>(0i, -1i, 45009i), vec2<f32>(-1945f, 164f)), Struct_1(81459u, vec3<i32>(1i, 5516i, 82195i), vec2<f32>(1328f, -1066f)), Struct_1(0u, vec3<i32>(-47434i, 14352i, -47935i), vec2<f32>(1122f, 905f)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: i32) -> bool {
    let var_0 = global2.a;
    global1 = array<bool, 23>();
    let var_1 = Struct_3(false, min(~abs(vec4<i32>(0i, 1014i, var_0.b.x, u_input.b.x)) & _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 0i, -10923i, global2.a.b.x)), abs(vec4<i32>(global2.a.b.x, var_0.b.x, var_0.b.x, u_input.b.x))), abs(~(-vec4<i32>(2147483647i, var_0.b.x, global2.a.b.x, 0i)))), global2.a.b.zy, Struct_2(global2.a));
    var var_2 = var_1;
    let var_3 = !global1[_wgslsmith_index_u32(1u, 23u)];
    return global1[_wgslsmith_index_u32(select(global2.a.a, reverseBits(0u), !var_3), 23u)];
}

fn func_2() -> vec4<bool> {
    global0 = array<f32, 26>();
    var var_0 = global3[_wgslsmith_index_u32(global2.a.a, 22u)];
    var var_1 = func_3(_wgslsmith_clamp_u32(var_0.a, 1u ^ (global2.a.a | var_0.a), u_input.a.x) == _wgslsmith_mod_u32(0u, u_input.a.x), 2147483647i);
    var var_2 = -37712i;
    let var_3 = ~0u;
    return select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], select(any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_3, 23u)])), (u_input.b.x < var_0.b.x) | false, false), false, any(vec2<bool>(true, all(vec4<bool>(global1[_wgslsmith_index_u32(global2.a.a, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(var_0.a, 23u)], true))))), !select(vec4<bool>(global1[_wgslsmith_index_u32(~global2.a.a, 23u)], global1[_wgslsmith_index_u32(global2.a.a, 23u)], global1[_wgslsmith_index_u32(~57527u, 23u)], !global1[_wgslsmith_index_u32(global2.a.a, 23u)]), !select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(41265u, 23u)], global1[_wgslsmith_index_u32(global2.a.a, 23u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(78523u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_3, 23u)], global1[_wgslsmith_index_u32(24726u, 23u)], true, global1[_wgslsmith_index_u32(4294967295u, 23u)])), true), !(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(6451u, 23u)], false, true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 23u)], false, true)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: i32) -> bool {
    global1 = array<bool, 23>();
    var var_0 = !select(func_2(), vec4<bool>(global1[_wgslsmith_index_u32(~max(72086u, arg_2.d.a.a), 23u)], all(vec2<bool>(global1[_wgslsmith_index_u32(45187u, 23u)], arg_2.a)) | func_3(false, arg_2.d.a.b.x), arg_2.a, true), !(!func_2()));
    let var_1 = vec2<bool>(var_0.x, true);
    var var_2 = all(!(!var_0.xxx));
    var var_3 = _wgslsmith_div_u32(1u, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, arg_2.d.a.a ^ 0u), _wgslsmith_div_u32(17048u, global2.a.a)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    let var_1 = select(!select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(54970u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true), global1[_wgslsmith_index_u32(1u, 23u)]), select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(global2.a.a, 23u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 23u)], false, true)), func_1(vec2<f32>(1606f, 390f), vec3<bool>(global1[_wgslsmith_index_u32(global2.a.a, 23u)], false, false), Struct_3(false, vec4<i32>(1i, global2.a.b.x, 12703i, u_input.b.x), u_input.b, Struct_2(global2.a)), 0i)), func_2(), false), func_2(), true);
    let var_2 = vec4<f32>(-482f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1227f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~global2.a.a, 26u)], -653f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24912u, 65591u, global2.a.a, 0u), vec4<u32>(global2.a.a, 59271u, 1u, global2.a.a)), 23u)] == (global1[_wgslsmith_index_u32(u_input.a.x, 23u)] || true))) + _wgslsmith_f_op_f32(abs(global2.a.c.x))), _wgslsmith_f_op_f32(trunc(-1349f)));
    global1 = array<bool, 23>();
    var var_3 = Struct_3(all(!(!vec2<bool>(true, var_1.x))), _wgslsmith_mod_vec4_i32(~(-(~vec4<i32>(0i, -44415i, global2.a.b.x, global2.a.b.x))), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, 2147483647i, 16309i), vec4<i32>(u_input.b.x, u_input.b.x, -1i, 7531i), vec4<i32>(u_input.b.x, 64159i, 12934i, 36529i)))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, global2.a.b.x), global2.a.b.x), ~0i), Struct_2(Struct_1(select(global2.a.a, u_input.a.x, false) ^ _wgslsmith_sub_u32(77248u, u_input.a.x), vec3<i32>(-17214i, 0i, _wgslsmith_sub_i32(global2.a.b.x, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1453f, global0[_wgslsmith_index_u32(global2.a.a, 26u)]) + var_2.zz)))));
    var var_4 = vec2<i32>(max(-41813i, 0i), max(_wgslsmith_dot_vec2_i32(u_input.b, var_3.b.zw), global2.a.b.x | 1i) & (i32(-1i) * -(~u_input.b.x)));
    var var_5 = countOneBits(u_input.a);
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 767f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(597f, -419f), global0[_wgslsmith_index_u32(~41525u, 26u)], var_1.x)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1273f)), _wgslsmith_f_op_f32(-global2.a.c.x), !func_3(false, 0i) || var_1.x)));
    let var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(320f)), ~_wgslsmith_sub_i32(2147483647i, global2.a.b.x), ~4267i);
}

