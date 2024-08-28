struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(115784u, 0u);

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-9593i, vec4<bool>(false, true, false, true), 51023u, vec4<f32>(-583f, 1000f, -1893f, 821f), vec2<bool>(true, true)), Struct_1(42613i, vec4<bool>(true, true, false, true), 4294967295u, vec4<f32>(-356f, 578f, -304f, -800f), vec2<bool>(false, false)), Struct_1(2147483647i, vec4<bool>(true, true, false, true), 2236u, vec4<f32>(-568f, 544f, -662f, -879f), vec2<bool>(false, true)), Struct_1(0i, vec4<bool>(false, false, true, false), 31901u, vec4<f32>(-134f, 1000f, -576f, 941f), vec2<bool>(false, false)), Struct_1(0i, vec4<bool>(false, false, true, false), 4294967295u, vec4<f32>(-131f, -1203f, 433f, -1000f), vec2<bool>(true, false)), Struct_1(0i, vec4<bool>(false, true, false, false), 1u, vec4<f32>(-1831f, -981f, -1331f, -453f), vec2<bool>(false, true)), Struct_1(-1i, vec4<bool>(false, true, false, true), 37955u, vec4<f32>(-449f, 2670f, 2520f, 1011f), vec2<bool>(true, false)), Struct_1(1i, vec4<bool>(true, true, false, true), 5119u, vec4<f32>(785f, 558f, -1886f, 242f), vec2<bool>(true, false)), Struct_1(-12936i, vec4<bool>(true, false, true, false), 56559u, vec4<f32>(376f, 353f, -1674f, -420f), vec2<bool>(true, true)), Struct_1(-35820i, vec4<bool>(true, false, true, true), 34554u, vec4<f32>(-930f, -1550f, 365f, 1382f), vec2<bool>(true, false)), Struct_1(1i, vec4<bool>(true, true, false, false), 1u, vec4<f32>(-579f, 233f, -1187f, 1008f), vec2<bool>(false, false)), Struct_1(1i, vec4<bool>(false, false, false, false), 32503u, vec4<f32>(-511f, 283f, -1665f, -485f), vec2<bool>(true, false)), Struct_1(1i, vec4<bool>(true, true, false, true), 7112u, vec4<f32>(655f, 192f, -1397f, -316f), vec2<bool>(true, true)), Struct_1(-1i, vec4<bool>(true, true, true, false), 0u, vec4<f32>(677f, -1322f, -1000f, -315f), vec2<bool>(false, false)), Struct_1(-15285i, vec4<bool>(false, true, false, true), 36849u, vec4<f32>(-1000f, -956f, -2133f, 2294f), vec2<bool>(true, false)), Struct_1(-1i, vec4<bool>(true, true, true, false), 4294967295u, vec4<f32>(130f, -1496f, 1279f, 1000f), vec2<bool>(true, true)), Struct_1(0i, vec4<bool>(true, true, false, true), 33540u, vec4<f32>(555f, 128f, -229f, 103f), vec2<bool>(true, false)), Struct_1(1i, vec4<bool>(false, false, true, true), 4294967295u, vec4<f32>(308f, -826f, 413f, 1878f), vec2<bool>(true, true)), Struct_1(2147483647i, vec4<bool>(false, false, false, false), 0u, vec4<f32>(1543f, -1469f, -1080f, 327f), vec2<bool>(false, true)), Struct_1(19986i, vec4<bool>(false, true, false, false), 49921u, vec4<f32>(-832f, -1487f, 1000f, -506f), vec2<bool>(false, true)), Struct_1(28245i, vec4<bool>(false, true, true, false), 3044u, vec4<f32>(659f, 653f, 403f, -1093f), vec2<bool>(true, false)), Struct_1(-10622i, vec4<bool>(false, false, true, true), 2294u, vec4<f32>(-701f, -584f, 1257f, -1043f), vec2<bool>(true, true)), Struct_1(2147483647i, vec4<bool>(true, false, true, true), 0u, vec4<f32>(-1000f, -2044f, -1473f, 358f), vec2<bool>(false, true)));

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 12>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = !global2.b.x;
    var var_1 = arg_3.d.zx;
    var var_2 = arg_0;
    let var_3 = !arg_2.b;
    let var_4 = 0i;
    return _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(arg_0.a << (arg_0.c % 32u), -u_input.a) ^ -1i, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-10041i, arg_0.a))), _wgslsmith_add_vec2_i32(max(vec2<i32>(-1i, -1i), vec2<i32>(-1i, -20722i)), -vec2<i32>(0i, 30524i))), u_input.a ^ -_wgslsmith_clamp_i32(0i, 28904i, arg_2.a)), var_2.a >> (global2.c % 32u));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(~11460i, vec4<bool>(185f >= arg_2, global2.e.x, global2.e.x, !(all(vec4<bool>(global2.b.x, arg_3.b.x, true, global2.e.x)) & all(global2.e))), arg_0 & _wgslsmith_mod_u32(global2.c >> (firstLeadingBit(arg_0) % 32u), 0u), global2.d, select(!vec2<bool>(true, all(arg_3.b.wy)), select(!(!vec2<bool>(global2.b.x, true)), !select(arg_3.e, arg_3.b.xx, false), !(!vec2<bool>(global2.e.x, false))), vec2<bool>(true, !all(vec2<bool>(true, arg_3.b.x)))));
    var var_1 = 1u;
    var_1 = _wgslsmith_mult_u32(7084u, global2.c);
    var var_2 = _wgslsmith_add_u32(min(4294967295u, 17876u), arg_0);
    var var_3 = arg_3;
    return reverseBits(vec4<i32>(1i, global2.a, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, var_0.a, var_0.a | 1i), ~select(vec4<i32>(var_3.a, global2.a, 22570i, global2.a), vec4<i32>(2147483647i, var_3.a, global2.a, -71683i), var_3.b))));
}

