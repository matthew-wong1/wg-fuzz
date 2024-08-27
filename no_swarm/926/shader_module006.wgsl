struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, true, true, false, false, false, false, false, false, false, false, false, true, true, true, true, false, false, false, true, false, false, true, false);

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(1u, 1u), vec2<u32>(51837u, 43276u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_4(_wgslsmith_mult_u32(~(~(arg_0.d.x | 25688u)), 0u), arg_0.d, vec3<i32>(max(_wgslsmith_clamp_i32(arg_0.c.x, select(0i, -1i, global0[_wgslsmith_index_u32(arg_0.d.x, 25u)]), abs(u_input.a)), firstLeadingBit(~(-6915i))), arg_0.c.x, 26686i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(f32(-1f) * -107f), global1.x)))));
    var_0 = Struct_4(arg_0.d.x, vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.b.x, 4294967295u), vec3<u32>(21561u, var_0.a, 53054u))), var_0.a), vec3<i32>(_wgslsmith_div_i32(-10270i, -26300i) & var_0.c.x, min(var_0.c.x, _wgslsmith_sub_i32(0i, i32(-1i) * -2147483647i)), 55189i));
    global1 = vec3<bool>(global1.x, any(vec2<bool>(false, !global0[_wgslsmith_index_u32(var_0.a, 25u)])) & (var_1 >= var_1), !any(select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.b.x, 25u)], global0[_wgslsmith_index_u32(arg_0.d.x, 25u)], global0[_wgslsmith_index_u32(arg_0.d.x, 25u)]), vec4<bool>(global1.x, global1.x, true, global0[_wgslsmith_index_u32(var_0.b.x, 25u)]))));
    let var_2 = Struct_3(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(19876u, var_0.a, 4294967295u), vec3<u32>(47782u, arg_0.d.x, 44105u), vec3<u32>(var_0.b.x, 33059u, var_0.a)), ~vec3<u32>(4294967295u, 22857u, 45855u)), vec3<u32>(var_0.b.x, _wgslsmith_mult_u32(25981u, var_0.b.x), arg_0.a)), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(20360u, 1u, 1u), vec3<u32>(4294967295u, var_0.b.x, arg_0.d.x)), abs(~49285u), ~arg_0.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(var_1, var_1)), _wgslsmith_f_op_f32(abs(439f)), 424f)))));
    return all(!select(global1.xx, vec2<bool>(true, true), true));
}

fn func_2() -> vec2<u32> {
    global2 = array<vec2<u32>, 3>();
    var var_0 = Struct_1(min(1u, ~(~(~1u))), _wgslsmith_mult_i32(select(-27842i, -u_input.a, func_3(Struct_1(1u, 0i, vec3<i32>(0i, -2147483647i, u_input.a), global2[_wgslsmith_index_u32(4294967295u, 3u)]))), ~(u_input.a >> (firstLeadingBit(7931u) % 32u))), ~abs(vec3<i32>(u_input.a ^ -1i, -2147483647i, firstTrailingBit(-8779i))), abs(countOneBits(~global2[_wgslsmith_index_u32(0u, 3u)])) & _wgslsmith_div_vec2_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(15797u, 3u)]), ~_wgslsmith_sub_vec2_u32(vec2<u32>(15742u, 1u), global2[_wgslsmith_index_u32(1u, 3u)])));
    var var_1 = max(~vec2<u32>(_wgslsmith_sub_u32(61890u >> (var_0.d.x % 32u), var_0.d.x ^ var_0.d.x), abs(36479u) ^ min(1u, var_0.d.x)), vec2<u32>(_wgslsmith_div_u32(~1325u, var_0.a) ^ ~_wgslsmith_div_u32(var_0.a, 30154u), 76218u));
    var var_2 = Struct_2(false, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(350f, 1000f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1236f)), 1404f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(501f + -666f), _wgslsmith_f_op_f32(-500f * 509f))))), !all(!select(global1.zx, vec2<bool>(false, global1.x), global1.x)), true);
    var var_3 = vec4<i32>(u_input.a, u_input.a, ~reverseBits(firstLeadingBit(var_0.c.x)), var_0.b);
    return vec2<u32>(var_0.a, 4885u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~arg_1.ywz, firstLeadingBit(_wgslsmith_div_vec3_u32(arg_1.wzw, arg_1.xyx))), 1i, arg_0, vec2<u32>((128908u << (arg_1.x % 32u)) ^ (arg_1.x ^ func_2().x), arg_1.x));
    var var_1 = Struct_3(arg_1.yyw, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(124f, -524f, -274f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(646f, -1257f, -148f)))))))));
    let var_2 = Struct_2(all(global1.yy), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) - _wgslsmith_f_op_f32(1000f - -1630f))), var_1.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -515f)), -1749f)) == -1250f, all(vec4<bool>(!(!global1.x), global1.x, (true & global1.x) || true, true)));
    let var_3 = arg_1.x <= 0u;
    let var_4 = -2226f;
    return Struct_2(1f == _wgslsmith_f_op_f32(ceil(var_1.b.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4))), vec2<f32>(1f, _wgslsmith_f_op_f32(-var_1.b.x)))), 1i > -var_0.b, true);
}

