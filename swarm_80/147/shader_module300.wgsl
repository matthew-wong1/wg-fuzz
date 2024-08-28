struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = true;
    var var_1 = Struct_2(Struct_1(674f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(abs(2113f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-296f))))), ~(-u_input.c)), ~vec3<u32>(~_wgslsmith_sub_u32(u_input.a, u_input.b.x), u_input.b.x, 4294967295u ^ reverseBits(u_input.b.x)));
    var_1 = Struct_2(var_1.a, firstLeadingBit(_wgslsmith_clamp_vec3_u32(var_1.b, vec3<u32>(4294967295u, var_1.b.x & var_1.b.x, u_input.b.x), vec3<u32>(1u, ~u_input.a, var_1.b.x))));
    var_1 = Struct_2(var_1.a, firstLeadingBit(var_1.b));
    let var_2 = ~vec2<u32>(var_1.b.x, ~(~u_input.b.x));
    return ~(~(~vec4<u32>(_wgslsmith_div_u32(var_2.x, var_2.x), 16956u, ~36364u, ~var_1.b.x)));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = ~vec4<i32>(10790i, u_input.c, u_input.c, u_input.c);
    let var_1 = -36007i << ((9278u ^ u_input.b.x) % 32u);
    var var_2 = var_0.xy;
    var_2 = var_0.wy;
    var_2 = vec2<i32>(var_0.x << (_wgslsmith_mod_u32(u_input.a, 12509u) % 32u), ~_wgslsmith_sub_i32(var_2.x, -19000i));
    return firstTrailingBit(var_0 >> (reverseBits(func_3(-2147483647i)) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    var var_0 = arg_2.a;
    var var_1 = Struct_2(arg_2.a, ~select(arg_2.b, abs(_wgslsmith_sub_vec3_u32(arg_2.b, vec3<u32>(arg_2.b.x, 4294967295u, arg_0))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)));
    var_1 = arg_2;
    var var_2 = select(~vec4<i32>(_wgslsmith_clamp_i32(12679i, ~27815i, -24763i), var_1.a.c, 10472i, select(~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.c, u_input.c), arg_1), true)), _wgslsmith_mult_vec4_i32(max(_wgslsmith_mod_vec4_i32(func_2(Struct_1(987f, 494f, -2147483647i)), ~vec4<i32>(-39292i, arg_2.a.c, arg_1.x, 2147483647i)), vec4<i32>(var_0.c, var_1.a.c, ~arg_1.x, -1i)), -abs(-vec4<i32>(-26949i, 83982i, -890i, -1i))), _wgslsmith_f_op_f32(select(790f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f), arg_3.x), select(false, false, all(vec2<bool>(false, true))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)));
    let var_3 = arg_2.a;
    return _wgslsmith_clamp_i32(-(~(-2147483647i)), -1i, u_input.c) != 31172i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, all(vec3<bool>(false, true, false)), any(vec2<bool>(true, false)), true), vec4<bool>(func_1(u_input.b.x, vec2<i32>(u_input.c, -1i), Struct_2(Struct_1(466f, -1186f, u_input.c), vec3<u32>(u_input.a, 1u, u_input.b.x)), vec2<f32>(-614f, -816f)), true, true, any(vec3<bool>(false, false, true)))), select(vec4<bool>(true && any(vec2<bool>(true, false)), false, true, false), vec4<bool>(!(u_input.a >= 76971u), select(any(vec2<bool>(true, false)), true, 0i > u_input.c), any(vec2<bool>(true, true)), true), true), !(!vec4<bool>(all(vec2<bool>(false, true)), true, all(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(u_input.c) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 1i)), 57233i), i32(-1i) * -7004i));
    var var_2 = 127102u;
    var var_3 = Struct_1(1277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-188f - -776f), var_1.a))))), func_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))), var_1.a, u_input.c)).x);
    var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f) + _wgslsmith_f_op_f32(floor(var_1.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_1.a)))), var_3.b, 32604i);
    var_1 = Struct_1(219f, 805f, -var_1.c);
    var_2 = 1u;
    var var_4 = var_0;
    let var_5 = Struct_1(var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.b)), _wgslsmith_f_op_f32(var_3.b * -1000f))))), -(var_3.c ^ _wgslsmith_div_i32(11402i, ~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~73820u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-795f, var_1.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, var_1.a))))));
}

