struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(Struct_1(1i, vec2<u32>(4294967295u, 58237u), -236f, vec4<i32>(-36926i, -19083i, 15023i, 1i), vec4<i32>(29838i, -69952i, 3276i, -43945i)), vec4<bool>(false, true, true, true), vec3<f32>(835f, -978f, 1560f), false);

var<private> global2: Struct_1 = Struct_1(0i, vec2<u32>(1u, 1u), -727f, vec4<i32>(-20004i, -11266i, 62929i, -95021i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 13753i));

var<private> global3: u32 = 23552u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<u32> {
    global3 = firstLeadingBit(~firstTrailingBit(1u));
    let var_0 = arg_3;
    var var_1 = reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(~(arg_1.e.x & global0.a.e.x), _wgslsmith_div_i32(-var_0.a.e.x, ~global1.a.e.x), arg_1.e.x, _wgslsmith_mult_i32(arg_1.e.x, arg_1.e.x)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-19629i, global0.a.d.x), firstTrailingBit(arg_3.a.a), -76656i, _wgslsmith_add_i32(0i, global2.d.x)), global1.a.d)));
    let var_2 = 12431i;
    let var_3 = var_0;
    return _wgslsmith_mod_vec2_u32(firstTrailingBit(select(~firstTrailingBit(vec2<u32>(arg_0, 4294967295u)), vec2<u32>(abs(arg_1.b.x), select(56303u, 0u, arg_3.b.x)), all(!vec3<bool>(false, var_0.b.x, var_0.b.x)))), vec2<u32>(arg_2.x, abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(77141u, 0u, arg_2.x, var_3.a.b.x), vec4<u32>(global0.a.b.x, 50363u, global0.a.b.x, 113980u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(48810u, global2.b.x, global0.a.b.x, 1u), vec4<u32>(21217u, global2.b.x, 4294967295u, 1u), vec4<u32>(1u, var_0.a.b.x, 0u, 0u))))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(global2.e.x, ~select(vec2<u32>(~4294967295u, ~global1.a.b.x), vec2<u32>(~global1.a.b.x, abs(17105u)), vec2<bool>(select(global0.b.x, true, global1.d), true)), -410f, vec4<i32>(u_input.a, ~1i, global1.a.a, u_input.a), ~global2.d);
    var var_1 = global0.a;
    var_1 = global1.a;
    var var_2 = Struct_1(var_0.e.x, _wgslsmith_div_vec2_u32(var_0.b, _wgslsmith_mult_vec2_u32(vec2<u32>(~2645u, 26919u), _wgslsmith_clamp_vec2_u32(func_3(global1.a.b.x, global0.a, vec2<u32>(var_1.b.x, global2.b.x), Struct_2(global1.a, global0.b, global0.c, global1.d)), ~global1.a.b, vec2<u32>(var_0.b.x, var_1.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-711f)))))), vec4<i32>(max(select(firstLeadingBit(var_0.d.x), ~24236i, global0.d), -(-69258i << (1u % 32u))), firstTrailingBit(firstTrailingBit(0i)), u_input.a, 9531i), select(vec4<i32>(65273i, _wgslsmith_div_i32(-32061i, global2.d.x), var_1.d.x, 11404i ^ global2.e.x), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(1i, var_0.e.x, global2.a, -1i)), vec4<i32>(global1.a.d.x, var_0.e.x, -2147483647i, var_0.d.x)), global1.b) | _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(global2.d, global2.d, ~vec4<i32>(global2.e.x, global0.a.a, var_0.a, global0.a.e.x)), var_0.d));
    global0 = Struct_2(Struct_1(_wgslsmith_add_i32(~(~global0.a.e.x), -abs(var_1.a)), vec2<u32>(~var_0.b.x, min(~global0.a.b.x, var_0.b.x)), 1481f, countOneBits(min(global0.a.d, ~var_0.e)), -vec4<i32>(-31083i, 35883i, abs(var_2.d.x), _wgslsmith_mult_i32(global0.a.d.x, -33752i))), vec4<bool>(any(global1.b.zxy), global0.b.x, true, !any(global0.b.xw)), vec3<f32>(_wgslsmith_f_op_f32(max(2342f, -1990f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c * global2.c))), _wgslsmith_f_op_f32(-global2.c)), global1.d);
    return Struct_2(global0.a, !vec4<bool>(true, global1.b.x, true, false), vec3<f32>(354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global2.c)))) + global1.c.x), 817f), all(vec3<bool>(!(u_input.a <= u_input.a), true, global1.d)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = abs(1u);
    let var_1 = func_2();
    let var_2 = arg_0.d;
    var var_3 = Struct_1(0i, vec2<u32>(0u, _wgslsmith_mod_u32(global1.a.b.x, 12281u)), 1000f, vec4<i32>(func_2().a.d.x, i32(-1i) * -2147483647i, 0i, _wgslsmith_add_i32(_wgslsmith_div_i32(global2.e.x, -90407i), -global2.a) << (~21899u % 32u)), var_1.a.d | (_wgslsmith_mod_vec4_i32(vec4<i32>(-2810i, -12049i, -17404i, 1i), max(vec4<i32>(global1.a.e.x, -2147483647i, 27751i, global0.a.a), arg_0.a.d)) | -(global1.a.d << (vec4<u32>(var_0, 16844u, var_0, global0.a.b.x) % vec4<u32>(32u)))));
    var_3 = Struct_1(_wgslsmith_add_i32(~_wgslsmith_div_i32(select(6265i, u_input.a, global1.b.x), var_1.a.e.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(~(-911i), ~2582i), 16524i)), var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1431f, var_1.c.x)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.c, arg_0.a.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2133f + var_1.c.x) - _wgslsmith_f_op_f32(step(-850f, arg_0.c.x))))), min(arg_0.a.d, min(arg_1.d, vec4<i32>(1i, -3588i, -57694i, arg_0.a.e.x) & vec4<i32>(global2.d.x, u_input.a, global0.a.e.x, global1.a.d.x))), max(select(global0.a.d ^ ~var_1.a.d, global1.a.e, all(select(arg_0.b, arg_0.b, true))), -select(vec4<i32>(1i, global0.a.d.x, arg_0.a.e.x, global1.a.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, arg_1.e.x), var_1.a.d), true)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) + global0.c.x))), arg_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -593f), 505f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global1.a, !global1.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(global1.a, vec4<bool>(false, true, global1.b.x, false), global1.c, true), Struct_1(global0.a.e.x, select(global0.a.b, vec2<u32>(global2.b.x, 35778u), false), global1.a.c, vec4<i32>(global2.e.x, u_input.a, -1i, -1i), global0.a.e & global2.e))))), global1.b.x);
    global1 = Struct_2(func_2().a, vec4<bool>(true, !all(select(vec4<bool>(global1.b.x, global0.d, global0.b.x, global0.d), global0.b, false)), !global0.d, global1.c.x == 198f), global1.c, (!(!global1.d) && (false == (197f != global2.c))) && func_2().b.x);
    global0 = Struct_2(Struct_1(-1i, vec2<u32>(79144u, min(~global0.a.b.x, 1u)), -931f, -global1.a.d & (min(global0.a.d, vec4<i32>(5141i, global1.a.e.x, global0.a.a, 6052i)) | global0.a.e), select(global2.d, reverseBits(vec4<i32>(1i, global2.a, -1i, u_input.a)), !global1.b)), func_2().b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.c, global1.c)))), global2.d.x < (_wgslsmith_mod_i32(countOneBits(global2.e.x), 2147483647i) | 23375i));
    let var_0 = abs(-min(-reverseBits(28729i), firstLeadingBit(2147483647i)));
    var var_1 = Struct_2(func_2().a, vec4<bool>(global0.b.x, true, !all(vec3<bool>(global1.b.x, true, true)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1298f, global2.c, global0.c.x) - vec3<f32>(-340f, 1085f, -1000f)), _wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(global2.c, global0.a.c, 771f))))) + global1.c), _wgslsmith_sub_i32(global1.a.e.x, u_input.a) == -2147483647i);
    let var_2 = select(vec4<bool>(any(select(!vec4<bool>(false, true, global1.d, global1.d), !vec4<bool>(true, false, global0.b.x, false), vec4<bool>(false, var_1.d, global1.b.x, true))), func_2().b.x, var_1.b.x, all(vec3<bool>(select(false, false, false), true, true))), vec4<bool>(var_1.d, false, true, false), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(select(~vec4<u32>(global1.a.b.x, global1.a.b.x, global0.a.b.x, global1.a.b.x), vec4<u32>(var_1.a.b.x, 4294967295u, global2.b.x, global1.a.b.x), !vec4<bool>(var_1.b.x, var_1.b.x, var_1.d, false))), _wgslsmith_add_i32(_wgslsmith_add_i32(-19879i, func_2().a.a), max(0i, -1i)));
}

