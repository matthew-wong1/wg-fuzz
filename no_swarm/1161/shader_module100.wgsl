struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-2153f, 1000f, 526f, 1971f, 873f, -255f);

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = ~global1.a;
    var var_1 = select(!(!vec4<bool>(any(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x)), all(arg_1.b.zz), any(vec4<bool>(true, arg_1.b.x, arg_1.b.x, false)), any(vec4<bool>(true, arg_1.b.x, false, arg_1.b.x)))), !select(select(select(vec4<bool>(true, true, arg_1.b.x, true), vec4<bool>(arg_1.b.x, false, false, true), true), select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, true, false, arg_1.b.x), vec4<bool>(true, arg_1.b.x, false, false)), arg_1.b.x | true), select(select(vec4<bool>(arg_1.b.x, true, true, true), vec4<bool>(true, true, true, arg_1.b.x), vec4<bool>(true, false, true, arg_1.b.x)), select(vec4<bool>(true, false, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), true), true), arg_1.b.x), select(!select(!vec4<bool>(arg_1.b.x, false, arg_1.b.x, true), !vec4<bool>(true, true, true, arg_1.b.x), !vec4<bool>(true, arg_1.b.x, arg_1.b.x, true)), select(vec4<bool>(!arg_1.b.x, arg_1.c >= 2208i, arg_0.x > 1u, true), vec4<bool>(any(vec2<bool>(arg_1.b.x, true)), arg_1.b.x, arg_1.b.x, !arg_1.b.x), vec4<bool>(true, 1u <= global1.a.x, true, true)), arg_1.b.x));
    global0 = array<f32, 6>();
    let var_2 = select(9373i, arg_1.c, var_1.x) ^ -1i;
    global0 = array<f32, 6>();
    return _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(var_0.x, u_input.a), firstLeadingBit(min(firstLeadingBit(26786u), var_0.x))), abs(u_input.a));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-774f * 551f), -491f), _wgslsmith_f_op_f32(f32(-1f) * -926f)));
    var var_1 = min(select(vec4<u32>(52720u, ~func_3(global1.a, Struct_2(-917f, vec3<bool>(false, true, arg_0), arg_1.x, vec3<f32>(-935f, -563f, global1.b))), ~reverseBits(global1.a.x), ~abs(47482u)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(global1.a.x, 4294967295u, 4294967295u, 20114u)), vec4<u32>(~global1.a.x, u_input.a >> (u_input.a % 32u), max(1u, global1.a.x), ~34278u)), select(vec4<bool>(true, arg_2.x, true, arg_2.x), !vec4<bool>(false, arg_0, false, arg_2.x), true)), _wgslsmith_mod_vec4_u32(max(~vec4<u32>(u_input.a, 67160u, global1.a.x, 0u), ~vec4<u32>(1u, 79917u, 25098u, u_input.a)), vec4<u32>(_wgslsmith_mult_u32(global1.a.x, u_input.a), ~u_input.a, reverseBits(u_input.a), ~u_input.a)) >> (vec4<u32>(global1.a.x, _wgslsmith_div_u32(u_input.a, global1.a.x ^ 26814u), func_3(_wgslsmith_add_vec2_u32(global1.a, global1.a), Struct_2(784f, arg_2, arg_3, vec3<f32>(var_0, global1.b, global0[_wgslsmith_index_u32(global1.a.x, 6u)]))), _wgslsmith_add_u32(51337u, u_input.a)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, global1.b, 401f, global1.b) + vec4<f32>(457f, global0[_wgslsmith_index_u32(global1.a.x, 6u)], -1629f, -509f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, global0[_wgslsmith_index_u32(var_1.x, 6u)], 927f, var_0) - vec4<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global1.b, global0[_wgslsmith_index_u32(u_input.a, 6u)], 610f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(169f, var_0, -138f, var_0))))))));
    global0 = array<f32, 6>();
    let var_3 = 1u;
    return Struct_3(true, true, vec4<i32>(arg_3, arg_1.x, arg_3, ~_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, arg_3), ~arg_1.x)), Struct_2(var_2.x, arg_2, -arg_1.x, var_2.zxw), Struct_1(vec2<u32>(firstLeadingBit(7877u), ~u_input.a), 1771f));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    return arg_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_3 {
    return func_4(abs(_wgslsmith_clamp_u32(1u << (0u % 32u), ~1u, global1.a.x | 0u)) ^ 63208u, func_2(all(arg_1), vec4<i32>(-(arg_0.x << (16454u % 32u)), _wgslsmith_add_i32(-68913i, arg_0.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, arg_0.x), vec3<i32>(-30050i, -938i, -1i)), i32(-1i) * -1i), firstLeadingBit(-51801i)), vec3<bool>(true, arg_1.x, false), arg_0.x), _wgslsmith_f_op_f32(-1658f - 464f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(arg_1.x, vec4<i32>(-9130i, arg_0.x, -24734i, arg_0.x) ^ vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec3<bool>(false, arg_2.x, arg_1.x), arg_2.xyx, arg_2.yyx), _wgslsmith_mod_i32(arg_0.x, 0i)).d.d.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1482f - global0[_wgslsmith_index_u32(0u, 6u)]), -187f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(901f, global0[_wgslsmith_index_u32(global1.a.x, 6u)]) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], -798f)) + func_2(false, vec4<i32>(34129i, arg_0.x, -75566i, 0i), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), 1i).d.d.zz))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> vec2<i32> {
    global0 = array<f32, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_0.d.d)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-679f, _wgslsmith_f_op_f32(floor(491f)), -1000f))));
    var var_1 = func_1(func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-2686i, -arg_1.x), arg_1.xx), arg_0.d.b.zy, select(vec4<bool>(true, !arg_0.d.b.x, all(vec2<bool>(arg_0.d.b.x, arg_0.a)), arg_0.b), vec4<bool>(true, arg_0.d.b.x, arg_0.b, !arg_0.a), arg_0.a || true)).c.xx, arg_0.d.b.zz, vec4<bool>(func_1(abs(abs(vec2<i32>(0i, -1i))), func_1(~arg_0.c.zx, arg_0.d.b.yy, select(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.d.b.x, true), arg_0.b)).d.b.xy, vec4<bool>(select(arg_0.a, false, false), false, !arg_0.b, arg_0.d.b.x & true)).d.b.x, arg_0.b, arg_0.a, arg_0.d.b.x && (~arg_0.e.a.x == 9094u))).e;
    var var_2 = func_4(~(~9936u), func_2(!all(vec4<bool>(true, true, true, true)), vec4<i32>(arg_1.x, -60029i, -28926i, 11812i), arg_0.d.b, 65968i << (var_1.a.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-242f, -1000f)) * 534f) + var_1.b), var_0.zy).d.b.x;
    var_1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-184f + -615f));
    return arg_0.c.xw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec2<i32>(1i, 1i), vec2<bool>(true, false), vec4<bool>(true, true, true, true)), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -37589i, -1i), vec3<i32>(-1i, 0i, -2147483647i)) << (_wgslsmith_add_vec3_u32(select(~vec3<u32>(1u, u_input.a, global1.a.x), vec3<u32>(35124u, 0u, 38939u), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 43665u, u_input.a), vec3<u32>(global1.a.x, global1.a.x, u_input.a)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, u_input.a), vec3<u32>(63939u, u_input.a, global1.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(36307i, -5311i, -38569i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a.x, 6u)])), -1099f)) - _wgslsmith_f_op_f32(-global1.b)));
    let var_1 = Struct_3(any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), false, _wgslsmith_sub_vec4_i32(select(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<u32>(global1.a.x, u_input.a, 1907u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(var_0.x, var_0.x, var_0.x, -19255i), vec4<i32>(var_0.x, -35097i, var_0.x, var_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 57473i, var_0.x, var_0.x), vec4<i32>(-2147483647i, -2147483647i, 9089i, var_0.x))), func_1(select(var_0, vec2<i32>(-18946i, -7642i), false), vec2<bool>(true, true), vec4<bool>(true, true, true, true)).a), _wgslsmith_mult_vec4_i32(func_4(~50846u, Struct_3(false, true, vec4<i32>(var_0.x, -33460i, 51529i, var_0.x), Struct_2(global1.b, vec3<bool>(true, false, true), var_0.x, vec3<f32>(global1.b, -912f, -715f)), Struct_1(global1.a, global0[_wgslsmith_index_u32(4294967295u, 6u)])), _wgslsmith_f_op_f32(-966f * global0[_wgslsmith_index_u32(u_input.a, 6u)]), vec2<f32>(347f, global0[_wgslsmith_index_u32(global1.a.x, 6u)])).c, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, var_0.x, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(340i, var_0.x, -8767i, -19175i), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<i32>(var_0.x, var_0.x, var_0.x, -1i)))), Struct_2(1429f, vec3<bool>(func_4(1u, Struct_3(true, false, vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_2(global1.b, vec3<bool>(true, false, true), 0i, vec3<f32>(197f, 1533f, -869f)), Struct_1(vec2<u32>(global1.a.x, 24245u), -183f)), -1000f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.b, global0[_wgslsmith_index_u32(global1.a.x, 6u)])))).b, true && (var_0.x <= 1i), any(vec3<bool>(false, false, false))), 12281i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global0[_wgslsmith_index_u32(global1.a.x, 6u)], -928f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global1.b, global0[_wgslsmith_index_u32(1u, 6u)]) + vec3<f32>(205f, global1.b, global0[_wgslsmith_index_u32(129803u, 6u)]))), _wgslsmith_f_op_vec3_f32(exp2(func_4(u_input.a, Struct_3(true, true, vec4<i32>(var_0.x, 1i, 2147483647i, 2147483647i), Struct_2(global0[_wgslsmith_index_u32(1u, 6u)], vec3<bool>(true, false, true), -2147483647i, vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], global1.b)), Struct_1(global1.a, global0[_wgslsmith_index_u32(global1.a.x, 6u)])), -267f, vec2<f32>(903f, -956f)).d.d)), any(vec2<bool>(true, true))))), Struct_1(vec2<u32>(abs(u_input.a), _wgslsmith_mult_u32(80611u & u_input.a, u_input.a)), 551f));
    global1 = func_4(var_1.e.a.x, Struct_3(!func_4(firstTrailingBit(var_1.e.a.x), func_1(var_0, var_1.d.b.yx, vec4<bool>(var_1.d.b.x, var_1.d.b.x, var_1.b, var_1.d.b.x)), -276f, var_1.d.d.yx).b, true, abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.x, 1i, var_1.c.x, -34402i), -vec4<i32>(59259i, var_1.d.c, 1i, 0i))), var_1.d, func_4(1u, Struct_3(all(vec4<bool>(false, var_1.b, var_1.a, var_1.d.b.x)), false, func_2(var_1.d.b.x, var_1.c, vec3<bool>(var_1.d.b.x, var_1.d.b.x, true), 0i).c, func_4(var_1.e.a.x, var_1, var_1.e.b, var_1.d.d.zy).d, func_1(vec2<i32>(1i, var_1.c.x), vec2<bool>(false, true), vec4<bool>(false, false, var_1.b, true)).e), -1244f, _wgslsmith_f_op_vec2_f32(exp2(var_1.d.d.zy))).e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.e.a.x, func_4(33260u, var_1, -750f, vec2<f32>(global1.b, global1.b)).e.a.x), 6u)], -1651f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.d.a + global0[_wgslsmith_index_u32(var_1.e.a.x, 6u)]))))), vec2<f32>(var_1.d.a, -658f)).e;
    var var_2 = ~var_0;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1646f, global1.b, true)))), var_1.d.d.x);
    let var_4 = false;
    var var_5 = vec3<f32>(-1080f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.d.d.x, -247f), var_1.d.a, var_4))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -879f), -791f, false)) + global0[_wgslsmith_index_u32(56767u, 6u)])));
    var_5 = _wgslsmith_f_op_vec3_f32(-var_1.d.d);
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-15261i, global0[_wgslsmith_index_u32(~min(u_input.a, _wgslsmith_clamp_u32(func_2(var_4, var_1.c, vec3<bool>(var_4, var_1.d.b.x, var_4), var_0.x).e.a.x, abs(u_input.a), 0u)), 6u)], 4294967295u, _wgslsmith_div_vec2_u32((vec2<u32>(0u, global1.a.x) >> (vec2<u32>(57252u, var_1.e.a.x) % vec2<u32>(32u))) >> (countOneBits(~var_1.e.a) % vec2<u32>(32u)), vec2<u32>(~(u_input.a >> (var_1.e.a.x % 32u)), var_1.e.a.x)), 15269i);
}

