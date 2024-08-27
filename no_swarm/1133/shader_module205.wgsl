struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(36151i, 0i), Struct_3(-45940i, -9404i), Struct_3(-34029i, 2147483647i), Struct_3(33021i, -35250i), Struct_3(44439i, 0i), Struct_3(-1i, 2147483647i), Struct_3(-22438i, -8189i), Struct_3(1i, 2147483647i), Struct_3(i32(-2147483648), i32(-2147483648)), Struct_3(i32(-2147483648), -1i), Struct_3(-44198i, 0i), Struct_3(40032i, -89334i), Struct_3(61726i, 1i), Struct_3(2147483647i, i32(-2147483648)), Struct_3(i32(-2147483648), 3145i), Struct_3(-1i, -7417i), Struct_3(50145i, 2147483647i), Struct_3(-29924i, 19250i), Struct_3(61721i, -18176i), Struct_3(46125i, 0i), Struct_3(11477i, 58930i), Struct_3(-2785i, 0i), Struct_3(0i, -1i), Struct_3(5241i, 1i), Struct_3(2147483647i, 46884i), Struct_3(1i, -41919i), Struct_3(-41187i, i32(-2147483648)), Struct_3(0i, i32(-2147483648)), Struct_3(-8289i, -5167i), Struct_3(-64183i, -8847i), Struct_3(-82707i, -1i), Struct_3(-1081i, 0i));

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-615f, vec4<i32>(1i, 19632i, -718i, -28005i), 42055u, 38252u), Struct_1(-1781f, vec4<i32>(1i, -1i, 2147483647i, i32(-2147483648)), 78092u, 4294967295u), Struct_1(942f, vec4<i32>(-30805i, 1i, -9121i, 57684i), 0u, 6491u), Struct_1(1000f, vec4<i32>(37495i, i32(-2147483648), 40022i, 2147483647i), 2856u, 0u), Struct_1(-252f, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -22185i), 0u, 1u), Struct_1(-1460f, vec4<i32>(-1i, 1i, 46989i, 1i), 4294967295u, 21581u), Struct_1(331f, vec4<i32>(-14990i, -19652i, 2147483647i, -1i), 33229u, 37668u), Struct_1(-790f, vec4<i32>(-4564i, 3808i, 0i, 53354i), 0u, 0u), Struct_1(-1000f, vec4<i32>(0i, i32(-2147483648), -54570i, 37760i), 56870u, 26767u), Struct_1(-112f, vec4<i32>(-13357i, 1i, 1i, -88345i), 65076u, 9591u));

