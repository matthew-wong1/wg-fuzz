struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_3(arg_2.x, Struct_1(_wgslsmith_add_u32(34571u >> (arg_0.x % 32u), ~(~u_input.c.x)), _wgslsmith_sub_i32(-1i, 18589i), -695f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 + arg_1), -411f)), _wgslsmith_f_op_f32(f32(-1f) * -402f))), 2343f), Struct_2(vec3<bool>(!arg_2.x, true, arg_2.x), arg_1, false, select(firstLeadingBit(max(vec3<i32>(-2147483647i, 2147483647i, 2568i), vec3<i32>(u_input.b, u_input.b, 2147483647i))), ~vec3<i32>(27275i, u_input.b, 18092i), vec3<bool>(true, true, arg_2.x && true)), vec2<f32>(_wgslsmith_f_op_f32(1189f + _wgslsmith_f_op_f32(-676f + arg_1)), arg_1)));
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.b), var_0.d.d.x, -(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_0.d.d.x), var_0.d.d.zz), -6965i)), 35148i);
    let var_2 = Struct_3(true, var_0.b, 201f, var_0.d);
    var_1 = -reverseBits(abs(vec4<i32>(min(-36629i, 1i), ~47806i, var_0.b.b, var_1.x)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(511f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c)))));
    return var_2.d.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = ~abs(~reverseBits(u_input.c));
    let var_1 = Struct_2(!select(func_3(vec4<u32>(arg_2, 14226u, arg_3.a, 0u) ^ u_input.c, arg_1.b, !arg_1.a.zy, firstLeadingBit(u_input.c.wwy)), func_3(reverseBits(u_input.c), _wgslsmith_f_op_f32(arg_1.b * 278f), vec2<bool>(arg_0.a.x, arg_1.c), ~vec3<u32>(u_input.c.x, 1u, var_0.x)), func_3(max(var_0, vec4<u32>(12751u, var_0.x, var_0.x, u_input.a.x)), _wgslsmith_f_op_f32(-921f + 750f), select(arg_1.a.zz, arg_1.a.xz, false), vec3<u32>(arg_2, arg_3.a, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-376f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c, arg_0.b) + _wgslsmith_f_op_f32(min(-629f, arg_0.b))))), true, _wgslsmith_mod_vec3_i32(-arg_1.d | arg_1.d, ~vec3<i32>(~arg_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -20359i, -28729i, arg_3.b), vec4<i32>(arg_0.d.x, arg_3.b, -1i, -1i)), arg_1.d.x)), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(-1218f * _wgslsmith_f_op_f32(sign(211f))))));
    let var_2 = select(firstTrailingBit(_wgslsmith_add_u32(1857u, _wgslsmith_div_u32(arg_2 >> (4861u % 32u), 43858u))), _wgslsmith_sub_u32(4294967295u, u_input.a.x), !select(any(arg_1.a), arg_0.a.x, ~u_input.b < _wgslsmith_dot_vec2_i32(arg_1.d.xz, arg_1.d.zz)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-843f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - _wgslsmith_f_op_f32(step(769f, -219f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1057f + arg_3.c))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.b)))));
    let var_4 = i32(-1i) * -firstTrailingBit(0i);
    return select(vec4<bool>(var_1.a.x || (abs(-1i) != _wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(var_4, 2147483647i, 2147483647i))), var_1.a.x || true, false, func_3(var_0, _wgslsmith_f_op_f32(ceil(arg_0.b)), !(!arg_1.a.zx), var_0.zyw).x), !select(vec4<bool>(false, true, arg_0.c && false, arg_0.c), vec4<bool>(!var_1.a.x, var_0.x < var_0.x, var_1.d.x == -1i, any(vec4<bool>(var_1.a.x, arg_0.c, true, var_1.a.x))), vec4<bool>(var_1.a.x, !var_1.c, arg_1.c, arg_1.c)), var_1.c);
}

fn func_1() -> Struct_2 {
    var var_0 = 1u << (u_input.c.x % 32u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1f), -587f);
    var var_2 = !(!(!(!func_2(Struct_2(vec3<bool>(true, false, true), -2020f, true, vec3<i32>(2147483647i, u_input.b, u_input.b), vec2<f32>(var_1.x, var_1.x)), Struct_2(vec3<bool>(false, true, false), var_1.x, true, vec3<i32>(u_input.b, u_input.b, u_input.b), var_1), u_input.a.x, Struct_1(u_input.a.x, -16736i, var_1.x)))));
    let var_3 = 16639i;
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(384f, var_1.x, 1000f, 1163f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -597f, var_1.x, var_1.x) + vec4<f32>(-293f, -528f, var_1.x, -702f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2001f, var_1.x, var_1.x, 601f))))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(678f, _wgslsmith_f_op_f32(floor(-1565f)), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(ceil(-1297f))))))));
    return Struct_2(!select(!(!var_2.zxx), select(var_2.wyx, vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, var_2.x, var_2.x)), vec3<bool>(true, !var_2.x, !var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) + _wgslsmith_f_op_f32(var_1.x * 926f)), true, vec3<i32>(~var_3 & -22344i, u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_4.x, var_1.x)), 207f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, Struct_1(~(~u_input.a.x), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -672f)))), _wgslsmith_f_op_f32(650f - -1103f), func_1());
    var_0 = Struct_3(true, Struct_1(select(var_0.b.a, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), reverseBits(var_0.b.a)), any(select(vec4<bool>(var_0.a, var_0.d.c, false, true), vec4<bool>(true, var_0.d.c, var_0.a, false), vec4<bool>(var_0.d.c, var_0.a, true, var_0.a)))), (_wgslsmith_div_i32(-14398i, var_0.b.b) << (max(1786u, u_input.c.x) % 32u)) & ~u_input.b, _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1109f, 1663f))), Struct_2(var_0.d.a, var_0.d.e.x, var_0.a, -reverseBits(~var_0.d.d), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) + _wgslsmith_f_op_f32(round(1000f))), 372f)));
    var_0 = Struct_3(true, var_0.b, _wgslsmith_f_op_f32(step(-1192f, 109f)), var_0.d);
    let var_1 = ~(~(~1u));
    var var_2 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(var_2.e.x - _wgslsmith_f_op_f32(-var_2.b))), -466f, var_2.e.x));
}

