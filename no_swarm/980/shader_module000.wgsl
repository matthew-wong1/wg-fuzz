struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 8>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_1(arg_0.x);
    var var_1 = var_0;
    let var_2 = -1734f;
    global1 = _wgslsmith_f_op_f32(arg_0.x + 699f);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f), -310f);
    return ~global0.x;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(-268f, _wgslsmith_f_op_f32(arg_2.b.a - -1435f))));
    var_0 = arg_2.b;
    let var_1 = vec3<u32>(17396u, u_input.d, min(~reverseBits(u_input.d << (1u % 32u)), reverseBits(global0.x)));
    global0 = select(_wgslsmith_div_vec4_u32(min(vec4<u32>(var_1.x, global0.x, ~38600u, _wgslsmith_add_u32(0u, var_1.x)), ~vec4<u32>(var_1.x, global0.x, 36671u, global0.x)), vec4<u32>(func_3(vec3<f32>(-373f, var_0.a, -1448f)), firstLeadingBit(~var_1.x), 1u, _wgslsmith_sub_u32(28345u, 1u | u_input.d))), min(vec4<u32>(_wgslsmith_clamp_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 0u, global0.x), var_1), _wgslsmith_div_u32(global0.x, global0.x)), ~33158u, 36210u, abs(~global0.x)), ~(~(~vec4<u32>(11226u, 52104u, 0u, 1786u)))), vec4<bool>(!all(select(vec3<bool>(arg_2.c, arg_2.d, arg_3.x), vec3<bool>(arg_3.x, false, true), true)), all(vec3<bool>(!arg_2.c, false, arg_2.d || true)), true, true));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(abs(u_input.c), -47074i), u_input.c), (abs(arg_2.a.yz) & vec2<i32>(arg_1.x, -2147483647i)) & countOneBits(~vec2<i32>(arg_2.a.x, u_input.b.x))), ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(abs(-12634i), _wgslsmith_dot_vec4_i32(arg_1, arg_1)), u_input.b.x | (-2147483647i | arg_1.x), _wgslsmith_mod_i32(firstTrailingBit(-36433i), abs(-2147483647i))), min(reverseBits(_wgslsmith_mult_i32(-arg_1.x, -34376i)), arg_2.a.x), arg_1.x);
    return select(vec3<bool>(true, _wgslsmith_dot_vec4_i32(arg_2.a, arg_2.a) < 0i, select(all(!arg_3), arg_3.x, true)), vec3<bool>(any(vec3<bool>(all(vec2<bool>(arg_2.c, false)), any(vec3<bool>(arg_2.c, arg_2.c, arg_2.c)), true)), !any(!vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x)), arg_1.x <= (firstLeadingBit(arg_1.x) >> ((global0.x << (global0.x % 32u)) % 32u))), !all(vec4<bool>(any(vec4<bool>(arg_3.x, arg_3.x, true, arg_2.d)), arg_2.d, true, false)));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_2(vec4<i32>(-76744i, firstLeadingBit(arg_0.a.x), i32(-1i) * -_wgslsmith_div_i32(arg_0.a.x, u_input.a), -11555i), Struct_1(arg_0.b.a), true, true);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-821f * var_0.b.a)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1687f + var_0.b.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.a, -488f), vec2<f32>(1245f, var_0.b.a)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-655f, -673f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 141f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1303f, 2094f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, var_0.b.a) * vec2<f32>(arg_0.b.a, -1031f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, var_0.b.a) - vec2<f32>(-1159f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(542f, 1000f)))), select(vec2<bool>(false, true), !vec2<bool>(arg_0.d, false), false)))));
    let var_2 = vec4<f32>(-711f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1044f * _wgslsmith_div_f32(-192f, 455f))))), arg_0.b.a, _wgslsmith_f_op_f32(floor(-1388f)));
    let var_3 = !select(!vec4<bool>(var_0.c, false & arg_0.d, any(vec3<bool>(var_0.d, var_0.d, false)), true), select(vec4<bool>(true, true, true, !arg_1), vec4<bool>(true, !arg_0.c, all(vec2<bool>(arg_1, arg_1)), var_0.d), false), 1467f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-324f, 1000f))));
    var var_4 = select(var_3.zxw, !select(select(select(vec3<bool>(arg_0.d, false, var_3.x), var_3.yww, vec3<bool>(arg_0.d, arg_1, true)), vec3<bool>(false, false, false), var_3.zyy), var_3.zzw, var_3.xxz), func_2(arg_0.b.a, select(~vec4<i32>(-2147483647i, arg_0.a.x, u_input.a, -57086i), arg_0.a, true), Struct_2(-vec4<i32>(9807i, var_0.a.x, var_0.a.x, 48300i), var_0.b, !var_3.x, var_0.d || any(vec3<bool>(true, true, arg_0.c))), vec2<bool>(var_3.x && var_3.x, arg_1)));
    return Struct_3(abs(13591u), 26425u, !var_3, !var_3.x);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_3 {
    global2 = array<Struct_1, 8>();
    global0 = firstTrailingBit(~vec4<u32>(~(~global0.x), abs(u_input.d), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d, 65130u), global0.x), global0.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -754f, _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-221f, -362f, arg_1.x, 886f))))) + vec4<f32>(arg_1.x, _wgslsmith_div_f32(-1000f, -456f), arg_1.x, -791f)));
    global2 = array<Struct_1, 8>();
    global1 = arg_1.x;
    return func_4(Struct_2(vec4<i32>(_wgslsmith_add_i32(max(u_input.a, u_input.c), u_input.a), u_input.a, u_input.a, ~(i32(-1i) * -67438i)), Struct_1(-1268f), false, all(func_2(arg_1.x, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, u_input.a, 1i), vec4<i32>(8914i, u_input.a, 2147483647i, u_input.c)), Struct_2(vec4<i32>(u_input.b.x, -2147483647i, 28725i, -1i), global2[_wgslsmith_index_u32(global0.x, 8u)], arg_0, arg_0), !vec2<bool>(arg_0, false)))), all(!vec4<bool>(arg_0 | true, select(true, false, arg_0), select(false, true, arg_0), true)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> bool {
    global0 = abs(firstTrailingBit(vec4<u32>(4294967295u, 0u, 28441u, arg_3.b)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, 26217u, arg_3.a), vec4<u32>(arg_3.a, 4294967295u, 22340u, 59844u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.a, 19431u, 4294967295u, 16107u), vec4<u32>(3465u, 4294967295u, arg_3.b, 25147u))) % vec4<u32>(32u))) | vec4<u32>(func_1(func_2(_wgslsmith_f_op_f32(-981f * -299f), ~vec4<i32>(-35413i, -2147483647i, u_input.b.x, u_input.a), Struct_2(vec4<i32>(u_input.c, u_input.a, -32236i, -21783i), Struct_1(arg_1.a), arg_2, arg_2), vec2<bool>(false, false)).x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-806f, arg_1.a, arg_1.a), vec3<f32>(-1112f, arg_1.a, arg_1.a))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(331f, -1563f, arg_1.a))))).b, u_input.d, ~(arg_3.b | arg_0.a), arg_3.a);
    global2 = array<Struct_1, 8>();
    var var_0 = Struct_2(vec4<i32>(1i, u_input.c, _wgslsmith_sub_i32(-u_input.b.x, u_input.a) << (12339u % 32u), max(~(-2147483647i ^ u_input.b.x), countOneBits(-u_input.c))), Struct_1(_wgslsmith_f_op_f32(-953f + -355f)), arg_0.d, arg_2);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(-arg_1.a), true)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 8>();
    let var_0 = -176f;
    var var_1 = !vec4<bool>(true, false, func_5(func_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-213f, 131f, var_0) * vec3<f32>(var_0, var_0, var_0))), global2[_wgslsmith_index_u32(31246u, 8u)], true, Struct_3(u_input.d, global0.x, vec4<bool>(true, true, false, false), var_0 > 829f)), !all(vec4<bool>(true, true, false, false)));
    var var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, select(-u_input.b, select(vec3<i32>(u_input.b.x, -18456i, u_input.c), ~vec3<i32>(u_input.a, u_input.c, -13424i), true), vec3<bool>(true, true, true))), vec3<i32>(abs(~(-1i)), -2212i, -22037i ^ _wgslsmith_mod_i32(-2147483647i, u_input.b.x)));
    global0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, select(65200u, 0u, false), abs(0u), 78301u), vec4<u32>(global0.x, 1u, u_input.d, ~u_input.d)) << (countOneBits(reverseBits(vec4<u32>(~44658u, ~global0.x, global0.x >> (26465u % 32u), ~u_input.d))) % vec4<u32>(32u));
    global2 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zz, u_input.d, vec2<i32>(var_2.x, u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(f32(-1f) * -367f)) + -248f), _wgslsmith_div_vec3_i32(firstLeadingBit(u_input.b), ~u_input.b));
}

