struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool;

var<private> global2: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_3(arg_1, vec3<bool>(!all(select(vec4<bool>(true, true, true, arg_1.c.x), arg_1.c, vec4<bool>(arg_1.c.x, arg_1.c.x, true, arg_0.x))), all(vec4<bool>(arg_0.x || true, arg_0.x, any(vec4<bool>(true, arg_1.c.x, arg_0.x, arg_0.x)), false)), arg_1.c.x), arg_1, Struct_2(Struct_1(~(~arg_1.a), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, arg_1.d.x), 2147483647i), !arg_1.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), max(arg_1.d, vec2<i32>(arg_1.b, -1i)), -vec2<i32>(-1i, arg_1.b))), !(1i < -arg_1.b), vec3<bool>(all(arg_1.c.ww), false, true)));
    global1 = arg_1.c.x;
    var_0 = Struct_3(Struct_1(~vec3<u32>(~var_0.d.a.a.x, global0.x, _wgslsmith_add_u32(global0.x, 0u)), arg_1.b << (~0u % 32u), !(!var_0.a.c), _wgslsmith_mod_vec2_i32(var_0.a.d, vec2<i32>(arg_1.b, 1i))), select(select(vec3<bool>(true, arg_1.a.x < global0.x, true), vec3<bool>(var_0.d.a.c.x && arg_1.c.x, any(var_0.b), arg_1.c.x), vec3<bool>(arg_1.a.x < global0.x, false, true)), vec3<bool>(all(!vec3<bool>(arg_0.x, false, arg_1.c.x)), false, true), (_wgslsmith_clamp_u32(25953u, 1u, global0.x) == 4294967295u) & true), arg_1, var_0.d);
    var var_1 = Struct_3(Struct_1(abs(abs(reverseBits(vec3<u32>(0u, global0.x, global0.x)))), -13058i, vec4<bool>(any(vec3<bool>(arg_0.x, arg_1.c.x, false)) || (global0.x >= global0.x), ~arg_1.b < arg_1.b, all(vec2<bool>(true, false)), true), var_0.d.a.d), select(vec3<bool>(select(var_0.a.c.x, true, false || arg_1.c.x), !var_0.b.x, true || (var_0.c.a.x == global0.x)), select(!select(vec3<bool>(arg_0.x, arg_1.c.x, arg_1.c.x), arg_1.c.ywx, true), arg_1.c.yzy, select(var_0.a.c.wxz, arg_0, arg_0)), var_0.a.c.xyz), Struct_1(arg_1.a, u_input.a, !vec4<bool>(!arg_1.c.x, arg_1.c.x, any(vec2<bool>(var_0.d.c.x, true)), true || arg_0.x), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-25794i, arg_1.d.x, 25211i), -1i), ~var_0.c.d)), var_0.d);
    var_0 = Struct_3(arg_1, arg_0, var_1.d.a, Struct_2(arg_1, true, !vec3<bool>(arg_1.c.x & false, arg_0.x != true, true)));
    return global0.x;
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = ~(-_wgslsmith_add_vec2_i32(vec2<i32>(~9189i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -2429i), ~vec2<i32>(u_input.a, -31635i))));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(0u, arg_0, arg_0))), vec3<u32>(global0.x, 4294967295u, func_3(vec3<bool>(true, true, false), Struct_1(vec3<u32>(1u, 0u, 77309u), u_input.a, vec4<bool>(true, true, true, true), vec2<i32>(2147483647i, u_input.a))))), 1u);
    global2 = false | (any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) != true);
    return Struct_4(vec4<f32>(1213f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-847f - _wgslsmith_f_op_f32(step(1537f, 148f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1253f))), 764f, _wgslsmith_div_f32(-1584f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-2150f)))))), select(vec3<bool>(~4294967295u != ~arg_0, all(vec4<bool>(true, true, true, true)), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), true));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec2<u32>) -> bool {
    var var_0 = u_input.a;
    let var_1 = Struct_5(Struct_1(vec3<u32>(31619u, global0.x, global0.x), u_input.a, !vec4<bool>(select(false, true, arg_1), all(vec4<bool>(true, true, arg_0.b.x, false)), false, arg_1), ~(-vec2<i32>(u_input.a, 0i)) | -_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(0i, 57975i))), Struct_1(~(~abs(vec3<u32>(global0.x, 4294967295u, global0.x))), u_input.a, select(!(!vec4<bool>(false, arg_1, true, arg_1)), !vec4<bool>(false, true, arg_1, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_1, arg_1)), vec2<i32>(u_input.a, ~u_input.a)));
    var var_2 = reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, global0.x, 0u, ~global0.x), vec4<u32>(35755u, 0u << (arg_2.x % 32u), global0.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a.x, 16419u, 14862u, 0u), vec4<u32>(43984u, 30629u, arg_2.x, 14988u)), ~var_1.a.a.x))));
    var_0 = abs(reverseBits(-u_input.a) & _wgslsmith_add_i32(-87257i, i32(-1i) * -49164i));
    var var_3 = select(!(!var_1.b.c.wy), func_2(firstTrailingBit(~abs(3123u))).b.xx, true);
    return !func_2(global0.x).b.x;
}

