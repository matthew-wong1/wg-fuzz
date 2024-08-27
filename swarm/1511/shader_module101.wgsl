struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(28150u, 1u), 14u)];
    var_0 = select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~arg_1.xy, ~vec2<u32>(u_input.a.x, arg_2.x)), arg_1.yw)), 14u)], vec4<bool>(true != (!var_0.x && var_0.x), true, false, true), !vec4<bool>(!all(vec2<bool>(var_0.x, false)), !(false || var_0.x), var_0.x, var_0.x));
    var_0 = !select(select(select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, arg_1.x), 14u)], global0[_wgslsmith_index_u32(~34341u, 14u)], !var_0.x), !global0[_wgslsmith_index_u32(arg_3.a, 14u)], true), vec4<bool>(true && any(global0[_wgslsmith_index_u32(30495u, 14u)]), false, false, var_0.x), !select(global0[_wgslsmith_index_u32(1u, 14u)], select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, false, var_0.x), global0[_wgslsmith_index_u32(24816u, 14u)]), !global0[_wgslsmith_index_u32(121948u, 14u)]));
    var_0 = !select(vec4<bool>(var_0.x, true, !(!var_0.x), true | !var_0.x), vec4<bool>(all(vec4<bool>(var_0.x, false, var_0.x, false)), var_0.x, var_0.x, 17259u <= _wgslsmith_mult_u32(arg_1.x, 4294967295u)), all(vec3<bool>(var_0.x, true, true)));
    var_0 = !select(!vec4<bool>(all(global0[_wgslsmith_index_u32(arg_2.x, 14u)]), select(var_0.x, false, var_0.x), !var_0.x, all(vec2<bool>(true, var_0.x))), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~4294967295u, arg_3.a), 14u)], var_0.x);
    return var_0.x;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1780f, 215f, -1815f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(773f, -726f, 179f) + vec3<f32>(750f, 267f, -364f)), vec3<f32>(292f, -538f, -207f)) - vec3<f32>(_wgslsmith_f_op_f32(-391f - -875f), _wgslsmith_f_op_f32(sign(411f)), _wgslsmith_f_op_f32(1000f - 731f))), func_3(~u_input.a.x, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(8585u, u_input.a.x, 110742u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 21189u), vec4<u32>(u_input.a.x, 24256u, 0u, 9007u)), ~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), Struct_1(0u ^ u_input.a.x, 1165f, _wgslsmith_f_op_f32(select(-788f, 1000f, true)))))));
    var var_1 = _wgslsmith_f_op_f32(-304f * -1850f);
    var_1 = -1766f;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f), var_0.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1248f), _wgslsmith_f_op_f32(trunc(-392f))));
    return var_3.x > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_3.x, 237f)))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    let var_0 = func_2();
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    var var_1 = vec4<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1830f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x + -904f))))), arg_1.b);
    return _wgslsmith_div_i32(abs(-19791i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, _wgslsmith_mod_i32(1i, 18997i), ~(-1i), abs(-1142i)), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i))), 32053i << (u_input.a.x % 32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    let var_0 = _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zx, ~(u_input.a.yx | (vec2<u32>(53496u, 4294967295u) ^ u_input.a.yz))));
    global0 = array<vec4<bool>, 14>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-vec2<i32>(-51324i, countOneBits(-2147483647i) << (abs(u_input.a.x) % 32u)), -1000f, Struct_1((u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 28742u), u_input.a.zx) % 32u)) << (abs(~0u) % 32u), 993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-150f * 2513f)))), vec3<i32>(_wgslsmith_sub_i32(reverseBits(9152i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 3762i, -47094i, 1i), vec4<i32>(-2147483647i, 50749i, 2147483647i, -15708i)), ~(~16843i)), ~_wgslsmith_sub_i32(1i, -86259i), _wgslsmith_sub_i32(func_1(Struct_2(vec3<f32>(134f, 607f, 1358f), 615f), Struct_2(vec3<f32>(-2265f, -464f, -726f), 365f), vec2<f32>(-804f, 347f)) & _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -44402i, 69082i), vec3<i32>(-29936i, 0i, 1i)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -33083i, -62523i, 5320i), vec4<i32>(-6007i, -2147483647i, 23461i, 1i))))));
    global0 = array<vec4<bool>, 14>();
    let var_1 = func_4(_wgslsmith_div_vec2_i32(select(vec2<i32>(1i, 73830i), _wgslsmith_add_vec2_i32(-vec2<i32>(1i, 2147483647i), vec2<i32>(-39416i, 10620i)), vec2<bool>(false, true)), reverseBits(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-13476i, -1i), vec2<i32>(-1i, 62384i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(select(-780f, var_0.b, true))))), Struct_1(1u, 450f, func_4(vec2<i32>(firstLeadingBit(0i), abs(1i)), _wgslsmith_f_op_f32(floor(-146f)), Struct_1(firstLeadingBit(48759u), var_0.b, var_0.c), firstTrailingBit(vec3<i32>(29389i, 19955i, -2147483647i)) | max(vec3<i32>(0i, 0i, -9093i), vec3<i32>(-60308i, 11525i, -39109i))).c), -firstTrailingBit(select(select(vec3<i32>(2147483647i, -47315i, 1i), vec3<i32>(-26260i, -2147483647i, -93537i), vec3<bool>(false, false, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 28841i, 0i), vec3<i32>(0i, 1i, 106749i), vec3<i32>(58867i, -10455i, 0i)), true)));
    global0 = array<vec4<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(select(_wgslsmith_add_u32(4294967295u >> (var_1.a % 32u), 10238u >> (u_input.a.x % 32u)), var_0.a, any(vec2<bool>(true, true))), (u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(94096u, u_input.a.x, var_0.a, var_1.a), vec4<u32>(1u, var_0.a, 11533u, u_input.a.x)) % 32u)) ^ abs(4294967295u)), var_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2082f - 1291f), 621f, _wgslsmith_f_op_f32(var_0.c + var_0.b), -742f) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, 123f, -1237f, var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_1.b, var_0.c, var_1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1547f, -224f, var_1.c, -731f), vec4<f32>(var_0.c, var_1.c, -587f, var_1.c), vec4<bool>(true, true, false, false))), vec4<f32>(var_1.c, -2571f, 360f, 1461f))), vec4<bool>(true, true, true, true))), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)));
}

