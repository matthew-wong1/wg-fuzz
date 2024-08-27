struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<i32, 1> = array<i32, 1>(1i);

var<private> global3: i32;

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    global1 = _wgslsmith_f_op_f32(-global0.d.x);
    let var_0 = vec3<bool>(false, global4.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.b.yy, arg_1.b.a.b.yy), global0.b.yx), -_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -12853i, 25775i, global0.b.x), vec4<i32>(-29822i, 1i, arg_1.b.b, global0.b.x))) != -_wgslsmith_clamp_i32(select(arg_1.b.a.c, global0.b.x, true), -2147483647i, 2147483647i));
    let var_1 = Struct_5(arg_2.a, arg_1.b.a.b, arg_1.b);
    var var_2 = true;
    let var_3 = Struct_4(var_1.a);
    return _wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = Struct_4(arg_1.c.zx);
    let var_1 = Struct_4(~arg_1.c.wz);
    var_0 = var_1;
    global4 = select(vec2<bool>(!arg_1.a.x, all(!select(arg_1.b.c, arg_1.a, vec4<bool>(false, false, global0.a, false)))), vec2<bool>(-1000f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.d.x)), global0.d.x), true), vec2<bool>(global0.a, true));
    var var_2 = u_input.a.x;
    return vec4<f32>(arg_1.b.a.d.x, 1284f, _wgslsmith_f_op_f32(trunc(451f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.a.d.x * global0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.d + arg_1.b.d)))), any(!arg_1.b.c.zww))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(func_3(global0.a, Struct_3(select(vec4<bool>(false, false, global4.x, global4.x), vec4<bool>(global4.x, global4.x, global0.a, true), true), Struct_2(Struct_1(true, vec3<i32>(global0.b.x, -2147483647i, global2[_wgslsmith_index_u32(0u, 1u)]), -2147483647i, vec4<f32>(global0.d.x, 1262f, -665f, 844f)), 24901i, vec4<bool>(true, global0.a, false, global0.a), global0.d.x, u_input.a.x), u_input.a, ~4294967295u, _wgslsmith_f_op_vec4_f32(global0.d - vec4<f32>(1374f, global0.d.x, 512f, global0.d.x))), Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(29210u, 1u), vec2<u32>(u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_f32(ceil(global0.d.x)), _wgslsmith_f_op_f32(step(936f, -1000f))), Struct_3(select(vec4<bool>(true, true, true, true), !vec4<bool>(global4.x, true, false, true), all(!vec3<bool>(global4.x, false, false))), Struct_2(Struct_1(true, ~vec3<i32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], 3153i), firstTrailingBit(-9061i), _wgslsmith_f_op_vec4_f32(-global0.d)), ~_wgslsmith_clamp_i32(global0.b.x, -2147483647i, -3442i), vec4<bool>(false, true, select(global0.a, global4.x, true), false), global0.d.x, 23539u), vec4<u32>((u_input.a.x & 41586u) ^ ~u_input.a.x, u_input.a.x, select(u_input.a.x, u_input.a.x, false) >> (26976u % 32u), u_input.a.x), max(u_input.a.x, _wgslsmith_clamp_u32(0u, max(1u, u_input.a.x), 4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(786f, -433f, 1000f, 796f) * vec4<f32>(-1046f, global0.d.x, -1752f, 1877f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(global0.d))))))));
    let var_1 = Struct_3(vec4<bool>(true, !global0.a || !global4.x, true, true), Struct_2(Struct_1(false, ~global0.b, _wgslsmith_add_i32(-global0.c, ~global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), var_0), i32(-1i) * -55591i, select(select(vec4<bool>(true, false, global0.a, true), select(vec4<bool>(global4.x, false, true, global4.x), vec4<bool>(global0.a, true, true, global4.x), vec4<bool>(true, global4.x, global4.x, global4.x)), select(vec4<bool>(global4.x, global4.x, false, global0.a), vec4<bool>(global4.x, global4.x, global4.x, false), vec4<bool>(true, true, false, true))), select(vec4<bool>(global4.x, global0.a, false, true), !vec4<bool>(global0.a, global4.x, global4.x, false), !vec4<bool>(false, true, global4.x, false)), global0.a), _wgslsmith_f_op_f32(ceil(global0.d.x)), 4294967295u), vec4<u32>(14587u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 27180u, u_input.a.x)), select(u_input.a.yyx, u_input.a.zzy, global4.x)), 35187u), 1u, abs(_wgslsmith_dot_vec3_u32(abs(u_input.a.yww), abs(vec3<u32>(67077u, 23201u, 4294967295u))))), firstLeadingBit(max(firstLeadingBit(~1u), 1u)), _wgslsmith_f_op_vec4_f32(exp2(var_0)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-355f)))))));
    var var_3 = var_1.a.wx;
    var var_4 = var_1.b;
    return Struct_1(true, abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-10717i, global2[_wgslsmith_index_u32(var_1.c.x, 1u)], -1i), -var_1.b.a.b)) << (var_1.c.xyx % vec3<u32>(32u)), -27451i, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(822f, var_4.a.d.x, var_0.x, -961f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(274f, var_1.b.a.d.x, global0.d.x, -1430f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0))));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec3<i32> {
    global0 = func_2();
    let var_0 = all(vec4<bool>(all(vec2<bool>(false, global0.a)) && !global0.a, u_input.a.x == 0u, global4.x, true)) & global4.x;
    let var_1 = _wgslsmith_mod_i32(global0.b.x, global0.b.x);
    var var_2 = Struct_4(vec2<u32>(~1u, u_input.a.x));
    global3 = ~firstTrailingBit(~2902i);
    return abs(global0.b) | vec3<i32>(firstLeadingBit((-2147483647i << (var_2.a.x % 32u)) | global2[_wgslsmith_index_u32(1u, 1u)]), min(2147483647i, -arg_1 | countOneBits(10874i)), -6186i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!(!vec4<bool>(any(vec3<bool>(true, global4.x, false)), true, true, global0.c < global0.c)), Struct_2(Struct_1(true, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(542f, global0.d.x, -1570f, global0.d.x)), global0.c), global0.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, 1488f, global0.d.x, 748f))))), global2[_wgslsmith_index_u32(u_input.a.x, 1u)], vec4<bool>(true, any(select(vec2<bool>(global4.x, false), vec2<bool>(true, global4.x), vec2<bool>(true, global4.x))), any(!vec4<bool>(global4.x, false, true, global4.x)), func_2().a & all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.d.x, global0.d.x), global0.d.x, global0.d.x > global0.d.x)))), u_input.a.x), _wgslsmith_mult_vec4_u32(u_input.a, select(max(u_input.a, u_input.a), vec4<u32>(94238u, 4294967295u, u_input.a.x, u_input.a.x), u_input.a.x <= u_input.a.x)) ^ abs(abs(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 33376u, u_input.a.x)))), 63852u, global0.d);
    let var_1 = select(firstLeadingBit(~select(371u, _wgslsmith_mod_u32(var_0.d, var_0.b.e), true)), ~_wgslsmith_mod_u32(~(~u_input.a.x), 1u), var_0.b.c.x);
    var var_2 = _wgslsmith_mult_u32(36232u, ~var_1);
    var_0 = Struct_3(var_0.b.c, var_0.b, vec4<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(33466u, var_1, 45557u, var_0.d) >> (vec4<u32>(var_1, var_0.b.e, 0u, var_0.c.x) % vec4<u32>(32u)), var_0.c)), firstTrailingBit(1u), _wgslsmith_sub_u32(~5157u, ~(~80997u))), _wgslsmith_dot_vec3_u32(u_input.a.zyx, _wgslsmith_mult_vec3_u32(u_input.a.xyz, vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, var_1, var_1)), u_input.a.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.d * _wgslsmith_f_op_vec4_f32(-global0.d)))));
    var var_3 = -429f;
    var_0 = Struct_3(!vec4<bool>(any(select(vec2<bool>(false, global0.a), var_0.b.c.wx, false)), global4.x, false, func_2().a), var_0.b, vec4<u32>(select(11920u, var_1, true), _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), firstTrailingBit(~(~8478u)), 4294967295u), 1u >> (~(countOneBits(1u) | ~var_0.d) % 32u), global0.d);
    var var_4 = !((global0.a || all(var_0.b.c.yxz)) & select(!var_0.a.x & any(var_0.b.c.yxz), !(var_0.b.a.d.x < global0.d.x), global4.x));
    global0 = Struct_1(all(!select(select(vec4<bool>(true, true, false, global4.x), vec4<bool>(global0.a, global4.x, global4.x, false), global4.x), !vec4<bool>(false, true, global4.x, true), true)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(global0.c, -45530i, 1i)), reverseBits(_wgslsmith_div_vec3_i32(var_0.b.a.b, var_0.b.a.b))), var_0.b.a.b >> (max(u_input.a.wyz, u_input.a.zzw >> (vec3<u32>(1u, 23578u, 137u) % vec3<u32>(32u))) % vec3<u32>(32u))), -_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(global0.b, vec3<i32>(-11266i, -7584i, global0.b.x)), vec3<i32>(_wgslsmith_sub_i32(-1i, -37349i), 0i, global2[_wgslsmith_index_u32(reverseBits(var_1), 1u)])), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.d, global0.d) + _wgslsmith_f_op_vec4_f32(global0.d - vec4<f32>(global0.d.x, -1605f, -1215f, var_0.b.d))), global0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.d)) + func_2().d)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 1u, 49505u, 67019u) ^ vec4<u32>(var_0.c.x, 48611u, u_input.a.x, u_input.a.x), reverseBits(u_input.a)), ~vec4<u32>(17897u, 4294967295u, u_input.a.x, var_0.b.e)) << ((~_wgslsmith_mod_u32(var_0.d, 1u) ^ 1u) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)) - -1948f), global0.d.x), vec3<i32>(~(_wgslsmith_div_i32(var_0.b.b, 1i) << (1u % 32u)), _wgslsmith_dot_vec3_i32(global0.b, ~(vec3<i32>(global2[_wgslsmith_index_u32(var_0.c.x, 1u)], 2147483647i, -1i) & vec3<i32>(global0.c, 47892i, 1208i))), _wgslsmith_div_i32(~(~5533i), _wgslsmith_dot_vec3_i32(reverseBits(global0.b), abs(vec3<i32>(-61575i, global0.c, -782i))))));
}

