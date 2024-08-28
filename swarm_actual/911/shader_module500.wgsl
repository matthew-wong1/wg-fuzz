struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

var<private> global1: Struct_3;

var<private> global2: i32 = -14221i;

var<private> global3: i32 = 17249i;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global3 = _wgslsmith_mod_i32(global1.c.b.x, -1i);
    let var_0 = select(any(vec2<bool>(true, false)), all(vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), false)), true);
    global3 = 0i;
    let var_1 = _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(arg_0.c, 1u)), min(vec2<u32>(arg_0.c >> (~global1.b % 32u), _wgslsmith_clamp_u32(global1.b, arg_0.c, 1u) & abs(arg_0.c)), ~vec2<u32>(~16785u, ~global1.c.c)));
    let var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(max(vec2<i32>(-global1.c.b.x, global1.d), vec2<i32>(-38429i, -6646i)), reverseBits(_wgslsmith_mult_vec2_i32(arg_0.b, min(vec2<i32>(0i, u_input.b.x), vec2<i32>(-33775i, 2147483647i))))), global1.c.b);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-616f, _wgslsmith_f_op_f32(f32(-1f) * -1126f), _wgslsmith_f_op_f32(arg_0.a.x + 927f)), global1.c.a)), arg_0.a)) + vec3<f32>(1537f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x + global1.c.a.x))), global1.c.a.x)), 1156f));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = global1.c.a.x;
    var var_1 = Struct_2(_wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.a), vec4<i32>(22493i, global1.a.x, -1i, u_input.b.x)), vec4<i32>(u_input.a, global1.d, u_input.a, global1.c.b.x)), vec4<i32>(-_wgslsmith_mult_i32(global1.d, 28304i), 40904i, global1.a.x, firstTrailingBit(global1.d | global1.a.x))), global1.c);
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c.a), vec3<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -697f), global1.c.a.x)), vec2<i32>(_wgslsmith_mult_i32(u_input.a, (u_input.b.x & 20397i) >> (select(21589u, 45591u, false) % 32u)), var_1.b.b.x), ~(~_wgslsmith_sub_u32(arg_0, arg_0) >> (~select(43946u, 0u, false) % 32u)));
    global3 = -1i;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(182f, _wgslsmith_f_op_f32(step(-1044f, var_2.a.x)), _wgslsmith_div_f32(477f, var_2.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(1270f, 1521f, 249f), vec2<i32>(20864i, -26049i), 0u)))))));
    return -1000f;
}

fn func_1() -> Struct_4 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(func_2(global1.e));
    var var_2 = 185f;
    var var_3 = Struct_3(-vec3<i32>(max(_wgslsmith_sub_i32(2147483647i, global1.c.b.x), -2147483647i), -2147483647i, 2147483647i), 4294967295u, global1.c, _wgslsmith_clamp_i32(-20394i, _wgslsmith_div_i32(-global1.a.x, -41170i), ~19652i), ~global1.b);
    var_3 = Struct_3(u_input.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, var_3.e), reverseBits(~var_3.b), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.b, var_3.e, 4294967295u), select(vec3<u32>(75202u, 30417u, global1.e), vec3<u32>(24905u, 0u, var_3.c.c), vec3<bool>(var_0, true, true)))), var_3.c, select(~1i, var_3.c.b.x, true) ^ 40047i, abs(~(~1u) | ~_wgslsmith_clamp_u32(16578u, var_3.c.c, 25166u)));
    return Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.a.xz) + vec2<f32>(_wgslsmith_f_op_f32(-514f - global1.c.a.x), -1000f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.a.x, -705f) + global1.c.a.yx)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.c.a.yz, vec2<f32>(var_3.c.a.x, 1000f)), _wgslsmith_f_op_vec2_f32(var_3.c.a.xz * vec2<f32>(678f, global1.c.a.x))), !(!vec2<bool>(var_0, true))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_3 {
    return Struct_3(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(arg_1, 6u)], vec3<i32>(global1.a.x, global1.a.x, 0i)) & select(arg_2, global1.a, vec3<bool>(true, false, true)), reverseBits(max(arg_2, vec3<i32>(-34067i, u_input.b.x, 16780i))), u_input.b), min(~_wgslsmith_mod_vec3_i32(global1.a, arg_2), _wgslsmith_clamp_vec3_i32(global1.a, global1.a, global1.a) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 8506u, 0u), vec3<u32>(global1.c.c, 4294967295u, 4294967295u)) % vec3<u32>(32u)))), firstTrailingBit(37661u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, 315f, -1583f) * vec3<f32>(arg_0.x, arg_0.x, -108f))), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 24596i), vec2<i32>(global1.d, -2147483647i)) | ~global1.c.b, 4294967295u), -arg_2.x, _wgslsmith_mult_u32(4294967295u, ~arg_1 ^ (global1.b << (4294967295u % 32u))) & 4294967295u);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = reverseBits(vec2<u32>(arg_0.b, 4294967295u));
    let var_1 = _wgslsmith_mod_i32(27700i, _wgslsmith_dot_vec2_i32(arg_0.a.xy, vec2<i32>(-1i) * -vec2<i32>(-1479i, -1i)) & -16329i);
    global0 = array<vec3<i32>, 6>();
    let var_2 = firstTrailingBit(57214u);
    global2 = u_input.b.x;
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.a.x), arg_0.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~4161u);
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec3_f32(global1.c.a + _wgslsmith_div_vec3_f32(global1.c.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.a.x, global1.c.a.x, global1.c.a.x) - vec3<f32>(global1.c.a.x, -792f, 945f)))), ~(~4294967295u), global1.a | _wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(~112517u, 6u)], abs(vec3<i32>(u_input.a, global1.d, global1.d))), func_1()), func_4(vec3<f32>(_wgslsmith_div_f32(-1000f, -1860f), -1758f, 376f), global1.c.c, -max(_wgslsmith_div_vec3_i32(global1.a, global0[_wgslsmith_index_u32(global1.b, 6u)]), abs(global0[_wgslsmith_index_u32(global1.e, 6u)])), func_1()), vec3<u32>(abs(countOneBits(45944u)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(18377u, 0u, 16810u)), vec3<u32>(~global1.c.c, global1.b, _wgslsmith_sub_u32(1u, global1.c.c))), reverseBits(1546u)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), 845f < global1.c.a.x), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), true), all(vec2<bool>(false, false))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(all(vec3<bool>(false, true, false)), false)), vec2<bool>(true, true)));
    var var_2 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.c.a.yy - var_1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(684f, -693f) * var_1.a), true)), var_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(global1.b)), var_1.a.x) - var_1.a)));
    var var_3 = Struct_2(_wgslsmith_clamp_i32(-global1.c.b.x, global1.d ^ 0i, 1i), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c.a * vec3<f32>(var_1.a.x, var_1.a.x, -852f))), 4294967295u, u_input.b, func_1()).c);
    let var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(select(i32(-1i) * -global1.d, func_4(_wgslsmith_f_op_vec3_f32(-var_3.b.a), abs(global1.e), vec3<i32>(2147483647i, -22920i, -2147483647i), Struct_4(var_3.b.a.xy)).a.x, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)))), -2147483647i, 0i), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

