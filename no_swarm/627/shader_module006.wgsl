struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    return -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.zw, vec2<i32>(0i, arg_2)), vec2<i32>(countOneBits(-42973i), -2147483647i)) >> (~min(1u, 21483u) % 32u);
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    var var_0 = global0.a;
    var_0 = global0.a;
    let var_1 = Struct_3(!(!(!(!vec2<bool>(true, global0.a.d)))), Struct_1(firstTrailingBit(func_3(~vec4<i32>(global0.a.a, -14946i, global0.a.a, var_0.a), global0.a, global0.a.c)), _wgslsmith_f_op_f32(-arg_0.x), ~(-1i), true));
    var var_2 = vec2<bool>(all(var_1.a), true);
    var_2 = !select(var_1.a, vec2<bool>(false, var_1.a.x), any(select(!vec3<bool>(var_0.d, var_2.x, true), vec3<bool>(false, true, false), !vec3<bool>(var_1.b.d, true, var_0.d))));
    return -15052i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = false;
    global0 = Struct_2(arg_2, abs(30556u));
    global0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(1i, global0.a.c, arg_0.x, arg_2.c), vec4<i32>(-25001i, -2147483647i, 23701i, global0.a.a)), vec4<i32>(global0.a.a, global0.a.a, arg_2.c, arg_2.c)), -min(vec4<i32>(-39400i, -4328i, arg_2.c, 2147483647i), vec4<i32>(2147483647i, arg_2.a, 27422i, 1i))), global0.a.b, global0.a.c, -2147483647i < func_3(abs(vec4<i32>(0i, -38322i, global0.a.a, 46667i)), Struct_1(arg_2.c, -164f, -2147483647i, false), -46034i ^ global0.a.a)), ~arg_1.x | min(_wgslsmith_mod_u32(arg_1.x, ~39019u), max(~arg_1.x, 7226u >> (1u % 32u))));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(select(max(~arg_1, ~vec4<u32>(4294967295u, u_input.a.x, arg_1.x, global0.b)), ~arg_1, select(!vec4<bool>(global0.a.d, var_0, var_0, true), select(vec4<bool>(true, global0.a.d, global0.a.d, var_0), vec4<bool>(false, arg_2.d, arg_2.d, arg_2.d), vec4<bool>(true, var_0, arg_2.d, true)), !arg_2.d)), _wgslsmith_clamp_vec4_u32((arg_1 | arg_1) << (vec4<u32>(global0.b, arg_1.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)), ~countOneBits(arg_1), ~select(arg_1, vec4<u32>(4294967295u, 33756u, global0.b, 1u), global0.a.d)), _wgslsmith_clamp_vec4_u32(~select(arg_1, vec4<u32>(0u, arg_1.x, 32250u, 16453u), false), _wgslsmith_sub_vec4_u32(arg_1, abs(arg_1)), arg_1));
    global0 = Struct_2(arg_2, _wgslsmith_dot_vec2_u32(firstLeadingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(46875u, 8359u), vec2<u32>(4294967295u, 4294967295u), u_input.a)), ~(~(~vec2<u32>(global0.b, 4294967295u)))));
    return Struct_3(select(!vec2<bool>(false, all(vec4<bool>(var_0, var_0, var_0, var_0))), !(!select(vec2<bool>(true, false), vec2<bool>(false, var_0), vec2<bool>(false, true))), false), global0.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    var var_0 = arg_1;
    let var_1 = func_4(vec3<i32>(-max(i32(-1i) * -50144i, ~global0.a.a), func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.b, arg_0.b, var_0.b.b, 1175f)))), global0.a.c), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global0.b, 56662u, u_input.a.x, global0.b) << (vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), ~max(vec4<u32>(0u, u_input.a.x, 13996u, global0.b), vec4<u32>(58792u, 9667u, u_input.a.x, u_input.a.x))) >> (vec4<u32>(4294967295u, ~global0.b, _wgslsmith_add_u32(global0.b, reverseBits(u_input.a.x)), global0.b) % vec4<u32>(32u)), arg_2);
    global0 = Struct_2(arg_1.b, ~_wgslsmith_mod_u32(0u, global0.b));
    let var_2 = vec2<bool>(!(_wgslsmith_f_op_f32(arg_0.b - arg_2.b) >= arg_2.b) || true, true);
    var_0 = var_1;
    return var_2.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>) -> bool {
    global0 = Struct_2(func_4(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(global0.a.a, 2147483647i, -1i)), -vec3<i32>(-2147483647i, -1i, global0.a.c)) | vec3<i32>(-10129i, global0.a.a, 67945i), vec4<u32>(~select(u_input.a.x, 41679u, arg_1.x), ~9876u, global0.b & global0.b, ~(37311u ^ u_input.a.x)), global0.a).b, ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, 4294967295u, 12506u)), global0.b));
    let var_0 = !any(select(!vec2<bool>(arg_1.x, false), arg_0.xz, global0.a.d));
    global0 = Struct_2(global0.a, u_input.a.x);
    global0 = Struct_2(func_4(_wgslsmith_add_vec3_i32(~vec3<i32>(-42158i, 54261i, global0.a.c), firstTrailingBit(vec3<i32>(global0.a.a, -32977i, 18844i) | vec3<i32>(global0.a.c, 12870i, -2147483647i))), min(vec4<u32>(global0.b, global0.b, ~global0.b, 28503u), _wgslsmith_mult_vec4_u32(~vec4<u32>(global0.b, 4294967295u, global0.b, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u) & vec4<u32>(4294967295u, 8220u, u_input.a.x, 44795u))), global0.a).b, _wgslsmith_mod_u32(0u, ~global0.b));
    global0 = Struct_2(func_4(~vec3<i32>(_wgslsmith_mod_i32(18665i, global0.a.c), 2147483647i, _wgslsmith_add_i32(-2147483647i, global0.a.a)), ~vec4<u32>(global0.b, _wgslsmith_sub_u32(u_input.a.x, 34165u), 1u, 49214u), global0.a).b, ~39725u);
    return any(select(vec4<bool>(firstLeadingBit(4294967295u) < (global0.b << (u_input.a.x % 32u)), (global0.b >= global0.b) && global0.a.d, (var_0 | arg_1.x) || (global0.a.c != 16282i), global0.a.c >= 0i), vec4<bool>(false, false, false, true), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global0.a.d, false, false, func_5(vec3<bool>(global0.a.d, !func_1(global0.a, Struct_3(vec2<bool>(false, true), global0.a), global0.a), global0.a.a < _wgslsmith_add_i32(global0.a.a, 60035i)), !select(!vec4<bool>(false, global0.a.d, global0.a.d, global0.a.d), !vec4<bool>(false, global0.a.d, global0.a.d, true), vec4<bool>(false, global0.a.d, false, global0.a.d))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b) * 102f)));
    var var_2 = Struct_1(-17554i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1935f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(-var_1))), global0.a.b, true)), global0.a.a, var_0.x);
    let var_3 = func_4(_wgslsmith_div_vec3_i32(-abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -54392i, global0.a.c), vec3<i32>(50076i, -1i, var_2.a))), _wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.c, var_2.a, 24634i), vec3<i32>(-4735i, var_2.c, var_2.a))), vec3<i32>(global0.a.c, _wgslsmith_mult_i32(var_2.a, -2147483647i), 29243i))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(global0.b, global0.b, global0.b)), 66447u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~u_input.a.x), max(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(global0.b, u_input.a.x, global0.b, 381u))), vec4<u32>(reverseBits(290u), 4294967295u, abs(select(11992u, 31134u, var_2.d)), global0.b)), func_4(_wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(-1i, 26802i, 9656i)), vec3<i32>(func_3(vec4<i32>(var_2.a, var_2.c, -1i, -5111i), global0.a, 0i), _wgslsmith_clamp_i32(var_2.c, global0.a.a, 2147483647i), -1i), -vec3<i32>(global0.a.a, var_2.a, 0i)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.b, u_input.a.x, 65178u, global0.b), ~vec4<u32>(global0.b, 0u, global0.b, 86034u)) << (~(~vec4<u32>(u_input.a.x, global0.b, 31155u, global0.b)) % vec4<u32>(32u)), func_4(~vec3<i32>(var_2.a, 2147483647i, global0.a.c), ~vec4<u32>(u_input.a.x, global0.b, u_input.a.x, 5317u), global0.a).b).b);
    var_2 = var_3.b;
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(min(_wgslsmith_div_i32(var_2.a, firstLeadingBit(var_3.b.a)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-675f, 1126f, var_1, var_3.b.b)))), -26537i), ~countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.x, 12372u, var_4.x, u_input.a.x), vec4<u32>(u_input.a.x, 18834u, var_4.x, global0.b))), abs(_wgslsmith_clamp_u32(global0.b, firstLeadingBit(var_4.x), ~global0.b | ~1u)));
}

