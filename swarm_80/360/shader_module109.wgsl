struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(37548u), Struct_1(4294967295u), Struct_1(8076u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(63339u));

var<private> global2: array<u32, 15> = array<u32, 15>(0u, 0u, 0u, 4765u, 1u, 65653u, 16317u, 53563u, 4294967295u, 31684u, 1u, 38739u, 39196u, 91780u, 25819u);

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> u32 {
    global0 = array<bool, 26>();
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~arg_0.a, max(39726u, arg_3.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 13658u), arg_3)), 0u);
    var var_2 = vec2<bool>(all(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 26u)], false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(arg_0.a, 26u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], true)), vec2<bool>(global0[_wgslsmith_index_u32(global3.a << (arg_3.x % 32u), 26u)], any(vec2<bool>(false, true))), global0[_wgslsmith_index_u32(~(u_input.a.x & global2[_wgslsmith_index_u32(9603u, 15u)]), 26u)])), global0[_wgslsmith_index_u32(0u, 26u)]);
    let var_3 = Struct_1(u_input.a.x);
    return 1u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(1u, 8u)];
    global2 = array<u32, 15>();
    let var_1 = arg_0.xx;
    global1 = array<Struct_1, 8>();
    global2 = array<u32, 15>();
    return vec4<u32>(func_3(global1[_wgslsmith_index_u32(var_0.a, 8u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 585f, arg_1.x, arg_3)) + vec4<f32>(-496f, -191f, arg_1.x, arg_3)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yx + vec2<f32>(arg_1.x, arg_3)) * arg_1.xz), vec2<u32>(6242u, u_input.a.x) << ((u_input.a.yx | vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u))) << (~_wgslsmith_sub_u32(8543u, ~u_input.a.x) % 32u), _wgslsmith_div_u32(func_3(Struct_1(~20850u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-139f, -1000f, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3, arg_3))), u_input.a.yx), u_input.a.x), 1u, global3.a);
}

fn func_1() -> bool {
    var var_0 = ~(~(~(func_2(vec3<i32>(-5340i, -23076i, -2147483647i), vec3<f32>(-1000f, 459f, 1000f), 1i, -1000f) << (vec4<u32>(89424u, global3.a, 56120u, 8240u) % vec4<u32>(32u)))));
    var var_1 = 1f;
    var var_2 = global1[_wgslsmith_index_u32(~global3.a, 8u)];
    var_2 = global1[_wgslsmith_index_u32(0u, 8u)];
    let var_3 = _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -12215i, 2147483647i), -vec3<i32>(0i, -4762i, -14940i))), -(i32(-1i) * -56037i)) << (min(~(var_0.x | ~var_0.x), _wgslsmith_mult_u32(~(~100168u), ~max(62501u, global2[_wgslsmith_index_u32(1u, 15u)]))) % 32u);
    return any(vec4<bool>(true, global0[_wgslsmith_index_u32(countOneBits(~(~1421u)), 26u)], global0[_wgslsmith_index_u32(abs(global3.a), 26u)], false & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14362u, 1u, var_2.a), 26u)]));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a | 99570u, func_3(Struct_1(15391u), vec4<f32>(arg_1.x, -740f, 500f, arg_1.x), arg_1.zx, vec2<u32>(1u, 0u)), ~u_input.a.x, ~56968u), vec4<u32>(75894u, ~0u, _wgslsmith_mult_u32(4294967295u, global3.a), u_input.a.x & 0u)));
    var var_1 = vec4<bool>(arg_0.x, _wgslsmith_f_op_f32(abs(456f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))) - -839f), arg_0.x, true);
    let var_2 = -(~(-1i));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 15>();
    global3 = Struct_1(~4294967295u);
    var var_0 = func_4(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8969u, 15u)], 26u)], true), vec3<bool>(global0[_wgslsmith_index_u32(32988u, 26u)], global0[_wgslsmith_index_u32(global3.a, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), true), !vec3<bool>(global0[_wgslsmith_index_u32(47962u, 26u)], global0[_wgslsmith_index_u32(53712u, 26u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a, 15u)], 26u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(32387u, 26u)], true, true), vec3<bool>(false, false, global0[_wgslsmith_index_u32(65969u, 26u)]))), func_1()), !(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 26u)], global0[_wgslsmith_index_u32(global3.a, 26u)], global0[_wgslsmith_index_u32(110475u, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(global3.a, 26u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a, 15u)], 15u)], 26u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 26u)]))), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(52494u, _wgslsmith_add_u32(0u, u_input.a.x)), 26u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a, global3.a), u_input.a.xz) != u_input.a.x, true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1432f, -1273f), _wgslsmith_div_f32(1851f, 270f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -733f))), -1772f))), Struct_1(global3.a));
    let var_1 = ~countOneBits(30585u);
    global1 = array<Struct_1, 8>();
    let var_2 = Struct_1(0u);
    let var_3 = global1[_wgslsmith_index_u32(1u, 8u)];
    var var_4 = func_4(select(select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(35393u, 26u)], global0[_wgslsmith_index_u32(64393u, 26u)])), select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.a, 26u)], global0[_wgslsmith_index_u32(var_2.a, 26u)], global0[_wgslsmith_index_u32(4092u, 26u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a, 26u)], true), global0[_wgslsmith_index_u32(41217u, 26u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(27707u, 26u)], global0[_wgslsmith_index_u32(39294u, 26u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 26u)], true), vec3<bool>(global0[_wgslsmith_index_u32(40958u, 26u)], false, global0[_wgslsmith_index_u32(34654u, 26u)])), select(vec3<bool>(false, true, false), vec3<bool>(global0[_wgslsmith_index_u32(19205u, 26u)], global0[_wgslsmith_index_u32(global3.a, 26u)], global0[_wgslsmith_index_u32(var_0.a, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34491u, 15u)], 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))), vec3<bool>(true, true, true)), vec3<bool>(func_1(), true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_4(vec3<bool>(false, false, false), vec3<f32>(859f, -585f, 1000f), global1[_wgslsmith_index_u32(50174u, 8u)]).a, 78584u), 26u)]), vec3<bool>(true, true, any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.a, 26u)], true, true), vec4<bool>(false, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(44310u, 26u)], true, true, global0[_wgslsmith_index_u32(11419u, 26u)]))))), vec3<f32>(605f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(300f)) - _wgslsmith_div_f32(127f, 111f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(791f)) + -264f)))), global1[_wgslsmith_index_u32(var_1, 8u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(abs(1i), 1i), 65363u);
}

