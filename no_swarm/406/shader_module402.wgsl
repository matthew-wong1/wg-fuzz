struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, arg_1.x, ~_wgslsmith_div_u32(~1u, reverseBits(44988u))), 22u)];
    var var_1 = arg_0.b.x;
    var_1 = arg_1.x > u_input.c;
    let var_2 = vec4<bool>(all(select(select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), true), select(vec4<bool>(arg_0.b.x, false, arg_0.b.x, false), vec4<bool>(false, arg_0.b.x, false, false), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x))), select(select(vec4<bool>(arg_0.b.x, true, false, true), vec4<bool>(true, false, true, arg_0.b.x), arg_0.b.x), select(vec4<bool>(false, true, false, true), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), arg_0.b.x), true), vec4<bool>(!arg_0.b.x, false, all(arg_0.b), arg_0.b.x | false))), false, arg_0.b.x, arg_0.b.x);
    global0 = array<Struct_1, 22>();
    return 4294967295u;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(arg_1.a.b.x, vec4<i32>(arg_0.a.c, 2147483647i, -16073i, -2147483647i), abs(arg_0.a.a));
    let var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 22u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1079f) + _wgslsmith_div_f32(550f, -163f)), -623f, -1765f, 1277f)));
    var var_3 = reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(~0i, -1i, 2147483647i), select(var_0.b.zzz, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_0.a.c, 24655i), arg_0.a.b.xxy)), any(vec4<bool>(arg_1.b.x, true, true, arg_1.b.x)))));
    var var_4 = 1i;
    return !vec4<bool>(!(!arg_0.b.x), arg_1.b.x | arg_0.b.x, any(vec4<bool>(true, any(vec3<bool>(arg_1.b.x, true, false)), any(vec4<bool>(arg_1.b.x, false, arg_1.b.x, false)), 0u < u_input.b)), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(u_input.e.x, abs(-(~vec4<i32>(u_input.e.x, 3780i, u_input.e.x, 14681i))) & countOneBits(arg_0.a.b), _wgslsmith_mult_i32(u_input.e.x, arg_0.a.b.x));
    global0 = array<Struct_1, 22>();
    var var_1 = var_0.b.wzy;
    var var_2 = _wgslsmith_mult_vec3_u32(max(~_wgslsmith_div_vec3_u32(countOneBits(u_input.d.xwz), vec3<u32>(0u, 0u, u_input.c)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.a.x, 0u), u_input.a.x, _wgslsmith_div_u32(u_input.b, 1u)), countOneBits(countOneBits(vec3<u32>(1u, u_input.a.x, u_input.b))))), ~(~firstLeadingBit(u_input.a.wzz)));
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(var_2.x << (select(var_2.x, var_2.x, false) % 32u)), ~u_input.a.x), 22u)];
    return arg_0;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(countOneBits(u_input.c), ~38028u)), 22u)];
    let var_1 = Struct_1(-2147483647i, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, 1i, -(~17516i), firstLeadingBit(i32(-1i) * -2147483647i)), vec4<i32>(_wgslsmith_add_i32(-4832i << (u_input.b % 32u), min(arg_1.a.b.x, -1i)), 2147483647i << (u_input.b % 32u), 14942i, abs(arg_1.a.c)), vec4<i32>(0i, _wgslsmith_mod_i32(1i, max(arg_1.a.a, var_0.c)), ~(-1i), var_0.c)), u_input.e.x);
    var var_2 = func_3(func_4(arg_1, select(!(!vec4<bool>(arg_1.b.x, arg_2, arg_1.b.x, false)), vec4<bool>(u_input.d.x == 14927u, any(vec2<bool>(false, arg_3)), arg_1.b.x, !arg_3), vec4<bool>(func_3(arg_1, arg_1).x, true, true, true))), arg_1).xw;
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    return Struct_1(reverseBits(-19599i), abs(firstLeadingBit(vec4<i32>(-arg_1.a.b.x, reverseBits(arg_0.x), var_0.c, _wgslsmith_mod_i32(-1i, arg_0.x)))), arg_0.x);
}

