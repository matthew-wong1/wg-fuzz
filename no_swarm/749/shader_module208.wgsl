struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32 = 17549i;

var<private> global2: vec4<u32> = vec4<u32>(30766u, 4294967295u, 1u, 0u);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<bool>) -> vec4<bool> {
    return vec4<bool>(true, global0.x, !(u_input.b > u_input.b), true);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> i32 {
    let var_0 = vec3<bool>(true, all(vec4<bool>(false, arg_2.d >= max(-2147483647i, -37909i), false, global3.a)), true);
    var var_1 = Struct_3(vec4<bool>(!(!any(arg_2.a)), true, !arg_3, false), select(!select(var_0.zz, !vec2<bool>(false, global3.a), arg_1), arg_2.b, vec2<bool>(false, all(arg_2.a.xyw) && !arg_3)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, -2289f))) <= -1581f), ~firstLeadingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_2.d, -19033i, -5417i), vec4<i32>(arg_2.d, u_input.b, u_input.b, arg_2.d))));
    var var_2 = -985f;
    let var_3 = Struct_2(_wgslsmith_mod_u32(global2.x, u_input.a) | (~(global2.x | 0u) >> (~select(global2.x, 4669u, true) % 32u)), ~vec3<u32>(countOneBits(0u), countOneBits(8704u), 0u), vec3<bool>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, global2.x, 12287u, 0u)), vec4<u32>(u_input.a, 1u, 0u, 0u) | vec4<u32>(u_input.a, 12557u, 32212u, 0u)) != max(_wgslsmith_dot_vec2_u32(vec2<u32>(40832u, global2.x), global2.wz), _wgslsmith_dot_vec3_u32(global2.zwy, global2.yzw)), any(!(!var_1.a.wxz)), 1i < u_input.b), -27499i < (-1i >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 17635u), vec4<u32>(4294967295u, u_input.a, 1u, 4294967295u)) >> (_wgslsmith_sub_u32(global2.x, 0u) % 32u)) % 32u)));
    global3 = Struct_1(!all(global0.zx));
    return -(~(-2147483647i));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> bool {
    let var_0 = arg_2;
    let var_1 = true;
    var var_2 = Struct_3(select(!select(select(vec4<bool>(arg_2.c.x, true, false, true), vec4<bool>(false, true, global3.a, arg_0), var_1), func_2(vec2<bool>(var_1, var_0.c.x)), false), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, global3.a), !vec4<bool>(arg_2.c.x, global3.a, var_1, global3.a)), vec4<bool>(-815f < _wgslsmith_f_op_f32(ceil(-1000f)), !(!arg_0), arg_0, all(select(arg_2.c.yz, arg_2.c.xx, var_0.c.yz)))), var_0.c.yy, Struct_1(true), i32(-1i) * -4048i);
    var var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(44876u, 17025u), 0u, 1u), 1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), abs(vec2<u32>(arg_1, var_0.b.x)))), ~vec4<u32>(reverseBits(16253u), ~arg_2.b.x | _wgslsmith_add_u32(82419u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b.x, u_input.a, var_0.b.x) & vec3<u32>(arg_1, 43786u, 0u), min(vec3<u32>(global2.x, 0u, arg_1), arg_2.b)), _wgslsmith_div_u32(arg_2.a, 14025u) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, arg_1), vec4<u32>(u_input.a, 26634u, arg_2.b.x, arg_2.a))));
    global1 = select(u_input.b, _wgslsmith_clamp_i32(var_2.d, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_2.d, u_input.b, u_input.b) ^ 1i, -3388i), -func_3(var_2.c, var_1, Struct_3(var_2.a, vec2<bool>(true, var_0.d), Struct_1(false), u_input.b), true) ^ u_input.b), true);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-195f)))), 1419f)) != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-999f - _wgslsmith_f_op_f32(-998f + 257f)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: i32, arg_3: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec3_i32(-(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, 0i), 32811i, ~(-23362i)) ^ vec3<i32>(arg_2 & u_input.b, arg_2 << (4294967295u % 32u), u_input.b)), vec3<i32>(_wgslsmith_sub_i32(2147483647i, firstLeadingBit(-u_input.b)), (_wgslsmith_sub_i32(arg_2, u_input.b) | 3455i) >> (~59653u % 32u), u_input.b));
    return select(!(!select(vec4<bool>(global3.a, global3.a, true, false), vec4<bool>(true, arg_3, global3.a, false), true)), vec4<bool>(true, any(vec2<bool>(global0.x | arg_3, func_1(true, 41525u, Struct_2(1u, vec3<u32>(arg_0.x, arg_0.x, global2.x), vec3<bool>(false, true, true), false)))), !(!global0.x), !(u_input.a != 0u)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = global0.yz;
    let var_2 = Struct_3(select(func_4(vec4<u32>(~u_input.a, global2.x, u_input.a, global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)), u_input.b, func_1(select(global3.a, global3.a, global0.x), 1u, Struct_2(var_0, vec3<u32>(16287u, global2.x, u_input.a), vec3<bool>(var_1.x, var_1.x, true), global0.x))), select(!(!vec4<bool>(global0.x, global3.a, false, false)), vec4<bool>(!global0.x, !global3.a, true, var_1.x), vec4<bool>(global0.x, true, true, true)), !(!select(vec4<bool>(true, true, true, global0.x), vec4<bool>(var_1.x, true, global0.x, global0.x), vec4<bool>(true, var_1.x, true, var_1.x)))), !global0.yz, Struct_1(false), _wgslsmith_sub_i32(-3194i, _wgslsmith_sub_i32(countOneBits(49895i), firstTrailingBit(-19821i))));
    let var_3 = countOneBits(vec3<i32>(~var_2.d, max(-56242i, 2147483647i), ~abs(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(-22050i, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -700f))))));
}

