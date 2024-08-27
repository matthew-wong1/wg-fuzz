struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> vec2<u32> {
    let var_0 = ~arg_0;
    var var_1 = -max(vec2<i32>(1i, _wgslsmith_mod_i32(firstTrailingBit(1i), u_input.d.x)), u_input.d);
    let var_2 = reverseBits(~(~arg_0));
    let var_3 = abs(~(~min(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, var_0, 44289u, u_input.b.x), vec4<u32>(21208u, 41165u, 13884u, var_0)), vec4<u32>(0u, 94371u, arg_0, 58804u) >> (vec4<u32>(76025u, 65424u, var_2, 0u) % vec4<u32>(32u)))));
    var_1 = vec2<i32>(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(i32(-1i) * -16558i, arg_2 << (0u % 32u), 2754i), ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, u_input.d.x, arg_2, -74073i), vec4<i32>(u_input.d.x, arg_2, 1i, arg_2)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, 0i, u_input.d.x, var_1.x), vec4<i32>(-1i, 3036i, var_1.x, u_input.d.x), vec4<i32>(u_input.c, -15313i, -1i, arg_2)))), 89837i);
    return vec2<u32>(0u, (19541u << (0u % 32u)) ^ arg_0);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) - _wgslsmith_f_op_f32(trunc(-1000f))), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1000f, 939f)))) + 890f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -917f), 220f)));
    var var_2 = arg_3;
    var_2 = arg_3;
    let var_3 = !arg_2.b;
    return Struct_1(u_input.a, !(!(_wgslsmith_sub_u32(64748u, 0u) < u_input.a.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    var var_0 = arg_1.b;
    var var_1 = arg_1;
    let var_2 = ~var_1.a.x;
    var var_3 = arg_1;
    let var_4 = Struct_1(~vec2<u32>(31744u & _wgslsmith_add_u32(0u, var_2), 0u), true);
    return _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yz, _wgslsmith_div_vec2_u32(~var_3.a, ~(~vec2<u32>(1u, 57532u)))), ~var_1.a);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f + 680f)), func_3(max(select(vec2<u32>(1u, u_input.a.x), u_input.a, false), func_2(63458u, -1257f, -1i)), vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, -18076i), Struct_1(u_input.b.xz, false), ~1i), u_input.d.x), !(1u == ~u_input.b.x) != any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true)));
    let var_1 = vec4<bool>(any(vec3<bool>(!select(true, var_0.b, var_0.b), var_0.b, true)), true, all(vec3<bool>(!(!var_0.b), var_0.b, var_0.b)), !var_0.b);
    var var_2 = ~80324u;
    let var_3 = vec2<i32>(26812i, 1i);
    let var_4 = func_3(~_wgslsmith_mod_vec2_u32(u_input.b.yy, reverseBits(u_input.a) ^ ~vec2<u32>(u_input.a.x, u_input.b.x)), ~reverseBits(vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-12121i, u_input.d.x, 2147483647i), vec3<i32>(-18102i, -1i, var_3.x)), -14961i, u_input.c)), func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, u_input.b.x), select(33086u, 6629u, false)), vec2<u32>(var_0.a.x, u_input.b.x)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, var_3.x), vec4<i32>(u_input.d.x, -23077i, u_input.c, -1i)) & reverseBits(vec4<i32>(u_input.d.x, -2147483647i, u_input.c, var_3.x)), select(abs(vec4<i32>(var_3.x, var_3.x, 36922i, -20690i)), vec4<i32>(-44500i, -7026i, u_input.c, u_input.c), any(vec2<bool>(true, var_1.x)))), Struct_1(u_input.a >> (firstLeadingBit(var_0.a) % vec2<u32>(32u)), var_0.b), _wgslsmith_sub_i32(-(i32(-1i) * -2147483647i), var_3.x)), -1i);
    return 59481u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~u_input.d.x, countOneBits(u_input.d.x) & 1i, u_input.c) << (~reverseBits(vec3<u32>(u_input.b.x, u_input.a.x, 83084u) & vec3<u32>(13589u, u_input.a.x, u_input.b.x)) % vec3<u32>(32u)), select(u_input.a.x, func_1(), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-122f * 1f)));
}