fn func_1(arg_0: bool) -> vec3<bool> {
    var var_0 = func_5(-abs(vec4<i32>(2147483647i, 2147483647i, u_input.e.x, -1i) >> (u_input.d % vec4<u32>(32u))) | vec4<i32>(-_wgslsmith_mult_i32(u_input.e.x, u_input.e.x), ~1i, -u_input.e.x, -1i), func_4(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.b, 22u)], vec2<bool>(arg_0, arg_0)), u_input.a)), 22u)], vec2<bool>(!arg_0, true)), select(select(vec4<bool>(false, arg_0, true, true), func_3(Struct_2(Struct_1(u_input.e.x, vec4<i32>(10957i, 1i, -1i, 0i), -1i), vec2<bool>(false, true)), Struct_2(Struct_1(-1i, vec4<i32>(u_input.e.x, -2367i, u_input.e.x, -2147483647i), u_input.e.x), vec2<bool>(arg_0, arg_0))), vec4<bool>(true, arg_0, false, arg_0)), func_3(Struct_2(Struct_1(u_input.e.x, vec4<i32>(u_input.e.x, u_input.e.x, -7760i, u_input.e.x), u_input.e.x), vec2<bool>(arg_0, arg_0)), Struct_2(global0[_wgslsmith_index_u32(27657u, 22u)], vec2<bool>(false, arg_0))), !(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), all(!vec3<bool>(true, true & arg_0, true)), true);
    var var_1 = countOneBits(abs(u_input.d.zy) ^ ~(~vec2<u32>(u_input.b, u_input.b))) & u_input.d.zz;
    var_0 = Struct_1(2147483647i, firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, var_0.b.x, 44769i, 1i), var_0.b) >> (_wgslsmith_sub_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)))), ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(var_0.c, 60360i)), u_input.e, u_input.e), max(countOneBits(u_input.e), _wgslsmith_sub_vec2_i32(u_input.e, vec2<i32>(var_0.c, var_0.b.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1313f)) * _wgslsmith_f_op_f32(abs(-628f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1189f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 + 1272f), var_2), _wgslsmith_f_op_f32(round(var_2)), _wgslsmith_div_f32(var_2, 600f))));
    return select(select(vec3<bool>(true, func_3(Struct_2(Struct_1(24292i, var_0.b, var_0.b.x), vec2<bool>(arg_0, false)), Struct_2(global0[_wgslsmith_index_u32(19511u, 22u)], vec2<bool>(arg_0, true))).x, !any(vec4<bool>(false, arg_0, false, arg_0))), select(vec3<bool>(true, true, !arg_0), func_3(Struct_2(global0[_wgslsmith_index_u32(var_1.x, 22u)], vec2<bool>(false, arg_0)), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 22u)], vec2<bool>(arg_0, arg_0))).wyx, !any(vec2<bool>(arg_0, true))), vec3<bool>(true, true, true)), select(vec3<bool>(any(select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(true, arg_0, false, true), vec4<bool>(true, arg_0, false, false))), arg_0, false), vec3<bool>(!arg_0, arg_0, true), !vec3<bool>(all(vec2<bool>(false, arg_0)), true, arg_0)), any(!vec3<bool>(arg_0, arg_0, arg_0)));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_2 {
    let var_0 = func_4(Struct_2(func_5(abs(select(vec4<i32>(-25996i, u_input.e.x, 11376i, 1i), vec4<i32>(45233i, arg_1.x, -32453i, arg_1.x), true)), Struct_2(global0[_wgslsmith_index_u32(48244u, 22u)], vec2<bool>(true, false)), all(func_1(true)), true), !func_4(func_4(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 22u)], vec2<bool>(true, true)), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)).b), vec4<bool>(any(!func_3(Struct_2(global0[_wgslsmith_index_u32(arg_0.x, 22u)], vec2<bool>(false, false)), Struct_2(Struct_1(-2147483647i, vec4<i32>(arg_1.x, arg_1.x, arg_1.x, u_input.e.x), arg_1.x), vec2<bool>(false, true))).xwz), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f + arg_2) + _wgslsmith_f_op_f32(abs(arg_2))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(867f)))), u_input.a.x >= abs(u_input.b)));
    let var_1 = abs(func_2(Struct_2(global0[_wgslsmith_index_u32(u_input.d.x << (0u % 32u), 22u)], vec2<bool>(false, var_0.b.x)), u_input.a << (vec4<u32>(4294967295u, u_input.a.x, u_input.b, u_input.b) % vec4<u32>(32u))) << (select(~75853u, _wgslsmith_div_u32(1u, 25601u), func_4(func_4(var_0, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), func_3(var_0, Struct_2(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], var_0.b))).b.x) % 32u));
    let var_2 = countOneBits(-22038i);
    let var_3 = ~(~(vec2<u32>(4294967295u, arg_0.x) << (reverseBits(~u_input.d.wz) % vec2<u32>(32u))));
    global0 = array<Struct_1, 22>();
    return Struct_2(var_0.a, func_1(!var_0.b.x).xy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    let var_0 = countOneBits(-firstTrailingBit(vec4<i32>(-16888i, u_input.e.x, 2147483647i, 32803i) >> (countOneBits(u_input.a) % vec4<u32>(32u))));
    var var_1 = func_6(select(_wgslsmith_mult_vec3_u32(~(~u_input.a.zyz), vec3<u32>(~1u, _wgslsmith_div_u32(u_input.a.x, 77799u), reverseBits(u_input.d.x))), vec3<u32>(firstTrailingBit(u_input.c), ~(u_input.a.x >> (4294967295u % 32u)), ~u_input.c), select(vec3<bool>(true, 10255u <= u_input.b, true), select(func_1(false), vec3<bool>(true, true, true), true), func_1(true))), vec2<i32>(abs(max(-2147483647i, var_0.x)), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))));
    global0 = array<Struct_1, 22>();
    let var_2 = func_5(abs(abs(func_4(Struct_2(Struct_1(-23893i, var_1.a.b, var_0.x), vec2<bool>(false, var_1.b.x)), vec4<bool>(var_1.b.x, false, true, var_1.b.x)).a.b)), func_6(u_input.a.zyx, vec2<i32>(_wgslsmith_clamp_i32(var_1.a.b.x & -61895i, -var_0.x, func_5(vec4<i32>(25732i, var_1.a.a, 57666i, -1i), Struct_2(Struct_1(var_0.x, var_1.a.b, -47330i), vec2<bool>(false, var_1.b.x)), false, var_1.b.x).b.x), var_1.a.b.x), _wgslsmith_f_op_f32(sign(1f))), var_1.b.x, false);
    let var_3 = vec2<bool>(!(!all(vec4<bool>(var_1.b.x, true, var_1.b.x, true))), false);
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~select(~vec3<u32>(var_4.x, u_input.d.x, 31505u), select(u_input.a.zwy, vec3<u32>(34653u, u_input.a.x, var_4.x), var_3.x), func_3(Struct_2(Struct_1(var_0.x, var_0, var_0.x), vec2<bool>(var_1.b.x, false)), Struct_2(Struct_1(var_1.a.a, var_0, 0i), var_3)).wwz), ~(~vec3<u32>(33249u, 19343u, 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 2595f, 1046f, -2967f), vec4<f32>(518f, -1795f, -1563f, 1000f))))))), ~u_input.a.yy);
}

