struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    return ~arg_0.d;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = arg_2;
    let var_1 = vec4<u32>(~(~_wgslsmith_div_u32(24671u, u_input.b)), 4294967295u, 643u, 0u);
    let var_2 = -_wgslsmith_mod_vec2_i32(arg_1.b.yy, ~(-arg_1.b.xx));
    var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_1.b.xw, var_2), 1i, firstTrailingBit(u_input.a | 30229i)), -abs(-arg_2)), _wgslsmith_div_i32(1i, -2147483647i));
    let var_3 = vec2<u32>(1u, ~select(~(~u_input.b), _wgslsmith_mult_u32(~var_1.x, arg_1.a.a.x), false));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~1u, _wgslsmith_sub_u32(var_3.x, arg_3.x), var_3.x), func_2(Struct_1(vec3<i32>(u_input.a, -47100i, var_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, 136f, -872f, 131f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-946f, 677f, 1000f, -640f) - vec4<f32>(-1051f, -753f, -1000f, -110f))), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -439f, 1054f, 884f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1186f, -1850f, 345f, 1469f), vec4<f32>(-1431f, 208f, -808f, 476f), vec4<bool>(true, arg_0, false, arg_0)))), var_1.xxw, _wgslsmith_f_op_vec3_f32(vec3<f32>(2058f, -1635f, 850f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1726f, 703f, -1000f))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    var var_0 = arg_1.c.x;
    var var_1 = Struct_1(select(-(arg_1.a & arg_1.a) & arg_1.a, ~vec3<i32>(-57398i, 25302i, max(14698i, u_input.a)), false), vec4<f32>(-609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(512f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), _wgslsmith_f_op_f32(step(-1169f, 450f)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3, 697f))) - arg_1.e.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-291f, arg_1.c.x, arg_1.b.x, -981f) + arg_1.b), vec4<f32>(arg_1.b.x, 241f, 895f, arg_1.e.x), vec4<bool>(true, true, true, true))))))), ~select(vec3<u32>(~arg_2.x, _wgslsmith_mult_u32(arg_0, 27303u), abs(arg_1.d.x)), arg_2, true), _wgslsmith_f_op_vec3_f32(-arg_1.b.ywx));
    let var_2 = all(select(!vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, u_input.a == arg_1.a.x)), false));
    let var_3 = Struct_2(~vec3<u32>(arg_1.d.x, 0u, arg_2.x));
    let var_4 = Struct_1((-vec3<i32>(48841i, 2147483647i, 1i) ^ vec3<i32>(firstLeadingBit(arg_1.a.x), ~u_input.a, u_input.a)) >> (arg_2 % vec3<u32>(32u)), arg_1.c, vec4<f32>(_wgslsmith_f_op_f32(-961f - _wgslsmith_f_op_f32(-arg_1.e.x)), var_1.c.x, _wgslsmith_f_op_f32(-1037f + _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(f32(-1f) * -1620f)), ~(var_1.d >> (_wgslsmith_sub_vec3_u32(vec3<u32>(44792u, arg_2.x, 0u), arg_2) % vec3<u32>(32u))) & func_1(!(!var_2), Struct_3(Struct_2(vec3<u32>(arg_2.x, arg_0, var_3.a.x)), select(vec4<i32>(-12600i, var_1.a.x, u_input.a, u_input.a), vec4<i32>(arg_1.a.x, u_input.a, var_1.a.x, u_input.a), var_2)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, 1i, -1i), var_1.a), arg_1.a), ~(~vec4<u32>(var_3.a.x, 7684u, 0u, arg_2.x))), var_1.c.yzz);
    return 4588u << (~(~firstLeadingBit(min(u_input.b, 0u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, u_input.b) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.b, 43105u)) % vec2<u32>(32u)), ~vec2<u32>(u_input.b, u_input.b)) << (countOneBits(~vec2<u32>(57057u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(314f, -1321f, -698f) + vec3<f32>(1000f, 376f, -499f))) * vec3<f32>(-1666f, -2161f, -645f)), min(~(func_1(true, Struct_3(Struct_2(vec3<u32>(1006u, 16974u, 1u)), vec4<i32>(18792i, 4008i, 1i, 0i)), -13619i, vec4<u32>(13574u, u_input.b, u_input.b, 42386u)) << (func_1(true, Struct_3(Struct_2(vec3<u32>(4324u, 0u, u_input.b)), vec4<i32>(2147483647i, u_input.a, u_input.a, 12496i)), -3832i, vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)) % vec3<u32>(32u))), reverseBits(vec3<u32>(1u, 0u, 25165u)) << (vec3<u32>(39984u, ~u_input.b, func_3(4294967295u, Struct_1(vec3<i32>(-1181i, 43080i, 2147483647i), vec4<f32>(467f, -1564f, -1349f, 888f), vec4<f32>(251f, -1281f, 846f, 1076f), vec3<u32>(1u, u_input.b, 0u), vec3<f32>(1000f, -1651f, 1000f)), vec3<u32>(4294967295u, u_input.b, 0u), 496f)) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1082f, _wgslsmith_f_op_f32(-275f - -405f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(553f))))), _wgslsmith_f_op_f32(202f * 1f)), 1u);
}

