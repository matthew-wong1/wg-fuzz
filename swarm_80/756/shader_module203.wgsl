struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 15119i, 58016i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    var var_0 = Struct_1(arg_0, global0.zy, u_input.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, _wgslsmith_mult_u32(u_input.b, u_input.e.x)), min(vec3<u32>(102496u, 94016u, 4294967295u), select(u_input.e, vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), true))) % 32u));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(290f, -698f)))))), -(vec2<i32>(var_0.b.x, ~1i) << (vec2<u32>(~var_0.c, var_0.c) % vec2<u32>(32u))), select(_wgslsmith_dot_vec2_u32(u_input.e.yx, ~abs(u_input.e.yz)), max(_wgslsmith_add_u32(abs(var_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, var_0.c, 4294967295u), u_input.e)), ~u_input.e.x | abs(var_0.c)), !any(vec2<bool>(true, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f)), _wgslsmith_div_f32(249f, _wgslsmith_f_op_f32(f32(-1f) * -416f))))), _wgslsmith_sub_vec2_i32(global0.zx, countOneBits((vec2<i32>(-8538i, 1i) | u_input.c) >> (u_input.e.xz % vec2<u32>(32u)))), ~148852u);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 1877f))), 936f), vec2<i32>(-select(abs(global0.x), abs(var_0.b.x), false), -2147483647i), max(~var_1.c, ~min(1u, 0u | u_input.e.x)));
    var var_3 = ~_wgslsmith_div_vec3_u32(~u_input.e, vec3<u32>(3825u, _wgslsmith_add_u32(~var_0.c, var_0.c), min(5956u & var_2.c, u_input.e.x)));
    return ~(~vec2<u32>(reverseBits(46490u), u_input.b)) << (vec2<u32>(21988u, _wgslsmith_add_u32(_wgslsmith_sub_u32(50947u, var_2.c) & firstTrailingBit(4294967295u), ~0u)) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = !vec4<bool>(_wgslsmith_dot_vec2_u32(arg_0.xz, func_3(456f)) != select(u_input.b, arg_0.x, true), (arg_0.x != arg_0.x) & true, all(vec2<bool>(any(vec2<bool>(true, false)), true)), !(_wgslsmith_f_op_f32(-1000f * 1263f) >= _wgslsmith_f_op_f32(round(-1131f))));
    var var_1 = Struct_1(1f, _wgslsmith_div_vec2_i32(vec2<i32>(-4961i, arg_2 & 29087i), arg_1), arg_0.x);
    var_0 = select(vec4<bool>(116821u > _wgslsmith_clamp_u32(~1u, ~u_input.b, ~u_input.e.x), false, var_0.x, all(var_0.yz)), vec4<bool>(min(_wgslsmith_div_u32(u_input.b, arg_0.x), 61131u) == ~51675u, !var_0.x, ~71031u > u_input.e.x, var_0.x & !select(false, true, var_0.x)), vec4<bool>(0i != (u_input.a >> (~43278u % 32u)), false, any(vec4<bool>(false, !var_0.x, true, var_0.x)), !var_0.x));
    var_1 = Struct_1(-355f, firstLeadingBit(max(vec2<i32>(-24289i, 0i), vec2<i32>(4270i, var_1.b.x))) >> (vec2<u32>(u_input.e.x, 59642u) % vec2<u32>(32u)), 0u);
    let var_2 = true;
    return Struct_1(_wgslsmith_f_op_f32(-var_1.a), -(~select(vec2<i32>(10795i, 39718i), select(var_1.b, vec2<i32>(20055i, u_input.c.x), var_2), var_0.xx)), 20844u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = u_input.d.yxx;
    var var_0 = func_2(vec3<u32>(0u ^ ~(arg_0.x ^ u_input.e.x), ~19189u, 4294967295u), firstTrailingBit(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 2147483647i), vec2<i32>(-1i, global0.x) ^ vec2<i32>(global0.x, 1i)), global0.yz)), ~countOneBits(-firstLeadingBit(global0.x)));
    global0 = select(~(~u_input.d.xzw), -vec3<i32>(_wgslsmith_mod_i32(-10096i, u_input.a ^ -2147483647i), -firstLeadingBit(-2147483647i), global0.x), !vec3<bool>(true, true, !select(false, false, true)));
    var var_1 = !(!select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(select(false, true, false), true, global0.x == global0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b ^ global0.yz, 7111u);
    return func_2(u_input.e & arg_1, vec2<i32>(~global0.x, 39614i), ~firstTrailingBit(u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, 46782i, -global0.x), vec3<i32>(global0.x << (44847u % 32u), ~global0.x, global0.x));
    let var_0 = select(u_input.d, select(u_input.d & (-u_input.d << (~vec4<u32>(1u, 48132u, 0u, 17095u) % vec4<u32>(32u))), -_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, 69533i, 52989i, global0.x)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), true)), false);
    var var_1 = func_1(vec2<u32>(~(~u_input.b), 1u), u_input.e & (_wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(0u, 2808u, u_input.b)) | u_input.e));
    let var_2 = select(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), !vec3<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)), select(select(true, false, true), any(vec4<bool>(true, true, true, true)), false), -1000f >= _wgslsmith_f_op_f32(-var_1.a)), false);
    var var_3 = vec2<i32>(_wgslsmith_sub_i32(1584i, global0.x), 14329i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 563f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -583f)) - vec2<f32>(_wgslsmith_div_f32(var_1.a, 686f), _wgslsmith_div_f32(var_1.a, var_1.a)))), -1i);
}

