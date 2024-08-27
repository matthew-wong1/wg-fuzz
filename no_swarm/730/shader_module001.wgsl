struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(1633u, 143706u, 13550u, 57695u), vec4<u32>(32172u, 55890u, 4294967295u, 1u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 74555u, 8858u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 2209u), vec4<u32>(1u, 14485u, 6053u, 7429u), vec4<u32>(9052u, 43904u, 35567u, 13029u), vec4<u32>(1u, 18467u, 0u, 63373u), vec4<u32>(29359u, 18631u, 7598u, 34459u), vec4<u32>(2280u, 1u, 1u, 31059u), vec4<u32>(10725u, 27174u, 51760u, 0u), vec4<u32>(1u, 0u, 59065u, 56202u), vec4<u32>(15329u, 4294967295u, 36216u, 49205u));

var<private> global1: f32;

var<private> global2: vec3<i32> = vec3<i32>(36322i, 2147483647i, i32(-2147483648));

var<private> global3: u32 = 68027u;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(false, true), 3866u, false, 28114i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = global4.b;
    let var_1 = arg_0;
    var var_2 = vec3<i32>(i32(-1i) * -1i, 1i >> (abs(global4.b >> (min(1u, var_1) % 32u)) % 32u), ~(-(~global2.x)) & _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-60199i, -2147483647i, 7019i, 1828i)), reverseBits(max(vec4<i32>(64928i, 1i, 1i, u_input.c), vec4<i32>(u_input.c, -41410i, global2.x, u_input.a)))));
    var var_3 = max(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.a, 2147483647i, -1i, var_2.x)) ^ vec4<i32>(-1i, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -13125i, 0i), vec3<i32>(1i, global4.d, u_input.a)), ~global4.d), select(min(-vec4<i32>(-50584i, global2.x, u_input.a, -67966i), -vec4<i32>(0i, global2.x, 41558i, u_input.a)), ~abs(vec4<i32>(var_2.x, var_2.x, -1i, 0i)), arg_1)), abs(vec4<i32>(global2.x & 43140i, ~abs(var_2.x), _wgslsmith_mod_i32(u_input.a, -u_input.c), select(33719i, i32(-1i) * -45494i, true))));
    var var_4 = -784f;
    return -_wgslsmith_mod_i32(2147483647i, -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f));
    let var_0 = select(_wgslsmith_mult_u32(4294967295u, ~4294967295u), global4.b >> (~55793u % 32u), true);
    return ((_wgslsmith_sub_i32(65361i, arg_0.d) & global4.d) << (1u % 32u)) & -1i;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(-1133f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-296f))), 1103f)));
    var var_1 = Struct_2(-func_4(Struct_1(!vec2<bool>(true, global4.a.x), 35984u, all(vec4<bool>(false, true, global4.c, false)), func_3(1u, false)), ~vec4<u32>(global4.b, 35856u, 14525u, u_input.b.x)), global4.a.x, Struct_1(global4.a, _wgslsmith_dot_vec3_u32(~reverseBits(u_input.b.yww), vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, global4.b, u_input.b.x), ~u_input.b.x, u_input.b.x & 0u)), true | any(vec3<bool>(false, false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, u_input.a, u_input.c), -vec3<i32>(u_input.a, global4.d, global4.d)) >> (~(0u >> (global4.b % 32u)) % 32u)), !vec3<bool>(any(select(vec3<bool>(global4.a.x, global4.a.x, global4.a.x), vec3<bool>(true, global4.a.x, false), global4.c)), true, u_input.c != u_input.c));
    global1 = arg_0;
    let var_2 = true;
    let var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(-2147483647i, global2.x, u_input.a, global2.x)), min(~vec4<i32>(global4.d, 0i, 2147483647i, 0i), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global2.x, global4.d, 0i), vec4<i32>(global2.x, global4.d, var_1.c.d, global2.x), vec4<i32>(1163i, u_input.c, 65i, 65913i)), -vec4<i32>(global4.d, var_1.c.d, var_1.a, var_1.a)))), vec4<i32>(max(-abs(-25394i), (var_1.c.d >> (0u % 32u)) & global4.d), i32(-1i) * -18651i, _wgslsmith_sub_i32(abs(u_input.a), i32(-1i) * -1i) | -5246i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c, 2147483647i), global2.zy, var_1.c.a) | _wgslsmith_sub_vec2_i32(global2.yz, vec2<i32>(global2.x, var_1.c.d)), select(max(vec2<i32>(-1i, -2558i), global2.xy), global2.zx, true))));
    return var_2;
}

fn func_1() -> u32 {
    var var_0 = vec4<bool>(global4.a.x, true, true, !func_2(1335f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(511f, -681f, -1339f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-485f, -1000f, 350f) + vec3<f32>(-710f, 1379f, -138f)))));
    var var_1 = ~(~firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(global4.b, 0u))));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~(9140u << (u_input.b.x % 32u))), firstTrailingBit(53245u), 0u), vec3<u32>(~1u, global4.b, ~4294967295u));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -852f), 1360f, -852f, _wgslsmith_f_op_f32(max(322f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1334f)))))))));
    var var_4 = Struct_2(max(~26348i, -global4.d), (min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, -2147483647i), vec3<i32>(-4577i, global2.x, 0i)), -u_input.a) & -34095i) >= 1i, Struct_1(!var_0.yx, 0u >> (global4.b % 32u), !any(!vec4<bool>(var_0.x, false, var_0.x, false)), global4.d), var_0.yzz);
    return firstTrailingBit(firstLeadingBit(29016u) & select(~reverseBits(var_4.c.b), 40775u, global4.c & true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1()) >> (~(u_input.b.x << (abs(1u) % 32u)) % 32u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(554f, -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-3458f, 959f)) + 1000f))));
    global3 = select(1u, u_input.b.x, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(firstLeadingBit(max(global4.b, 1u)), 13u)], global0[_wgslsmith_index_u32(global4.b, 13u)]) <= _wgslsmith_div_u32(10802u, min(331u, _wgslsmith_div_u32(global4.b, global4.b))));
    let var_1 = ~0u;
    var_0 = abs(29371u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-637f))), max(vec2<u32>(u_input.b.x, 0u), u_input.b.ww), -1852f);
}

