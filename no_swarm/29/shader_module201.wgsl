struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: f32;

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec2<f32>(856f, 1312f)), Struct_3(vec2<f32>(1228f, -406f)), Struct_3(vec2<f32>(481f, -818f)), Struct_3(vec2<f32>(-341f, -1556f)), Struct_3(vec2<f32>(-1940f, -752f)), Struct_3(vec2<f32>(-668f, -1296f)), Struct_3(vec2<f32>(-824f, 1881f)), Struct_3(vec2<f32>(1685f, 1921f)), Struct_3(vec2<f32>(-627f, -182f)), Struct_3(vec2<f32>(700f, 1000f)), Struct_3(vec2<f32>(1825f, 960f)), Struct_3(vec2<f32>(1000f, 1041f)), Struct_3(vec2<f32>(-1078f, 296f)), Struct_3(vec2<f32>(644f, -690f)), Struct_3(vec2<f32>(133f, -682f)), Struct_3(vec2<f32>(-640f, 1393f)), Struct_3(vec2<f32>(-574f, -1398f)), Struct_3(vec2<f32>(1663f, 654f)), Struct_3(vec2<f32>(-1107f, -638f)), Struct_3(vec2<f32>(-2043f, -1205f)), Struct_3(vec2<f32>(351f, -1063f)), Struct_3(vec2<f32>(486f, -613f)), Struct_3(vec2<f32>(434f, -167f)), Struct_3(vec2<f32>(-616f, -353f)), Struct_3(vec2<f32>(-1000f, -162f)), Struct_3(vec2<f32>(813f, -626f)), Struct_3(vec2<f32>(1524f, 1685f)), Struct_3(vec2<f32>(1000f, 1000f)), Struct_3(vec2<f32>(739f, 581f)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    global1 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, global0.d)))));
    var var_0 = ~(~_wgslsmith_mod_u32(min(~global0.a.x, 58201u), 1u));
    let var_1 = vec4<u32>(global0.a.x, global0.a.x, u_input.d, ~(abs(~0u) >> (global0.a.x % 32u)));
    var var_2 = false;
    var var_3 = arg_0;
    return _wgslsmith_div_u32(var_1.x, reverseBits(firstTrailingBit(select(_wgslsmith_div_u32(var_1.x, var_1.x), u_input.a, true))));
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(abs(vec3<u32>(func_3(global0.d), ~global0.a.x, min(u_input.a, global0.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1440f - 122f), _wgslsmith_f_op_f32(sign(938f)))), vec4<u32>(global0.a.x, 0u, 0u, 10613u) >> (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 77583u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))) % vec4<u32>(32u))), global0.c, Struct_1(vec3<u32>(~46428u, 1u, 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.d)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, -1079f)))), firstLeadingBit(~select(vec4<u32>(u_input.d, 2343u, global0.a.x, u_input.a), vec4<u32>(4294967295u, 0u, global0.a.x, u_input.d), global0.e))), Struct_1(vec3<u32>(min(global0.a.x, _wgslsmith_clamp_u32(27435u, 4294967295u, u_input.d)), reverseBits(~5904u), (u_input.a >> (1u % 32u)) << (_wgslsmith_dot_vec2_u32(global0.a, vec2<u32>(701u, 49625u)) % 32u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-366f, _wgslsmith_div_f32(global0.d, -1796f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.d) * vec2<f32>(global0.d, global0.d)))), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x ^ global0.a.x, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 22421u, global0.a.x), vec3<u32>(u_input.d, 50332u, u_input.a)), global0.a.x), select(vec4<u32>(16127u, 4294967295u, global0.a.x, 4294967295u) & vec4<u32>(4294967295u, global0.a.x, 58780u, u_input.a), vec4<u32>(u_input.d, global0.a.x, 26065u, 63968u), !vec4<bool>(global0.e, false, global0.e, global0.e)))), Struct_1(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 2138u, 42790u), vec3<u32>(global0.a.x, global0.a.x, global0.a.x)) | ~vec3<u32>(global0.a.x, 2296u, 4294967295u)), vec2<f32>(global0.c, global0.d), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 11302u, 15240u), vec4<u32>(u_input.d, u_input.d, u_input.d, global0.a.x)), vec4<u32>(global0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), global0.a), func_3(-1172f), abs(19995u)))));
    var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, 77446u) << ((vec3<u32>(1143u, 17741u, 16342u) | vec3<u32>(global0.a.x, 4294967295u, 0u)) % vec3<u32>(32u)), ~var_0.d.a, var_0.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.c, global0.c), vec2<f32>(var_0.d.b.x, global0.d))))), ~var_0.e.c), 820f, var_0.c, Struct_1(min(var_0.a.c.xwx << (firstLeadingBit(var_0.c.a) % vec3<u32>(32u)), var_0.c.c.wyx), _wgslsmith_f_op_vec2_f32(var_0.d.b + var_0.a.b), _wgslsmith_mod_vec4_u32(~var_0.e.c, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 27345u, global0.a.x, u_input.d), _wgslsmith_mult_vec4_u32(var_0.a.c, vec4<u32>(84815u, global0.a.x, 51162u, u_input.a))))), var_0.c);
    var var_1 = global0.d;
    var var_2 = _wgslsmith_clamp_vec2_i32((u_input.b | vec2<i32>(u_input.b.x, -2147483647i)) << (min(var_0.d.a.yy | vec2<u32>(1u, u_input.d), ~(vec2<u32>(var_0.d.a.x, 4294967295u) ^ vec2<u32>(70943u, 46332u))) % vec2<u32>(32u)), firstTrailingBit(-abs(abs(vec2<i32>(-1i, 5356i)))), u_input.b);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2552f + _wgslsmith_f_op_f32(-283f * var_0.e.b.x)) * -188f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(851f, var_0.a.b.x)), _wgslsmith_f_op_f32(step(-717f, _wgslsmith_f_op_f32(global0.d * var_0.b)))))));
    return global0.e;
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    let var_0 = -12792i;
    var var_1 = !(!select(vec4<bool>(any(vec4<bool>(global0.e, false, global0.e, false)), any(vec3<bool>(false, global0.e, global0.e)), false, all(vec2<bool>(true, global0.e))), select(vec4<bool>(global0.e, global0.e, false, global0.e), !vec4<bool>(true, global0.e, global0.e, false), false), select(vec4<bool>(global0.e, global0.e, false, true), !vec4<bool>(true, global0.e, global0.e, false), global0.e)));
    global1 = -447f;
    global2 = array<Struct_3, 29>();
    var_1 = !vec4<bool>(global0.e, func_2(), any(vec4<bool>(true, all(vec4<bool>(global0.e, false, global0.e, var_1.x)), true, false)), global0.e);
    return Struct_4(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(global0.a, _wgslsmith_mult_vec2_u32(~global0.a, select(global0.a, global0.a, vec2<bool>(true, false)))), select(global0.a, global0.a << (_wgslsmith_div_vec2_u32(global0.a, global0.a) % vec2<u32>(32u)), global0.e)), u_input.b.x, -507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1164f))), select(true, any(!var_1.zwy), select(false, true, var_1.x) | (_wgslsmith_div_i32(-18110i, u_input.c) >= abs(u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global2[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.a.x, u_input.d, 1u) | vec4<u32>(global0.a.x, u_input.d, 1u, global0.a.x), ~vec4<u32>(0u, 19419u, global0.a.x, 0u))), 29u)]);
    var var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(min(_wgslsmith_sub_u32(u_input.a, 55284u), 1u), abs(~4294967295u), global0.a.x), abs(abs(abs(~vec3<u32>(u_input.a, 4294967295u, 0u)))));
    var var_1 = func_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 0u), 29u)]);
    let var_2 = select(vec4<i32>(global0.b, -_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b.x, global0.b), 1i), i32(-1i) * -1i, -22866i), ~(~(~vec4<i32>(-1i, -2147483647i, 1i, global0.b))), var_1.e);
    let var_3 = !vec3<bool>(any(select(!vec3<bool>(var_1.e, true, false), select(vec3<bool>(true, global0.e, false), vec3<bool>(global0.e, false, var_1.e), vec3<bool>(global0.e, global0.e, false)), select(vec3<bool>(false, var_1.e, false), vec3<bool>(global0.e, var_1.e, false), vec3<bool>(true, global0.e, var_1.e)))), !select(true, true, all(vec2<bool>(var_1.e, global0.e))), global0.d <= _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = _wgslsmith_f_op_f32(-var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(666f + -402f))))), global0.d), ~reverseBits(_wgslsmith_div_vec2_i32(u_input.b, u_input.b)) ^ var_2.zw, global0.b, vec2<u32>(~(var_1.a.x | 11260u), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1.a.x, 0u, 59283u), func_3(472f))));
}