fn func_2() -> Struct_1 {
    global3 = array<vec4<u32>, 12>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~((vec4<i32>(8164i, u_input.a, global2.a, global2.a) | vec4<i32>(-31437i, -1i, 2147483647i, u_input.a)) | max(vec4<i32>(-2147483647i, global2.a, u_input.a, u_input.a), vec4<i32>(-13552i, u_input.a, u_input.a, 17365i))), func_4(~_wgslsmith_mod_u32(global0.x, 1u), ~9376u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2323f)), Struct_1(func_3(Struct_1(1764i, global2.b, global2.c, vec4<f32>(-1679f, global2.d.x, 126f, -394f), global2.e), vec4<f32>(global2.d.x, -103f, global2.d.x, global2.d.x), global1[_wgslsmith_index_u32(global2.c, 23u)], Struct_1(u_input.a, global2.b, 4294967295u, global2.d, vec2<bool>(true, true))), select(vec4<bool>(global2.e.x, false, true, global2.b.x), vec4<bool>(global2.b.x, false, true, global2.e.x), true), global2.c, _wgslsmith_f_op_vec4_f32(global2.d - global2.d), global2.b.xw))), select(vec4<bool>(all(vec2<bool>(global2.e.x, false)), global2.b.x, !(!global2.e.x), global2.b.x), global2.b, !all(select(global2.e, vec2<bool>(global2.e.x, global2.e.x), vec2<bool>(global2.e.x, false)))), max(global2.c, 0u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(step(global2.d.x, -209f)), _wgslsmith_f_op_f32(abs(global2.d.x)), _wgslsmith_f_op_f32(global2.d.x * 405f)) + vec4<f32>(-101f, -2342f, 1f, global2.d.x)))), vec2<bool>(!all(select(vec4<bool>(global2.b.x, true, false, false), global2.b, global2.e.x)), true));
    var var_1 = global1[_wgslsmith_index_u32(0u, 23u)];
    let var_2 = Struct_1(var_1.a, global2.b, 52126u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, 444f, 1020f, var_0.d.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.d.x)), var_1.d.x, _wgslsmith_f_op_f32(global2.d.x - 954f), global2.d.x))), vec2<bool>(true, var_1.e.x));
    let var_3 = any(var_2.b.zzy);
    return Struct_1(abs(var_2.a), select(!vec4<bool>(!var_2.e.x, false | var_2.b.x, global2.b.x, true), vec4<bool>(!(true | var_3), !var_0.e.x, global2.b.x, true), var_1.b.x), ~var_2.c, vec4<f32>(var_0.d.x, -276f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.d.x, 808f, true)), global2.d.x), 456f), select(vec2<bool>(all(vec4<bool>(true, true, true, false)), all(var_1.b) && false), !vec2<bool>(var_2.e.x, 47152i < var_2.a), var_3));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = abs(-(u_input.a ^ firstLeadingBit(max(1i, u_input.a))));
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + 2038f));
    let var_3 = Struct_1(_wgslsmith_mod_i32(-var_1.a, -_wgslsmith_sub_i32(-2690i, _wgslsmith_sub_i32(1082i, global2.a))), !select(vec4<bool>(all(global2.e), all(vec3<bool>(false, arg_0, var_1.b.x)), var_1.b.x, global2.b.x), !vec4<bool>(false, global2.b.x, true, true), !var_1.b), global0.x, global2.d, global2.e);
    var_2 = -1000f;
    return global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(25825u, global2.c), vec2<u32>(global2.c, global2.c)), var_3.c), 23u)];
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = arg_2;
    let var_1 = func_1(!var_0.e.x);
    var var_2 = Struct_1(-12859i, !vec4<bool>(true, true, true || global2.b.x, !(true && arg_1.b.x)), 1u, vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(select(arg_2.d.x, -1625f, _wgslsmith_div_i32(-2147483647i, global2.a) >= 1i)), -758f, arg_2.d.x), select(!select(vec2<bool>(false, var_0.e.x), vec2<bool>(true, false), vec2<bool>(true, true)), global2.b.ww, false | any(select(vec3<bool>(var_0.e.x, false, var_1.e.x), arg_1.b.zxx, var_1.e.x))));
    var var_3 = arg_1;
    global2 = func_1(!var_3.b.x);
    return StorageBuffer(~vec2<u32>(var_1.c, 8964u), ~(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -2147483647i, var_1.a), vec4<i32>(var_3.a, 8835i, 8206i, u_input.a)), ~u_input.a, _wgslsmith_mult_i32(65141i, var_3.a)) ^ ((vec3<i32>(var_2.a, -1i, u_input.a) >> (vec3<u32>(29834u, 0u, arg_1.c) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(49971u, 112388u, 16059u), vec3<u32>(var_1.c, 0u, var_2.c)) % vec3<u32>(32u)))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    let x = u_input.a;
    s_output = func_5(countOneBits(select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(4294967295u, global0.x)), global2.c, false)), func_1(false), global1[_wgslsmith_index_u32(1u, 23u)]);
}