var<private> global3: vec3<i32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = select(vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), true, select(false, all(vec3<bool>(true, true, true)), false), false), vec4<bool>(true, !(arg_0 != _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 1u, 1u, 0u), global0[_wgslsmith_index_u32(0u, 22u)])), !select(any(vec2<bool>(true, false)), any(vec4<bool>(false, true, false, false)), true), false), select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), all(vec3<bool>(true, false, true))), vec4<bool>(any(vec4<bool>(false, false, false, true)) & (69304u <= u_input.a.x), true, _wgslsmith_mult_u32(0u, u_input.a.x) < max(arg_0, 0u), all(vec2<bool>(true, true)))));
    let var_1 = !(countOneBits(global3.x) > min(~(~(-16578i)), 17457i));
    global0 = array<vec4<u32>, 22>();
    var var_2 = global3.xz;
    var var_3 = Struct_2(i32(-1i) * -2147483647i, Struct_1(arg_1.x, vec4<i32>(firstLeadingBit(-27394i), arg_2.a, 4785i & _wgslsmith_mult_i32(u_input.c, 2147483647i), _wgslsmith_mod_i32(-5326i, -var_2.x)), 24587u, 54558u << (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 17623u, 2841u, u_input.a.x), min(global0[_wgslsmith_index_u32(13715u, 22u)], global0[_wgslsmith_index_u32(30566u, 22u)])) % 32u)), -2147483647i);
    return vec3<bool>(!(min(~1u, _wgslsmith_sub_u32(arg_0, u_input.a.x)) > ~min(1u, 24370u)), -2147483647i >= select(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, arg_2.b), u_input.b.wx | vec2<i32>(global3.x, 17222i)), -_wgslsmith_mult_i32(1711i, 0i), !select(var_1, var_0.x, var_0.x)), var_0.x && var_0.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<Struct_3, 32>();
    global1 = array<Struct_3, 32>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-638f * -1664f) - _wgslsmith_f_op_f32(889f * -2341f)), _wgslsmith_div_f32(-421f, _wgslsmith_f_op_f32(f32(-1f) * -841f)), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-744f, _wgslsmith_f_op_f32(step(-1000f, -1000f))))), all(select(func_3(arg_0, vec2<f32>(1078f, 315f), global1[_wgslsmith_index_u32(arg_0, 32u)]), vec3<bool>(true, false, true), vec3<bool>(false, false, false))))), _wgslsmith_div_f32(_wgslsmith_div_f32(464f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-976f, -1935f)), _wgslsmith_f_op_f32(trunc(495f)), true))), 1000f));
    return Struct_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -913f))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, ~vec4<i32>(-3816i, -62619i, global3.x, 1i)), min(u_input.b, u_input.b)), _wgslsmith_mod_u32(arg_0, u_input.d), _wgslsmith_clamp_u32(~(u_input.d & ~arg_0), _wgslsmith_mult_u32(abs(4294967295u), countOneBits(arg_0)) & ~arg_0, ~(~4294967295u)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(1260f, ~abs(u_input.b), _wgslsmith_div_u32(~_wgslsmith_mult_u32(arg_0.d, ~75200u), ~11747u), u_input.d);
    global2 = array<Struct_1, 10>();
    let var_1 = func_2(~(1u >> (u_input.d % 32u)) | (~(~var_0.c) & ~var_0.c));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-741f + _wgslsmith_f_op_f32(-602f - 1140f)))));
    var var_3 = countOneBits(arg_0.d);
    return 0i >> (0u % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_5 {
    let var_0 = abs(u_input.b.zzx);
    var var_1 = 2362i >= max(-global3.x >> (~arg_2.d % 32u), -31372i);
    let var_2 = global2[_wgslsmith_index_u32(arg_2.c, 10u)];
    var var_3 = ~(u_input.a.yx << (u_input.a.zx % vec2<u32>(32u)));
    let var_4 = min(min(arg_1, -1i), 11193i);
    return Struct_5(_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(func_2(var_2.d).a)), 897f))), func_2(min(4294967295u, ~u_input.a.x << (countOneBits(29599u) % 32u))));
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1.b;
    global2 = array<Struct_1, 10>();
    let var_1 = global2[_wgslsmith_index_u32(min(0u, u_input.d), 10u)];
    let var_2 = -880f;
    let var_3 = ~vec3<u32>(~reverseBits(u_input.d), select(~var_1.d, _wgslsmith_div_u32(arg_1.b.d, 59873u ^ var_0.d), true), u_input.d);
    return func_4(Struct_2(abs(-1i), func_2(1u), -_wgslsmith_mod_i32(var_0.b.x, firstTrailingBit(-8394i))), global3.x, arg_1.b).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-127f + 1000f), func_5(u_input.c, func_4(Struct_2(global3.x, global2[_wgslsmith_index_u32(~1u, 10u)], ~u_input.c), func_1(Struct_1(231f, vec4<i32>(-53055i, 0i, u_input.b.x, global3.x), 4294967295u, 4294967295u)), func_2(1u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(200f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -157f))))));
    global3 = u_input.b.xyx;
    global1 = array<Struct_3, 32>();
    global0 = array<vec4<u32>, 22>();
    var var_1 = func_3(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 303f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-437f, var_0.b.a) * vec2<f32>(var_0.a, var_0.b.a)))))), Struct_3(9807i, 2147483647i));
    let var_2 = var_0;
    global1 = array<Struct_3, 32>();
    let var_3 = Struct_2(-27046i, func_2(0u), _wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(45471i & global3.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, var_0.b.b.x, -1i), vec3<i32>(-26563i, -17829i, -18633i))), var_2.b.b.x));
    global3 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, ~var_2.b.b.x, -2147483647i, 1i), ~vec4<i32>(5002i, var_3.c, 2147483647i, var_3.a)), -54354i, global3.x), -abs(vec3<i32>(~var_2.b.b.x, 2147483647i, global3.x ^ 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_3.c), vec2<i32>(-1i, 22979i))) & vec2<i32>(func_4(var_3, u_input.b.x, var_3.b).b.b.x, _wgslsmith_dot_vec2_i32(global3.xz, var_0.b.b.yw)), reverseBits(vec2<i32>(_wgslsmith_sub_i32(1i, -u_input.c), _wgslsmith_div_i32(-global3.x, -34230i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f), 299f), _wgslsmith_clamp_vec2_u32(u_input.a.xy, min(~select(u_input.a.xz, u_input.a.yz, true), u_input.a.zz), vec2<u32>(29184u, 4294967295u)), abs(max(var_2.b.b, _wgslsmith_mod_vec4_i32(var_0.b.b, var_2.b.b))));
}

