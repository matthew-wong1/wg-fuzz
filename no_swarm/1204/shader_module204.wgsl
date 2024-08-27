struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_i32(arg_0.b.b.a, vec2<i32>(~(~abs(-1i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.d, 2147483647i, 12621i, 17246i)), max(vec4<i32>(arg_0.b.b.a.x, u_input.b, arg_0.b.b.a.x, u_input.d), countOneBits(vec4<i32>(u_input.b, -2044i, arg_0.b.b.a.x, arg_0.b.b.a.x))))));
    let var_1 = arg_0.a;
    var_0 = ~((-vec2<i32>(u_input.b, arg_0.b.b.a.x) << (firstLeadingBit(~vec2<u32>(0u, var_1)) % vec2<u32>(32u))) ^ firstLeadingBit(max(vec2<i32>(arg_0.b.b.a.x, var_0.x) ^ vec2<i32>(-38450i, var_0.x), arg_0.b.b.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))) - 392f);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_2(true, Struct_1(abs(~vec2<i32>(u_input.d, u_input.b) | -vec2<i32>(u_input.b, u_input.b))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-2033f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_3(Struct_3(4294967295u, Struct_2(var_0.a, Struct_1(var_0.b.a)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(964f - 1000f), _wgslsmith_f_op_f32(func_3(Struct_3(arg_0.x, Struct_2(var_0.a, Struct_1(vec2<i32>(-1i, var_0.b.a.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f) * _wgslsmith_f_op_f32(select(435f, 1033f, var_0.a)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-827f, 171f, -1000f, 469f), vec4<f32>(686f, 510f, 651f, -226f), var_0.a)), vec4<f32>(-166f, 674f, 434f, -1182f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1863f), _wgslsmith_f_op_f32(f32(-1f) * -1702f), -566f, -670f))), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(927f - -2011f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1544f - -615f)) * _wgslsmith_f_op_f32(func_3(Struct_3(5523u, var_0)))), -403f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1778f, -1000f, var_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1854f), _wgslsmith_f_op_f32(floor(-726f)))))), vec4<bool>(true, (~u_input.a << (_wgslsmith_clamp_u32(arg_0.x, 85720u, 0u) % 32u)) != arg_0.x, var_0.a, false)));
    let var_2 = arg_0.zxx;
    var var_3 = !var_0.a;
    let var_4 = Struct_3(abs(firstLeadingBit(~arg_0.x & ~78718u)), var_0);
    return var_4.b.a;
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = func_2(vec4<u32>(~u_input.a ^ ~36027u, _wgslsmith_mod_u32(u_input.c, u_input.a & 1u), 4294967295u, min(~u_input.a, u_input.c | 0u))) || func_2(~firstTrailingBit(~vec4<u32>(u_input.c, u_input.a, 27848u, u_input.c)));
    let var_1 = Struct_2(var_0, Struct_1(-vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 12900i, 0i, -5023i), vec4<i32>(arg_0, 64325i, 18158i, u_input.d)))));
    var var_2 = Struct_4(var_1.b, Struct_1(-_wgslsmith_mult_vec2_i32(~vec2<i32>(2946i, u_input.b), vec2<i32>(2147483647i, var_1.b.a.x))), var_1, !(!vec4<bool>(var_1.a | var_1.a, true, true, true)));
    var_2 = Struct_4(var_1.b, Struct_1(-(vec2<i32>(arg_0, u_input.d) << (~vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)))), var_1, vec4<bool>(any(select(!vec3<bool>(var_2.c.a, var_1.a, var_0), !var_2.d.zyx, arg_0 >= arg_0)), true, true, !(!var_2.d.x == func_2(vec4<u32>(30977u, 0u, u_input.c, u_input.c)))));
    var_2 = Struct_4(var_1.b, Struct_1(vec2<i32>(-16830i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(0u, u_input.c)) % 32u), 73273i)), Struct_2(true, Struct_1(var_2.b.a)), select(var_2.d, var_2.d, true));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(1000f, 110f))))), 685f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-581f, -2014f)), _wgslsmith_f_op_f32(select(115f, 1000f, false)))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(733f, -1245f, true)) * _wgslsmith_f_op_f32(trunc(-1000f)))))));
    var_0 = -702f;
    let var_1 = false;
    var_0 = _wgslsmith_f_op_f32(func_1(-29028i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-743f, -1824f, 296f) - vec3<f32>(-599f, -1502f, 674f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, -171f, -542f))))) * vec3<f32>(652f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(251f)), -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(-1990f, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~53657u, 15663u, u_input.c, u_input.a), reverseBits(vec4<u32>(u_input.c, 30030u, 0u, u_input.a))), select(select(vec4<u32>(106648u, u_input.a, 69707u, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, 37606u, 3637u), max(vec4<u32>(27891u, 53176u, u_input.c, u_input.a), vec4<u32>(u_input.a, 3946u, u_input.a, 42002u)), true), ~(vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.a) ^ vec4<u32>(u_input.c, 1u, 7375u, 2752u)), true)), 1u);
}