fn func_1() -> vec2<u32> {
    global1 = true;
    global2 = func_4(func_2(global0.x & 4294967295u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), ~vec2<u32>(firstLeadingBit(min(1u, global0.x)), _wgslsmith_mult_u32(global0.x, global0.x) >> (firstLeadingBit(global0.x) % 32u)));
    global2 = true;
    let var_0 = Struct_5(Struct_1(reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.x, global0.x, 57303u), ~vec3<u32>(45296u, global0.x, 35683u))), u_input.a, select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(any(vec3<bool>(false, false, false)), true, true, true), vec4<bool>(true, true, true, true)), vec2<i32>(~6620i, select(u_input.a, -35814i, true))), Struct_1(vec3<u32>(~_wgslsmith_sub_u32(global0.x, global0.x), global0.x & _wgslsmith_dot_vec4_u32(vec4<u32>(42665u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x)), 6986u), u_input.a, vec4<bool>(true, true, true, true), vec2<i32>(_wgslsmith_div_i32(~u_input.a, abs(u_input.a)), 2147483647i)));
    let var_1 = Struct_3(Struct_1(~(vec3<u32>(23078u, var_0.b.a.x, global0.x) & _wgslsmith_mod_vec3_u32(var_0.b.a, vec3<u32>(global0.x, 1u, 8492u))), 53930i, var_0.b.c, abs(countOneBits(firstTrailingBit(var_0.b.d)))), !(!select(var_0.b.c.zzw, vec3<bool>(true, true, true), func_2(13047u).b)), var_0.a, Struct_2(var_0.b, func_4(Struct_4(vec4<f32>(-1036f, -1000f, 1076f, 112f), vec3<bool>(false, false, true)), true, ~vec2<u32>(global0.x, var_0.b.a.x)) && false, vec3<bool>(any(vec4<bool>(true, false, var_0.b.c.x, var_0.b.c.x)), (var_0.a.c.x || true) & true, true)));
    return ~_wgslsmith_add_vec2_u32(min(var_1.a.a.zz, global0.xz) ^ firstTrailingBit(vec2<u32>(var_1.c.a.x, 16034u)), ~vec2<u32>(4294967295u, global0.x)) | vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b.a.x, 0u, 15462u, var_0.a.a.x), ~vec4<u32>(var_1.d.a.a.x, 4294967295u, 8425u, global0.x)), max(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_1.a.a.x, 71606u, var_1.a.a.x), vec4<u32>(6222u, global0.x, 28898u, 4294967295u)) & ~var_0.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_5(Struct_1(~(~(vec3<u32>(0u, 1u, 10973u) >> (vec3<u32>(1u, global0.x, 1u) % vec3<u32>(32u)))), firstTrailingBit(~17329i), !vec4<bool>(true, true, false, all(vec3<bool>(false, true, false))), -((vec2<i32>(u_input.a, 24496i) << (global0.yy % vec2<u32>(32u))) >> (func_1() % vec2<u32>(32u)))), Struct_1(~abs(abs(vec3<u32>(global0.x, global0.x, 83226u))), u_input.a, vec4<bool>(true, true, true, true), ~_wgslsmith_add_vec2_i32(~vec2<i32>(-51134i, u_input.a), ~vec2<i32>(12578i, u_input.a))));
    let var_2 = var_1.a.c;
    var_0 = var_2.x;
    let var_3 = func_2(var_1.a.a.x).b;
    let var_4 = max(1i, ((abs(-1789i) >> (var_1.a.a.x % 32u)) | _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-54422i, 35918i), var_1.a.d), _wgslsmith_mod_i32(u_input.a, 1i))) ^ 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-601f - 1358f))), 1324f)), 1u, ~(-_wgslsmith_div_vec2_i32(-var_1.b.d, var_1.b.d)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -520f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-751f - 922f)) + -2025f)));
}

