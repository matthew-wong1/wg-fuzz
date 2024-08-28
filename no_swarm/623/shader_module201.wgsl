struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<u32>, 5>;

var<private> global2: vec4<u32> = vec4<u32>(34994u, 57374u, 1u, 1u);

var<private> global3: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = Struct_1(1i, 4294967295u, select(!(!select(vec3<bool>(true, true, true), vec3<bool>(arg_1, false, arg_1), false)), vec3<bool>(arg_1, u_input.c.x >= (u_input.e << (1u % 32u)), !(!arg_1)), vec3<bool>(!(!arg_1), true, any(vec3<bool>(arg_1, false, true)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, 217f), vec3<f32>(arg_0.a, -608f, arg_0.a)) - vec3<f32>(arg_0.a, arg_0.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, arg_0.a, arg_0.a), vec3<f32>(553f, 403f, arg_0.a))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-312f, arg_0.a, -425f))))))), _wgslsmith_div_f32(-644f, 863f));
    global0 = _wgslsmith_div_u32(max(_wgslsmith_mod_u32(firstTrailingBit(1u), var_0.b), min(~31945u, 1u)), 9460u) & global2.x;
    return all(var_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec4<i32> {
    global2 = vec4<u32>(~u_input.a.x, ((0u | global2.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(34920u, global2.x, u_input.a.x, 9300u), vec4<u32>(0u, global2.x, 4294967295u, 5714u)) % 32u)) >> (6229u % 32u), global2.x, _wgslsmith_mult_u32(u_input.d.x, global2.x)) & (_wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(~29643u, arg_0.b, arg_0.b, _wgslsmith_div_u32(u_input.d.x, 4294967295u))) | vec4<u32>(u_input.d.x, global2.x, firstTrailingBit(1u), ~(~arg_0.b)));
    global3 = arg_1.x;
    let var_0 = _wgslsmith_mult_vec4_u32(~(~global1[_wgslsmith_index_u32((1u >> (global2.x % 32u)) >> (global2.x % 32u), 5u)]), ~(~(vec4<u32>(27459u, 4294967295u, global2.x, 65823u) & u_input.b)));
    global1 = array<vec4<u32>, 5>();
    let var_1 = 4294967295u;
    return _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c.x, arg_0.a, u_input.e, -2147483647i), reverseBits(vec4<i32>(40265i, -17769i, -1i, -7041i))), ~abs(vec4<i32>(39076i, 1i, arg_0.a, arg_0.a))), min(arg_0.a, u_input.c.x), reverseBits(u_input.e), -2147483647i), -(~vec4<i32>(arg_0.a | -21546i, _wgslsmith_clamp_i32(arg_0.a, u_input.e, u_input.e), -u_input.c.x, arg_0.a)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_3 {
    let var_0 = min(func_4(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -44323i, u_input.e, u_input.c.x), vec4<i32>(u_input.c.x, u_input.e, -1i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -65322i, u_input.e)), -vec4<i32>(u_input.c.x, u_input.e, u_input.e, u_input.c.x)), _wgslsmith_mult_u32(arg_0.x, u_input.d.x) << (~872u % 32u), vec3<bool>(false == arg_1, all(vec2<bool>(arg_1, true)), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(923f, 1104f, 1413f), vec3<f32>(-1000f, 876f, -1050f), vec3<bool>(true, arg_1, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(544f, 1135f, -412f)), func_3(Struct_2(427f), true))), 715f), !vec3<bool>(all(vec3<bool>(arg_1, true, true)), arg_1, 2147483647i <= u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-821f, 468f, -700f, 1698f))))), countOneBits(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.e, u_input.e, -2147483647i), _wgslsmith_div_i32(2147483647i, u_input.e)), reverseBits(u_input.e), u_input.c.x, _wgslsmith_mult_i32(min(u_input.c.x, 17649i), -2147483647i << (u_input.a.x % 32u)))));
    global1 = array<vec4<u32>, 5>();
    global3 = arg_1;
    let var_1 = vec2<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 1u, global2.x, u_input.a.x)), ~global1[_wgslsmith_index_u32(1u, 5u)]), ~_wgslsmith_mult_vec4_u32(u_input.b, select(vec4<u32>(1u, arg_0.x, 43745u, u_input.d.x), vec4<u32>(u_input.a.x, u_input.d.x, global2.x, 27947u), vec4<bool>(false, arg_1, true, arg_1)))));
    var var_2 = Struct_3(!select(select(!vec4<bool>(arg_1, true, true, false), select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, true, false, false), true), vec4<bool>(arg_1, true, arg_1, arg_1)), select(select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(true, arg_1, false, true), true), !vec4<bool>(arg_1, false, arg_1, false), select(vec4<bool>(false, false, arg_1, true), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, arg_1, false, arg_1))), arg_1 & arg_1), all(!vec3<bool>(true, !arg_1, all(vec2<bool>(true, arg_1)))), !(!((arg_1 | false) | arg_1)));
    return Struct_3(select(!select(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, true, arg_1, var_2.c), var_2.a), vec4<bool>(arg_1, var_2.b, true, arg_1), !var_2.a), select(!(!var_2.a), var_2.a, vec4<bool>(arg_1, arg_1, !arg_1, true)), !vec4<bool>(var_2.c, false | arg_1, any(var_2.a.zzx), true)), any(!vec4<bool>(true & arg_1, arg_1, arg_1, var_2.a.x)), !(!select(true, false, arg_1)) & true);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = countOneBits(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~(vec2<u32>(arg_0, global2.x) | vec2<u32>(u_input.a.x, arg_0)), _wgslsmith_div_vec2_u32(u_input.d.zy, vec2<u32>(u_input.d.x, 41654u))), ~u_input.b.wy));
    var var_1 = select((-173f < _wgslsmith_f_op_f32(ceil(-384f))) && false, _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), ~u_input.e) == _wgslsmith_sub_i32(u_input.c.x, -1i), true & all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false))) || true;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(598f))) + _wgslsmith_div_f32(1363f, _wgslsmith_f_op_f32(f32(-1f) * -1493f))) - _wgslsmith_f_op_f32(f32(-1f) * -594f)));
    var var_3 = func_2(vec2<u32>(~arg_0, ~arg_0), false);
    var var_4 = func_2(min(reverseBits(~u_input.a), abs(vec2<u32>(~47952u, u_input.d.x << (arg_0 % 32u)))), func_3(Struct_2(var_2.a), var_3.c));
    return !select(vec3<bool>(true, -461f < _wgslsmith_f_op_f32(-var_2.a), false), !(!(!var_4.a.wyz)), !(!func_2(vec2<u32>(1210u, global2.x), var_4.a.x).a.yzw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = u_input.c.yz;
    var var_2 = !vec4<bool>(false, true, select(true, all(func_1(0u)), true), global2.x == 6502u);
    var var_3 = 0i;
    global3 = func_2(vec2<u32>(1u, ~(~1559u)), false).c;
    let var_4 = Struct_1(countOneBits(~var_1.x), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), global2.zyw) & countOneBits(var_0.x >> (40571u % 32u))), vec3<bool>(false, ~var_0.x == ~_wgslsmith_sub_u32(global2.x, 4294967295u), !(0i < _wgslsmith_div_i32(u_input.e, 0i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2034f, _wgslsmith_f_op_f32(floor(1431f)), _wgslsmith_f_op_f32(-153f - 459f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -849f, var_2.x)) * _wgslsmith_f_op_f32(-265f + -993f)), 2268f))));
    global0 = firstLeadingBit(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(1i >> (_wgslsmith_clamp_u32(~u_input.a.x, 27633u, (var_0.x ^ var_4.b) << (~66421u % 32u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.d.x))))));
}

