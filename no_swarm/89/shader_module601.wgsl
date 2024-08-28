struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(75188i, -3200i), vec3<bool>(true, false, false), vec3<f32>(-1244f, 737f, -145f), true, Struct_1(13059i));

var<private> global1: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-6033i, 0i, 18066i), vec3<i32>(-5640i, 0i, i32(-2147483648)), vec3<i32>(-35423i, 26728i, -1529i), vec3<i32>(i32(-2147483648), -1i, -15904i), vec3<i32>(-73214i, -70152i, 0i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-14776i, 21487i, 55572i), vec3<i32>(0i, 2147483647i, -17424i), vec3<i32>(2147483647i, -25061i, -25308i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(39723i, -62760i, 0i), vec3<i32>(-51350i, -25108i, 2147483647i), vec3<i32>(-1i, 6975i, -1i));

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: u32) -> i32 {
    global2 = _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(-2147483647i, max(global0.a.x, 1i))), -global0.a);
    let var_0 = ~global0.a;
    return abs((5766i ^ max(global0.a.x, 1i)) << (_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.xx) % 32u));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * _wgslsmith_f_op_f32(step(global0.c.x, arg_0.b.c.x))))));
    global1 = array<vec3<i32>, 13>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 13u)];
    global0 = Struct_2(-(~vec2<i32>(global0.a.x, i32(-1i) * -2147483647i)), arg_0.b.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-266f, 103f, arg_2.b.c.x)) * _wgslsmith_div_vec3_f32(global0.c, arg_2.b.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.c.x, var_0, arg_0.a.c.x)) + vec3<f32>(-673f, arg_2.b.c.x, global0.c.x))), arg_0.a.b)), all(vec3<bool>(true, false & arg_1.x, all(arg_1.xxw))) || false, arg_2.a.e);
    let var_2 = abs(-vec4<i32>(2147483647i, 1i, var_1.x, ~var_1.x));
    return _wgslsmith_dot_vec2_i32(select(abs((global0.a ^ arg_2.b.a) | firstTrailingBit(var_2.zz)), reverseBits(var_1.zy), !(!select(arg_0.b.b.xx, arg_0.a.b.xy, global0.b.xz))), ~(~vec2<i32>(var_1.x, global0.a.x) ^ _wgslsmith_div_vec2_i32(-vec2<i32>(arg_0.b.a.x, 77339i), vec2<i32>(arg_0.c.a, 808i))));
}

fn func_2(arg_0: vec4<f32>) -> vec3<i32> {
    var var_0 = vec3<i32>(-(global0.a.x ^ -func_1(u_input.b.x, 1u)), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(-8175i), ~global0.a.x, func_3(Struct_3(Struct_2(global0.a, global0.b, vec3<f32>(1642f, -134f, -745f), true, global0.e), Struct_2(global0.a, vec3<bool>(global0.b.x, false, true), vec3<f32>(global0.c.x, global0.c.x, 986f), true, Struct_1(-592i)), global0.e), vec4<bool>(global0.d, global0.b.x, true, global0.d), Struct_3(Struct_2(vec2<i32>(global0.e.a, 1i), global0.b, vec3<f32>(global0.c.x, -1204f, arg_0.x), true, global0.e), Struct_2(global0.a, global0.b, global0.c, global0.d, Struct_1(0i)), global0.e))), reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 13u)] & vec3<i32>(10057i, global0.a.x, global0.e.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(1263i, global0.a.x, global0.e.a), global1[_wgslsmith_index_u32(u_input.a.x, 13u)]))), _wgslsmith_div_i32(_wgslsmith_sub_i32(-(global0.a.x | global0.e.a), -11629i), ~(-max(-51760i, global0.e.a))));
    var var_1 = countOneBits(global0.e.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-199f, global0.c.x) - global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(633f)), 1157f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2116f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-690f * global0.c.x) * -1104f)))));
    global1 = array<vec3<i32>, 13>();
    global2 = _wgslsmith_mult_i32(-(_wgslsmith_sub_i32(-10172i, 1i) ^ _wgslsmith_mult_i32(global0.a.x & 1i, _wgslsmith_sub_i32(0i, 2147483647i))), abs(-2147483647i));
    return abs(reverseBits(vec3<i32>(-global0.e.a, global0.e.a & var_0.x, -global0.e.a)) << (u_input.b % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -func_1(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(u_input.b.x, u_input.b.x) >> (~u_input.a % vec2<u32>(32u))), 0u);
    global2 = ~31246i;
    var var_0 = -(vec3<i32>(-1i, -global0.a.x, global0.e.a >> (~u_input.a.x % 32u)) & func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 953f, -1537f, global0.c.x)))));
    global1 = array<vec3<i32>, 13>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, select(_wgslsmith_sub_u32(1u, 0u), u_input.a.x, any(vec4<bool>(false, true, global0.d, global0.b.x))) >> (_wgslsmith_mult_u32(u_input.a.x, 1u) % 32u)), 13u)] | func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-347f, 1000f, global0.c.x, _wgslsmith_f_op_f32(1000f + global0.c.x)) + vec4<f32>(-1501f, _wgslsmith_f_op_f32(abs(global0.c.x)), _wgslsmith_f_op_f32(278f - global0.c.x), _wgslsmith_f_op_f32(-global0.c.x))));
    let var_2 = any(vec4<bool>(false, true, (_wgslsmith_f_op_f32(f32(-1f) * -1610f) == _wgslsmith_f_op_f32(select(-143f, global0.c.x, true))) | false, global0.b.x));
    let var_3 = !(!global0.b.x);
    global2 = ~_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(select(-34118i, var_1.x, var_3), i32(-1i) * -8466i), _wgslsmith_add_i32(1i, global0.a.x), abs(-_wgslsmith_clamp_i32(var_1.x, var_0.x, 2147483647i)));
    var var_4 = Struct_2(max(~_wgslsmith_sub_vec2_i32(var_0.xx, abs(vec2<i32>(-22579i, -22937i))), var_0.zy), !(!select(global0.b, select(global0.b, vec3<bool>(var_3, var_3, true), var_2), global0.b)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.c.x, global0.c.x, 845f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(691f, global0.c.x, global0.c.x) - vec3<f32>(1051f, 630f, 713f)))))), any(vec3<bool>(true, all(vec4<bool>(true, global0.d, global0.b.x, global0.d)), false)) || (all(!global0.b) || true), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1413f, _wgslsmith_div_f32(_wgslsmith_div_f32(406f, 146f), global0.c.x)) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_4.c.x, -350f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_4.c.x, 629f)), _wgslsmith_f_op_f32(1984f * global0.c.x))))), 59374u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.c.x, global0.c.x, -1040f), global0.c), vec3<f32>(global0.c.x, -171f, -618f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-684f, global0.c.x, global0.c.x)))) * _wgslsmith_f_op_vec3_f32(-var_4.c)), i32(-1i) * -6728i);
}

