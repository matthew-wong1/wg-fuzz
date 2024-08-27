struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    var var_0 = !(!vec4<bool>(arg_2.d, true, countOneBits(u_input.c) > 4294967295u, !all(vec3<bool>(arg_1.a.d, false, arg_2.d))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1742f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -336f), arg_2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1582f, arg_2.a.x, arg_2.a.x, -1250f) * vec4<f32>(-1000f, arg_1.a.a.x, -1370f, arg_2.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(201f, -1260f, -2537f, arg_1.a.a.x) - vec4<f32>(arg_2.a.x, 276f, arg_2.a.x, arg_2.a.x)))))));
    var_0 = select(vec4<bool>(true, any(!var_0.zyw), !any(vec4<bool>(true, arg_2.d, arg_2.d, false)), true), vec4<bool>(true, !(!var_0.x | var_0.x), var_0.x & arg_1.a.d, all(vec3<bool>(arg_2.d, arg_1.a.d, false)) || all(select(vec3<bool>(var_0.x, arg_2.d, true), var_0.wyy, var_0.yyy))), vec4<bool>(select(arg_1.a.d, any(var_0.xxy), var_0.x) | true, any(vec2<bool>(arg_1.a.d, true)) || true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-120f)), arg_2.a.x, all(vec2<bool>(arg_1.a.d, arg_2.d)))) == _wgslsmith_div_f32(-231f, _wgslsmith_f_op_f32(abs(-408f))), -2444f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_1.a.a - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1175f, arg_2.a.x)))))), select(vec2<i32>(-57820i, -_wgslsmith_clamp_i32(arg_0.x, 1i, -2147483647i)), vec2<i32>(2147483647i | _wgslsmith_add_i32(-3529i, arg_1.a.c), u_input.a), vec2<bool>(~1u != _wgslsmith_div_u32(0u, u_input.b.x), arg_2.d)), ~arg_1.a.b.x, all(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), select(var_0.xx, vec2<bool>(false, false), arg_2.d)), false)));
    let var_3 = arg_3;
    return var_0.wxz;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = select(vec2<bool>(~(~(-32954i)) != _wgslsmith_clamp_i32(~(-2147483647i), 2147483647i, _wgslsmith_mult_i32(1i, u_input.a)), any(!func_3(vec2<i32>(0i, u_input.a), Struct_3(Struct_2(vec2<f32>(1968f, arg_0.a), vec2<i32>(0i, 4863i), u_input.a, true)), Struct_2(vec2<f32>(-1689f, arg_0.a), vec2<i32>(0i, u_input.a), 1i, false), u_input.c))), func_3(-(~vec2<i32>(20679i, u_input.a) ^ -vec2<i32>(u_input.a, 8336i)), Struct_3(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-280f, 120f), vec2<f32>(arg_0.a, arg_0.a)), vec2<i32>(0i, -11729i) & vec2<i32>(-2733i, u_input.a), _wgslsmith_clamp_i32(u_input.a, u_input.a, -20823i), u_input.a != u_input.a)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a, 895f), vec2<f32>(arg_0.a, arg_0.a)))), abs(~vec2<i32>(10754i, u_input.a)), u_input.a, true), ~_wgslsmith_add_u32(~1u, select(u_input.c, arg_0.b, true))).xx, any(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1394f - 401f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a), -243f)), 1200f, -814f)));
    let var_2 = vec4<u32>(~arg_0.b, ~992u, u_input.b.x, countOneBits(~(~(~u_input.c))));
    var_0 = select(!select(select(func_3(vec2<i32>(-1i, u_input.a), Struct_3(Struct_2(vec2<f32>(var_1.x, var_1.x), vec2<i32>(u_input.a, -1i), -2147483647i, var_0.x)), Struct_2(vec2<f32>(var_1.x, 335f), vec2<i32>(u_input.a, u_input.a), -13227i, var_0.x), arg_0.c).yz, vec2<bool>(var_0.x, true), true), vec2<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), true), _wgslsmith_mult_u32(var_2.x, var_2.x) == var_2.x), !vec2<bool>(u_input.a <= _wgslsmith_clamp_i32(u_input.a, 1i, -1i), func_3(-vec2<i32>(0i, -17791i), Struct_3(Struct_2(vec2<f32>(-184f, arg_0.a), vec2<i32>(u_input.a, u_input.a), u_input.a, false)), Struct_2(vec2<f32>(var_1.x, 125f), vec2<i32>(-1298i, 2178i), -32924i, var_0.x), _wgslsmith_dot_vec2_u32(u_input.b.xx, var_2.yw)).x), vec2<bool>(true, var_0.x));
    var var_3 = 4294967295u;
    return vec3<i32>(-11526i, -2147483647i, -11656i);
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    var var_0 = vec4<i32>(arg_0.x, ~arg_0.x, u_input.a, -2147483647i) ^ -vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-34315i, arg_0.x)), arg_0), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, arg_0.x, -54920i), vec3<i32>(u_input.a, arg_0.x, 8006i), vec3<bool>(false, true, false)), func_2(Struct_1(-693f, 101070u, u_input.b.x))), -26010i, (21081i >> (u_input.b.x % 32u)) & (i32(-1i) * -2147483647i));
    let var_1 = -975f;
    var var_2 = select(select(vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true || (u_input.a >= -2147483647i)), func_3(arg_0 << (u_input.b.yy % vec2<u32>(32u)), Struct_3(Struct_2(vec2<f32>(2855f, -1296f), var_0.yx, arg_0.x, false)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -996f)), countOneBits(var_0.wz), _wgslsmith_mult_i32(var_0.x, 20904i), true), u_input.c), any(vec3<bool>(true, true, true)) | true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), !vec3<bool>(select(select(true, true, false), true, true), false, false));
    return StorageBuffer(1u, ~(vec2<i32>(-1i) * -reverseBits(var_0.xz)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec2<i32>(u_input.a, ~u_input.a ^ firstTrailingBit(_wgslsmith_mod_i32(u_input.a, 21768i))));
}

