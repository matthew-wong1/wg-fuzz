struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec3<u32> = vec3<u32>(37036u, 4755u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = ~_wgslsmith_sub_u32(u_input.c, 43340u);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(1f, 1f, 1f), any(arg_1.b))));
    var var_1 = _wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(reverseBits(~(arg_2.a.x ^ global1.x)), abs(~arg_2.a.x & 25526u), max(1u, arg_2.a.x), min(~(~15188u), select(max(u_input.c, 18498u), reverseBits(arg_0.a.x), !arg_1.b.x))));
    let var_2 = arg_2.a.x;
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -2147483647i, countOneBits(1i), ~(-firstTrailingBit(u_input.d))), _wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -9778i, u_input.d, u_input.d), vec4<i32>(u_input.d, -10710i, u_input.d, u_input.d)), vec4<i32>(u_input.d, -u_input.d, _wgslsmith_mod_i32(-26795i, 45200i), _wgslsmith_sub_i32(-33005i, u_input.d)), select(abs(vec4<i32>(u_input.d, 0i, u_input.d, u_input.d)), ~vec4<i32>(u_input.d, -30211i, -24528i, 4192i), true)) >> (arg_1.a % vec4<u32>(32u)));
    return _wgslsmith_mult_u32(select(arg_1.a.x, 0u, any(vec3<bool>(arg_2.b.x, true, arg_0.b.x))), global1.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec2<i32> {
    let var_0 = countOneBits(u_input.d);
    global0 = ~4274u;
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(5142u), func_3(Struct_1(~vec4<u32>(31426u, 3724u, arg_1.a.x, arg_0.x), vec4<bool>(arg_3, true, arg_1.b.x, false)), Struct_1(_wgslsmith_clamp_vec4_u32(arg_1.a, arg_1.a, vec4<u32>(arg_1.a.x, global1.x, arg_0.x, 4294967295u)), !arg_1.b), Struct_1(vec4<u32>(0u, u_input.c, 4294967295u, 1u), select(vec4<bool>(false, false, arg_1.b.x, true), vec4<bool>(true, true, true, false), arg_3)))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(arg_0, vec2<u32>(global1.x, 91441u) & select(global1.xy, vec2<u32>(arg_1.a.x, 4294967295u), arg_1.b.x)), ~(~u_input.a.zy)));
    global0 = 16683u;
    global0 = arg_1.a.x;
    return vec2<i32>(~1i, var_0);
}

fn func_1(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_1(vec4<u32>(~u_input.b, global1.x, abs(0u >> (global1.x % 32u)), ~global1.x), vec4<bool>(arg_0.x, true, false, any(arg_0)));
    global0 = min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 34584u, global1.x) >> (firstLeadingBit(vec3<u32>(global1.x, var_0.a.x, global1.x)) % vec3<u32>(32u))), 118091u, var_0.a.x), global1.x);
    let var_1 = var_0.a;
    let var_2 = var_0;
    var var_3 = func_2(vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(firstLeadingBit(4294967295u), _wgslsmith_mult_u32(global1.x, 1u))), var_2.a.x), var_2, _wgslsmith_sub_i32(1i, u_input.d), !var_0.b.x);
    return select(~vec4<u32>(u_input.a.x | u_input.a.x, ~var_0.a.x, 1u, ~0u), var_1, var_2.b.x) | vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 0u, global1.x, global1.x), _wgslsmith_clamp_vec4_u32(var_0.a, var_2.a, vec4<u32>(var_0.a.x, 31757u, 1u, 36784u)), var_0.a >> (var_0.a % vec4<u32>(32u))), ~(~var_0.a)), ~3521u, var_2.a.x, abs(27779u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!all(vec2<bool>(true, true)));
    var var_1 = Struct_1(func_1(!vec2<bool>(all(vec3<bool>(false, true, true)), true)), select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), false), vec4<bool>(select(true, true, all(vec3<bool>(true, true, true))), true, false, any(vec3<bool>(false, true, true))), select(all(vec2<bool>(true, true)), true, true)));
    global0 = ~func_1(vec2<bool>(true, false)).x ^ (var_1.a.x ^ ~_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(1u, 1u)));
    let var_2 = Struct_1(select(_wgslsmith_mod_vec4_u32(var_1.a, select(vec4<u32>(4294967295u, 1u, u_input.c, 52001u), var_1.a, var_1.b.x)) & var_1.a, ~reverseBits(reverseBits(vec4<u32>(1u, global1.x, global1.x, 122991u))), var_1.b), var_1.b);
    let var_3 = vec3<i32>(0i, 2147483647i << (select(62338u, global1.x, true) % 32u), ~(reverseBits(_wgslsmith_add_i32(u_input.d, 25959i)) << (32386u % 32u)));
    let var_4 = _wgslsmith_mult_vec4_u32(abs(~firstLeadingBit(func_1(vec2<bool>(false, true)))), firstLeadingBit(var_2.a) >> ((_wgslsmith_clamp_vec4_u32(var_1.a, var_2.a, vec4<u32>(global1.x, 1u, u_input.a.x, global1.x)) << (min(vec4<u32>(73711u, 1u, global1.x, 1u), vec4<u32>(10962u, 6393u, 0u, 86828u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_5 = ~var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(-846f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1623f, 139f)) - _wgslsmith_f_op_f32(f32(-1f) * -686f))))));
}

