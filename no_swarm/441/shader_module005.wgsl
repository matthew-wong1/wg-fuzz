struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-778f, _wgslsmith_f_op_f32(f32(-1f) * -1746f))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(149f * _wgslsmith_f_op_f32(abs(var_0.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1285f + 986f))))));
    let var_1 = min(~55705u, firstLeadingBit(firstLeadingBit((4294967295u >> (u_input.c.x % 32u)) | u_input.a)));
    let var_2 = Struct_1(_wgslsmith_div_f32(-471f, 1f));
    var_0 = var_2;
    return !vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, false)))), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(ceil(var_0.a)) > var_2.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = select(u_input.b.xww, countOneBits(~vec3<u32>(~u_input.c.x, firstTrailingBit(u_input.a), u_input.a >> (u_input.c.x % 32u))), func_3());
    let var_1 = ~(-(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-31700i, arg_2.x, u_input.e.x, u_input.e.x), vec4<i32>(-1i, arg_1.x, -2147483647i, u_input.d)), abs(-9384i), -arg_2.x) << (_wgslsmith_add_u32(abs(0u), _wgslsmith_mod_u32(var_0.x, 4294967295u)) % 32u)));
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_0.x, countOneBits(1u) | var_0.x), var_0.xy >> (_wgslsmith_mod_vec2_u32(~(u_input.b.yy >> (var_0.yx % vec2<u32>(32u))), ~var_0.zx) % vec2<u32>(32u)), vec2<u32>(0u, 49560u));
    var var_3 = min(~_wgslsmith_sub_u32(~0u, var_0.x), var_2.x);
    var_3 = max(_wgslsmith_clamp_u32(var_0.x, 57405u, 1u ^ _wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.xy)) | ~(~1u), ~(~max(var_0.x, var_2.x)));
    return ~_wgslsmith_add_u32(var_0.x, max(~select(var_0.x, u_input.c.x, true), 0u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    let var_0 = arg_0;
    var var_1 = vec2<i32>(36737i, _wgslsmith_mult_i32(-57276i, _wgslsmith_add_i32(u_input.e.x << ((arg_3 << (arg_3 % 32u)) % 32u), ~u_input.d)));
    let var_2 = ~u_input.d;
    let var_3 = vec2<u32>(46425u, u_input.c.x);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - -929f) + _wgslsmith_f_op_f32(-var_0.a)) - -188f), -1802f)));
    return ~(u_input.b | countOneBits(_wgslsmith_add_vec4_u32(~u_input.b, max(vec4<u32>(57628u, var_3.x, 14784u, var_3.x), u_input.b))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.a, -1001f)) - arg_0))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.a, 1047f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a, 1000f), vec2<f32>(-277f, arg_0), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1336f, arg_3.a) + vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a, arg_1.a))))), true)), arg_1, 10244u << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2 | u_input.b.x, func_2(arg_1, vec3<i32>(-21601i, u_input.e.x, -19447i), vec3<i32>(u_input.e.x, -61092i, 989i), arg_3), ~24253u, ~u_input.b.x), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, u_input.a, 0u, u_input.b.x))) % 32u));
    var_0 = min(u_input.b, _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(4294967295u, 4294967295u, 0u, 1u) << (u_input.b % vec4<u32>(32u))) << (firstTrailingBit(func_4(arg_3, vec2<f32>(arg_3.a, arg_1.a), arg_1, 4294967295u)) % vec4<u32>(32u))) >> (vec4<u32>(arg_2, 1u, arg_2, 1u) % vec4<u32>(32u));
    var_0 = ~vec4<u32>(select(48279u, var_0.x, false), 4294967295u, ~(~0u), abs(25071u));
    let var_1 = 47419u;
    var var_2 = Struct_1(1355f);
    return !all(vec3<bool>(any(vec3<bool>(true, true, false)), true, all(vec3<bool>(true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!func_1(_wgslsmith_f_op_f32(f32(-1f) * -945f), Struct_1(-594f), ~abs(4294967295u), Struct_1(_wgslsmith_f_op_f32(sign(243f)))), select((u_input.d ^ -1i) == u_input.e.x, false, true) || (~2147483647i == (u_input.d & -16572i)), true);
    var var_1 = ~(~u_input.c.x);
    var var_2 = ~(~vec2<u32>(~min(u_input.c.x, 24717u), u_input.b.x));
    var var_3 = vec3<bool>(true && var_0.x, false, u_input.d < -((u_input.d ^ -448i) >> (~0u % 32u)));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1465f * -730f) - -445f), -2001f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.a, var_4.a) * _wgslsmith_div_f32(var_4.a, _wgslsmith_f_op_f32(-297f * _wgslsmith_f_op_f32(f32(-1f) * -267f)))), countOneBits(var_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_4.a, 676f), var_4.a, true))))), ~countOneBits(min(u_input.b << (vec4<u32>(1u, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)), u_input.b)));
}

