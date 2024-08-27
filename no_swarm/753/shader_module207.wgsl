struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 10>;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_2(40610u, Struct_1(arg_2.b.a, _wgslsmith_f_op_f32(f32(-1f) * -575f)), all(vec4<bool>(all(select(vec3<bool>(true, global3.c, arg_2.c), vec3<bool>(true, true, arg_2.c), vec3<bool>(global3.c, arg_2.c, global3.c))), select(true, global3.b.b > 317f, !global3.c), arg_2.c, all(vec4<bool>(false, false, true, arg_2.c)) == arg_2.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(284f, arg_2.b.b, -777f, -1200f) * vec4<f32>(arg_2.d.x, global3.b.b, global3.b.b, 286f))))));
    let var_1 = _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a & ~global1.x, ~select(16146i, -24984i, global3.c), _wgslsmith_dot_vec2_i32(global1.zz, vec2<i32>(global1.x, u_input.a)) ^ ~global1.x), vec3<i32>(_wgslsmith_clamp_i32(arg_0, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, arg_1), min(global1.yx, vec2<i32>(0i, u_input.a))), _wgslsmith_mod_i32(u_input.a, -11590i) >> (arg_2.a % 32u)), 2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-70415i, global1.x, 46861i, arg_0)), _wgslsmith_div_vec4_i32(vec4<i32>(16737i, 13249i, global1.x, u_input.a), vec4<i32>(global1.x, arg_1, arg_1, u_input.a))))));
    var var_2 = Struct_2(7819u, Struct_1(~vec2<u32>(~4294967295u, ~arg_2.b.a.x), _wgslsmith_f_op_f32(1191f - -803f)), global3.c, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, 314f, _wgslsmith_f_op_f32(-global3.b.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.d)))));
    var var_3 = select(!vec4<bool>(any(select(vec4<bool>(arg_2.c, true, true, false), vec4<bool>(true, var_2.c, false, var_0.c), vec4<bool>(global3.c, arg_2.c, var_0.c, false))), true, arg_2.c, any(!vec4<bool>(false, global3.c, arg_2.c, false))), vec4<bool>(true, true, false, any(select(!vec2<bool>(false, var_0.c), !vec2<bool>(var_2.c, var_0.c), !vec2<bool>(var_0.c, global3.c)))), any(vec3<bool>(arg_2.c, arg_2.c, false)));
    let var_4 = !select(!select(!vec4<bool>(false, true, var_0.c, true), vec4<bool>(var_2.c, true, false, false), all(vec2<bool>(false, var_0.c))), vec4<bool>(false, (0u <= arg_2.a) & true, arg_2.c, var_2.c), !select(vec4<bool>(false, true, true, var_0.c), vec4<bool>(true, false, var_0.c, true), vec4<bool>(true, global3.c, true, true)));
    return -1342f;
}

fn func_2() -> i32 {
    var var_0 = -23452i;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_3(24700i, u_input.a, Struct_2(global3.a, global3.b, true, vec4<f32>(-361f, global3.d.x, -1429f, -502f)))), _wgslsmith_f_op_f32(ceil(-666f)), -520f, _wgslsmith_f_op_f32(abs(-1891f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2382f, -1573f, 324f, global3.d.x)))) - global3.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(i32(-1i) * -1i, -global1.x, Struct_2(47174u, Struct_1(global3.b.a, global3.d.x), false, vec4<f32>(global3.b.b, global3.b.b, -1000f, global3.d.x)))), _wgslsmith_f_op_f32(ceil(702f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1234f, 889f)) - _wgslsmith_f_op_f32(abs(global3.d.x))), 208f)));
    global0 = false;
    var_0 = -30413i;
    var var_2 = 17898u;
    return _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, abs(select(-46522i, global1.x >> (global3.a % 32u), all(vec3<bool>(false, false, false))))), _wgslsmith_div_i32(select(global1.x, 4931i, !all(vec2<bool>(true, global3.c))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a, 2147483647i, 24803i, u_input.a)), ~vec4<i32>(global1.x, 36125i, -36940i, 2147483647i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global1.x, 1i, global1.x), vec4<i32>(51890i, global1.x, global1.x, 12742i)))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = Struct_2(arg_0.b.a.x, global2[_wgslsmith_index_u32(global3.b.a.x, 10u)], any(vec4<bool>(global3.c, false, true, true)), global3.d);
    global1 = vec3<i32>(-56441i, func_2(), _wgslsmith_add_i32(i32(-1i) * -2147483647i, u_input.a));
    let var_1 = vec2<bool>(false, ~4294967295u == _wgslsmith_sub_u32(countOneBits(global3.a), 1u));
    let var_2 = var_0.a;
    global0 = var_1.x;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(all(select(vec4<bool>(any(vec3<bool>(global3.c, global3.c, global3.c)), func_1(Struct_2(41791u, global2[_wgslsmith_index_u32(global3.b.a.x, 10u)], true, global3.d), global3.c, Struct_1(vec2<u32>(global3.b.a.x, global3.a), global3.d.x)), true, global3.c & global3.c), vec4<bool>(any(vec4<bool>(global3.c, true, true, global3.c)), true, global3.c, global3.c), !vec4<bool>(global3.c, false, true, global3.c))), global1.x < u_input.a, global3.c);
    var var_0 = global3.b;
    global2 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global3.d), _wgslsmith_f_op_vec4_f32(global3.d - global3.d)))) + global3.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.x, 477f, global3.d.x, var_0.b))))));
    var var_2 = 1u;
    global3 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.a, var_0.a.x, _wgslsmith_sub_u32(abs(23432u), global3.a)), vec4<u32>(var_0.a.x, 15200u, _wgslsmith_clamp_u32(85248u, 1u, 0u), global3.a) | ~vec4<u32>(global3.b.a.x, 11728u, global3.b.a.x, var_0.a.x)), Struct_1(vec2<u32>(global3.b.a.x, 0u), _wgslsmith_f_op_f32(round(1206f))), all(vec3<bool>(global3.b.b > _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), true, u_input.a <= 46788i)), _wgslsmith_f_op_vec4_f32(-global3.d));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_1.x)), -469f, false)))), _wgslsmith_f_op_f32(round(-1021f))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_clamp_vec2_i32(global1.yx, vec2<i32>(~1i, ~(-global1.x)), max(global1.yx, min(_wgslsmith_add_vec2_i32(vec2<i32>(-24107i, global1.x), global1.xy), _wgslsmith_add_vec2_i32(global1.yx, vec2<i32>(1242i, 0i))))), -209f, ~(vec4<u32>(22157u & var_0.a.x, var_0.a.x, ~53422u, ~global3.a) ^ (~vec4<u32>(4294967295u, var_0.a.x, 71524u, var_0.a.x) | _wgslsmith_mult_vec4_u32(vec4<u32>(global3.b.a.x, global3.b.a.x, var_0.a.x, var_0.a.x), vec4<u32>(8862u, var_0.a.x, 35743u, 35836u)))));
}

