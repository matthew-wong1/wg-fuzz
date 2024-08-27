struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(36313i, vec3<bool>(false, false, true)), Struct_1(i32(-2147483648), vec3<bool>(false, true, false)), Struct_1(1i, vec3<bool>(false, true, false)));

var<private> global2: u32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = vec2<bool>(arg_0.b.x || (1i != ~u_input.a), !(!(_wgslsmith_f_op_f32(-arg_1.a) <= _wgslsmith_f_op_f32(round(arg_1.a)))));
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    var var_1 = Struct_3(_wgslsmith_dot_vec2_i32(~(global0[_wgslsmith_index_u32(4294967295u << (u_input.b % 32u), 12u)] | vec2<i32>(arg_0.a, u_input.a)), select(vec2<i32>(arg_0.a, -arg_0.a), min(vec2<i32>(u_input.a, arg_0.a), -vec2<i32>(u_input.a, 0i)), arg_0.b.yx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, 451f, arg_1.a, -358f) - vec4<f32>(arg_1.a, arg_1.a, 109f, 1561f))))));
    var var_2 = select(!(!select(select(vec4<bool>(true, true, var_0.x, arg_0.b.x), vec4<bool>(true, true, true, true), false), select(vec4<bool>(var_0.x, true, arg_0.b.x, var_0.x), vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, arg_0.b.x, true, arg_0.b.x)), any(vec2<bool>(arg_0.b.x, var_0.x)))), vec4<bool>(arg_0.b.x, all(vec3<bool>(var_0.x, true, true)), arg_0.b.x, (u_input.b >= abs(0u)) || var_0.x), !(!vec4<bool>(false, var_1.a == -2147483647i, false, true)));
    return select(min(vec3<u32>(~max(u_input.b, 66313u), 0u, ~u_input.b), abs(vec3<u32>(abs(u_input.b), 1u, 61828u))), vec3<u32>(~u_input.b, u_input.b, _wgslsmith_mod_u32(~u_input.b, 32501u)), vec3<bool>(0u <= u_input.b, true, true));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    let var_0 = ~_wgslsmith_mult_vec3_i32(select(vec3<i32>(_wgslsmith_mod_i32(u_input.a, 2147483647i), _wgslsmith_mult_i32(u_input.a, 0i), max(-35034i, u_input.a)), vec3<i32>(u_input.a, 1i, _wgslsmith_mult_i32(u_input.a, 25087i)), all(vec4<bool>(true, true, true, true))), select(reverseBits(~vec3<i32>(u_input.a, u_input.a, u_input.a)), -select(vec3<i32>(u_input.a, u_input.a, -12174i), vec3<i32>(-11390i, 0i, -33142i), false), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(-6989i, 1i), ~firstLeadingBit(var_0.x), 2147483647i);
    var var_2 = 1u;
    var_1 = -var_0 << (min(~vec3<u32>(2620u << (arg_1.x % 32u), 43377u, func_3(global1[_wgslsmith_index_u32(0u, 3u)], arg_0).x), vec3<u32>(arg_1.x, 4294967295u, u_input.b)) % vec3<u32>(32u));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(-1537f - -192f))))))), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a + -896f))))));
    return ~min(u_input.b, ~(~(~u_input.b)));
}

fn func_2() -> Struct_2 {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-919f))))), vec4<u32>(~_wgslsmith_clamp_u32(u_input.b, u_input.b, 61822u), u_input.b, ~(~4100u), ~(~u_input.b)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(func_3(Struct_1(u_input.a, vec3<bool>(false, true, false)), Struct_2(-1000f)), min(vec3<u32>(33169u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 51155u))), 13720u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))), u_input.b));
    let var_1 = _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(max(u_input.a, u_input.a), -2147483647i, reverseBits(-44242i)), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(1i, u_input.a, -1i)))), firstLeadingBit(-min(-vec3<i32>(-47425i, u_input.a, u_input.a), vec3<i32>(u_input.a, 44074i, u_input.a))));
    let var_2 = -(~reverseBits(vec2<i32>(u_input.a, 0i) ^ firstLeadingBit(vec2<i32>(u_input.a, u_input.a))));
    let var_3 = any(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(false, all(vec2<bool>(true, false))), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), select(vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(true, true))), false), !vec2<bool>(true, select(false, false, true))));
    global2 = 0u;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1012f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_3 {
    global1 = array<Struct_1, 3>();
    var var_0 = arg_2;
    var var_1 = global1[_wgslsmith_index_u32(arg_1, 3u)];
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-arg_2.a));
    var var_3 = func_2();
    return Struct_3(2147483647i, arg_0);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = vec2<u32>(~u_input.b, min(u_input.b, arg_2));
    global2 = ~_wgslsmith_mod_u32(max(select(var_0.x, 21341u, true), var_0.x), 1u | arg_2);
    global2 = var_0.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-arg_0.b.x))));
    let var_2 = Struct_1(arg_0.a, !select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true), any(vec3<bool>(true, true, false))));
    return select(false, var_2.b.x, (35630u << (countOneBits(24871u) % 32u)) <= arg_2);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_2;
    let var_1 = arg_1.b.zz;
    let var_2 = Struct_2(arg_1.b.x);
    let var_3 = func_6(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1378f, arg_1.b.x, var_1.x) + vec4<f32>(_wgslsmith_f_op_f32(select(983f, var_1.x, false)), 1325f, var_2.a, var_1.x)), u_input.b, func_2(), Struct_1(_wgslsmith_sub_i32(u_input.a, -37990i), !vec3<bool>(false, arg_2.b.x, var_0.b.x))), var_2, u_input.b);
    var var_4 = func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b.x, var_1.x, false)) * var_1.x), 514f, -426f, 918f), firstTrailingBit(u_input.b), func_2(), Struct_1(-1i, vec3<bool>(var_3, true, true))), var_2, _wgslsmith_sub_u32(124648u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u) | vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(48182u, 7406u)), reverseBits(firstTrailingBit(vec2<u32>(83499u, u_input.b))))));
    return func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(602f, 624f, 687f, 850f), arg_1.b)) - _wgslsmith_f_op_vec4_f32(trunc(arg_1.b))))), ~44033u, var_2, var_0);
}

