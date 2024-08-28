struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-128f, true);

var<private> global1: array<bool, 6>;

var<private> global2: vec4<bool>;

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = !global2.x;
    let var_1 = firstLeadingBit(~_wgslsmith_div_u32(~17677u, select(4294967295u, 4294967295u, false))) | 11601u;
    var var_2 = Struct_1(arg_3, u_input.b.x <= 43954u);
    global3 = -2147483647i > firstTrailingBit(-2147483647i);
    global3 = var_2.b;
    return global1[_wgslsmith_index_u32(1u | ~var_1, 6u)];
}

fn func_2(arg_0: u32) -> vec4<u32> {
    let var_0 = func_3(_wgslsmith_mult_u32(u_input.b.x, ~1065u), ~(vec4<i32>(-24512i, u_input.c.x, 37095i, countOneBits(-32002i)) >> (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.b.x, 126563u, u_input.b.x)), vec4<u32>(0u, 4294967295u, 36862u, 0u), firstTrailingBit(vec4<u32>(u_input.b.x, 15771u, u_input.b.x, arg_0))) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c, firstTrailingBit(u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2250i, 1i), vec3<i32>(-1i, 0i, u_input.d.x))) <= (i32(-1i) * -abs(258i)), _wgslsmith_f_op_f32(f32(-1f) * -1515f));
    global3 = true;
    var var_1 = !all(!(!vec4<bool>(global2.x, false, false, false)));
    let var_2 = global1[_wgslsmith_index_u32(arg_0, 6u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(f32(-1f) * -1515f)));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 0u), u_input.b.x, arg_0, u_input.b.x) | ~(abs(vec4<u32>(8096u, 1u, 33490u, u_input.b.x)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(35614u, 1u, 4294967295u, u_input.b.x), vec4<u32>(arg_0, 10909u, 0u, 1u), vec4<u32>(u_input.b.x, arg_0, u_input.b.x, arg_0))), select(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 26189u), vec4<u32>(arg_0, u_input.b.x, arg_0, arg_0))), ~vec4<u32>(abs(4294967295u), 40631u, _wgslsmith_div_u32(4294967295u, u_input.b.x), ~arg_0), !global2.x));
}

fn func_1() -> vec4<bool> {
    global1 = array<bool, 6>();
    let var_0 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(u_input.b.x, 0u, 1u, 4294967295u))), vec4<u32>(~u_input.b.x ^ _wgslsmith_add_u32(u_input.b.x, 68741u), 1u, u_input.b.x >> (82142u % 32u), ~u_input.b.x & _wgslsmith_mod_u32(0u, 1u)), ~select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), ~vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), !global1[_wgslsmith_index_u32(33143u, 6u)])) & (func_2(~u_input.b.x) << ((~min(vec4<u32>(u_input.b.x, 1u, 62693u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) >> (vec4<u32>(u_input.b.x, 20339u | u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, u_input.b.x)), ~u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = global2.zz;
    global3 = 59874i >= countOneBits(u_input.a);
    global2 = !(!select(select(vec4<bool>(global0.b, false, var_1.x, true), !vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(var_0.x, 6u)], false, global2.x), true), vec4<bool>(true, true, true, true), true));
    return !vec4<bool>(false, false, all(!global2.yz), !select(true, global1[_wgslsmith_index_u32(var_0.x, 6u)], select(global2.x, true, false)));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> vec4<bool> {
    let var_0 = (~vec3<u32>(u_input.b.x, ~u_input.b.x, ~u_input.b.x) & min(vec3<u32>(func_2(u_input.b.x).x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), select(13308u, 41600u, arg_0.x)), ~vec3<u32>(1u, u_input.b.x, u_input.b.x))) & ~((vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) & (vec3<u32>(30418u, u_input.b.x, 2633u) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u)))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(65906u, u_input.b.x, 4294967295u), ~vec3<u32>(29980u, 88608u, 53752u)) % vec3<u32>(32u)));
    global3 = false;
    let var_1 = vec4<i32>(-min(u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.d.x, 2147483647i, 56131i) ^ vec3<i32>(u_input.a, 39130i, -1i))), _wgslsmith_mod_i32(u_input.d.x, u_input.d.x), min(1i, -2147483647i), u_input.d.x << (var_0.x % 32u));
    var var_2 = arg_1;
    let var_3 = ~min(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(51334u, var_0.x, u_input.b.x, 4294967295u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_0.x), ~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))), ~_wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b));
    return vec4<bool>(false, false, all(global2.wy), any(!vec4<bool>(true, !global0.b, global2.x, !global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(u_input.b.x);
    global2 = select(func_4(func_1(), 391f), func_1(), (func_1().x && true) | global2.x);
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x) >> (4294967295u % 32u);
    global3 = global0.b;
    var_2 = _wgslsmith_div_u32(u_input.b.x, u_input.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1708f - _wgslsmith_f_op_f32(-808f + global0.a))), -1000f)), !(!(!(global1[_wgslsmith_index_u32(38936u, 6u)] || global0.b))));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, -740f) - _wgslsmith_f_op_f32(floor(-849f))), -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.a)), global0.a)), true);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1094f, _wgslsmith_f_op_f32(var_3.a * -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -483f)))), vec4<i32>(~(~reverseBits(-7433i)), u_input.a, -_wgslsmith_div_i32(-15375i, -u_input.d.x), _wgslsmith_add_i32(u_input.a, 23955i | u_input.d.x)));
}

