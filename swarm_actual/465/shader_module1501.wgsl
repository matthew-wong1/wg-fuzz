struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-1165f, -1000f), true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> bool {
    var var_0 = vec3<bool>(true, global2.b != global2.b, !select(false, true, all(select(vec4<bool>(global2.b, global2.b, true, true), vec4<bool>(global2.b, false, false, false), vec4<bool>(global2.b, global2.b, global2.b, global2.b)))));
    global0 = 520f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(abs(global2.a.x))), _wgslsmith_div_f32(-1242f, _wgslsmith_div_f32(367f, global2.a.x))), vec2<f32>(-760f, _wgslsmith_f_op_f32(f32(-1f) * -911f)), true)), true);
    var var_2 = Struct_1(var_1.a, var_0.x);
    var var_3 = 3769u;
    return false;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> bool {
    return all(!vec2<bool>(!func_2(), any(vec4<bool>(true, arg_1, arg_1, arg_1))));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(global2.a)), global2.a))), _wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, global2.a.x), global2.a))), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(281f, global2.a.x, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f)))) + -1696f);
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 12436u, 51448u, 25428u), ~vec4<u32>(65372u, 0u, u_input.b.x, u_input.b.x)), ~u_input.b.x, countOneBits(min(u_input.b.x, 18087u))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(36388u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), vec3<u32>(1u, 3143u, 4294967295u)) << (_wgslsmith_mod_vec3_u32(min(vec3<u32>(43763u, 84227u, u_input.b.x), vec3<u32>(60494u, u_input.b.x, 1u)), ~vec3<u32>(0u, 16212u, 9053u)) % vec3<u32>(32u))), select(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 36984u), u_input.b.x), ~vec3<u32>(u_input.b.x, 1u, u_input.b.x)), ~(~(vec3<u32>(1u, u_input.b.x, 4294967295u) << (vec3<u32>(4294967295u, u_input.b.x, 1u) % vec3<u32>(32u)))), any(vec2<bool>(true, false))));
    let var_4 = var_2.x;
    return _wgslsmith_div_vec4_i32(vec4<i32>(-(global1.x & ~69004i), ~_wgslsmith_div_i32(u_input.a.x, u_input.d), 1i, firstTrailingBit(global1.x ^ u_input.d)), _wgslsmith_add_vec4_i32(u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(global2.b, false, func_1(u_input.a, false, Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, global1.x) & u_input.a.yw, global1.wz & vec2<i32>(-26371i, 1i))), -vec4<i32>(-10433i, u_input.c.x | 26044i, global1.x, -1i)));
    global1 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(-func_3(), _wgslsmith_mod_vec4_i32(u_input.a, ~(-u_input.a)), vec4<i32>(~_wgslsmith_clamp_i32(-2147483647i, 0i, global1.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c.x, 43969i), global1.x), firstLeadingBit(9344i), ~_wgslsmith_div_i32(global1.x, -1i))));
    global1 = ~vec4<i32>(0i >> (u_input.b.x % 32u), max(global1.x, -u_input.c.x), u_input.d ^ min(min(-52127i, -1i), 1i), ~(-2147483647i));
    global1 = -(~vec4<i32>(~_wgslsmith_clamp_i32(global1.x, -2147483647i, 59100i), u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(global1.x, 1i), countOneBits(-161i)), global1.x));
    let var_1 = vec2<i32>(global1.x, 1i);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1624f - global2.a.x), _wgslsmith_f_op_f32(round(global2.a.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-423f, -931f)))) - -201f), global2.a.x);
    global1 = vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(select(firstTrailingBit(vec2<i32>(u_input.c.x, 0i)), vec2<i32>(-12431i, var_1.x), vec2<bool>(false, var_0.x))), max(global1.wz, var_1)), -2147483647i, firstTrailingBit(2147483647i), abs(-func_3().x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global1.x), _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 15874u, 64603u), vec4<u32>(u_input.b.x, 276u, 19833u, 36337u))), 0u), vec3<u32>(u_input.b.x, countOneBits(_wgslsmith_mod_u32(5746u, 13792u)), u_input.b.x), u_input.a.wzy, _wgslsmith_f_op_f32(-2253f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(231f)), _wgslsmith_f_op_f32(-global2.a.x), true)) + 980f)));
}

