struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(1i, -1i, -1i, 2147483647i, 31468i, -21461i, -1i, 53322i, -1i, 0i, 2147483647i, i32(-2147483648), -1i, 58295i, -37568i, 28115i, 19882i, -38626i, 6447i, 0i, 1i, -30074i, -27317i, i32(-2147483648), 0i, i32(-2147483648), -16533i, -13173i, 0i, 1i, 1i, -33050i);

var<private> global1: Struct_1;

var<private> global2: array<u32, 7> = array<u32, 7>(0u, 0u, 0u, 4294967295u, 1u, 4294967295u, 4294967295u);

var<private> global3: array<i32, 29>;

var<private> global4: array<vec3<u32>, 17>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = abs(max(_wgslsmith_mult_vec3_i32(global1.b, global1.b), -(~(-arg_0.b))));
    let var_1 = false;
    return Struct_1(global1.a, vec3<i32>(21040i, -abs(-14406i << (u_input.b.x % 32u)), abs(0i | ~global3[_wgslsmith_index_u32(u_input.b.x, 29u)])));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global4 = array<vec3<u32>, 17>();
    let var_0 = Struct_1(vec4<f32>(-840f, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f))), _wgslsmith_f_op_f32(global1.a.x + -267f)), -vec3<i32>(global1.b.x, -max(12667i, -2061i), -reverseBits(arg_1.b.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))) + _wgslsmith_f_op_f32(max(-1249f, _wgslsmith_f_op_f32(-643f * 1253f)))));
    let var_2 = !(!(!vec3<bool>(var_0.a.x >= global1.a.x, true, true)));
    global3 = array<i32, 29>();
    return arg_1;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    global1 = func_3(_wgslsmith_dot_vec2_u32(u_input.b.xx, abs(select(~vec2<u32>(global2[_wgslsmith_index_u32(45423u, 7u)], 0u), abs(u_input.b.xx), vec2<bool>(true, true)))), func_2(arg_0), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(global1.b.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 0u), 32u)]), _wgslsmith_mult_i32(countOneBits(1i), 19975i)));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, -238f)) + vec3<f32>(-1000f, global1.a.x, func_3(27782u, arg_0, 1i).a.x)))) + _wgslsmith_f_op_vec3_f32(global1.a.zxx * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0.a.x, -403f)), _wgslsmith_div_f32(-195f, 1688f))), arg_0.a.x, -2311f)));
    return _wgslsmith_mod_vec3_i32(min(vec3<i32>(arg_0.b.x, 12011i, -reverseBits(43162i)), -vec3<i32>(-17656i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 6411i) << (~u_input.b % vec3<u32>(32u))), -(~max(vec3<i32>(-21840i, 55033i, global3[_wgslsmith_index_u32(u_input.b.x, 29u)]), arg_0.b)) << (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 52070u), _wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 0u, global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<u32>(34721u, global2[_wgslsmith_index_u32(32002u, 7u)], global2[_wgslsmith_index_u32(16943u, 7u)]))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, global1.a.x, global1.a.x, global1.a.x))))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(func_1(Struct_1(vec4<f32>(global1.a.x, -729f, 496f, 409f), global1.b))), _wgslsmith_add_vec3_i32(select(global1.b, vec3<i32>(1i, -1i, -78390i), false), global1.b)), min(vec3<i32>(global1.b.x, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global1.b.x, 2147483647i), vec3<i32>(global1.b.x, 1i, global3[_wgslsmith_index_u32(0u, 29u)]))) >> (vec3<u32>(_wgslsmith_mult_u32(58121u, 1u), global2[_wgslsmith_index_u32(0u, 7u)], 65404u) % vec3<u32>(32u))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(~var_0.b, vec3<i32>(_wgslsmith_add_i32(-1i, -56305i), global1.b.x, -var_0.b.x) ^ vec3<i32>(-global1.b.x, global1.b.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), abs(global1.b.x));
    var var_2 = select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), vec3<bool>(true, select(false, true, false), all(vec3<bool>(true, false, true))), vec3<bool>(global1.a.x == 354f, true, any(vec3<bool>(true, false, true)))), vec3<bool>(true, true, true)), vec3<bool>(false, !(global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(1u, 7u)], 76169u), 7u)] != 0u), true), select(vec3<bool>(true, true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true)), false));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-494f, 688f, 2448f, var_0.a.x), _wgslsmith_f_op_vec4_f32(var_0.a - var_0.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))), var_0.b);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, global1.a.x, -414f, global1.a.x))))), abs(-func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 558u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)), func_2(var_0), u_input.a.x).b));
    let var_4 = all(select(vec2<bool>(var_2.x && var_2.x, any(vec2<bool>(true, true))), var_2.zy, var_2.xy));
    var var_5 = global1.b.x;
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -704f, global1.a.x, 863f)), _wgslsmith_f_op_vec4_f32(exp2(var_3.a)))))), !(!var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(3182i, global1.b | -global1.b, ~u_input.b.x);
}

