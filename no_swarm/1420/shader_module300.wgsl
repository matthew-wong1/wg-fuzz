struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(1400f, 186f, -2223f), vec3<f32>(1239f, 1000f, 1594f), vec3<f32>(1204f, -549f, -923f), vec3<f32>(-240f, 170f, 189f), vec3<f32>(873f, -168f, 808f), vec3<f32>(1846f, -230f, -1172f), vec3<f32>(-1977f, -963f, 1669f), vec3<f32>(736f, 1473f, -296f), vec3<f32>(-295f, -1000f, 2616f));

var<private> global1: array<u32, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    let var_0 = !vec4<bool>(true, all(select(!vec2<bool>(arg_1.a.d, arg_1.a.d), vec2<bool>(false, false), select(arg_1.a.d, false, arg_1.a.d))), arg_1.a.d | all(select(vec4<bool>(arg_2, false, true, arg_1.a.d), vec4<bool>(arg_1.a.d, arg_1.a.d, arg_2, true), vec4<bool>(arg_2, arg_1.a.d, true, true))), !(!arg_2));
    var var_1 = Struct_3(arg_1.a, 4294967295u, 4294967295u);
    global1 = array<u32, 28>();
    var var_2 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~0u, var_1.a.c), abs(firstLeadingBit(var_1.b)), 32965u), abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.c, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)]), ~vec3<u32>(4294967295u, var_1.c, 4294967295u)))), ~arg_0, Struct_1(12704i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, _wgslsmith_f_op_f32(-1082f - 424f))), ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(var_1.a.c, 28u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51049u, 28u)], 28u)], 28u)], arg_1.a.c), vec2<u32>(var_1.a.c, arg_1.a.c)), _wgslsmith_sub_u32(arg_1.a.c, var_1.a.c)), arg_1.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.b.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2.c.b);
    return Struct_2(_wgslsmith_mult_u32(~arg_1.c ^ firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(14253u, 1u), 28u)]), _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 4294967295u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(7547u, 28u)], var_1.b, var_2.c.c)) & abs(31889u))), -select(_wgslsmith_sub_vec2_i32(var_2.b, -arg_0), select(countOneBits(arg_0), -vec2<i32>(arg_0.x, var_1.a.a), true), !select(vec2<bool>(var_2.c.d, false), vec2<bool>(arg_1.a.d, false), var_2.c.d)), var_2.c, _wgslsmith_f_op_f32(-var_1.a.b.x));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    global1 = array<u32, 28>();
    var var_0 = reverseBits(~vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 1032u), 28u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(14568u, global1[_wgslsmith_index_u32(1u, 28u)]), 28u)] ^ ~1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~22170u, 28u)] << (firstTrailingBit(32181u) % 32u), 28u)], min(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], 28u)], 45600u), ~0u)));
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-18999i, _wgslsmith_add_i32(min(u_input.a, 13035i), arg_0), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(28175i, -22390i, -1i), max(0i, 9716i)), arg_0), vec4<i32>(0i, 0i, _wgslsmith_div_i32(reverseBits(reverseBits(arg_0)), -(~u_input.a)), u_input.a | ((u_input.a | -31322i) >> ((4294967295u ^ var_0.x) % 32u))));
    var_1 = vec4<i32>(-1i) * -reverseBits(vec4<i32>(~(-11615i), -var_1.x, firstTrailingBit(33711i), var_1.x));
    var var_2 = select(vec4<bool>(any(vec3<bool>(true, false, all(vec2<bool>(true, true)))), any(vec2<bool>(true, all(vec2<bool>(false, true)))), any(vec2<bool>(true, false)), false), !(!vec4<bool>(false, any(vec3<bool>(false, false, true)), 0u > global1[_wgslsmith_index_u32(0u, 28u)], true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(select(false, false, true), any(vec2<bool>(true, false)), true, true), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))));
    return var_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(arg_0.b, ~arg_2.b >> (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 3658u), vec2<u32>(106933u, 0u)), ~vec2<u32>(68802u, arg_3.c)) % vec2<u32>(32u)), !select(vec2<bool>(arg_2.c.d, arg_0.c.d), !vec2<bool>(true, arg_3.d), true)) >> (vec2<u32>(arg_2.a, abs(1u)) % vec2<u32>(32u));
    let var_1 = Struct_3(Struct_1(1i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1046f * -1000f), arg_0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.b)))), _wgslsmith_mult_u32(_wgslsmith_add_u32(reverseBits(arg_3.c), 25252u), 4294967295u), arg_0.c.d), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(2920u, 1083u, 0u, 38336u), ~vec4<u32>(13683u, arg_3.c, 62551u, 132411u)), ~arg_2.c.c), arg_2.c.c);
    global0 = array<vec3<f32>, 9>();
    let var_2 = Struct_2(~reverseBits(67978u), arg_2.b, arg_2.c, 856f);
    let var_3 = arg_0;
    return Struct_1(-27013i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.b) + vec2<f32>(arg_0.c.b.x, -1297f)), func_2(vec2<i32>(var_0.x, -2147483647i) | arg_0.b, var_1, true).c.b) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(438f, 1000f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(arg_0.c.b, vec2<f32>(831f, 453f))))))), arg_0.a, _wgslsmith_f_op_f32(min(arg_2.c.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1035f, -1000f), _wgslsmith_f_op_f32(arg_0.c.b.x - arg_2.d))))) <= arg_2.c.b.x);
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    global0 = array<vec3<f32>, 9>();
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    let var_0 = func_4(func_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(u_input.a, 41698i)), ~vec2<i32>(u_input.a, -1i)), -vec2<i32>(u_input.a, u_input.a), max(vec2<i32>(u_input.a, -17747i), vec2<i32>(u_input.a, 20003i))), Struct_3(Struct_1(abs(2147483647i), vec2<f32>(227f, 515f), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67524u, 28u)], 28u)], 28u)], 28u)] & global1[_wgslsmith_index_u32(78084u, 28u)], all(vec3<bool>(arg_0.x, false, arg_0.x))), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(98672u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2680u, 28u)], 28u)], global1[_wgslsmith_index_u32(13272u, 28u)]), vec3<u32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]))), 0u), true), -773f, Struct_2(min(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)] ^ 4294967295u, 28u)]), 4647u), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.a, u_input.a)), -1i << (func_3(-27774i, vec4<f32>(340f, 468f, 788f, 999f)) % 32u)), Struct_1(0i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-365f, -348f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(791f, 886f) + vec2<f32>(-798f, -381f))), 4294967295u, any(vec3<bool>(arg_0.x, arg_0.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1815f + -372f)))), func_2(vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(-33674i, u_input.a)), u_input.a), Struct_3(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(302i, -80885i), vec2<i32>(2147483647i, 48460i)), Struct_3(Struct_1(u_input.a, vec2<f32>(283f, -398f), 1u, arg_0.x), 4294967295u, 1u), true).c, 0u, global1[_wgslsmith_index_u32(4294967295u, 28u)] | abs(22527u)), any(!vec3<bool>(arg_0.x, arg_0.x, false))).c);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(false, false))))))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(57025u, global1[_wgslsmith_index_u32(4294967295u, 28u)], 21960u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19268u, 28u)], 28u)], 28u)], 1u, 65720u)), ~global1[_wgslsmith_index_u32(20255u, 28u)], true), ~1u), 28u)], 45175u), 28u)], any(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = Struct_3(Struct_1(~(-2147483647i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1576f, var_0.b.x), var_0.b)) * vec2<f32>(var_0.b.x, 1358f)))), firstTrailingBit(reverseBits(53247u)), func_2(~vec2<i32>(u_input.a, -2147483647i), Struct_3(var_0, 24790u, 2481u), true).c.d || (true || var_0.d)), 1u, var_0.c);
    var var_2 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), -651f, vec3<u32>(var_0.c, ~var_1.b, func_3(_wgslsmith_div_i32(var_0.a, u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(1902f, 275f, -348f, var_0.b.x) - vec4<f32>(-623f, 414f, -577f, -704f)))) & ~min(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, var_1.c, var_1.b), vec3<u32>(5977u, 0u, 42315u)), firstTrailingBit(vec3<u32>(var_0.c, 0u, var_0.c))));
}

