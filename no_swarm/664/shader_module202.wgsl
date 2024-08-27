struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = vec4<i32>(arg_0.d, abs(~(~arg_0.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-u_input.a.x), -firstLeadingBit(arg_0.a.x)), u_input.a.xz), ~select(_wgslsmith_div_i32(arg_0.a.x, countOneBits(arg_0.d)), abs(u_input.a.x), arg_0.c.x));
    var_0 = select(-(vec4<i32>(firstTrailingBit(arg_0.d), -38183i, u_input.a.x, u_input.a.x) ^ max(select(vec4<i32>(var_0.x, 40837i, -2147483647i, 1i), vec4<i32>(2147483647i, var_0.x, -1i, 2147483647i), arg_0.c.x), vec4<i32>(-2147483647i, -45239i, 2147483647i, 2147483647i))), _wgslsmith_sub_vec4_i32(select(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, -23682i, arg_0.d), vec4<i32>(var_0.x, 1i, 32005i, arg_0.a.x)), vec4<i32>(arg_0.d, -1i, 11599i, u_input.a.x)), vec4<i32>(i32(-1i) * -2147483647i, u_input.a.x, u_input.a.x & 1i, 19967i), true), firstLeadingBit(max(vec4<i32>(arg_0.a.x, var_0.x, -2147483647i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d, 109664i, var_0.x, -1i), vec4<i32>(var_0.x, 34717i, arg_0.d, 39510i))))), !vec4<bool>(false, true, global0.x, !arg_0.e));
    let var_1 = ~min(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 0u), abs(0u)), 27289u, ~reverseBits(6293u)), ~vec3<u32>(1u, 1u, 1u));
    global0 = arg_0.c.yx;
    global0 = select(vec2<bool>(true, true), arg_0.c.xz, arg_0.c.xy);
    return arg_0.c;
}

fn func_2() -> vec2<bool> {
    var var_0 = -47364i;
    var var_1 = func_3(Struct_1(u_input.a.yy, global0.x, vec3<bool>(_wgslsmith_clamp_u32(27604u, 1u, 41724u) < select(3601u, 4294967295u, global0.x), true, false), _wgslsmith_mult_i32(0i, -u_input.a.x), false));
    var_1 = !select(vec3<bool>(true, var_1.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) <= 1i), vec3<bool>(true, true, var_1.x), !(!select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, false, false), vec3<bool>(true, var_1.x, global0.x))));
    global0 = !var_1.xz;
    var var_2 = Struct_1(min(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(5235i, u_input.a.x), abs(u_input.a.x))), min(u_input.a.yz, ~vec2<i32>(u_input.a.x, u_input.a.x))), any(!(!vec3<bool>(true, false, var_1.x))) | !any(func_3(Struct_1(vec2<i32>(2147483647i, -128i), true, vec3<bool>(true, var_1.x, var_1.x), -2147483647i, global0.x)).yx), select(vec3<bool>(true, true, true), !func_3(Struct_1(u_input.a.zx, global0.x, vec3<bool>(false, false, global0.x), u_input.a.x, var_1.x)), vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, var_1.x, global0.x), vec3<bool>(global0.x, true, true))), any(!vec4<bool>(true, global0.x, false, global0.x)), all(select(var_1.yy, var_1.zz, var_1.x)))), u_input.a.x, true);
    return !var_1.yz;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)));
    let var_2 = !vec3<bool>(true, global0.x, false);
    global0 = var_2.xz;
    var var_3 = Struct_3(Struct_1(~(-select(arg_2.a, u_input.a.zy, true)), !(var_1 < -891f) | arg_1, arg_2.c, arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))) <= -1063f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -569f, -2035f, 1577f) - vec4<f32>(var_1, var_1, -836f, 3398f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -255f, -890f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-558f + var_1))), _wgslsmith_div_f32(-1039f, var_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -899f)))), arg_2.c.xx, Struct_1(_wgslsmith_sub_vec2_i32(abs(arg_2.a), ~(vec2<i32>(-62891i, u_input.a.x) ^ arg_2.a)), false, select(!select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, true, false), arg_2.c), var_2, arg_2.c), var_0, arg_2.e));
    return var_2.zz;
}

