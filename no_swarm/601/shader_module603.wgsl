struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-217f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f) - _wgslsmith_f_op_f32(max(-560f, 2156f))) - -2261f), -759f));
}

fn func_2() -> vec2<u32> {
    let var_0 = vec2<bool>(false, false);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, -147f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -697f), 1132f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)), _wgslsmith_f_op_f32(func_3(!var_0.x, vec3<u32>(11049u, u_input.a.x, u_input.a.x) >> (vec3<u32>(1u, u_input.c.x, 4294967295u) % vec3<u32>(32u)), !vec2<bool>(true, var_0.x), 22488u)))));
    var var_2 = 1i << ((~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.yy), u_input.a.yx) << (~4294967295u % 32u)) % 32u);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(511f, 395f)));
    var var_4 = ~vec2<u32>(u_input.a.x, u_input.c.x);
    return max(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.c.x, u_input.c.x), u_input.a.yw, vec2<bool>(var_0.x, true)), vec2<u32>(6746u, 96219u)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.wz, u_input.c.zx) ^ u_input.a.yy, vec2<u32>(1u << (0u % 32u), var_4.x))), countOneBits(min(select(vec2<u32>(var_4.x, var_4.x), firstLeadingBit(vec2<u32>(u_input.a.x, var_4.x)), var_0), u_input.c.xy << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)))));
}

fn func_1() -> Struct_1 {
    var var_0 = abs(u_input.a.x);
    var var_1 = (~func_2() << (min(_wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.c.xz), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.a.xw)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 115467u), u_input.c.xx)) % vec2<u32>(32u))) >> (~(abs(u_input.a.ww) << (vec2<u32>(min(u_input.a.x, 29758u), 6274u) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_1 = u_input.c.xz;
    var_1 = vec2<u32>(u_input.a.x, reverseBits(_wgslsmith_sub_u32(select(4294967295u, u_input.a.x, false), var_1.x)));
    let var_2 = Struct_1(1f, u_input.c.x, vec3<u32>(0u, 1u, 63229u) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.xxy, u_input.a.xyw), ~select(vec3<u32>(var_1.x, var_1.x, 39517u), u_input.c, vec3<bool>(false, false, true))) % vec3<u32>(32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(26507u, 4294967295u), max(_wgslsmith_div_vec2_u32(vec2<u32>(4667u, var_1.x), vec2<u32>(var_1.x, 4294967295u)), ~u_input.c.yx)));
    return Struct_1(_wgslsmith_f_op_f32(ceil(var_2.a)), ~var_1.x, ~vec3<u32>(1u, 1u, u_input.c.x), vec2<u32>(u_input.c.x, _wgslsmith_sub_u32(~15048u, 0u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_1(arg_0.a, 285u, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.c, ~_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(arg_2, 110037u, u_input.c.x), vec3<u32>(u_input.a.x, 0u, 31413u)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(arg_2, arg_0.b, 0u)), abs(vec3<u32>(1u, arg_0.b, arg_2)))), abs(u_input.a.zwx)), min(~(~vec2<u32>(1u, 20482u)), arg_0.d >> (vec2<u32>(_wgslsmith_mod_u32(arg_0.b, 4294967295u), ~arg_2) % vec2<u32>(32u))));
    var var_1 = Struct_2(arg_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_1.a) - _wgslsmith_f_op_f32(-var_0.a)))), 40544u, reverseBits(min(u_input.c, abs(u_input.c) << (~vec3<u32>(3042u, 4294967295u, arg_0.b) % vec3<u32>(32u)))), vec2<u32>(_wgslsmith_div_u32(4294967295u, arg_2), ~(4294967295u >> ((u_input.a.x | u_input.a.x) % 32u))));
    var var_2 = arg_0;
    var_0 = arg_0;
    return select(vec3<bool>(true, true, false), vec3<bool>(!arg_1.x, !any(select(vec2<bool>(true, arg_1.x), vec2<bool>(true, arg_1.x), arg_1.zy)), !(arg_1.x | arg_1.x)), select(select(!vec3<bool>(arg_1.x, arg_1.x, true), select(arg_1.xxw, arg_1.yzw, select(arg_1.www, arg_1.xwz, vec3<bool>(arg_1.x, true, true))), arg_1.zyw), vec3<bool>(all(arg_1.yyw), !arg_1.x && false, arg_1.x), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, any(func_4(func_1(), vec4<bool>(true, any(vec4<bool>(true, false, false, false)), true, true), _wgslsmith_sub_u32(~u_input.a.x, 16080u))), func_4(func_1(), vec4<bool>(false, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))), true), 13701u).x, false);
    let var_1 = 925f;
    var var_2 = var_0.x;
    let var_3 = vec4<u32>(u_input.c.x, func_1().b, u_input.a.x, select(u_input.c.x, ~abs(u_input.c.x), func_4(Struct_1(-268f, 2894u, vec3<u32>(11026u, u_input.a.x, u_input.c.x), u_input.c.xy), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, var_0.x, var_0.x, true)), _wgslsmith_sub_u32(u_input.a.x, u_input.c.x)).x) << (~countOneBits(reverseBits(16626u)) % 32u));
    var var_4 = Struct_1(var_1, ~0u, var_3.yzw, var_3.ww | ~u_input.a.zw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1428f, -1051f) + vec2<f32>(var_1, var_4.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a, -1000f))))), 10586i);
}