fn func_7(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = -11219i != _wgslsmith_add_i32(-_wgslsmith_div_i32(23327i, _wgslsmith_add_i32(arg_0.a, u_input.a)), u_input.a);
    global2 = u_input.b;
    let var_1 = global1[_wgslsmith_index_u32(func_4(func_2(), select(~vec4<u32>(u_input.b, ~u_input.b, u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b)), vec4<u32>(20128u, _wgslsmith_clamp_u32(u_input.b, 0u, u_input.b) << (func_3(Struct_1(1i, vec3<bool>(arg_3, arg_1, false)), Struct_2(arg_0.b.x)).x % 32u), u_input.b, 4294967295u & u_input.b), true)), 3u)];
    let var_2 = Struct_3(select(_wgslsmith_div_i32(-2147483647i, arg_2.x) & -arg_2.x, _wgslsmith_mod_i32(19475i, arg_2.x & arg_0.a), true && !var_1.b.x) & arg_2.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x) - vec4<f32>(-2225f, arg_0.b.x, -172f, -620f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b)))))));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = reverseBits(u_input.b);
    var var_0 = vec2<bool>(any(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), !select(false, true, false), all(vec4<bool>(true, false, false, true)))), func_7(func_1(~vec4<i32>(u_input.a, u_input.a, 0i, u_input.a) | (vec4<i32>(u_input.a, u_input.a, u_input.a, 23934i) << (vec4<u32>(57557u, 20734u, 0u, 4294967295u) % vec4<u32>(32u))), Struct_3(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(943f, -224f, 331f, -1253f))), global1[_wgslsmith_index_u32(18263u, 3u)]), false, vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -11029i), vec3<i32>(u_input.a, u_input.a, -1i)), u_input.a, 1i, u_input.a), all(vec4<bool>(all(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, false, false, false)), false, true))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(-926f)));
    global0 = array<vec2<i32>, 12>();
    var_0 = vec2<bool>(func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(var_1.a - 2087f), 1346f, -602f, _wgslsmith_div_f32(376f, 1734f)), ~max(0u, u_input.b), func_2(), global1[_wgslsmith_index_u32(0u, 3u)]), func_2(), ~(u_input.b ^ ~u_input.b)), true);
    var var_2 = select(max(vec3<i32>(func_1(-vec4<i32>(-15622i, u_input.a, 22416i, u_input.a), Struct_3(-813i, vec4<f32>(var_1.a, 1775f, var_1.a, -1000f)), Struct_1(u_input.a, vec3<bool>(false, var_0.x, true))).a, u_input.a, -(1i | u_input.a)), select(select(vec3<i32>(u_input.a, -52356i, u_input.a) | vec3<i32>(-24008i, -30220i, 71690i), -vec3<i32>(u_input.a, u_input.a, 55033i), !vec3<bool>(var_0.x, var_0.x, var_0.x)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(49940i, 1i, u_input.a), false), _wgslsmith_sub_vec3_i32(vec3<i32>(-41637i, u_input.a, -2147483647i), vec3<i32>(-2374i, -2147483647i, u_input.a)), select(vec3<i32>(u_input.a, u_input.a, 27590i), vec3<i32>(62029i, 2147483647i, 51318i), false)), any(select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x))))), ~(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 29642i, 0i), vec3<i32>(u_input.a, u_input.a, 12851i), vec3<i32>(-2147483647i, u_input.a, u_input.a)), vec3<i32>(-18841i, -69377i, u_input.a)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 41288u), vec3<u32>(1360u, u_input.b, 4294967295u))) % vec3<u32>(32u))), false);
    var_0 = select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x | !var_0.x, (var_0.x | true) | true), vec2<bool>(var_0.x, var_0.x | true));
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -1284f)) - func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 480f, var_1.a, -3467f) - vec4<f32>(699f, -1637f, -267f, 337f)), _wgslsmith_mod_u32(11917u, u_input.b), Struct_2(var_1.a), global1[_wgslsmith_index_u32(u_input.b, 3u)]).b.x) + 573f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, -459f))), func_1(vec4<i32>(-1i, var_2.x, u_input.a, 4389i) ^ vec4<i32>(-2147483647i, var_2.x, var_2.x, -2147483647i), Struct_3(2147483647i, vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)), global1[_wgslsmith_index_u32(1u, 3u)]).b.x, var_1.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1359f, -1044f, var_1.a))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, 792f) - vec3<f32>(-196f, var_1.a, -382f)))))));
}

