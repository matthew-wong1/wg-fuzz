struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
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

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(781f, -719f, 566f), vec3<f32>(760f, 1422f, 2126f), vec3<f32>(628f, -1083f, -1000f), vec3<f32>(1235f, -584f, 205f), vec3<f32>(715f, -1954f, 935f), vec3<f32>(-906f, 183f, -1000f), vec3<f32>(839f, 584f, 1000f), vec3<f32>(-576f, 643f, 229f), vec3<f32>(-1068f, 528f, -1000f), vec3<f32>(1100f, -1410f, 1460f), vec3<f32>(1248f, 1753f, 340f), vec3<f32>(-733f, 1121f, 1863f), vec3<f32>(1021f, -430f, 1351f), vec3<f32>(-103f, 402f, -874f), vec3<f32>(-1081f, 1385f, 613f), vec3<f32>(1421f, -1884f, 1106f), vec3<f32>(1000f, 1819f, 533f), vec3<f32>(2080f, -912f, 1054f), vec3<f32>(137f, 355f, -635f), vec3<f32>(666f, 2042f, 739f), vec3<f32>(1221f, -731f, 1000f));

var<private> global1: vec3<u32> = vec3<u32>(19506u, 1u, 4745u);

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(25011u), Struct_2(21775u), Struct_2(35023u), Struct_2(4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> f32 {
    let var_0 = ~vec3<u32>(~arg_1.a.b.x, ~_wgslsmith_add_u32(firstTrailingBit(global1.x), 1u), ~(~1u));
    var var_1 = u_input.e.x;
    var_1 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(u_input.b >> (arg_1.a.b.wzz % vec3<u32>(32u))), -vec3<i32>(u_input.a.x, u_input.c.x, 1i)), u_input.b);
    var_1 = u_input.a.x;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(65336u, _wgslsmith_div_u32(55254u, _wgslsmith_div_u32(var_0.x, reverseBits(1u)))) | global1.x, 4u)];
    return _wgslsmith_f_op_f32(-185f * 930f);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec3<f32>, 21>();
    let var_0 = vec2<i32>(11486i, ~_wgslsmith_clamp_i32(u_input.b.x, 2147483647i, u_input.c.x)) << (global1.xx % vec2<u32>(32u));
    global0 = array<vec3<f32>, 21>();
    return Struct_1(!vec4<bool>(!(!arg_0), arg_0, firstLeadingBit(1469u) >= global1.x, _wgslsmith_f_op_f32(-885f * 1491f) <= _wgslsmith_f_op_f32(func_3(arg_0, Struct_3(Struct_1(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<u32>(3283u, arg_1, 4294967295u, arg_1), vec2<bool>(false, false), arg_0), Struct_1(vec4<bool>(arg_0, false, arg_0, true), vec4<u32>(1u, arg_1, arg_1, arg_2.a), vec2<bool>(true, true), arg_0))))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.x, 3481u), 19983u), 0u, global1.x, 21455u), ~vec4<u32>(_wgslsmith_sub_u32(arg_2.a, arg_1), ~58378u, global1.x, global1.x)), select(vec2<bool>(!(!arg_0), select(!arg_0, false, true)), vec2<bool>(true, true), arg_0), !((arg_0 != (true != arg_0)) | arg_0));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    global0 = array<vec3<f32>, 21>();
    let var_0 = Struct_1(vec4<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.e.x, -32988i), vec4<i32>(0i, u_input.a.x, u_input.a.x, 0i)) >= min(u_input.e.x, u_input.a.x)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1076f * -204f)) == arg_0.x, !(!any(arg_1.a.zyy))), ~arg_1.b, vec2<bool>(true, any(vec3<bool>(any(vec3<bool>(false, true, true)), arg_0.x == 254f, arg_1.d))), true);
    global2 = array<Struct_2, 4>();
    var var_1 = func_2(var_0.d, _wgslsmith_add_u32(max(1u, _wgslsmith_mult_u32(~0u, var_0.b.x >> (22262u % 32u))), select(_wgslsmith_sub_u32(24021u << (1u % 32u), _wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(4294967295u, 79979u, var_0.b.x, 74011u))), 0u, true)), global2[_wgslsmith_index_u32(global1.x, 4u)]);
    var var_2 = ~(~firstLeadingBit(~0u));
    return 1u;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> vec3<u32> {
    var var_0 = Struct_1(vec4<bool>(arg_1.d, all(vec3<bool>(any(arg_2.b.c), false | arg_2.b.c.x, false)), true, false), _wgslsmith_clamp_vec4_u32(arg_1.b, arg_1.b >> (vec4<u32>(arg_3, 3217u, arg_3, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, arg_1.b.x, arg_1.b.x, 20443u) | arg_2.a.b), arg_1.b)), !select(vec2<bool>(arg_0.x <= arg_0.x, true), vec2<bool>(!arg_2.b.c.x, true), func_2(arg_2.a.c.x, ~4294967295u, global2[_wgslsmith_index_u32(arg_1.b.x << (arg_1.b.x % 32u), 4u)]).a.wy), ~u_input.c.x >= 1i);
    let var_1 = _wgslsmith_mult_i32(u_input.d, -4819i | u_input.e.x);
    var var_2 = Struct_2(firstLeadingBit(_wgslsmith_add_u32(~var_0.b.x, var_0.b.x)));
    var_2 = Struct_2(abs(select(var_0.b.x, 25185u, arg_1.c.x)));
    let var_3 = abs(u_input.c);
    return vec3<u32>(arg_3 << (func_2(all(select(arg_1.a, vec4<bool>(arg_2.b.d, var_0.a.x, arg_1.c.x, arg_1.d), arg_2.b.a)), 2912u, global2[_wgslsmith_index_u32(func_1(arg_0, arg_1), 4u)]).b.x % 32u), _wgslsmith_mult_u32(global1.x, ~1u), ~(~(~29507u) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, global1.x, 0u), vec3<u32>(56237u, arg_3, var_0.b.x)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -306f))), _wgslsmith_f_op_f32(abs(734f)))), Struct_1(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), ~vec4<u32>(global1.x, func_1(vec2<f32>(-1147f, -716f), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(18675u, 42636u, global1.x, 4294967295u), vec2<bool>(true, false), true)), _wgslsmith_sub_u32(global1.x, 6111u), 1u), func_2(true, 4294967295u, Struct_2(global1.x << (72173u % 32u))).c, true), Struct_3(func_2(true, max(5150u, _wgslsmith_mod_u32(global1.x, global1.x)), Struct_2(7106u)), Struct_1(vec4<bool>(all(vec4<bool>(true, true, false, true)), false, func_2(false, 0u, global2[_wgslsmith_index_u32(56261u, 4u)]).d, func_2(false, global1.x, global2[_wgslsmith_index_u32(global1.x, 4u)]).d), vec4<u32>(global1.x, ~10267u, global1.x ^ 35216u, abs(global1.x)), vec2<bool>(true, true), func_2(all(vec3<bool>(false, true, true)), firstLeadingBit(63419u), Struct_2(34646u)).a.x)), global1.x);
    global2 = array<Struct_2, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1738f)), -396f)), -213f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1555f - -1131f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1651f, -323f, false)), -1254f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-390f, 383f, 579f, -178f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-448f, -2675f, 101f, 539f), vec4<f32>(502f, -394f, 475f, 883f)))))))));
    global2 = array<Struct_2, 4>();
    var var_1 = -min(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(firstTrailingBit(u_input.b.x), u_input.b.x)), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.d, u_input.b.x), vec2<i32>(u_input.e.x, u_input.a.x)) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.c.x), ~vec2<i32>(u_input.b.x, u_input.e.x)));
    global2 = array<Struct_2, 4>();
    let var_2 = any(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(~54943u) << (_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, global1.x), 1u) % 32u)));
}