fn func_1() -> u32 {
    let var_0 = -vec4<i32>(-(u_input.a << (~47584u % 32u)), ~(-144i), u_input.a, u_input.a);
    let var_1 = func_4(-(~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(33711i, u_input.a, u_input.a), var_0.zxz), vec3<i32>(u_input.a, var_0.x, 0i))), vec4<u32>(~countOneBits(4294967295u), 0u, 28593u, _wgslsmith_dot_vec2_u32(~func_2(), vec2<u32>(reverseBits(57061u), 1u))));
    global0 = array<bool, 25>();
    let var_2 = firstLeadingBit(vec2<i32>(-2147483647i, var_0.x)) | vec2<i32>(abs(-var_0.x) & -41109i, max(max(var_0.x, u_input.a ^ var_0.x), -_wgslsmith_mult_i32(u_input.a, -19606i)));
    var var_3 = vec3<u32>(select(_wgslsmith_mult_u32(1u, ~52861u), ~(~0u), true), _wgslsmith_sub_u32(1u, 0u), ~(~(~63867u))) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~max(vec4<u32>(99653u, 1u, 24898u, 4294967295u), vec4<u32>(1u, 35890u, 4294967295u, 16022u))), 0u, _wgslsmith_mod_u32(~(~1u), _wgslsmith_sub_u32(firstTrailingBit(0u), ~4294967295u)));
    return ~var_3.x | var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    let var_0 = firstLeadingBit(53880u);
    let var_1 = global1.x;
    global1 = !vec3<bool>(all(!(!global1.zx)), !any(select(vec2<bool>(global1.x, false), global1.xz, global0[_wgslsmith_index_u32(4294967295u, 25u)])), global0[_wgslsmith_index_u32(min(1u, func_1()), 25u)]);
    let var_2 = vec3<u32>(~func_2().x | func_2().x, countOneBits(var_0), var_0);
    let var_3 = Struct_3(reverseBits(vec3<u32>(1u, ~4294967295u, abs(var_0))) & _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(select(var_2, vec3<u32>(4294967295u, var_2.x, 0u), vec3<bool>(false, true, false)), vec3<u32>(var_2.x, var_2.x, 0u)), ~var_2 << (var_2 % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_4(vec3<i32>(-50126i, 0i, u_input.a), ~vec4<u32>(0u, 6687u, var_2.x, 44554u)).b.x, _wgslsmith_f_op_f32(f32(-1f) * -729f), -799f)));
    global2 = array<vec2<u32>, 3>();
    var var_4 = select(~_wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 33349i, -68612i, 0i), vec4<i32>(1i, -2147483647i, -26837i, -22170i)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 37026i, -47478i, -2147483647i), vec4<i32>(u_input.a, -20699i, -1i, u_input.a)))), ~firstLeadingBit(vec4<i32>(abs(0i), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, -17739i)), -9135i)), !vec4<bool>(any(vec3<bool>(true, global1.x, false)), global0[_wgslsmith_index_u32(var_2.x, 25u)], true, u_input.a != _wgslsmith_add_i32(-2147483647i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.zy, vec4<i32>(var_4.x, var_4.x, _wgslsmith_mult_i32(select(firstTrailingBit(-13711i), -1302i, global0[_wgslsmith_index_u32(~var_3.a.x, 25u)]), 1i), -47928i), ~var_3.a.x, _wgslsmith_add_vec2_i32(-(var_4.yy ^ var_4.zz) << (var_2.xz % vec2<u32>(32u)), var_4.yx), reverseBits(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(var_0, var_0)), ~vec2<u32>(var_3.a.x, 0u))));
}

