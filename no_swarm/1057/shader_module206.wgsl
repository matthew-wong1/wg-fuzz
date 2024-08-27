struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(-1i, -13724i, 2147483647i, 1i), Struct_1(269f, vec2<u32>(14515u, 8431u)), -19957i);

var<private> global1: Struct_3 = Struct_3(true, Struct_1(133f, vec2<u32>(4294967295u, 0u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = global0.b;
    let var_1 = Struct_4(Struct_2(global0.a, Struct_1(arg_0.x, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), global0.b.b)), 2147483647i), global1.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(41475u, global1.b.b.x, 1u, 8923u), vec4<u32>(global0.b.b.x, 1u, 0u, 14125u)) ^ vec4<u32>(global0.b.b.x, global0.b.b.x, 25887u, 1u), reverseBits(~vec4<u32>(global0.b.b.x, var_0.b.x, global1.b.b.x, global0.b.b.x))), ~countOneBits(select(vec4<u32>(var_0.b.x, 4294967295u, global1.b.b.x, var_0.b.x), vec4<u32>(var_0.b.x, 4294967295u, 4294967295u, global1.b.b.x), false))));
    var var_2 = vec3<bool>(all(!vec2<bool>(any(vec2<bool>(false, global1.a)), any(vec2<bool>(true, global1.a)))), false, true);
    var var_3 = var_1;
    let var_4 = 64084i;
    return var_0.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(Struct_2(-(vec4<i32>(-1i) * -vec4<i32>(global0.c, 30895i, global0.a.x, global0.a.x)), global0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-114i, global0.c) >> (vec2<u32>(14756u, 47343u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(14159i, u_input.c), vec2<i32>(-5600i, 14658i))) >> (_wgslsmith_add_u32(100303u, global0.b.b.x) % 32u)), global1.b, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~global1.b.b.x, global1.b.b.x, _wgslsmith_mult_u32(global1.b.b.x, global1.b.b.x)), ~vec3<u32>(global0.b.b.x, 52966u, global0.b.b.x) ^ min(vec3<u32>(global0.b.b.x, 1u, 66056u), vec3<u32>(global0.b.b.x, global0.b.b.x, global1.b.b.x))), ~vec3<u32>(~6447u, firstLeadingBit(global1.b.b.x), ~global1.b.b.x)));
    var var_1 = Struct_3(true, global0.b);
    let var_2 = vec4<f32>(421f, 1117f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.b.a, 581f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a + -882f)), -182f), global0.b.a, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, var_1.a), !vec3<bool>(var_1.a, var_1.a, global1.a))))), ~(global0.b.b << (_wgslsmith_div_vec2_u32(~vec2<u32>(1642u, var_1.b.b.x), vec2<u32>(var_1.b.b.x, 17029u) | vec2<u32>(38574u, 19572u)) % vec2<u32>(32u))));
    let var_4 = 2400f;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_2.yyx))), abs(abs(~(~global1.b.b))));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    let var_0 = ~global0.a.zzw;
    var var_1 = 0u;
    global0 = Struct_2(~_wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.x, 2147483647i, global0.a.x, u_input.d), vec4<i32>(global0.a.x, -39282i, global0.a.x, -1i), vec4<i32>(-2657i, var_0.x, var_0.x, global0.c))), vec4<i32>(0i, abs(global0.a.x), 2147483647i, firstLeadingBit(var_0.x))), global0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.x, select(u_input.b, 9419i, global1.a)), ~_wgslsmith_mod_vec2_i32(var_0.yx, vec2<i32>(global0.c, 1i))) >> (~_wgslsmith_div_u32(~global0.b.b.x, ~arg_0) % 32u));
    let var_2 = Struct_4(Struct_2(~vec4<i32>(_wgslsmith_div_i32(global0.c, var_0.x), global0.a.x, var_0.x, max(1i, -1i)), Struct_1(-895f, vec2<u32>(arg_0, global0.b.b.x)), _wgslsmith_div_i32(max(global0.a.x, global0.c), u_input.a) << (global0.b.b.x % 32u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.a * global0.b.a), _wgslsmith_f_op_f32(global1.b.a + -2175f)), ~(global1.b.b << ((vec2<u32>(global0.b.b.x, global1.b.b.x) & global0.b.b) % vec2<u32>(32u)))), global1.b.b.x);
    var var_3 = var_2.a.c;
    return vec4<i32>(-_wgslsmith_dot_vec2_i32(global0.a.wx, u_input.e), var_2.a.c, _wgslsmith_mod_i32(~u_input.d, u_input.b), global0.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_5) -> Struct_1 {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(2147483647i), _wgslsmith_dot_vec2_i32(global0.a.xz, ~select(global0.a.ww, u_input.e, vec2<bool>(global1.a, true)))), global0.a.x);
    let var_2 = 4294967295u;
    var var_3 = ~_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(61692u, global0.b.b.x)) | global0.b.b, vec2<u32>(countOneBits(0u), _wgslsmith_add_u32(select(1u, 1u, false), var_2)));
    let var_4 = global0.a.xxy;
    return Struct_1(974f, vec2<u32>(arg_2.a.b.b.x, var_3.x));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_5(Struct_2(-firstLeadingBit(firstLeadingBit(vec4<i32>(0i, global0.c, global0.a.x, arg_2.x))), global1.b, _wgslsmith_mod_i32(-6183i, select(firstLeadingBit(arg_2.x), i32(-1i) * -1i, all(vec4<bool>(arg_3, global1.a, global1.a, true))))), 5420u >> (~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 0u, global0.b.b.x, global0.b.b.x)), abs(vec4<u32>(global0.b.b.x, arg_1.b.x, 1u, 25828u))) % 32u));
    var var_1 = _wgslsmith_mod_i32(var_0.a.c, 1i);
    let var_2 = Struct_4(Struct_2(max(vec4<i32>(14333i, -11216i, -2409i, u_input.d) >> (vec4<u32>(267u, 37276u, global1.b.b.x, global1.b.b.x) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(var_0.a.c, arg_2.x, 53782i, 2951i))), func_4(Struct_3(true, var_0.a.b), abs(global0.c) ^ -global0.a.x, Struct_5(Struct_2(arg_2, Struct_1(-943f, vec2<u32>(4294967295u, global0.b.b.x)), u_input.c), ~81302u)), min(abs(-40338i) >> ((global0.b.b.x | 0u) % 32u), reverseBits(countOneBits(arg_2.x)))), var_0.a.b, var_0.b);
    let var_3 = global0.b;
    let var_4 = select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(all(!vec4<bool>(arg_3, true, global1.a, true)), !arg_3, select(any(select(vec4<bool>(arg_3, global1.a, true, true), vec4<bool>(arg_3, true, false, true), false)), all(vec2<bool>(arg_3, global1.a)), true)), vec3<bool>(any(select(!vec3<bool>(global1.a, arg_3, arg_3), vec3<bool>(true, true, true), select(vec3<bool>(global1.a, global1.a, arg_3), vec3<bool>(false, false, true), false))), true, arg_3));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    var var_1 = ~global1.b.b.x;
    let var_2 = Struct_2(~_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(68067i, global0.a.x, global0.a.x, 1i)), reverseBits(global0.a)), Struct_1(_wgslsmith_div_f32(global1.b.a, -2278f), global0.b.b), _wgslsmith_add_i32(0i, countOneBits(_wgslsmith_add_i32(global0.a.x, global0.a.x))));
    global0 = func_5(_wgslsmith_f_op_f32(round(global1.b.a)), func_4(Struct_3(!any(vec3<bool>(true, true, global1.a)), func_1()), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -1i, var_2.c), vec3<i32>(var_2.a.x, 0i, global0.c)) | var_2.a.x, Struct_5(Struct_2(func_3(4294967295u), func_1(), u_input.a), ~22565u)), vec4<i32>(~var_2.a.x >> (~0u % 32u), _wgslsmith_mult_i32(-2147483647i, var_2.a.x) >> (1u % 32u), func_3(32809u).x, u_input.e.x) & vec4<i32>(global0.c, global0.c, 12086i, ~var_2.c), 260f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * global1.b.a));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.b.x, var_3.b.b.x, 8843u, 1u), vec4<u32>(0u, global0.b.b.x, var_2.b.b.x, global0.b.b.x), vec4<u32>(108027u, global0.b.b.x, 4294967295u, 18765u)) ^ vec4<u32>(58250u, 2710u, var_2.b.b.x, 13794u)), _wgslsmith_div_u32(4294967295u, 37952u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(667f, var_3.b.a, var_0, -500f) * vec4<f32>(-1194f, -229f, 1644f, var_0)) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.a, -728f, -677f, global1.b.a), vec4<f32>(global0.b.a, 774f, global1.b.a, var_0))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b.a, var_2.b.a, var_3.b.a, var_3.b.a), vec4<f32>(837f, var_0, -1165f, 1318f))))))), _wgslsmith_add_u32(global1.b.b.x, ~4294967295u));
}

