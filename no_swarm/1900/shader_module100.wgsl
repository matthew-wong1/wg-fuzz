struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-818f * -1416f));
    var var_1 = u_input.d;
    var var_2 = firstTrailingBit(~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(430u, u_input.c.x, u_input.a)));
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(u_input.b.x | u_input.c.x), 9402u, ~u_input.a, 5196u) & u_input.b, ~(~u_input.b));
    let var_3 = vec3<bool>(true, select(true, any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true)) & !all(vec4<bool>(false, false, true, false))), false);
    return ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i) & firstLeadingBit(vec2<i32>(-71139i, -175i) << (u_input.b.zy % vec2<u32>(32u))), vec2<i32>(1i, 1i));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, arg_1))))), true, func_3(), vec2<bool>(!all(vec3<bool>(false, false, false)), all(vec2<bool>(true, true))), true), vec2<i32>(func_3().x, -53059i), vec3<u32>(select(~(~arg_3.x), _wgslsmith_dot_vec3_u32(arg_2, ~arg_3), any(vec3<bool>(false, false, true))), ~arg_2.x, 4294967295u));
    let var_1 = _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1650f))), !var_0.a.e)))));
    var var_2 = Struct_2(var_0.a, ~var_0.a.c, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2, var_0.c) | var_0.c, var_0.c));
    let var_3 = select(vec4<bool>(var_0.a.e, select(any(!vec4<bool>(false, var_2.a.e, var_0.a.e, true)), any(select(vec4<bool>(var_2.a.d.x, var_0.a.b, var_0.a.b, var_2.a.e), vec4<bool>(var_2.a.b, var_0.a.e, var_2.a.b, true), true)), false), true, false), vec4<bool>(!any(!var_2.a.d), true, true, var_0.a.e), all(vec2<bool>(!var_0.a.e || true, !(var_2.a.a.x <= arg_1))));
    let var_4 = firstTrailingBit(var_0.c);
    return ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(0u), 27280u, _wgslsmith_div_u32(arg_2.x, 0u), _wgslsmith_clamp_u32(112915u, var_2.c.x, u_input.b.x)), ~u_input.b));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec3_u32(~select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.c.x), vec3<u32>(4294967295u, u_input.a, 0u)), ~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), false), vec3<u32>(u_input.a, 1u | u_input.d, (119037u & func_2(-51326i, arg_0.x, vec3<u32>(u_input.b.x, 39153u, 1u), u_input.b.xzy)) & 0u), ~abs(u_input.b.wwy >> (u_input.c % vec3<u32>(32u))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-810f, -1794f), vec2<f32>(arg_0.x, arg_0.x))), false, _wgslsmith_mod_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(58200i, -2147483647i))), select(~vec2<i32>(37150i, 48885i), ~vec2<i32>(-1i, -2147483647i), u_input.a != 0u)), vec2<bool>(true, true), true), _wgslsmith_clamp_vec2_i32(firstLeadingBit(firstTrailingBit(-vec2<i32>(27535i, 2147483647i))), vec2<i32>(1i, 1i), -(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 49806i), vec2<i32>(0i, 13212i), vec2<i32>(-74010i, 1i)) & func_3())), ~vec3<u32>(select(_wgslsmith_add_u32(u_input.a, var_0.x), abs(5263u), all(vec4<bool>(false, true, true, false))), max(6104u, ~71895u), u_input.c.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_1.a.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * -913f))), var_1.a.a.x, (true & var_1.a.e) && !var_1.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -1685f)));
    var var_3 = -877f;
    var var_4 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = 1249f;
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1 - 615f), var_1, _wgslsmith_f_op_f32(-var_1)))));
    var var_3 = vec2<i32>(1i, reverseBits(_wgslsmith_div_i32(var_2.b.x, ~0i)));
    let var_4 = _wgslsmith_div_i32(~(-2147483647i), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(34158u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-734f, _wgslsmith_f_op_f32(593f + var_2.a.a.x))))), ~(-(i32(-1i) * -2147483647i)));
}

