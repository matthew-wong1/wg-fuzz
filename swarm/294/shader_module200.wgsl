struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = global0.a.a;
    var var_1 = Struct_2(global0.a);
    let var_2 = !global0.a.c;
    global0 = Struct_2(var_1.a);
    var var_3 = reverseBits(15178i);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e.x, global0.a.e.x, 2154f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.e.x, -654f)) + _wgslsmith_f_op_f32(round(1607f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.e.x * var_1.a.e.x)), _wgslsmith_f_op_f32(global0.a.e.x + _wgslsmith_f_op_f32(-1000f - var_1.a.e.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.a.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e.x, 795f, 826f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.e.x, var_1.a.e.x, 191f)))))));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    global0 = Struct_2(Struct_1(_wgslsmith_mod_u32(firstLeadingBit(global0.a.b.x), select(~global0.a.a, ~global0.a.a, global0.a.c)), min(global0.a.b, global0.a.b), global0.a.e.x < -607f, abs(~vec4<i32>(u_input.a, 0i, global0.a.d.x, u_input.b.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.a, 46321u, global0.a.b.x, 11732u), vec4<u32>(global0.a.a, global0.a.a, 40182u, global0.a.a), vec4<u32>(70303u, global0.a.a, global0.a.a, 46670u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x))) * global0.a.e)));
    var var_0 = ~44960u;
    var var_1 = Struct_3(Struct_2(global0.a), Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(12217u, 1u, global0.a.a, global0.a.b.x), vec4<u32>(global0.a.b.x, global0.a.a, 44881u, 62148u)), min(~global0.a.b, ~vec3<u32>(global0.a.a, global0.a.b.x, global0.a.a)), false, _wgslsmith_clamp_vec4_i32(global0.a.d, global0.a.d, global0.a.d) | select(global0.a.d, global0.a.d, vec4<bool>(true, global0.a.c, true, global0.a.c)), global0.a.e)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(434f, arg_0.x, 502f, 820f), vec4<f32>(1032f, 160f, global0.a.e.x, -153f)) * vec4<f32>(global0.a.e.x, -1685f, arg_0.x, global0.a.e.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(934f, 694f, -802f, -560f), vec4<f32>(global0.a.e.x, 106f, global0.a.e.x, arg_0.x))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xz), vec2<f32>(-414f, global0.a.e.x)), global0.a);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_3(var_1.a.a.d.ywy)).x)), global0.a.e.x);
    var var_3 = -2147483647i;
    return (_wgslsmith_div_u32(~firstTrailingBit(global0.a.a), var_1.b.a.a) << (22285u % 32u)) >= (global0.a.b.x >> (4294967295u % 32u));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: f32) -> Struct_2 {
    let var_0 = vec3<bool>(global0.a.c, true, all(vec3<bool>(false, !global0.a.c && false, func_2(vec3<f32>(global0.a.e.x, -1292f, arg_0)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -230f)))), _wgslsmith_f_op_vec3_f32(func_3(global0.a.d.xwy)).x)), _wgslsmith_f_op_vec3_f32(func_3(~vec3<i32>(-1i, -19223i, global0.a.d.x) << (abs(vec3<u32>(global0.a.a, arg_1.x, 3413u)) % vec3<u32>(32u)))).x, global0.a.e.x);
    var var_2 = Struct_1(arg_1.x, arg_1 >> (~select(~arg_1, global0.a.b, var_0.x) % vec3<u32>(32u)), !(!global0.a.c), global0.a.d, vec3<f32>(_wgslsmith_f_op_f32(255f - 315f), -156f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(min(790f, arg_0)), any(select(var_0, vec3<bool>(var_0.x, global0.a.c, false), var_0.x))))));
    let var_3 = global0.a;
    var var_4 = var_3.d.x;
    return Struct_2(Struct_1(0u, ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(1u, 591u, 4294967295u), global0.a.b), vec3<u32>(1u, 4294967295u, var_3.a)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 19428i, global0.a.d.x), firstTrailingBit(vec3<i32>(global0.a.d.x, global0.a.d.x, var_3.d.x))) > (_wgslsmith_mod_i32(global0.a.d.x, var_2.d.x) | _wgslsmith_clamp_i32(global0.a.d.x, -1i, 0i)), abs(vec4<i32>(firstTrailingBit(37302i), -u_input.a, _wgslsmith_mult_i32(1i, -2147483647i), var_2.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_3.e - var_3.e))) - global0.a.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.a.e.x, 878f)))))), countOneBits(vec3<u32>(global0.a.b.x, reverseBits(global0.a.b.x), 1u)) ^ ~(~(global0.a.b << (vec3<u32>(4294967295u, 27266u, global0.a.a) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(abs(global0.a.e.x)));
    var var_0 = Struct_3(func_1(-527f, global0.a.b, global0.a.e.x), func_1(_wgslsmith_f_op_f32(-global0.a.e.x), ~vec3<u32>(global0.a.a, global0.a.b.x >> (global0.a.a % 32u), 10049u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.e.x - global0.a.e.x), _wgslsmith_f_op_f32(-720f + 447f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(-647f, 935f)), _wgslsmith_f_op_f32(global0.a.e.x - global0.a.e.x), _wgslsmith_f_op_f32(370f - -183f), 461f))) - vec4<f32>(-335f, 634f, _wgslsmith_f_op_f32(-global0.a.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.e.x) * -167f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global0.a.e.x)), _wgslsmith_f_op_f32(-global0.a.e.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1573f, global0.a.e.x)) - global0.a.e.zx)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.e.xz) - _wgslsmith_div_vec2_f32(global0.a.e.xx, global0.a.e.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.a.e.yx)))))), func_1(global0.a.e.x, select(global0.a.b, vec3<u32>(~global0.a.b.x, _wgslsmith_sub_u32(global0.a.a, global0.a.b.x), 1u), select(select(vec3<bool>(false, global0.a.c, true), vec3<bool>(global0.a.c, true, global0.a.c), vec3<bool>(global0.a.c, global0.a.c, false)), select(vec3<bool>(global0.a.c, global0.a.c, global0.a.c), vec3<bool>(false, false, true), vec3<bool>(global0.a.c, global0.a.c, global0.a.c)), select(vec3<bool>(global0.a.c, false, global0.a.c), vec3<bool>(true, global0.a.c, global0.a.c), false))), _wgslsmith_f_op_f32(-875f * _wgslsmith_f_op_f32(ceil(global0.a.e.x)))).a);
    var var_1 = var_0.b.a.e.x;
    let var_2 = var_0.b.a.e.x;
    var var_3 = global0.a.e.xx;
    var_1 = global0.a.e.x;
    var var_4 = vec4<u32>(abs((var_0.b.a.b.x & 1u) & (~0u >> (var_0.a.a.a % 32u))), _wgslsmith_clamp_u32(global0.a.a, reverseBits(~60717u | (1u | global0.a.a)), countOneBits(var_0.e.a)), 64795u, _wgslsmith_dot_vec3_u32(func_1(_wgslsmith_f_op_f32(-global0.a.e.x), global0.a.b, var_0.d.x).a.b, countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_0.b.a.b.x, 1u), vec3<u32>(var_0.a.a.a, 0u, global0.a.a))) << (vec3<u32>(~global0.a.b.x, _wgslsmith_mod_u32(var_0.e.b.x, global0.a.b.x), var_0.a.a.a) % vec3<u32>(32u))));
    var var_5 = _wgslsmith_f_op_vec4_f32(select(var_0.c, var_0.c, ~global0.a.a > (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 52073u, global0.a.b.x, 0u), countOneBits(vec4<u32>(var_4.x, 1u, 8078u, var_0.a.a.a))) & (var_4.x >> (~1207u % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.d.x, ~select(global0.a.d.wxx, abs(vec3<i32>(-2147483647i, var_0.e.d.x, u_input.b.x)) & -vec3<i32>(u_input.b.x, var_0.b.a.d.x, var_0.a.a.d.x), vec3<bool>(global0.a.c, !var_0.a.a.c, false)), u_input.b, _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, 1i), 2147483647i), _wgslsmith_add_i32(u_input.a, abs(_wgslsmith_div_i32(abs(1i), 3970i))));
}