fn func_1(arg_0: Struct_3) -> vec2<u32> {
    global0 = func_4(abs(-69014i), all(select(select(vec2<bool>(arg_0.c.x, global0.x), func_2(), vec2<bool>(arg_0.a.b, global0.x)), arg_0.a.c.yz, arg_0.c)), Struct_1(u_input.a.xz, false, select(select(!arg_0.a.c, vec3<bool>(true, arg_0.c.x, arg_0.d.e), arg_0.d.c), arg_0.d.c, vec3<bool>(true, true, arg_0.a.b || arg_0.d.e)), _wgslsmith_mult_i32(u_input.a.x, arg_0.d.d), global0.x));
    var var_0 = !(arg_0.b.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1143f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, 548f)))));
    var var_1 = vec3<f32>(194f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)))) + arg_0.b.x));
    let var_2 = global0.x;
    let var_3 = Struct_3(arg_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, 1634f, var_1.x, arg_0.b.x))), arg_0.b), !(!vec2<bool>(global0.x, global0.x)), arg_0.a);
    return ~vec2<u32>(_wgslsmith_mult_u32(countOneBits(0u << (0u % 32u)), ~4294967295u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 22026u, 1u), vec3<u32>(0u, 104389u, 4294967295u)) % 32u)), 59658u);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> StorageBuffer {
    global0 = func_2();
    global0 = !vec2<bool>(true, ~(~0u) < _wgslsmith_sub_u32(arg_0.x, arg_0.x >> (102926u % 32u)));
    let var_0 = u_input.a.yy;
    global0 = !arg_1.d.c.xx;
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_add_u32(arg_0.x, 0u), _wgslsmith_div_u32(arg_0.x, arg_0.x))), vec2<u32>(arg_0.x, abs(arg_0.x))), arg_0);
    return StorageBuffer(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, !all(vec2<bool>(global0.x, !global0.x)), false);
    global0 = !(!vec2<bool>(!(!global0.x), true));
    var_0 = all(vec4<bool>(!all(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(839f * 155f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(1334f - -502f), _wgslsmith_f_op_f32(ceil(184f))), true, !(!(global0.x | true))));
    var_0 = global0.x;
    var var_1 = false;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, _wgslsmith_div_u32(1u, 1u)), ~vec2<u32>(1u, 1u), firstLeadingBit(~func_1(Struct_3(Struct_1(vec2<i32>(58405i, -2147483647i), global0.x, vec3<bool>(false, false, false), u_input.a.x, true), vec4<f32>(744f, -1450f, 181f, 689f), vec2<bool>(global0.x, true), Struct_1(u_input.a.yz, global0.x, vec3<bool>(true, global0.x, global0.x), u_input.a.x, global0.x))))), Struct_3(Struct_1(~u_input.a.xz, !(!global0.x), vec3<bool>(global0.x, any(vec3<bool>(global0.x, false, global0.x)), global0.x), u_input.a.x, false), vec4<f32>(1014f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f - 767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_4(countOneBits(~32788i), any(vec2<bool>(true, false)), Struct_1(firstTrailingBit(u_input.a.zy), true, vec3<bool>(global0.x, global0.x, true), _wgslsmith_mult_i32(u_input.a.x, -25830i), !global0.x)), Struct_1(vec2<i32>(u_input.a.x, 1i), !global0.x, select(!vec3<bool>(true, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), global0.x), select(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x, false), true)), Struct_1(u_input.a.yx | ~(~u_input.a.zz), false, select(!(!vec3<bool>(true, true, global0.x)), vec3<bool>(global0.x, true | global0.x, global0.x), vec3<bool>(true, any(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x || global0.x)), abs(12427i), global0.x));
}

