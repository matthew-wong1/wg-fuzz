struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> f32 {
    global0 = Struct_2(global0.a);
    var var_0 = -vec2<i32>(-(u_input.d ^ 1i), -u_input.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 1000f), -797f))))) * 1015f);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(944f)) * _wgslsmith_f_op_f32(func_2())) + -138f) + 2484f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: vec4<u32>) -> vec4<i32> {
    var var_0 = Struct_4(select(!select(select(vec3<bool>(false, false, global0.a.b), vec3<bool>(global0.a.b, global0.a.b, global0.a.b), vec3<bool>(global0.a.b, true, global0.a.b)), !vec3<bool>(global0.a.b, true, false), !vec3<bool>(true, false, global0.a.b)), !vec3<bool>(false && global0.a.b, arg_0 > -1200f, !global0.a.b), false), vec3<i32>(-1i) * -vec3<i32>(global0.a.c.x, global0.a.c.x, u_input.d), global0.a, !(_wgslsmith_clamp_i32(-1i, u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -12899i, 24168i, global0.a.d), vec4<i32>(-1i, global0.a.a, -1i, 1i))) < -57832i), global0.a.c);
    var_0 = Struct_4(!var_0.a, vec3<i32>(-1i) * -(~var_0.c.c), Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0.a.d, u_input.d, u_input.d, var_0.c.a)), select(~vec4<i32>(global0.a.c.x, global0.a.d, 2147483647i, global0.a.c.x), firstLeadingBit(vec4<i32>(u_input.d, var_0.b.x, 2147483647i, var_0.b.x)), all(vec4<bool>(false, global0.a.b, true, global0.a.b)))), global0.a.b, vec3<i32>(-(~(-1i)), u_input.d, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.d), global0.a.c)), -1i), select(false, false, global0.a.b), vec3<i32>(global0.a.c.x, _wgslsmith_add_i32(u_input.d, ~u_input.d) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_3, u_input.b), vec4<u32>(arg_2, 18115u, 58107u, 1u)) % 32u), abs(u_input.d)));
    global0 = Struct_2(Struct_1(-50805i, !any(vec3<bool>(false, false, global0.a.b)), abs(vec3<i32>(var_0.e.x, 32990i, global0.a.a << (arg_3.x % 32u))), -1i));
    let var_1 = Struct_3(false, select(!(!var_0.a.yy), vec2<bool>(!select(var_0.d, global0.a.b, false), true), true), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e.x, abs(arg_2) << (abs(4294967295u) % 32u)), max(_wgslsmith_clamp_vec2_u32(~arg_3.yx, vec2<u32>(arg_2, 93953u) | u_input.b.yw, u_input.e ^ vec2<u32>(4294967295u, arg_3.x)), _wgslsmith_clamp_vec2_u32(~arg_3.xx, vec2<u32>(u_input.b.x, arg_2), vec2<u32>(u_input.a.x, 5021u) ^ vec2<u32>(arg_3.x, 4227u)))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f - _wgslsmith_f_op_f32(269f + arg_1))))));
    return select(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(max(-2147483647i, var_0.e.x)), -(u_input.d << (arg_3.x % 32u)), (global0.a.a ^ u_input.d) ^ (i32(-1i) * -2147483647i), _wgslsmith_mod_i32(abs(u_input.d), 24418i)), ~min(vec4<i32>(0i, var_0.e.x, 0i, 1i), vec4<i32>(-58047i, -1i, var_0.e.x, global0.a.c.x)) ^ -vec4<i32>(u_input.d, var_0.c.c.x, u_input.d, 2147483647i)), _wgslsmith_mult_vec4_i32(~select(max(vec4<i32>(u_input.d, -14320i, -12019i, 37929i), vec4<i32>(global0.a.c.x, u_input.d, global0.a.c.x, global0.a.d)), -vec4<i32>(u_input.d, var_0.e.x, 20839i, var_0.c.d), any(vec4<bool>(var_1.a, true, false, false))), abs(~(-vec4<i32>(1i, u_input.d, 2147483647i, u_input.d)))), vec4<bool>(_wgslsmith_dot_vec3_i32(var_0.b, vec3<i32>(global0.a.d, 67041i, global0.a.a) << (vec3<u32>(4294967295u, var_1.c, u_input.e.x) % vec3<u32>(32u))) <= _wgslsmith_sub_i32(-u_input.d, min(var_0.e.x, -14720i)), any(var_0.a.yx), ~(~arg_3.x) < select(~arg_3.x, arg_3.x, !global0.a.b), false));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = global0.a.b;
    var var_1 = abs(vec4<i32>(~0i, countOneBits(_wgslsmith_add_i32(min(arg_2.c.x, global0.a.c.x), countOneBits(u_input.d))), arg_0.x, ~arg_0.x));
    global0 = Struct_2(arg_2);
    var_1 = abs(_wgslsmith_div_vec4_i32(arg_0, -(arg_0 ^ vec4<i32>(arg_0.x, u_input.d, 2147483647i, var_1.x))));
    return _wgslsmith_f_op_f32(round(-1911f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.d);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1741f, 1187f)) + _wgslsmith_f_op_f32(1080f - -102f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(true, vec2<bool>(false, true), 4294967295u), Struct_4(vec3<bool>(global0.a.b, true, global0.a.b), vec3<i32>(global0.a.c.x, var_0, 51066i), Struct_1(u_input.d, global0.a.b, global0.a.c, u_input.d), false, global0.a.c), Struct_2(global0.a), u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -136f))) - _wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(ceil(-937f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1972f, 660f)))))));
    global0 = Struct_2(global0.a);
    let var_2 = var_0;
    var var_3 = vec3<bool>(true, false, true);
    var_1 = _wgslsmith_f_op_f32(func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-8502i, var_2, global0.a.a, u_input.d), vec4<i32>(var_2, var_2, -2147483647i, -2147483647i), vec4<i32>(var_0, 0i, 1i, var_0)), func_3(_wgslsmith_f_op_f32(158f - -987f), -1027f, select(u_input.e.x, u_input.c.x, false), firstLeadingBit(vec4<u32>(1u, u_input.b.x, 0u, 4294967295u)))), -1i, reverseBits(_wgslsmith_div_i32(-1i, var_0) | select(50334i, u_input.d, false)), 0i), !(!(!all(var_3.yz))), Struct_1(i32(-1i) * -2147483647i, var_3.x, global0.a.c, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d, 22779i), var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, ~func_3(-1232f, _wgslsmith_f_op_f32(min(1097f, -303f)), ~54093u, vec4<u32>(77405u, u_input.c.x, 8324u, u_input.c.x)) & _wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(11572i, 48955i, u_input.d, -1i), vec4<i32>(var_2, u_input.d, var_0, global0.a.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_2, u_input.d, global0.a.a), select(vec4<i32>(-22995i, var_2, var_0, -11620i), vec4<i32>(var_0, 1i, 1i, 2147483647i), var_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -238f));
}

