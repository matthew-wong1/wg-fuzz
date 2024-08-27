struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_3 = Struct_3(vec3<u32>(12077u, 1u, 4294967295u), vec3<i32>(78844i, 2147483647i, 3354i), 4039i, 4294967295u, vec2<f32>(810f, -904f));

var<private> global2: f32 = -425f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = arg_1.b.xy;
    global1 = Struct_3(~_wgslsmith_div_vec3_u32(~vec3<u32>(global1.d, global1.a.x, global1.a.x), vec3<u32>(~arg_1.d, global1.a.x, firstTrailingBit(0u))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -select(global1.b, vec3<i32>(u_input.e, -2147483647i, u_input.a), vec3<bool>(arg_0, arg_0, arg_0)), ~abs(~global1.b)), _wgslsmith_div_i32(-2147483647i, ~u_input.a), 1u, _wgslsmith_div_vec2_f32(arg_1.e, global1.e));
    let var_1 = arg_2;
    return vec3<u32>(18730u, 1768u, _wgslsmith_mult_u32(~1u, _wgslsmith_clamp_u32(7778u | var_1.x, ~global1.a.x, var_1.x))) | select(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_2.x, arg_2.x), var_1.x, ~var_1.x), arg_2), (vec3<u32>(1u, 1u, 3227u) ^ (global1.a << (arg_1.a % vec3<u32>(32u)))) ^ arg_1.a, !vec3<bool>(!global0.x, all(vec2<bool>(true, false)), true));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    let var_0 = vec3<i32>(-1i) * -(global1.b << (vec3<u32>(77191u, 4294967295u, 0u) % vec3<u32>(32u)));
    let var_1 = global1.e.x;
    let var_2 = Struct_3(func_3(!global0.x | false, Struct_3(vec3<u32>(global1.a.x << (4294967295u % 32u), firstTrailingBit(global1.a.x), ~global1.a.x), vec3<i32>(-19546i, _wgslsmith_mod_i32(u_input.b, -42424i), 0i), 5036i, 39471u, vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0)), global1.e.x)), select(~global1.a, ~global1.a, select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, true))) | global1.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.e.x, 1657f)) * _wgslsmith_f_op_f32(673f + -322f)))), (~(~var_0) ^ ~_wgslsmith_add_vec3_i32(vec3<i32>(global1.b.x, 1986i, u_input.a), vec3<i32>(14946i, -13179i, global1.b.x))) >> ((_wgslsmith_div_vec3_u32(~vec3<u32>(global1.a.x, global1.a.x, 20155u), func_3(global0.x, Struct_3(global1.a, vec3<i32>(global1.b.x, -9322i, -13107i), global1.b.x, 21913u, global1.e), vec3<u32>(0u, global1.a.x, 1u), Struct_2(1672f))) | vec3<u32>(global1.a.x, _wgslsmith_clamp_u32(32908u, global1.a.x, 0u), ~4294967295u)) % vec3<u32>(32u)), -global1.c, _wgslsmith_clamp_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(39444u, global1.d), global1.a.zy), ~_wgslsmith_dot_vec3_u32(global1.a, global1.a)), global1.a.x, ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.d), global1.a.zy))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1533f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1062f - -1036f) + -723f))));
    let var_3 = select(select(!(!select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, true))), !(!(!vec4<bool>(global0.x, false, global0.x, global0.x))), select(select(!vec4<bool>(global0.x, false, true, true), !vec4<bool>(global0.x, global0.x, false, global0.x), true), !(!vec4<bool>(global0.x, true, global0.x, false)), _wgslsmith_add_u32(var_2.a.x, var_2.d) <= _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d, global1.a.x), vec2<u32>(global1.a.x, var_2.a.x)))), !vec4<bool>(false, true & global0.x, !global0.x || !global0.x, arg_0 == -1033f), false == all(vec3<bool>(select(true, true, global0.x), any(vec2<bool>(true, global0.x)), any(vec3<bool>(true, global0.x, global0.x)))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-422f))))), 860f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -471f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.e.x - -101f))) - var_2.e.x))));
    return vec3<u32>(7967u, ~0u, abs(abs(var_2.a.x)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<bool>, arg_3: i32) -> vec4<bool> {
    var var_0 = !vec2<bool>(select(false, all(arg_2.wwx), 422f >= _wgslsmith_f_op_f32(step(538f, -296f))), true);
    let var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.e.x, -166f)), arg_0))), firstTrailingBit(select(_wgslsmith_sub_vec3_i32(u_input.d.wwz, u_input.d.wzx), global1.b & vec3<i32>(global1.c, u_input.b, 0i), true)), _wgslsmith_dot_vec3_u32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1868f * arg_0))), vec3<u32>(0u, ~func_3(arg_1, Struct_3(vec3<u32>(92164u, global1.d, global1.a.x), vec3<i32>(u_input.e, global1.c, 1i), global1.b.x, global1.a.x, global1.e), global1.a, Struct_2(arg_0)).x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a.x, 55863u, global1.d, global1.d), ~vec4<u32>(1u, global1.d, 23161u, 54679u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1294f))))))), vec4<u32>(4294967295u, _wgslsmith_add_u32(94115u, 0u), 37601u, _wgslsmith_add_u32(countOneBits(112155u) << (_wgslsmith_div_u32(769u, global1.d) % 32u), firstTrailingBit(52139u))));
    global2 = 150f;
    global1 = Struct_3(vec3<u32>(4294967295u, 1u, _wgslsmith_add_u32(abs(4897u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.a.x, 0u, 2939u, global1.d)), var_1.e))), vec3<i32>(arg_3, var_1.b.x, global1.b.x), global1.c, firstTrailingBit(~(~(~6154u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.d, arg_0))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.e)))))));
    var var_2 = arg_2;
    return arg_2;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>) -> StorageBuffer {
    var var_0 = ~(~_wgslsmith_mod_vec2_u32(select(global1.a.zx, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 43824u), global1.a.yx, vec2<u32>(0u, global1.d)), select(global0.x, global0.x, true)), vec2<u32>(_wgslsmith_sub_u32(35201u, 1u), ~global1.d)));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.e.x)));
    let var_1 = Struct_3(select(func_2(-1065f), ~countOneBits(abs(global1.a)), !(!vec3<bool>(global0.x, arg_0.x, false))), vec3<i32>(u_input.c.x, _wgslsmith_add_i32(2147483647i, arg_1.x), 0i), _wgslsmith_mod_i32(min(2147483647i, -2147483647i), 44018i), global1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1795f, -177f))))) - _wgslsmith_f_op_vec2_f32(round(global1.e))));
    var var_2 = Struct_4(u_input.c ^ vec2<i32>(~1i | (global1.b.x >> (4294967295u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_1.x, var_1.c), _wgslsmith_add_vec4_i32(u_input.d, u_input.d))));
    var_0 = global1.a.yz;
    return StorageBuffer(_wgslsmith_mult_i32(~(~92939i), -11117i), ~(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.a.x, 4294967295u, 44804u, var_1.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 4829u, 1u), vec4<u32>(57859u, var_1.d, 5769u, global1.a.x)), vec4<u32>(global1.a.x, global1.a.x, global1.a.x, var_1.d)) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, 21512u, var_1.d, global1.a.x), select(vec4<u32>(57874u, 4294967295u, var_0.x, var_0.x), vec4<u32>(4294967295u, 18u, 26158u, 17603u), vec4<bool>(global0.x, global0.x, false, false)))), global1.b.x & abs(var_2.a.x), abs(-countOneBits(var_1.b.xx)), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(select(true, global0.x, true), all(select(vec4<bool>(all(vec2<bool>(global0.x, global0.x)), true, select(global0.x, true, true), false), select(vec4<bool>(false, global0.x, false, true), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, true, false, true), true), vec4<bool>(global0.x, global0.x, true, false)), vec4<bool>(global0.x, true, false, global0.x))));
    var var_0 = 8545u;
    let var_1 = -605f;
    let var_2 = 2422f;
    let var_3 = global1.b.x;
    var var_4 = global1.b.x;
    var var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(trunc(1f)))), -2115f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, 380f)) + 1668f)));
    let x = u_input.a;
    s_output = func_4(!select(!(!vec4<bool>(false, false, global0.x, true)), vec4<bool>(65541u <= global1.a.x, global0.x, !global0.x, true), func_1(_wgslsmith_f_op_f32(select(689f, 1576f, true)), select(global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, global0.x, global0.x, false)), _wgslsmith_dot_vec2_i32(global1.b.zy, vec2<i32>(-19736i, global1.c)))), vec2<i32>(global1.b.x, abs(~8632i)));
}

