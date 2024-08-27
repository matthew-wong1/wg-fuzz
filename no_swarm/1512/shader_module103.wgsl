struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    let var_1 = vec3<bool>(arg_3.a != -2147483647i, any(!select(!vec3<bool>(false, arg_2, true), vec3<bool>(false, arg_2, true), true && arg_2)), arg_2);
    let var_2 = reverseBits(~select(abs(1239u), 1u, false) | countOneBits(_wgslsmith_dot_vec3_u32(max(arg_0.xxy, arg_0.yxy), vec3<u32>(4294967295u, 4294967295u, 52011u))));
    var var_3 = 58057u;
    var var_4 = select(false, !arg_2, true);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(536f * arg_3.b) * _wgslsmith_div_f32(-1114f, var_0.c.x)) - _wgslsmith_div_f32(-298f, 766f))), 1000f, true));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = true;
    let var_1 = Struct_1(1i, _wgslsmith_f_op_f32(func_3(~reverseBits(vec4<u32>(u_input.a.x, 33965u, u_input.a.x, 0u)) & vec4<u32>(34338u, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x), ~23449u, u_input.a.x), countOneBits(u_input.b.x), all(vec4<bool>(u_input.a.x < u_input.a.x, arg_3.x, all(vec4<bool>(arg_3.x, arg_3.x, true, true)), arg_3.x)), Struct_1(~(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b, -2174f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.c - vec4<f32>(arg_2.b, -107f, 908f, arg_0)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(abs(744f)), _wgslsmith_f_op_f32(arg_0 + arg_2.c.x), _wgslsmith_f_op_f32(abs(arg_2.c.x))));
    let var_2 = -vec4<i32>(~(~arg_1.x), ~(~max(var_1.a, u_input.c.x)), ~26256i, -25438i);
    var var_3 = select(vec3<bool>(true, true, select(all(select(arg_3.zz, arg_3.yx, arg_3.xz)), all(select(arg_3, arg_3, arg_3.x)), !arg_3.x)), select(vec3<bool>(true, true, true), select(select(arg_3, !vec3<bool>(arg_3.x, false, true), select(arg_3.x, arg_3.x, arg_3.x)), select(!arg_3, select(vec3<bool>(true, arg_3.x, false), vec3<bool>(true, false, arg_3.x), true), any(vec4<bool>(true, arg_3.x, arg_3.x, false))), arg_3.x | true), !vec3<bool>(arg_3.x, true, true)), arg_3);
    var var_4 = Struct_2(_wgslsmith_clamp_vec2_u32(u_input.a, firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(4294967295u, 4294967295u))), abs(u_input.a)));
    return Struct_1(arg_1.x, -581f, vec4<f32>(-592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(667f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~vec4<u32>(u_input.a.x, 61563u, u_input.a.x, 0u), -2147483647i, -7779i >= var_2.x, arg_2))), -957f));
}

fn func_4(arg_0: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(-arg_0.c.c.x);
}

fn func_1() -> Struct_1 {
    var var_0 = (~_wgslsmith_add_u32(~u_input.a.x, ~u_input.a.x) >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~u_input.a.x), ~u_input.a.x & u_input.a.x) % 32u)) ^ ~countOneBits(u_input.a.x);
    let var_1 = ~u_input.b;
    var var_2 = -u_input.c.x;
    var_0 = 1u;
    var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 1u), reverseBits(max(u_input.a.x, 1u)));
    return Struct_1(select(u_input.d, var_1.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)) + 172f)), vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(u_input.a), vec2<bool>(true, true), func_2(-1195f, vec4<i32>(51220i, 2147483647i, u_input.b.x, var_1.x), Struct_1(1i, -121f, vec4<f32>(1176f, -1000f, 2049f, 730f)), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1325f, 965f))))), 2174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2014f, -185f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-251f, _wgslsmith_f_op_f32(abs(532f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = ~vec3<u32>(4294967295u, ~8960u, 1u);
    var_1 = _wgslsmith_add_vec3_u32(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 13352u, var_1.x) >> (vec3<u32>(21217u, var_1.x, 1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 101u), vec3<u32>(1u, var_1.x, 0u)))), firstTrailingBit(_wgslsmith_mult_vec3_u32(~reverseBits(vec3<u32>(u_input.a.x, 59155u, 4294967295u)), ~(vec3<u32>(51614u, var_1.x, 4294967295u) | vec3<u32>(var_1.x, 0u, u_input.a.x)))));
    var var_2 = Struct_3(Struct_2(~((vec2<u32>(u_input.a.x, u_input.a.x) << (vec2<u32>(u_input.a.x, 12327u) % vec2<u32>(32u))) >> (vec2<u32>(53179u, var_1.x) % vec2<u32>(32u)))), !(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))), func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.xw * var_0.c.xw)));
    let var_3 = vec4<i32>(0i, -_wgslsmith_mod_i32(_wgslsmith_mod_i32(-5654i, u_input.c.x), var_0.a), firstLeadingBit(u_input.d), u_input.d) << (vec4<u32>(11498u, var_2.a.a.x, min(~_wgslsmith_dot_vec2_u32(var_1.xy, vec2<u32>(var_1.x, 47784u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.a.x, 43504u, 1u))), var_2.a.a.x) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(abs(~vec2<u32>(43317u, var_2.a.a.x) << (~vec2<u32>(var_2.a.a.x, var_1.x) % vec2<u32>(32u))), ~u_input.a), var_2.c.a, _wgslsmith_div_vec4_f32(var_0.c, var_2.c.c), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))))));
}

