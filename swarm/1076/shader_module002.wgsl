struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    var var_0 = vec3<bool>(true, !arg_0.x, false);
    var var_1 = _wgslsmith_f_op_f32(floor(-1366f));
    return var_0.x & (abs(~(~48157u)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(68091u, 88454u), 63333u, 1u), ~vec4<u32>(5991u, 16910u, 0u, 0u)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 32>();
    let var_0 = Struct_1(!vec4<bool>(true, any(vec2<bool>(true, true)), func_3(vec4<bool>(false, false, false, false)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(1u, 32u)]))));
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    return Struct_1(select(vec4<bool>(!var_0.a.x, true || any(var_0.a.zw), any(var_0.a.wy), false), select(vec4<bool>(false, any(vec4<bool>(false, var_0.a.x, false, var_0.a.x)), any(vec4<bool>(false, true, var_0.a.x, var_0.a.x)), var_0.a.x), var_0.a, func_3(select(var_0.a, var_0.a, false))), select(vec4<bool>(!var_0.a.x, true, !var_0.a.x, select(var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a, !var_0.a.x)), var_0.b);
}

fn func_1() -> u32 {
    var var_0 = func_2();
    let var_1 = ~vec4<u32>(4294967295u, ~0u, _wgslsmith_div_u32(22059u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1425u), vec2<u32>(37827u, 18569u)), 1u)), ~1u);
    var var_2 = func_2();
    var_2 = Struct_1(vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(ceil(314f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 359f) - _wgslsmith_f_op_f32(var_0.b.x - -768f)), var_2.a.x, !(0u <= var_1.x) && (~0i <= u_input.a)), global0[_wgslsmith_index_u32(var_1.x, 32u)]);
    global0 = array<vec2<f32>, 32>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec2<u32>(1u, firstLeadingBit(1u))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    global0 = array<vec2<f32>, 32>();
    var var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x) | vec3<u32>(0u, 4294967295u, 50928u)), 1u, 18781u, ~_wgslsmith_sub_u32(var_0.x, 6967u)), vec4<u32>(reverseBits(max(_wgslsmith_mult_u32(74492u, 46720u), var_0.x)), 0u, _wgslsmith_sub_u32(min(func_1(), _wgslsmith_clamp_u32(var_0.x, 23251u, 4294967295u)), max(1u, ~1u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(7395u, 4294967295u, var_0.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(69463u, var_0.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, var_0.x, 34086u, 0u), vec4<u32>(var_0.x, 4294967295u, var_0.x, 59538u))), _wgslsmith_add_u32(0u, var_0.x), ~_wgslsmith_mult_u32(29861u, var_0.x))));
    var var_2 = func_2();
    var var_3 = _wgslsmith_mod_vec2_i32(~(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.b, u_input.c), vec4<i32>(0i, -14032i, u_input.b, -2147483647i)), u_input.b ^ 19912i)), vec2<i32>(-1i, ~(~u_input.b) | max(~u_input.a, 14044i)));
    let var_4 = abs(min(select(~firstLeadingBit(vec3<i32>(-1i, -1i, u_input.c)), _wgslsmith_mod_vec3_i32(-vec3<i32>(14485i, u_input.c, u_input.c), vec3<i32>(var_3.x, -32401i, var_3.x)), vec3<bool>(var_2.a.x, func_3(var_2.a), var_2.a.x || false)), -firstTrailingBit(-vec3<i32>(-2147483647i, var_3.x, u_input.b))));
    var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.c, 43606i), var_4.zz), vec2<i32>(-42i, var_3.x) ^ var_4.zz, reverseBits(_wgslsmith_clamp_vec2_i32(firstTrailingBit(var_4.xz), -vec2<i32>(var_4.x, var_4.x), var_4.xy)) | vec2<i32>(var_3.x, firstLeadingBit(-var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.b, global0[_wgslsmith_index_u32(39288u, 32u)], vec2<bool>(true, var_2.a.x)))) - global0[_wgslsmith_index_u32(80789u, 32u)]), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * 965f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))))), var_1.ww, ~vec3<u32>(_wgslsmith_add_u32(var_1.x, ~var_1.x), 14554u, var_1.x), 4294967295u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, 629f, 772f, -974f) * vec4<f32>(1182f, var_2.b.x, 535f, var_2.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 488f, var_2.b.x, -781f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-533f, 604f, var_2.b.x, -239f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1373f, var_2.b.x, 314f))), vec4<f32>(-232f, var_2.b.x, -643f, -401f)))), select(vec4<bool>(true, var_2.a.x, true, all(var_2.a)), var_2.a, func_2().a))));
}

