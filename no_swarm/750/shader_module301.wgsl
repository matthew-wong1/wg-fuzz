struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: vec4<f32>;

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(-2367f, 78554u, global2.d, u_input.c.x <= -firstTrailingBit(u_input.b.x << (u_input.d.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(608f * 1388f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(-global2.a)))), 1f, -283f));
    var var_2 = -10599i;
    global2 = Struct_1(_wgslsmith_f_op_f32(trunc(global1.x)), 1u, any(select(!(!vec2<bool>(global2.d, false)), select(vec2<bool>(true, global2.d), select(vec2<bool>(false, false), vec2<bool>(global2.c, var_0.c), false), true), !vec2<bool>(global2.d, true))), true);
    var_2 = -1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-329f - -1533f), global2.a), _wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(801f - _wgslsmith_f_op_f32(-global1.x)))));
    global0 = array<Struct_1, 13>();
    let var_1 = countOneBits(6917u);
    var var_2 = Struct_1(-1616f, ~global2.b, !(!arg_2.x), true);
    var var_3 = vec2<i32>(-2147483647i, ~21730i);
    return global2.b;
}

fn func_1() -> u32 {
    var var_0 = u_input.e.x;
    var_0 = _wgslsmith_mod_u32(func_2(vec4<bool>(any(vec2<bool>(global2.c, true)), true, any(select(vec4<bool>(true, global2.d, true, global2.d), vec4<bool>(global2.d, global2.d, true, global2.c), true)), global2.d), _wgslsmith_mult_vec2_i32(firstLeadingBit(u_input.c.xz), vec2<i32>(1i, 1i)) >> (u_input.d % vec2<u32>(32u)), !vec3<bool>(all(vec2<bool>(false, global2.c)), !global2.d, false)), countOneBits(371u) ^ global2.b);
    global0 = array<Struct_1, 13>();
    var var_1 = !all(vec3<bool>(_wgslsmith_div_f32(-592f, -247f) >= global2.a, !any(vec2<bool>(true, true)), select(all(vec3<bool>(false, global2.d, global2.c)), true, !global2.c)));
    let var_2 = vec3<i32>(~(u_input.c.x | _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_mod_i32(2147483647i, 1i))), _wgslsmith_sub_i32(~u_input.b.x, u_input.b.x), ~2147483647i);
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    var var_0 = true && global2.d;
    var_0 = global1.x < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 337f))), global2.a) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(215f, global1.x)), _wgslsmith_f_op_f32(1398f * 404f))));
    var_0 = false;
    let var_1 = reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(abs(abs(34121u)), max(~1u, reverseBits(66077u)), firstTrailingBit(4294967295u)), ~(~vec3<u32>(global2.b, 33612u, u_input.e.x))));
    global2 = Struct_1(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * _wgslsmith_f_op_f32(f32(-1f) * -405f))), firstTrailingBit(~4294967295u), global2.d, all(vec2<bool>(global2.c, true)));
    var var_2 = ~func_1();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, _wgslsmith_div_vec3_i32(vec3<i32>(~abs(-1i), countOneBits(13414i) | u_input.c.x, -2147483647i), u_input.b), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(1i, abs(u_input.b.x), ~u_input.b.x, 443i), vec4<i32>(-7880i, u_input.b.x, 0i, i32(-1i) * -44102i)), vec4<i32>(41196i, u_input.b.x, ~reverseBits(54954i), u_input.c.x), select(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.b.x, -6919i), vec4<i32>(u_input.c.x, -8390i, u_input.b.x, u_input.c.x)), select(vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, -1i), vec4<i32>(u_input.c.x, u_input.c.x, 54601i, u_input.c.x), true)), ~(~vec4<i32>(u_input.c.x, 2147483647i, -10211i, 48817i)), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, _wgslsmith_div_f32(global2.a, global1.x), 1637f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, 1571f, 1232f, global2.a) - vec4<f32>(global2.a, global2.a, global2.a, global2.a)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -166f, -211f, 1000f), vec4<f32>(global1.x, -1415f, -414f, -294f))))))), var_1.x);
}

