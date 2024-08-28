struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(1506f), Struct_3(2604f), Struct_3(1000f), Struct_3(1000f), Struct_3(-344f), Struct_3(-710f), Struct_3(-648f), Struct_3(-1000f), Struct_3(1000f), Struct_3(1154f), Struct_3(-326f), Struct_3(1466f), Struct_3(-1000f), Struct_3(-722f), Struct_3(447f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec3<f32> {
    var var_0 = Struct_1(0u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1063f, -530f, arg_0.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-533f)))), -832f));
    var_0 = Struct_1(~u_input.c.x >> (37720u % 32u), _wgslsmith_f_op_vec3_f32(var_0.b - var_0.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1033f, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(110f))), var_0.b.x)));
    var_0 = Struct_1(~52354u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(var_0.b * var_0.b))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * 806f), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(trunc(var_1.x)))) * var_1.xyx));
    let var_2 = reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.a, select(vec3<i32>(24847i, u_input.a.x, 6766i), u_input.a, arg_0.x)), select(max(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, -1i, -3787i)), u_input.a), select(max(u_input.a, vec3<i32>(7027i, u_input.a.x, u_input.a.x)), u_input.a >> (vec3<u32>(var_0.a, u_input.c.x, 103823u) % vec3<u32>(32u)), true), vec3<bool>(any(arg_0.zx), all(arg_0.xy), any(vec4<bool>(arg_0.x, false, false, arg_0.x))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(-var_1.x)), -1031f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(var_0.b.x, -326f, 1463f), all(arg_0.xx))))));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, true, true), max(~u_input.c.x, ~u_input.b)))), Struct_1(abs(u_input.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-304f, -991f, -1543f) * vec3<f32>(-779f, 921f, -1123f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-931f, -228f, -445f))))), vec3<bool>(true, any(vec2<bool>(true, false)), true)))), Struct_1(7130u, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1970f, _wgslsmith_f_op_f32(trunc(703f)), -1877f)))), abs(u_input.b), vec2<f32>(_wgslsmith_f_op_f32(1341f + -310f), -195f));
    let var_1 = var_0.a.b.x;
    global0 = array<Struct_3, 15>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1285f, -166f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1975f, 782f) - _wgslsmith_f_op_vec2_f32(sign(var_0.b.b.zz))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1640f, 270f), vec2<f32>(691f, 1175f))), _wgslsmith_f_op_vec2_f32(-var_0.e), !select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    let var_3 = select(!select(vec3<bool>(any(vec3<bool>(false, true, true)), true, all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), true)), vec3<bool>(any(vec3<bool>(true, true, true)), (i32(-1i) * -1i) == max(abs(u_input.a.x), -2147483647i), true), vec3<bool>(false, 0u < (var_0.d >> (min(u_input.b, u_input.c.x) % 32u)), all(vec4<bool>(true, true, true, true))));
    return ~(~(~select(u_input.c.xz, vec2<u32>(u_input.b, u_input.c.x), var_3.yx))) << ((~(~(vec2<u32>(1u, var_0.a.a) | vec2<u32>(u_input.b, 14670u))) ^ max((u_input.c.yy ^ u_input.c.zx) | vec2<u32>(14760u, 40361u), ~u_input.c.zw)) % vec2<u32>(32u));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = u_input.c.ww;
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(func_2(), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 0u) | select(u_input.c.zy, u_input.c.xz, false), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.a, arg_0.a), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.c.zy)), vec2<u32>(_wgslsmith_sub_u32(44192u, 43727u), arg_0.a))), min(abs(_wgslsmith_dot_vec4_u32(min(u_input.c, vec4<u32>(var_0.x, u_input.c.x, 72270u, var_0.x)), _wgslsmith_mult_vec4_u32(u_input.c, u_input.c))), var_0.x | ~u_input.b), ~24012u);
    var var_2 = (30803i | u_input.a.x) & _wgslsmith_div_i32(8516i, u_input.a.x);
    var var_3 = select(select(vec3<bool>(!all(vec4<bool>(false, true, true, true)), true, true), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false))), vec3<bool>(false, (arg_0.b.x <= -1340f) || (u_input.a.x >= u_input.a.x), select(true, any(vec2<bool>(true, true)), true))), vec3<bool>(any(vec3<bool>(true, true, arg_0.b.x > arg_0.b.x)), false, false), all(vec2<bool>(true, true)));
    var var_4 = _wgslsmith_add_u32(var_0.x, 1u);
    return ~var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(512f - 1000f), -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(329f, -342f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -345f))))));
    global0 = array<Struct_3, 15>();
    let var_1 = vec2<i32>(u_input.a.x, 1i);
    let var_2 = vec3<u32>(37848u, _wgslsmith_clamp_u32(~4302u, ~max(var_0.x, var_0.x), u_input.c.x & var_0.x), var_0.x);
    let var_3 = -((firstLeadingBit(reverseBits(vec4<i32>(u_input.a.x, -38515i, 2147483647i, var_1.x))) & vec4<i32>(u_input.a.x, 0i, 54396i, 49624i >> (var_0.x % 32u))) << (reverseBits(vec4<u32>(4388u, 0u, ~var_0.x, func_2().x)) % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(func_3(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(any(vec2<bool>(false, false)) & select(false, false, false), false, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), 2147483647i == u_input.a.x), vec3<bool>(true, true, select(true, false, false)), true)), 1u)).zy;
    var var_5 = _wgslsmith_f_op_vec3_f32(func_3(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), !vec3<bool>(any(vec3<bool>(true, true, true)), false, true), any(vec4<bool>(true, true, true, true))), 29591u)).x;
    var var_6 = 6366i;
    var var_7 = Struct_2(Struct_1(abs(max(u_input.b, reverseBits(var_2.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, -594f, 535f) * vec3<f32>(307f, -2257f, -1329f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.x, var_4.x, -1260f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1789f, 1000f, var_4.x) + vec3<f32>(-254f, var_4.x, -586f)))))), Struct_1(~var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -1239f, 1695f)) + vec3<f32>(var_4.x, var_4.x, 931f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_4.x, -1017f, var_4.x), vec3<f32>(252f, var_4.x, -615f))))), Struct_1(firstLeadingBit(26620u | var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_div_f32(330f, var_4.x), _wgslsmith_f_op_f32(-var_4.x)))), abs(var_2.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_4.x)) * var_4))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(~(~var_0.x), ~(~143592u)));
}

