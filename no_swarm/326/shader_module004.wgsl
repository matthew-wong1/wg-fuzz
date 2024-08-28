struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<i32>, 30>;

var<private> global3: u32 = 61569u;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = Struct_4(Struct_2(global0.a.b.b.x, Struct_1(vec2<bool>(u_input.a.x <= global0.d, all(vec3<bool>(global0.a.a, global0.a.b.a.x, global0.a.b.b.x))), global0.a.b.b, global0.a.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2017f + -725f), 503f) - _wgslsmith_f_op_f32(f32(-1f) * -231f))), global0.c, ~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.e, u_input.a.x, -2147483647i, global0.d), vec4<i32>(u_input.a.x, u_input.a.x, global0.d, -1i))) >> (_wgslsmith_clamp_u32(~u_input.d.x, select(1u, ~global0.c.c, true), 31830u) % 32u), abs(abs(-2147483647i)));
    var_0 = Struct_4(var_0.a, var_0.a.b.c.x, global0.c, var_0.e, _wgslsmith_sub_i32(-10719i, global0.d));
    var var_1 = _wgslsmith_add_vec4_i32(-abs(abs(vec4<i32>(var_0.e, u_input.a.x, global0.e, 1i)) << (~vec4<u32>(0u, 1u, 4294967295u, 90025u) % vec4<u32>(32u))), select(~min(firstTrailingBit(vec4<i32>(0i, 2147483647i, 0i, -2147483647i)), vec4<i32>(-47034i, -27798i, u_input.a.x, global0.d) << (vec4<u32>(4294967295u, 69641u, 77058u, u_input.d.x) % vec4<u32>(32u))), -(vec4<i32>(var_0.d, global0.d, -2147483647i, 1i) & (vec4<i32>(var_0.e, -32609i, global0.e, -7813i) & vec4<i32>(u_input.a.x, 1i, 2147483647i, u_input.a.x))), !select(!var_0.a.b.b, vec4<bool>(false, false, true, var_0.a.a), var_0.a.b.b)));
    let var_2 = (~(abs(global2[_wgslsmith_index_u32(var_0.c.a.x, 30u)]) | vec3<i32>(u_input.a.x, 2147483647i, -1i)) >> (var_0.c.a % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u));
    var var_3 = vec3<bool>(any(!vec2<bool>(var_0.a.b.a.x, var_0.a.b.a.x)), global0.a.b.b.x, false);
    return -var_0.e;
}

fn func_2() -> u32 {
    let var_0 = vec4<i32>(43458i, ~(-(~(-9744i))), func_3(min(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 58168u, 38979u), u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, global0.c.c), u_input.b, vec3<u32>(global0.c.a.x, 50435u, u_input.b.x))) & _wgslsmith_mod_vec3_u32(vec3<u32>(95091u, 60385u, global0.c.c), vec3<u32>(96169u, u_input.c.x, 1u) ^ vec3<u32>(u_input.b.x, 12918u, 44406u))), global0.e);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.b.x - global1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - global0.b))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b))), -855f);
    let var_2 = ~u_input.a.yz;
    var var_3 = _wgslsmith_f_op_f32(min(global0.c.b.x, -1127f));
    let var_4 = Struct_3(firstTrailingBit(vec3<u32>(~(~47961u), global0.c.c, global0.c.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1490f, -936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -577f) + -1466f))), _wgslsmith_dot_vec4_u32(min(~(vec4<u32>(u_input.d.x, 0u, global0.c.a.x, global0.c.a.x) | vec4<u32>(global0.c.c, 52735u, 12338u, global0.c.a.x)), countOneBits(vec4<u32>(0u, u_input.c.x, global0.c.c, 4294967295u))), ~vec4<u32>(_wgslsmith_add_u32(0u, 31576u), min(global0.c.a.x, global0.c.a.x), 4294967295u, u_input.d.x)));
    return 1u;
}

fn func_1(arg_0: Struct_4) -> u32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(_wgslsmith_clamp_u32(75060u, u_input.c.x, 75005u), func_2(), max(0u, 18975u), select(13680u, 4294967295u, arg_0.a.a))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c.c, 4294967295u, reverseBits(86944u), ~u_input.c.x) ^ (~vec4<u32>(arg_0.c.c, 23851u, 59300u, 17755u) & (vec4<u32>(arg_0.c.c, arg_0.c.a.x, global0.c.a.x, 15097u) ^ vec4<u32>(1u, arg_0.c.c, 40995u, 0u))), abs(vec4<u32>(global0.c.a.x, global0.c.c << (42728u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.c, u_input.b.x, global0.c.c, 54603u), vec4<u32>(4294967295u, arg_0.c.c, 61300u, u_input.d.x)), u_input.c.x)), ~(~vec4<u32>(9183u, arg_0.c.a.x, global0.c.c, 4294967295u))));
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-661f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1214f, -121f)), 1000f))))));
    var_0 = var_1.x;
    let var_2 = Struct_4(arg_0.a, 1000f, Struct_3(vec3<u32>(var_1.x, select(23077u, var_1.x, arg_0.a.b.a.x), 49487u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.b.c.zyy)), select(~(~0u), ~1u, false)), 56244i, ~(-30652i));
    return abs(23054u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false || all(!global0.a.b.b.xxz);
    var var_1 = reverseBits(_wgslsmith_sub_i32(-13966i, ~(u_input.a.x << (49724u % 32u)))) ^ u_input.a.x;
    let var_2 = Struct_2(all(vec3<bool>(false, true, true)) && any(select(!global0.a.b.b, vec4<bool>(global0.a.b.b.x, global0.a.a, global0.a.a, global0.a.b.b.x), vec4<bool>(global0.a.a, false, false, true))), global0.a.b);
    let var_3 = -2147483647i;
    var var_4 = var_3;
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.b.c.x, global0.c.b.x))) - -391f), -1000f)), Struct_3(vec3<u32>(max(_wgslsmith_add_u32(u_input.d.x, 39653u), u_input.d.x), func_1(Struct_4(global0.a, 549f, global0.c, u_input.a.x, -18166i)), ~(~u_input.b.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.b.c.x, -1459f, var_2.b.c.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.c.x, 534f, 895f), var_2.b.c.xxw, true)))), var_2.b.b.xzx)), global0.c.a.x), global0.e, max(~35055i, min(~func_3(u_input.c), 21160i)));
    let var_5 = max(global0.c.a.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(52145u, abs(var_3));
}

