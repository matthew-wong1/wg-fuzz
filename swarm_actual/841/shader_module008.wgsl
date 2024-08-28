struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(47858u, 15554u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 50427u), vec2<u32>(1u, 3950u), vec2<u32>(6413u, 86233u), vec2<u32>(2354u, 4294967295u));

var<private> global1: vec2<f32> = vec2<f32>(1000f, -1399f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = Struct_4(vec2<i32>(firstTrailingBit(firstLeadingBit(arg_0.x)), -(i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1146f, 1298f, arg_2) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-657f, -504f, global1.x, 1257f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-478f, -170f, arg_2, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-903f, global1.x, arg_2, arg_2), vec4<f32>(arg_2, global1.x, -1105f, 944f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1388f, arg_2, arg_2), vec4<f32>(global1.x, global1.x, -606f, 1296f))))))), ~arg_0.x, ~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_3, 1u, arg_3), ~arg_3)));
    var var_1 = Struct_2(!all(vec3<bool>(arg_1, true, arg_1)), vec4<i32>(84572i, _wgslsmith_mult_i32(u_input.a.x, arg_0.x) ^ arg_0.x, min(-abs(0i), arg_0.x), var_0.a.x), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~select(10476u, 13143u, false), 7u)] << (global0[_wgslsmith_index_u32(7565u, 7u)] % vec2<u32>(32u)), (reverseBits(vec2<u32>(14087u, 0u)) & max(global0[_wgslsmith_index_u32(38608u, 7u)], vec2<u32>(arg_3, 1u))) << (min(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.d, 45915u), global0[_wgslsmith_index_u32(var_0.d, 7u)]), vec2<u32>(0u, arg_3)) % vec2<u32>(32u))));
    let var_2 = Struct_1(var_1.a, var_0.b, false, _wgslsmith_f_op_f32(round(1469f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1016f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2, global1.x))))));
    var var_3 = vec2<i32>(-arg_0.x, -(~(i32(-1i) * -arg_0.x)));
    var var_4 = Struct_3(vec4<i32>(1i, 0i, -16080i, _wgslsmith_clamp_i32(~firstTrailingBit(1i), -21893i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, arg_0.x, 0i), var_1.b) | -u_input.a.x)), _wgslsmith_f_op_vec3_f32(round(var_0.b.zyz)), var_2.d, Struct_2(false, vec4<i32>(-6988i, reverseBits(_wgslsmith_add_i32(var_3.x, -2147483647i)), _wgslsmith_mod_i32(firstTrailingBit(var_1.b.x), ~arg_0.x), firstTrailingBit(firstLeadingBit(-116164i))), _wgslsmith_add_u32(~(~var_1.c), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), global0[_wgslsmith_index_u32(~var_0.d, 7u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)));
    return _wgslsmith_div_u32(~(~1u), var_1.c) >> (~_wgslsmith_div_u32(select(var_1.c, 65613u, true), min(0u, arg_3)) % 32u);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4((vec2<i32>(-1i) * -min(u_input.a, vec2<i32>(5309i, u_input.a.x))) ^ vec2<i32>(-29161i, u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 708f, global1.x, global1.x), vec4<f32>(1127f, global1.x, -2371f, global1.x), false)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(-global1.x), -1000f, _wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -651f, -329f, global1.x)))), abs(-u_input.a.x), _wgslsmith_mult_u32(~select(_wgslsmith_mod_u32(0u, 31877u), 46599u, true), abs(_wgslsmith_clamp_u32(0u, ~4294967295u, select(24096u, 7095u, false)))));
    let var_1 = var_0.c;
    let var_2 = _wgslsmith_sub_vec4_i32(~abs(select(vec4<i32>(var_0.a.x, u_input.a.x, u_input.a.x, -4432i), select(vec4<i32>(u_input.a.x, 0i, -2147483647i, var_0.c), vec4<i32>(-1209i, u_input.a.x, 6220i, var_0.a.x), false), vec4<bool>(true, true, true, true))), _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(26852i, 35319i, u_input.a.x, -17394i), vec4<i32>(1i, var_0.c, u_input.a.x, var_0.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2750i, 9033i, 34680i), vec4<i32>(var_0.c, var_0.c, -16686i, var_0.c)), abs(u_input.a.x), -1i), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(19260i, -2147483647i, -14298i, u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.a.x, 25524i), vec3<i32>(-14203i, 2147483647i, var_0.a.x)), select(u_input.a.x, var_0.a.x, true), 1i, 43508i))));
    global0 = array<vec2<u32>, 7>();
    global1 = var_0.b.yy;
    return Struct_2(true, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(70277i, -16078i), ~var_0.c, var_2.x, -var_2.x), var_2) & ~var_2, func_3(-vec3<i32>(1i, u_input.a.x, -2147483647i), true, _wgslsmith_f_op_f32(max(-1000f, -1461f)), reverseBits(22261u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_5 {
    var var_0 = func_2();
    global0 = array<vec2<u32>, 7>();
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(vec3<i32>(6236i, u_input.a.x, 2147483647i), true, global1.x, var_0.c), 4294967295u), vec2<u32>(1u, 57049u)), 1u), ~vec2<u32>(var_0.c, 17088u));
    var var_2 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(~var_0.c, _wgslsmith_sub_u32(var_1.x, 1u), arg_2)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_0.c ^ var_0.c), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, var_0.c, var_0.c)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_2, var_0.c), vec3<u32>(arg_2, var_0.c, var_1.x))), abs(~vec3<u32>(31379u, 25124u, var_1.x))));
    var_2 = _wgslsmith_add_u32(var_1.x, _wgslsmith_add_u32(~30068u, abs(_wgslsmith_add_u32(~17120u, arg_2))));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.e, 456f, ~(-49853i) != (u_input.a.x >> (var_0.c % 32u))))), false, 1u, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~vec2<u32>(1u, 1u));
    var var_1 = vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x << (_wgslsmith_mod_u32(var_0.x, var_0.x) % 32u), var_0.x), vec2<u32>(firstTrailingBit(var_0.x), 4294967295u) ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, 0u), vec2<u32>(0u, var_0.x))), ~42032u);
    let var_2 = all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, any(vec4<bool>(false, true, true, false)), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true))) & true;
    global1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-global1.x), !var_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, global1.x)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -1626f) * _wgslsmith_f_op_f32(abs(-283f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-global1.x))))));
    let var_3 = func_1(!all(select(vec2<bool>(true, var_2), vec2<bool>(var_2, true), vec2<bool>(var_2, var_2))) != !var_2, Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(652f, 1268f, 747f, -457f)))) + vec4<f32>(-841f, -1037f, -187f, -209f)), all(!(!vec2<bool>(false, var_2))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), global1.x), ~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(41869u, var_3.d.b, abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 27953u, var_3.c, var_3.d.c), vec4<u32>(1u, var_3.d.c, var_3.c, 36197u)), vec4<u32>(12141u, 43089u, 38734u, var_3.d.c) ^ vec4<u32>(var_3.c, var_1.x, var_1.x, var_1.x)), vec4<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), ~1u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1664f, 462f), vec3<f32>(-216f, var_3.a, 706f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.a, -2000f, global1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(1000f + var_3.a), -869f, 1000f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 494f, 645f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_3.a, -272f)))))), vec4<i32>(_wgslsmith_clamp_i32(var_3.d.b.x, u_input.a.x, var_3.d.b.x) ^ -2147483647i, reverseBits(-(~2147483647i)), _wgslsmith_dot_vec3_i32(var_3.d.b.zxx, vec3<i32>(22814i, -1i, 2147483647i << (var_3.c % 32u))), -19449i));
}

