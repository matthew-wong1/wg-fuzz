struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -616f);

var<private> global1: array<i32, 9> = array<i32, 9>(35008i, 1i, -53268i, 0i, i32(-2147483648), i32(-2147483648), 1i, 2147483647i, 53648i);

var<private> global2: array<vec4<u32>, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: Struct_3) -> bool {
    var var_0 = Struct_4(arg_3.b);
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    var_0 = Struct_4(arg_0);
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_div_vec3_i32(-arg_3.b.a.a, _wgslsmith_add_vec3_i32(vec3<i32>(arg_3.d.x, var_0.a.a.a.x, arg_0.a.a.x), vec3<i32>(global1[_wgslsmith_index_u32(arg_2.x, 9u)], arg_0.a.a.x, global1[_wgslsmith_index_u32(1u, 9u)]))))));
    return !(~_wgslsmith_clamp_u32(arg_2.x, reverseBits(arg_2.x), 590u) >= 31918u);
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(862f)), _wgslsmith_div_f32(-1053f, -1587f)))))));
    let var_0 = all(select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false)), vec4<bool>(!any(vec2<bool>(false, false)), 0u >= _wgslsmith_dot_vec3_u32(vec3<u32>(35881u, 57391u, 0u), vec3<u32>(99395u, 954u, 4294967295u)), true || any(vec4<bool>(false, true, true, false)), true), func_3(Struct_2(Struct_1(u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x), ~vec3<u32>(1u, 1u, 1u), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, -1000f, global0.x)), Struct_2(Struct_1(vec3<i32>(u_input.b.x, arg_0.a.a.x, -40686i))), _wgslsmith_f_op_f32(global0.x - -532f), ~arg_0.a.a.yx, vec2<bool>(false, true)))));
    var var_1 = 4294967295u;
    let var_2 = Struct_4(arg_0);
    var var_3 = u_input.b;
    return vec2<u32>(min(82149u, _wgslsmith_mult_u32(1u, firstLeadingBit(_wgslsmith_mult_u32(15904u, 4685u)))), min(_wgslsmith_add_u32(510u, 1u), ~(~4294967295u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~4931u, _wgslsmith_dot_vec2_u32(vec2<u32>(7333u, 0u), vec2<u32>(18759u, 57524u))), func_2(Struct_2(Struct_1(vec3<i32>(2147483647i, arg_0.x, arg_2.x))))), 4294967295u), _wgslsmith_mod_u32(firstLeadingBit(~14949u), _wgslsmith_div_u32(_wgslsmith_add_u32(~15355u, 1u), 1u)));
    var var_1 = Struct_2(Struct_1(abs(arg_2 << (vec3<u32>(var_0, 2431u, 104534u) % vec3<u32>(32u)))));
    let var_2 = -396f;
    global2 = array<vec4<u32>, 25>();
    let var_3 = var_1.a;
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, arg_1, var_2)))))), Struct_2(Struct_1(arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2140f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))), _wgslsmith_f_op_f32(round(-1253f))), select(reverseBits(arg_0.yz), countOneBits(arg_2.yx << (vec2<u32>(33713u, 1u) % vec2<u32>(32u))), firstLeadingBit(-2147483647i) >= -var_3.a.x), select(select(vec2<bool>(false, false), vec2<bool>(select(true, true, false), false), vec2<bool>(true, all(vec3<bool>(true, false, true)))), vec2<bool>(-1i != var_1.a.a.x, all(vec4<bool>(false, false, true, true))), vec2<bool>(!(var_0 >= 3623u), true)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    global0 = arg_0.a.zy;
    let var_0 = -15593i;
    global1 = array<i32, 9>();
    let var_1 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(11952u, 0u), vec2<u32>(34819u, 70228u), vec2<u32>(36497u, 50781u)))), firstTrailingBit(select(~vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 12476u), true) >> (vec2<u32>(~1u, abs(1u)) % vec2<u32>(32u))));
    var var_2 = !any(!vec3<bool>(arg_0.e.x, !arg_0.e.x, func_3(Struct_2(arg_0.b.a), arg_0.a.yz, vec3<u32>(1u, 1u, 46666u), arg_0)));
    return min(~0i, 4723i >> (((var_1 << (_wgslsmith_sub_u32(var_1, 0u) % 32u)) & 82u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_4(func_1(vec3<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(41545u, 9u)], -1i), -global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(~98004u, 9u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(347f, 1000f)))), vec3<i32>(i32(-1i) * -27509i, reverseBits(u_input.b.x), i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-935f, 180f) + vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(760f, global0.x)), vec2<bool>(true, true)))), func_1(u_input.b.yyz, global0.x, reverseBits(-u_input.a), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x))).b, Struct_2(func_1(u_input.b.xww, _wgslsmith_f_op_f32(251f + global0.x), _wgslsmith_div_vec3_i32(u_input.b.wwx, u_input.a), vec2<f32>(global0.x, global0.x)).b.a), Struct_2(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], -17536i, u_input.a.x) << (vec3<u32>(0u, 26364u, 17767u) % vec3<u32>(32u)))));
    var var_1 = true;
    let var_2 = 29459i;
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -1000f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-589f, -619f, -236f)))), vec3<f32>(_wgslsmith_f_op_f32(global0.x - -1684f), _wgslsmith_f_op_f32(1224f + 1000f), global0.x)), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1163f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(180f, global0.x, global0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -274f, global0.x), vec3<f32>(global0.x, global0.x, global0.x))))))));
    var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1251f + var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.x, global0.x))))), global0.x)));
    var var_4 = func_1(-(_wgslsmith_add_vec3_i32(select(u_input.a, vec3<i32>(-24064i, var_0, 0i), vec3<bool>(false, true, true)), vec3<i32>(u_input.b.x, var_0, var_2)) ^ -u_input.b.zwz), _wgslsmith_div_f32(-303f, -273f), _wgslsmith_clamp_vec3_i32(~(_wgslsmith_add_vec3_i32(u_input.b.zzy, u_input.b.yyy) >> (vec3<u32>(17115u, 19452u, 4294967295u) % vec3<u32>(32u))), u_input.a, u_input.a ^ u_input.b.yzy), vec2<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(378f, 466f)), func_1(u_input.b.zwx, -116f, u_input.b.zzz, var_3.xz).c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.x)), 318f)), _wgslsmith_f_op_f32(select(-953f, _wgslsmith_f_op_f32(1034f - global0.x), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(1u, 1u), 12377u, min(min(~86247u, 0u), _wgslsmith_div_u32(_wgslsmith_add_u32(16701u, 0u), max(62701u, 2511u))), _wgslsmith_sub_u32(firstTrailingBit(41983u) >> (1u % 32u), 38720u)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + -254f) * global0.x))), global0.x), -min(vec2<i32>(_wgslsmith_add_i32(var_0, 2147483647i), 1i), firstLeadingBit(-vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 9u)]))), vec3<f32>(-129f, _wgslsmith_f_op_f32(global0.x * -361f), _wgslsmith_div_f32(_wgslsmith_div_f32(578f, _wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(1210f - var_4.c)))));
}

