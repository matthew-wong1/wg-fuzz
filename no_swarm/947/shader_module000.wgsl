struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a.a.a), arg_1.a.a.b, true, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.x, 30156u), arg_2.x), -537f);
    let var_1 = arg_0.yw;
    var_0 = Struct_1(vec3<f32>(var_0.e, 1855f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(601f + 1000f)) + 1390f)), 37826u, var_0.c, 26391u, var_0.a.x);
    var_0 = arg_1.a.a;
    var var_2 = vec4<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(-(~arg_3.x), u_input.b.x, _wgslsmith_div_i32(i32(-1i) * -2147483647i, 1i))), 0i, 1i, -_wgslsmith_add_i32(u_input.b.x, -1i));
    return arg_1.a.a.a;
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(484f + -1988f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u)), Struct_3(Struct_2(Struct_1(vec3<f32>(-348f, 738f, -1077f), 0u, true, 0u, -641f), true)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 13423u), u_input.a.yz)), -(u_input.b ^ u_input.b)))), firstLeadingBit(~_wgslsmith_mod_u32(0u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -951f) + _wgslsmith_f_op_f32(f32(-1f) * -814f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(u_input.a.x, u_input.a.x, 9507u, 13040u), Struct_3(Struct_2(Struct_1(vec3<f32>(-2892f, 357f, -1000f), u_input.a.x, true, 4294967295u, -463f), false)), vec2<u32>(1u, u_input.a.x), u_input.b)).x, -733f), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-323f))))) - 702f));
    var var_2 = 162f;
    var var_3 = !var_1.c;
    let var_4 = ~(~(~vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 36740u), ~var_1.d)));
    return var_4;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = select(vec2<u32>(6585u, ~_wgslsmith_dot_vec3_u32(abs(u_input.a), u_input.a)), u_input.a.zy << (u_input.a.zx % vec2<u32>(32u)), vec2<bool>(all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), arg_0 & arg_0)), true));
    var_0 = func_2();
    var var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2230f, -1392f, 392f))), ~min(u_input.a.x, u_input.a.x), true && (4294967295u > var_0.x), ~u_input.a.x | var_0.x, _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(0u, var_0.x, u_input.a.x, 1u) & vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a.x), Struct_3(Struct_2(Struct_1(vec3<f32>(463f, -1393f, 1102f), var_0.x, true, var_0.x, 143f), true)), u_input.a.yy, vec2<i32>(-12551i, 36425i))).x), true));
    var_1 = Struct_5(Struct_2(Struct_1(vec3<f32>(var_1.a.a.a.x, _wgslsmith_f_op_f32(1519f + -941f), 418f), 0u, true, 1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -752f)))), true != select(!arg_0, false, true)));
    var_0 = ~(~(~firstTrailingBit(u_input.a.zz)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(false));
    let var_1 = vec3<f32>(1256f, var_0.a.a.e, 393f);
    var var_2 = Struct_3(Struct_2(func_1((var_1.x >= var_1.x) & true).a, var_0.a.a.c));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1), var_0.a.a.a)))), 1u, true, ~(abs(13483u) >> ((~4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(28502u, var_0.a.a.d, var_0.a.a.b, 103837u), vec4<u32>(var_0.a.a.b, 53279u, 27303u, var_2.a.a.b))) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2072f, 405f))))));
    var_3 = var_2.a.a;
    let var_4 = vec4<bool>(var_2.a.b, true, !var_0.a.a.c, true);
    var var_5 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(u_input.a.x), _wgslsmith_mod_u32(var_2.a.a.b, u_input.a.x)), var_0.a.a.b)), firstLeadingBit(~vec2<i32>(0i, u_input.b.x) & ~vec2<i32>(u_input.b.x, -25443i)) & reverseBits(-select(vec2<i32>(u_input.b.x, 39842i), vec2<i32>(-1i, -15513i), var_3.c)), -1i);
}

