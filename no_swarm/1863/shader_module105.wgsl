struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(-17249i, 0i, 1723i, -33154i), vec3<u32>(2819u, 4294967295u, 72331u), 506f);

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, -1i, u_input.a.x))), 0i, u_input.a.x), vec3<i32>(-2147483647i, global1.a.x, global1.a.x)), ~u_input.c);
    global2 = global1.a.x >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(36791u, u_input.b.x)), arg_0.d << (global1.b.xz % vec2<u32>(32u)), arg_0.e.x), (global1.b.yy & arg_0.d) >> (arg_0.a.yw % vec2<u32>(32u))), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(13173u, 1121u), global1.b.yx), 18271u), ~0u) % 32u);
    let var_0 = reverseBits(vec3<u32>(_wgslsmith_clamp_u32(1u, ~arg_0.c, firstTrailingBit(1u)), ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x >> (u_input.b.x % 32u)), global1.b.x));
    let var_1 = ~var_0;
    global2 = u_input.a.x;
    return false;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    global2 = 5468i;
    var var_0 = i32(-1i) * -(-2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, 0i) | u_input.a.zx, ~vec2<i32>(0i, -52596i)));
    let var_1 = Struct_2(vec4<i32>(-(firstTrailingBit(2147483647i) << (4294967295u % 32u)), -1i, -2147483647i, u_input.c), max(global1.b, u_input.b.zxw & ~firstTrailingBit(vec3<u32>(0u, 4486u, arg_1.x))), global1.c);
    global2 = u_input.c;
    var var_2 = Struct_1(u_input.b, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(22423u, 0u)) & _wgslsmith_div_vec2_u32(vec2<u32>(34972u, 27169u), vec2<u32>(var_1.b.x, 0u)), vec2<u32>(1u, var_1.b.x >> (1u % 32u))), u_input.b.x << (global1.b.x % 32u), global1.b.yz, select(vec4<bool>(true, _wgslsmith_f_op_f32(611f * var_1.c) < _wgslsmith_f_op_f32(global1.c * var_1.c), (-9702i == global1.a.x) != false, false), vec4<bool>(!(var_1.b.x > arg_1.x), true, func_3(Struct_1(u_input.b, 70342u, u_input.b.x, arg_1, vec4<bool>(false, true, true, false))), !all(vec3<bool>(true, false, false))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 1265f), -906f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-744f)))));
    return Struct_1(abs(var_2.a), select(~u_input.b.x, _wgslsmith_mult_u32(8303u, global1.b.x >> (~var_1.b.x % 32u)), false), firstLeadingBit(_wgslsmith_dot_vec4_u32(~var_2.a, ~vec4<u32>(28728u, var_1.b.x, 4294967295u, u_input.b.x))), ~global1.b.yz, var_2.e);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec3_i32(~(u_input.a | -firstTrailingBit(global1.a.wyx)), ~u_input.a);
    var var_1 = arg_0;
    let var_2 = -222f;
    var_1 = 832f;
    var var_3 = vec2<bool>(true, !all(!select(arg_2.e, arg_1.e, arg_1.e.x)));
    return _wgslsmith_sub_vec4_i32(-vec4<i32>(-13464i, _wgslsmith_mod_i32(22730i, u_input.c << (arg_2.d.x % 32u)), ~(~var_0.x), 1i), -_wgslsmith_div_vec4_i32(vec4<i32>(29043i, _wgslsmith_sub_i32(63304i, u_input.c), var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 1i, 33256i), vec3<i32>(var_0.x, global1.a.x, 0i))), abs(select(vec4<i32>(global1.a.x, var_0.x, -2147483647i, 2147483647i), vec4<i32>(u_input.c, 1i, 2147483647i, 2147483647i), false))));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global1.a.zy, vec2<i32>(1i, ~(-17143i) & global1.a.x)), _wgslsmith_dot_vec4_i32(func_4(-549f, func_2(_wgslsmith_f_op_f32(abs(global1.c)), vec2<u32>(28242u, 0u)), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 69248u), ~u_input.b.x, 35275u, vec2<u32>(0u, 0u), vec4<bool>(false, false, false, true))), -_wgslsmith_sub_vec4_i32(vec4<i32>(-79319i, u_input.a.x, -32933i, -31405i), global1.a)));
    let var_1 = Struct_2(_wgslsmith_div_vec4_i32(global1.a, _wgslsmith_sub_vec4_i32(global1.a, vec4<i32>(47369i, 0i, 28770i, -28679i)) | vec4<i32>(global1.a.x, u_input.a.x, u_input.c, 2147483647i)) & vec4<i32>(_wgslsmith_sub_i32(1i, u_input.c) >> (1u % 32u), var_0, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(17620i, u_input.c, -2147483647i), _wgslsmith_mult_i32(u_input.c, global1.a.x), reverseBits(u_input.c)), func_4(_wgslsmith_f_op_f32(select(-899f, global1.c, true)), Struct_1(u_input.b, u_input.b.x, 1u, vec2<u32>(7833u, u_input.b.x), vec4<bool>(false, false, true, false)), Struct_1(vec4<u32>(5557u, u_input.b.x, global1.b.x, u_input.b.x), 0u, global1.b.x, vec2<u32>(4294967295u, u_input.b.x), vec4<bool>(false, true, false, true))).x), _wgslsmith_add_vec3_u32(u_input.b.yxy, u_input.b.xxw), global1.c);
    var var_2 = var_1;
    var var_3 = ~(~51300i << (_wgslsmith_clamp_u32(global1.b.x >> (7854u % 32u), var_1.b.x, _wgslsmith_dot_vec3_u32(var_1.b, global1.b)) % 32u)) >> (firstLeadingBit(55190u) % 32u);
    var var_4 = all(!(!vec3<bool>(true, func_3(Struct_1(u_input.b, u_input.b.x, 4294967295u, vec2<u32>(u_input.b.x, 11999u), vec4<bool>(false, true, true, true))), all(vec2<bool>(true, false)))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1291f, 1731f, _wgslsmith_f_op_f32(floor(-1181f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.c, var_1.c, var_2.c), vec3<f32>(var_2.c, var_1.c, var_1.c)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c, -939f, var_2.c))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -1413f, -480f) - vec3<f32>(var_2.c, var_1.c, var_1.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, u_input.c, _wgslsmith_dot_vec2_i32(global1.a.yy, u_input.a.yx), 32082i), reverseBits(-global1.a)), global1.a.x);
    let var_0 = global1.b.x;
    var var_1 = !(any(vec2<bool>(true, false)) || false) || true;
    let var_2 = 1i;
    let var_3 = false;
    var_1 = all(select(vec2<bool>(true, false), !(!(!vec2<bool>(var_3, false))), !(!vec2<bool>(var_3, false))));
    var_1 = true;
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, firstLeadingBit(_wgslsmith_clamp_u32(u_input.b.x, 1u, 12760u)), global1.b.x, 63328u), u_input.b);
    let x = u_input.a;
    s_output = func_1();
}

