struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: bool = true;

var<private> global2: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2206f)), u_input.b.x > u_input.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f - -1250f) * global0[_wgslsmith_index_u32(~26068u, 21u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(arg_0))) - _wgslsmith_f_op_f32(829f * _wgslsmith_f_op_f32(min(1000f, 853f))))), _wgslsmith_f_op_f32(floor(-390f)));
    var var_1 = 34374i;
    let var_2 = var_0;
    var var_3 = global2.a >> (vec2<u32>(1u, global2.a.x) % vec2<u32>(32u));
    let var_4 = Struct_2(all(!vec4<bool>(true, true, global2.c, global2.c)) | true, ~abs(2147483647i), global2.b.zz, var_0);
    return ~4294967295u <= firstTrailingBit(~u_input.b.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = func_3(_wgslsmith_div_f32(-2190f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(466f, global0[_wgslsmith_index_u32(arg_0, 21u)])), -490f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(110f, 2725f))))));
    let var_0 = _wgslsmith_mult_i32(35915i, i32(-1i) * -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(26862i, u_input.d, u_input.d), vec3<i32>(0i, -1i, -31470i)), vec3<i32>(u_input.d, 0i, 18295i)));
    var var_1 = vec3<bool>(global2.b.x, global2.b.x, all(global2.b));
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    return Struct_1(_wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(global2.a, u_input.b, global2.a) << (u_input.b % vec2<u32>(32u)), vec2<u32>(arg_0, 21881u)), select(vec3<bool>(global2.b.x, false, all(vec3<bool>(false, global2.c, global2.c))), vec3<bool>(all(!vec4<bool>(global2.b.x, true, var_1.x, true)), true, var_1.x), false), true);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1198f, global0[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(28683u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 50850u, 1130u)) >> (~arg_0.a.x % 32u)) | _wgslsmith_div_u32(47092u, _wgslsmith_mult_u32(1687u, 1u)), 21u)])), 645f));
    var var_1 = select(select(vec2<bool>(_wgslsmith_f_op_f32(sign(197f)) > _wgslsmith_f_op_f32(step(766f, -554f)), global0[_wgslsmith_index_u32(min(arg_0.a.x, 1381u), 21u)] >= _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_0.a.x, 21u)]))), !(!(!vec2<bool>(arg_0.c, true))), true), select(global2.b.xx, func_2(arg_0.a.x).b.xx, vec2<bool>(!arg_1 && !arg_1, func_2(arg_0.a.x).c)), !vec2<bool>(true, 4294967295u < firstTrailingBit(global2.a.x)));
    global2 = arg_0;
    let var_2 = max(countOneBits(-u_input.a) | 1i, _wgslsmith_mod_i32(17011i, 2147483647i));
    var var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -2147483647i, -1i, 0i), vec4<i32>(1i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_2), vec2<i32>(var_2, -6121i)), -u_input.a), vec4<i32>(u_input.a ^ 59860i, var_2, 1i, 20341i)), vec4<i32>(~select(u_input.d, u_input.a, false), -7434i, ~_wgslsmith_clamp_i32(var_2, 1i, var_2), ~(-650i))), ~var_2);
    return global2.a.x;
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_5 {
    var var_0 = true;
    let var_1 = reverseBits(arg_2.x | -(i32(-1i) * -arg_2.x));
    let var_2 = Struct_5(-513f, var_1, Struct_3(1475f, func_2(_wgslsmith_mod_u32(func_2(9351u).a.x, arg_0)), var_1, Struct_2(!func_2(0u).b.x, reverseBits(_wgslsmith_div_i32(var_1, u_input.d)), vec2<bool>(u_input.b.x < u_input.c, true), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], -1753f)))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.d.d.x), global0[_wgslsmith_index_u32(u_input.b.x, 21u)]));
    var_0 = var_2.c.b.c;
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(573f))))))), u_input.a, var_2.c);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    let var_0 = ~u_input.b.x;
    let var_1 = func_5(u_input.c, select(!select(vec2<bool>(false, global2.c), select(vec2<bool>(global2.b.x, global2.c), global2.b.yz, global2.b.x), vec2<bool>(global2.c, false)), global2.b.yy, select(global2.b.x, !(global2.c | global2.c), -arg_1 < u_input.d)), -_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, u_input.d, 1i), vec3<i32>(arg_1, -3063i, 18297i)) >> (vec3<u32>(func_4(func_2(97776u), all(vec3<bool>(global2.b.x, global2.c, global2.b.x)), true), global2.a.x | ~global2.a.x, u_input.c >> (reverseBits(0u) % 32u)) % vec3<u32>(32u)));
    let var_2 = vec3<i32>(21313i, -var_1.c.c, reverseBits(39278i << (_wgslsmith_mult_u32(max(var_1.c.b.a.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 63395u, global2.a.x, u_input.c), vec4<u32>(0u, 27644u, global2.a.x, u_input.c))) % 32u)));
    let var_3 = abs(global2.a.x);
    let var_4 = u_input.b.x ^ 0u;
    return -41988i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.x;
    global1 = (abs(_wgslsmith_sub_i32(-12412i, -69495i) >> (~global2.a.x % 32u)) <= -_wgslsmith_mod_i32(-11762i, ~u_input.d)) || global2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstLeadingBit(global2.a.x | u_input.c), ~firstTrailingBit(u_input.c)), -(-_wgslsmith_div_vec2_i32(vec2<i32>(10722i, u_input.d), vec2<i32>(1i, u_input.d)) >> (_wgslsmith_sub_vec2_u32(~u_input.b, vec2<u32>(global2.a.x, global2.a.x)) % vec2<u32>(32u))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-u_input.d | (i32(-1i) * -14293i), -func_1(vec2<f32>(1288f, global0[_wgslsmith_index_u32(0u, 21u)]), -22049i, vec3<u32>(33452u, 1u, u_input.b.x)), countOneBits(-u_input.d)), u_input.d), (vec3<u32>(~1u, 0u, reverseBits(global2.a.x)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.c, u_input.b.x), ~vec3<u32>(1u, 34974u, global2.a.x)) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.c, global2.a.x, u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 11073u, 4294967295u) & vec3<u32>(global2.a.x, 4294967295u, u_input.c), ~vec3<u32>(12968u, 4294967295u, global2.a.x))));
}

