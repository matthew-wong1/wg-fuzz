struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -725f;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(global1.d - global1.d)), _wgslsmith_f_op_f32(min(global2.d, global1.d)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(-global2.d)));
    var var_2 = select(!(!select(vec3<bool>(true, true, true), !vec3<bool>(true, global1.a.b.x, global1.c.b.x), -322f != global1.d)), vec3<bool>(global1.c.b.x, false, all(!(!vec4<bool>(false, global2.a.b.x, global2.a.b.x, global2.c.b.x)))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f - global1.d)) > 759f) && all(!(!arg_0.b)));
    var var_3 = select(-vec2<i32>(_wgslsmith_sub_i32(53194i, ~5262i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.e), ~vec2<i32>(u_input.c, -1i))), vec2<i32>(u_input.e, 1298i), vec2<bool>(true, true));
    global1 = Struct_2(arg_0, any(global2.c.b), Struct_1(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.d, global1.c.a.x), _wgslsmith_sub_u32(global1.a.a.x, 0u)), ~(1u << (u_input.d % 32u))), vec2<bool>(any(arg_0.b) & !var_2.x, global1.a.b.x)), _wgslsmith_f_op_f32(min(2278f, var_0.x)));
    return vec4<bool>(true, true, any(!(!vec4<bool>(false, var_2.x, false, false))), all(select(vec4<bool>(true, all(vec4<bool>(true, global1.b, global2.a.b.x, true)), global1.a.b.x, false), select(select(vec4<bool>(false, global1.a.b.x, arg_0.b.x, false), vec4<bool>(arg_0.b.x, global1.b, false, global1.a.b.x), vec4<bool>(false, true, false, true)), !vec4<bool>(false, false, var_2.x, arg_0.b.x), any(arg_0.b)), false)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    global1 = Struct_2(Struct_1(~vec2<u32>(global2.a.a.x, _wgslsmith_mod_u32(global2.c.a.x, 2305u)), vec2<bool>(true, global1.a.b.x)), any(select(!func_3(Struct_1(arg_0.a.a, global2.a.b)), !func_3(Struct_1(vec2<u32>(u_input.a.x, global2.c.a.x), global1.c.b)), select(global2.c.b.x, !arg_0.c.b.x, select(false, false, true)))), global2.a, _wgslsmith_f_op_f32(f32(-1f) * -823f));
    let var_0 = Struct_1((reverseBits(~vec2<u32>(1u, arg_0.c.a.x)) | ~_wgslsmith_div_vec2_u32(global2.a.a, arg_0.a.a)) << (~select(min(vec2<u32>(global2.c.a.x, u_input.d), vec2<u32>(17523u, global2.c.a.x)), vec2<u32>(101420u, 1u), select(global2.c.b, arg_0.a.b, vec2<bool>(false, global2.a.b.x))) % vec2<u32>(32u)), !global2.a.b);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f))) * arg_1.x);
    let var_1 = global1.c;
    let var_2 = var_0.a.x;
    return var_0;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec2<f32> {
    global1 = Struct_2(func_2(Struct_2(global2.c, true, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d * global2.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.d, -1000f, -1011f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1213f, global2.d, 1204f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * -185f))), arg_1.b.x, Struct_1(u_input.a.xy, vec2<bool>(_wgslsmith_f_op_f32(-1069f + -773f) != _wgslsmith_f_op_f32(global2.d * global2.d), firstLeadingBit(47592u) >= global1.a.a.x)), global2.d);
    let var_0 = ~u_input.e;
    global0 = 919f;
    var var_1 = vec4<u32>(1u, global1.a.a.x & max(4294967295u, ~reverseBits(global1.a.a.x)), ~(41212u & _wgslsmith_dot_vec3_u32(u_input.a, reverseBits(vec3<u32>(0u, 41643u, 393u)))), min(4166u, u_input.d));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-902f, 214f))))))));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: bool) -> bool {
    let var_0 = -57299i;
    let var_1 = Struct_2(func_2(Struct_2(func_2(Struct_2(global2.c, arg_3, global1.c, arg_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -748f)), _wgslsmith_f_op_f32(-global1.d)), global1.a.b.x, Struct_1(vec2<u32>(global2.c.a.x, global1.a.a.x), vec2<bool>(arg_3, global1.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.d, -644f)) * _wgslsmith_f_op_f32(global1.d * 418f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_1.xzz + vec3<f32>(466f, 129f, 604f)), arg_1.yzx))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(317f * _wgslsmith_f_op_f32(round(-793f)))))), func_3(func_2(Struct_2(global2.a, any(vec3<bool>(true, false, false)), func_2(Struct_2(Struct_1(global2.a.a, global2.a.b), false, Struct_1(vec2<u32>(28197u, 83232u), vec2<bool>(false, false)), 1057f), arg_1.xzz, arg_1.x), global2.d), arg_1.wyw, _wgslsmith_f_op_f32(-arg_2.x))).x, func_2(Struct_2(global2.a, false, global1.a, _wgslsmith_f_op_f32(-arg_2.x)), vec3<f32>(-2210f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-162f, 973f)), _wgslsmith_f_op_f32(f32(-1f) * -2150f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.d - -702f), _wgslsmith_f_op_f32(global1.d - arg_1.x), global1.a.b.x))), global2.d), -1086f);
    let var_2 = Struct_2(func_2(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.zxx) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, arg_2.x, -368f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(-6622i, global1.a)).x))), any(!(!func_3(global1.c))), func_2(var_1, vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-480f + arg_1.x) - -679f), 1017f, any(select(vec3<bool>(global2.a.b.x, false, false), vec3<bool>(true, arg_3, false), true))))), 1000f);
    let var_3 = vec4<i32>(-1i) * -min(vec4<i32>(_wgslsmith_mod_i32(56378i, var_0), var_0, 1i, u_input.c), abs(vec4<i32>(-28063i, var_0, var_0, u_input.c)));
    global1 = var_1;
    return true;
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(floor(global2.d));
    var var_0 = !func_5(~global1.a.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-591f, -520f, global2.d, global1.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, 593f, -694f, global2.d))))), _wgslsmith_f_op_vec2_f32(func_4(1i, func_2(Struct_2(global1.c, global1.a.b.x, global2.c, global2.d), vec3<f32>(global2.d, global2.d, -497f), -835f))), global1.a.b.x);
    global1 = Struct_2(Struct_1(global1.c.a & _wgslsmith_clamp_vec2_u32(global1.a.a, countOneBits(global2.c.a), ~vec2<u32>(global1.a.a.x, 67105u)), vec2<bool>(_wgslsmith_f_op_f32(floor(-433f)) == global2.d, any(!vec4<bool>(global1.a.b.x, global2.c.b.x, global1.a.b.x, true)))), _wgslsmith_mod_i32(0i, _wgslsmith_add_i32(u_input.c, firstTrailingBit(-46947i))) == (_wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, 2147483647i), i32(-1i) * -15079i) & u_input.e), Struct_1(_wgslsmith_sub_vec2_u32(u_input.a.yz, ~_wgslsmith_mult_vec2_u32(global2.c.a, u_input.a.yx)), global2.a.b), _wgslsmith_f_op_f32(global1.d - -339f));
    let var_1 = _wgslsmith_clamp_vec4_u32(abs(~(reverseBits(vec4<u32>(0u, global1.c.a.x, 2310u, u_input.a.x)) >> (~vec4<u32>(1u, 0u, global1.a.a.x, global1.a.a.x) % vec4<u32>(32u)))), firstLeadingBit(_wgslsmith_mult_vec4_u32(~min(vec4<u32>(u_input.a.x, global1.a.a.x, 4294967295u, global1.a.a.x), vec4<u32>(20493u, 0u, 2603u, global1.a.a.x)), abs(vec4<u32>(86119u, 4294967295u, global1.c.a.x, global2.a.a.x)))), ~vec4<u32>(_wgslsmith_mult_u32(min(global1.c.a.x, global1.c.a.x), ~1u), ~u_input.b, func_2(Struct_2(Struct_1(u_input.a.xz, vec2<bool>(true, global1.c.b.x)), false, Struct_1(vec2<u32>(global1.c.a.x, 9189u), global2.a.b), -141f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, global1.d, -1958f)), _wgslsmith_f_op_f32(abs(global1.d))).a.x, global2.c.a.x));
    let var_2 = ~countOneBits(~vec2<u32>(_wgslsmith_div_u32(u_input.a.x, global2.a.a.x), 21358u));
    return Struct_2(global1.a, func_2(Struct_2(func_2(Struct_2(Struct_1(global2.c.a, global1.a.b), false, global1.c, -1683f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.d, -868f, 2108f))), -1000f), all(vec4<bool>(true, true, global2.c.b.x, global1.a.b.x)), func_2(Struct_2(global1.c, global2.a.b.x, global2.a, 572f), _wgslsmith_div_vec3_f32(vec3<f32>(674f, 1000f, 878f), vec3<f32>(-263f, global2.d, global2.d)), _wgslsmith_f_op_f32(min(564f, 417f))), global2.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, 520f, global1.d)) + vec3<f32>(global1.d, global1.d, 101f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(540f, -1000f, 938f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, global2.d, global2.d)))), global2.d).b.x, func_2(Struct_2(global2.c, global2.a.a.x >= 4016u, Struct_1(~global2.a.a, vec2<bool>(true, true)), 699f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1209f, global1.d, -456f) + vec3<f32>(1774f, global1.d, global1.d)))), global2.d), global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = vec2<f32>(327f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - _wgslsmith_f_op_f32(-global2.d)), _wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f + _wgslsmith_f_op_f32(-global1.d)))));
    global1 = func_1();
    let var_1 = !(global1.c.b.x & true);
    var var_2 = func_1();
    var var_3 = vec2<i32>(2147483647i, abs(~firstLeadingBit(389i)));
    var var_4 = select(1u, u_input.d, any(var_2.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-450f)), _wgslsmith_f_op_vec2_f32(func_4(30495i, global2.a)).x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-780f, 301f)), _wgslsmith_f_op_f32(712f - var_0.x))), _wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(var_2.d * 784f)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c.a.x, 4294967295u, 44383u, 4294967295u), vec4<u32>(1u, var_2.c.a.x, 1u, 1u) | vec4<u32>(global2.a.a.x, 0u, global1.a.a.x, global2.a.a.x)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d, u_input.b, 0u), vec4<u32>(0u, 31980u, global1.c.a.x, 4294967295u)), select(vec4<u32>(global2.a.a.x, 1u, u_input.a.x, u_input.b), vec4<u32>(15244u, 0u, u_input.a.x, var_2.c.a.x), true))), vec2<u32>(global2.c.a.x, _wgslsmith_div_u32(var_2.a.a.x, ~21345u)), ~var_2.a.a.x, vec2<f32>(var_0.x, 495f));
}

