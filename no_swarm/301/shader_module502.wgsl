struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<u32>(1u, 0u), vec4<f32>(430f, 122f, -1000f, -324f), vec3<i32>(-1i, 0i, -505i)), Struct_1(vec2<u32>(0u, 58154u), vec4<f32>(-480f, -651f, 978f, 397f), vec3<i32>(-1i, -8776i, 2147483647i)), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(534f, 416f, -250f, -1000f), vec3<i32>(-1i, 22483i, i32(-2147483648))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = (27379u << (arg_1.a.x % 32u)) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.d, arg_1.a.x, arg_0.a.x, arg_0.a.x), vec4<u32>(20269u, 1u, 4294967295u, u_input.a.x)), vec4<u32>(~4294967295u, 0u, 96717u, arg_1.a.x)), 4294967295u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, arg_0.b.x, arg_0.b.x) - vec3<f32>(arg_0.b.x, 1595f, arg_0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_div_f32(arg_0.b.x, -907f))))) * _wgslsmith_f_op_vec3_f32(-arg_1.b.wzx));
    let var_2 = arg_1.b.x;
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + arg_0.b.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(floor(var_1.x))), 869f)));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(reverseBits(~vec2<u32>(~arg_2.a.x, ~4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, 542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_1(vec2<u32>(4294967295u, arg_2.a.x), arg_2.b, arg_2.c), vec3<bool>(false, true, false))) + _wgslsmith_f_op_f32(trunc(arg_2.b.x))), _wgslsmith_f_op_f32(trunc(-1193f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(292f, 1000f, -1158f, 831f), vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x), vec4<f32>(arg_2.b.x, arg_2.b.x, 1302f, arg_2.b.x)))))), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-arg_2.c.x, u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_2.c.x), u_input.b))), ~abs(-arg_2.c)));
    var var_1 = var_0;
    let var_2 = vec2<bool>(!all(vec3<bool>(true, any(vec4<bool>(true, true, true, false)), true)), any(vec4<bool>(true, select(all(vec2<bool>(true, true)), true, true), true && (var_1.a.x == var_0.a.x), all(vec4<bool>(true, false, false, false)))));
    global0 = array<Struct_1, 3>();
    var var_3 = Struct_1(min(arg_2.a, ~vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, arg_2.a.x), _wgslsmith_clamp_u32(0u, 72034u, 4294967295u))), var_1.b, vec3<i32>(~u_input.c, max(arg_2.c.x, -2147483647i), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(1i, -25066i, var_1.c.x, -2147483647i), vec4<i32>(var_0.c.x, arg_2.c.x, 10620i, var_1.c.x), vec4<bool>(var_2.x, true, false, var_2.x)), -firstLeadingBit(vec4<i32>(u_input.e, arg_0, arg_0, u_input.c)))));
    return all(var_2);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = select(select(vec3<bool>(true, arg_0.x, all(vec3<bool>(true, true, arg_0.x))), arg_0, arg_0.x), arg_0, !arg_0);
    let var_1 = _wgslsmith_f_op_f32(floor(722f));
    let var_2 = false;
    global0 = array<Struct_1, 3>();
    let var_3 = Struct_1(u_input.a.yz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + -1090f), 747f), _wgslsmith_f_op_f32(1f - -349f), _wgslsmith_f_op_f32(floor(481f)), 1000f)), min(-firstTrailingBit(vec3<i32>(0i, -1i, 15618i)), vec3<i32>(abs(0i), 1i, ~(-arg_2.c.x))));
    return Struct_1(vec2<u32>(var_3.a.x, arg_2.a.x << (_wgslsmith_mod_u32(reverseBits(arg_2.a.x), 1u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.b - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(arg_2.b)))))), vec3<i32>(1i, -2147483647i, -38500i));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(min(u_input.d, 36916u), 3u)];
    var var_1 = func_4(select(vec3<bool>(select(true, func_2(-8922i, u_input.b, Struct_1(vec2<u32>(9393u, var_0.a.x), var_0.b, vec3<i32>(u_input.b.x, -1i, -1i))), any(vec3<bool>(arg_2.x, arg_2.x, false))), !arg_2.x, !arg_2.x), select(vec3<bool>(all(vec4<bool>(true, false, arg_2.x, true)), any(vec2<bool>(false, false)), select(arg_2.x, false, arg_2.x)), select(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(vec3<bool>(false, false, true), vec3<bool>(arg_2.x, true, false), vec3<bool>(arg_2.x, true, arg_2.x)), vec3<bool>(arg_2.x, true, arg_2.x)), arg_2.x), -_wgslsmith_mult_i32(-2147483647i, u_input.c) >= (~arg_0 | arg_0)), 181f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~select(0u, u_input.d, arg_2.x) ^ 1u, 0u), 3u)], max(firstTrailingBit(u_input.d), var_0.a.x));
    var_1 = Struct_1(vec2<u32>(firstTrailingBit(1u), reverseBits(~_wgslsmith_sub_u32(1u, var_1.a.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(var_0.b)), var_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + var_1.b) - vec4<f32>(arg_1, -1553f, var_0.b.x, -2025f))))), func_4(select(select(vec3<bool>(true, arg_2.x, false), vec3<bool>(true, arg_2.x, true), vec3<bool>(arg_2.x, true, arg_2.x)), select(select(vec3<bool>(arg_2.x, false, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x), vec3<bool>(arg_2.x, arg_2.x, true), false), select(!vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(false, arg_2.x, arg_2.x))), arg_1, global0[_wgslsmith_index_u32(~1u, 3u)], var_0.a.x).c);
    let var_2 = arg_2.x;
    let var_3 = -1085f;
    return select(vec4<bool>(true, true, !any(arg_2), false), !vec4<bool>(func_2(~var_0.c.x, ~vec2<i32>(-7329i, -2147483647i), Struct_1(u_input.a.xx, var_1.b, var_1.c)), _wgslsmith_clamp_i32(27571i, var_1.c.x, arg_0) == abs(-2147483647i), arg_2.x, false), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = all(!func_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(6347i, u_input.b.x, u_input.e, 1i), vec4<i32>(u_input.e, 42648i, u_input.e, u_input.b.x)), -vec4<i32>(u_input.c, -1i, u_input.b.x, u_input.c)), _wgslsmith_f_op_f32(max(-2110f, _wgslsmith_f_op_f32(max(2059f, 1625f)))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_3 = max(firstLeadingBit(~vec3<i32>(2147483647i ^ u_input.e, -41645i, select(var_2.c.x, 60863i, true))), var_2.c);
    var var_4 = Struct_1(var_0.xx, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(var_2.b, var_2.b, true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, -468f, var_2.b.x, var_2.b.x)) - _wgslsmith_f_op_vec4_f32(var_2.b - vec4<f32>(737f, var_2.b.x, var_2.b.x, var_2.b.x))))))), vec3<i32>(_wgslsmith_add_i32(-(var_3.x << (36737u % 32u)), -42177i & var_2.c.x), -(~u_input.e), -(i32(-1i) * -13222i)));
    var var_5 = select(4294967295u, (~(~0u) << (_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d, var_0.x), ~var_4.a.x) % 32u)) ^ 4294967295u, !func_2(-1i, -var_3.yz, func_4(!vec3<bool>(false, var_1, true), _wgslsmith_f_op_f32(sign(var_2.b.x)), Struct_1(vec2<u32>(60352u, 48631u), var_2.b, var_4.c), ~var_2.a.x)));
    let var_6 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(var_0.x, select(1u, 38025u, var_1), u_input.a.x | 57757u, ~var_2.a.x)) ^ u_input.a.x, 3u)];
    var var_7 = func_4(vec3<bool>(u_input.d >= var_0.x, var_1, all(!(!vec2<bool>(var_1, var_1)))), 1f, Struct_1(var_2.a, var_6.b, _wgslsmith_clamp_vec3_i32(var_2.c, vec3<i32>(20117i, _wgslsmith_add_i32(var_3.x, 1i), -6375i), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(var_2.c, vec3<i32>(var_4.c.x, var_4.c.x, var_3.x)), abs(var_4.c)))), 43755u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(func_4(vec3<bool>(var_1, var_1, var_1), -2074f, global0[_wgslsmith_index_u32(4294967295u, 3u)], 18445u).a.x, 70748u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_6.a.x, 0u, 4294967295u, 15375u), vec4<u32>(var_6.a.x, 0u, var_6.a.x, u_input.d))), ~var_4.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-140f, _wgslsmith_f_op_f32(f32(-1f) * -2644f), 1570f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.b.x, 1572f, -604f)))), false)) * vec3<f32>(var_4.b.x, var_6.b.x, var_6.b.x)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_mod_u32(var_6.a.x, 4294967295u), var_7.a.x, _wgslsmith_add_u32(var_6.a.x, 82096u)), _wgslsmith_mod_vec4_u32(vec4<u32>(61163u, var_6.a.x, var_2.a.x, 95760u), ~vec4<u32>(4294967295u, 4294967295u, var_4.a.x, var_7.a.x)), vec4<u32>(62723u | var_0.x, ~92u, var_0.x << (0u % 32u), 0u))));
}

