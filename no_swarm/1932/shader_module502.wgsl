struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<i32> {
    return min(arg_2, vec4<i32>(~(-2147483647i), reverseBits(u_input.a.x), arg_2.x, -1i));
}

fn func_2() -> vec4<bool> {
    var var_0 = vec4<i32>(1i, u_input.a.x, u_input.b & u_input.b, u_input.a.x) & reverseBits(select(vec4<i32>(~2147483647i, 12877i, abs(0i), u_input.a.x), _wgslsmith_mod_vec4_i32(func_3(Struct_3(Struct_1(global0[_wgslsmith_index_u32(2053u, 1u)], vec4<f32>(-256f, -1156f, 1552f, -2412f), 1218f, vec2<bool>(global0[_wgslsmith_index_u32(87164u, 1u)], false), vec3<bool>(global0[_wgslsmith_index_u32(21448u, 1u)], false, false)), vec2<bool>(global0[_wgslsmith_index_u32(64607u, 1u)], true), vec4<u32>(108464u, 4294967295u, 0u, 1u), 42356u, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 1u)], vec4<f32>(-428f, 348f, -282f, -403f), -1630f, vec2<bool>(false, true), vec3<bool>(global0[_wgslsmith_index_u32(56618u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], false))), Struct_2(vec3<u32>(26280u, 4294967295u, 85087u), Struct_1(true, vec4<f32>(-561f, -232f, 516f, 614f), 704f, vec2<bool>(global0[_wgslsmith_index_u32(0u, 1u)], true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], false, global0[_wgslsmith_index_u32(0u, 1u)]))), vec4<i32>(u_input.b, 3779i, u_input.b, u_input.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -59558i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, 36373i))), !global0[_wgslsmith_index_u32(11181u, 1u)]));
    global0 = array<bool, 1>();
    var var_1 = Struct_2(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), firstLeadingBit(countOneBits(abs(vec3<u32>(17938u, 21513u, 25707u))))), Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(407f, -1846f, -1000f, 1000f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-551f, -878f, 1000f, 1950f))))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-557f)), -648f, -1000f, 363f)), _wgslsmith_f_op_f32(f32(-1f) * -433f), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(38294u, 1u)], true), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(50018u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])), vec2<bool>(false, false), !vec2<bool>(global0[_wgslsmith_index_u32(51216u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])), vec3<bool>(false, global0[_wgslsmith_index_u32(6352u, 1u)], all(vec2<bool>(false, false)))));
    let var_2 = var_1.a.xy;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(674f)), _wgslsmith_f_op_f32(-var_1.b.b.x))))));
    return !(!vec4<bool>(-8441i != _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.b, -47501i, u_input.b), vec4<i32>(var_0.x, 54635i, u_input.b, u_input.a.x)), false, !(global0[_wgslsmith_index_u32(var_2.x, 1u)] || true), !any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 1u)], var_1.b.e.x))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> bool {
    global0 = array<bool, 1>();
    let var_0 = vec2<i32>(-2147483647i, -(~(-u_input.b)) >> (arg_1.x % 32u));
    let var_1 = global0[_wgslsmith_index_u32(arg_1.x, 1u)];
    let var_2 = 388f;
    var var_3 = func_2();
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    let var_0 = vec2<bool>(arg_0, -496f >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(-1000f - 1084f)), _wgslsmith_f_op_f32(arg_1.b.x * arg_1.c), all(vec4<bool>(false, true, arg_0, arg_0)) || (arg_1.b.x > 1070f))));
    global0 = array<bool, 1>();
    var var_1 = select(~(~select(~vec3<u32>(1u, 0u, 0u), ~vec3<u32>(0u, 4294967295u, 4294967295u), arg_1.e)), vec3<u32>(~(~12446u), 1u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(36027u, 10773u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)))), !(all(func_2().xyz) != !global0[_wgslsmith_index_u32(~1u, 1u)]));
    var_1 = vec3<u32>(~var_1.x, countOneBits(var_1.x), firstLeadingBit(~_wgslsmith_add_u32(reverseBits(0u), ~var_1.x)));
    var_1 = countOneBits(select(~(~vec3<u32>(var_1.x, 0u, 53260u)), vec3<u32>(var_1.x, ~(~4294967295u), ~reverseBits(37277u)), func_2().xyy));
    return Struct_3(arg_1, vec2<bool>(arg_0, arg_0), vec4<u32>(max(~1u, _wgslsmith_sub_u32(~var_1.x, 24207u)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, 1u)), 27323u), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x), _wgslsmith_sub_u32(40387u, 11850u)), ~10409u), 9156u, Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1.b))), _wgslsmith_f_op_f32(-305f - 765f), !vec2<bool>(var_0.x, var_1.x < var_1.x), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 1u)] && arg_0, false), select(!arg_1.e, !vec3<bool>(true, arg_0, var_0.x), true), arg_1.e)));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> vec3<f32> {
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    var var_0 = Struct_2(_wgslsmith_div_vec3_u32(arg_0.c.yyy, vec3<u32>(~4294967295u, arg_0.c.x, 1u) & arg_0.c.ywz), arg_0.e);
    var var_1 = Struct_2(_wgslsmith_sub_vec3_u32((var_0.a >> (vec3<u32>(var_0.a.x, 4294967295u, arg_0.d) % vec3<u32>(32u))) >> (countOneBits(vec3<u32>(21724u, 0u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(var_0.a, ~(~var_0.a))), Struct_1(!(arg_1 >= (-39071i & arg_1)), arg_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.b.x) + 1719f)), !vec2<bool>(global0[_wgslsmith_index_u32(countOneBits(var_0.a.x), 1u)], arg_0.a.a & arg_0.a.a), vec3<bool>(false, _wgslsmith_f_op_f32(ceil(625f)) <= 1099f, global0[_wgslsmith_index_u32(var_0.a.x, 1u)])));
    return var_0.b.b.zxw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1303f, _wgslsmith_f_op_f32(trunc(-447f)), -2001f, -856f)) - vec4<f32>(_wgslsmith_div_f32(-245f, _wgslsmith_f_op_f32(floor(-374f))), -1000f, -1006f, -1000f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_4(func_1(1i, vec2<u32>(1u, 1u)), Struct_1(!global0[_wgslsmith_index_u32(3120u, 1u)], var_0, var_0.x, vec2<bool>(true, true), !vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(66175u, 1u)]))), -27688i, global0[_wgslsmith_index_u32(9045u, 1u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), var_0.x, _wgslsmith_f_op_f32(-228f + var_0.x)))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(661f, var_1.x))))));
    var var_3 = !func_2();
    let var_4 = _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-1i) * -vec4<i32>(countOneBits(u_input.a.x), 2147483647i, _wgslsmith_mult_i32(u_input.a.x, 1i), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * 1564f), func_4(false, Struct_1(true, var_0, 120f, vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), var_3.ywy)).a.b.x))) * var_1.x), ~u_input.a.x, var_4.x, var_1.x, _wgslsmith_sub_i32(-countOneBits(u_input.b), -countOneBits(_wgslsmith_mod_i32(var_4.x, -2147483647i))));
}

