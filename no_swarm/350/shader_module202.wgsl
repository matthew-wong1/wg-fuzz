struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, vec2<f32>(1466f, -384f), vec4<f32>(1178f, 982f, -166f, 1024f));

var<private> global1: vec2<u32> = vec2<u32>(28461u, 20158u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global1 = ~vec2<u32>(global1.x, global1.x);
    var var_0 = max(~(i32(-1i) * -1i), -2147483647i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = Struct_1(((any(vec2<bool>(global0.a, global0.a)) || true) && (any(vec4<bool>(global0.a, global0.a, global0.a, global0.a)) && select(global0.a, true, true))) != any(select(vec4<bool>(global0.a, false, true, false), select(vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(false, false, global0.a, false), vec4<bool>(global0.a, false, global0.a, global0.a)), !global0.a)));
    var var_3 = abs(1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1064f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> i32 {
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(floor(global0.b)), vec4<f32>(-722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1484f + arg_0.x))), _wgslsmith_f_op_f32(trunc(105f)), _wgslsmith_f_op_f32(f32(-1f) * -1767f)));
    global0 = Struct_3(false, vec2<f32>(arg_0.x, global0.b.x), global0.c);
    global0 = Struct_3(false, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - global0.b.x) * arg_0.x), arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), global0.b.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-283f, 813f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(254f * 760f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))));
    var var_0 = -abs(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), reverseBits(vec3<i32>(-57148i, 18038i, 0i)), select(vec3<i32>(29024i, -2147483647i, 0i), vec3<i32>(45718i, 13796i, 2147483647i), vec3<bool>(global0.a, global0.a, false))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-6776i, -2147483647i, 2147483647i))));
    var var_1 = _wgslsmith_div_i32(max(var_0.x, ~_wgslsmith_mod_i32(-55391i, var_0.x)), firstLeadingBit(~max(var_0.x, 1i))) != 2147483647i;
    return var_0.x;
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_mod_i32(-2300i, 13010i)), ~min(-48775i, 10911i), 0i), -_wgslsmith_div_i32(0i, ~25248i), ~(i32(-1i) * -57073i)) == _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(49256i, -16764i, 2147483647i), ~vec3<i32>(0i, 34802i, 34669i)), _wgslsmith_div_i32(~(-7093i), _wgslsmith_div_i32(func_2(global0.b, u_input.b.x), ~1i)));
    let var_1 = Struct_4(Struct_3(global0.a, global0.b, global0.c), any(select(vec2<bool>(true, true), !vec2<bool>(global0.a, global0.a), u_input.b.x <= global1.x)) || false);
    var var_2 = Struct_5(0u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1413f * var_1.a.b.x)))))), countOneBits(vec3<i32>(1i, 1i, 1i)));
    global1 = vec2<u32>(_wgslsmith_add_u32(global1.x, 11393u), select(u_input.a, _wgslsmith_sub_u32(~1u, ~var_2.a), global0.a));
    global0 = var_1.a;
    return var_1;
}

fn func_4(arg_0: Struct_4) -> i32 {
    var var_0 = global0.b.x;
    var var_1 = arg_0.a.b.x;
    let var_2 = Struct_2(881f);
    var var_3 = Struct_4(Struct_3(!global0.a || func_1().b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, arg_0.a.c.x) - _wgslsmith_f_op_vec2_f32(-arg_0.a.c.xw))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1505f)), arg_0.a.c.x, -1420f, _wgslsmith_f_op_f32(sign(var_2.a))))), false);
    var_3 = Struct_4(Struct_3((arg_0.a.b.x < _wgslsmith_f_op_f32(var_3.a.c.x * var_2.a)) == true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-148f, 603f)) + vec2<f32>(arg_0.a.c.x, var_3.a.b.x)), _wgslsmith_f_op_vec4_f32(-var_3.a.c)), var_3.a.a);
    return countOneBits(_wgslsmith_dot_vec4_i32(~(_wgslsmith_add_vec4_i32(vec4<i32>(-23781i, -50985i, 0i, 2147483647i), vec4<i32>(47693i, -28969i, -17060i, -49557i)) >> (vec4<u32>(51259u, u_input.a, 17588u, 27842u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(min(-vec4<i32>(20525i, 0i, -1i, 0i), ~vec4<i32>(-48876i, -45311i, 1i, 78545i)), firstLeadingBit(vec4<i32>(0i, 1i, -22183i, 6404i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    var var_1 = func_1().a.b.x;
    let var_2 = 27415i;
    var var_3 = vec4<bool>(all(select(!select(vec4<bool>(global0.a, global0.a, false, global0.a), vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, global0.a, true)), select(vec4<bool>(global0.a, global0.a, true, global0.a), !vec4<bool>(false, global0.a, false, global0.a), false), !(!vec4<bool>(global0.a, global0.a, global0.a, global0.a)))), global0.a, true, true);
    global1 = ~min(~u_input.b.xx | _wgslsmith_mod_vec2_u32(u_input.b.zw >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.b.wz, vec2<u32>(35577u, global1.x))), u_input.b.xw);
    global1 = u_input.b.xy ^ firstTrailingBit(u_input.b.wy);
    let x = u_input.a;
    s_output = StorageBuffer(select(select(~vec3<i32>(-2147483647i, var_0, -9300i), vec3<i32>(2147483647i, -20814i, var_2) | vec3<i32>(-2147483647i, var_0, 1i), true), -_wgslsmith_mult_vec3_i32(vec3<i32>(-12176i, 1i, -14676i), vec3<i32>(2147483647i, var_0, -32773i)), firstLeadingBit(global1.x) <= ~1u) & _wgslsmith_sub_vec3_i32(vec3<i32>(~var_2, ~var_0, 1i), ~vec3<i32>(var_2, var_0, -38358i) | -vec3<i32>(-41351i, -2147483647i, -25013i)), vec4<i32>(~(-42790i), var_2, var_2, -(var_2 << (u_input.a % 32u)) ^ var_2), _wgslsmith_dot_vec2_u32(u_input.b.wy, ~u_input.b.zx) << (_wgslsmith_clamp_u32(firstTrailingBit(~1u), min(u_input.a | u_input.a, 10748u), u_input.b.x) % 32u), _wgslsmith_sub_vec3_u32(~u_input.b.wzy, abs(~u_input.b.xzx)));
}

