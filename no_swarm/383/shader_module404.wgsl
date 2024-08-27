struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -109f) + 277f);
    var var_2 = Struct_1(~u_input.b.x, ~vec4<u32>(~44052u, 1u, ~(u_input.c ^ 22203u), 51767u), vec2<bool>(true, all(vec3<bool>(true, u_input.d.x <= u_input.c, var_1 >= -1000f))));
    return Struct_1(_wgslsmith_dot_vec4_i32(-(~(vec4<i32>(76496i, 19181i, var_2.a, -2147483647i) & vec4<i32>(0i, 2147483647i, u_input.b.x, 239i))), vec4<i32>(~var_2.a, -firstLeadingBit(5450i), -88777i, u_input.b.x)), vec4<u32>(0u, ~arg_0.x, 0u, u_input.d.x), var_2.c);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = all(!vec4<bool>(func_2(select(arg_0.b.wz, u_input.a, false)).c.x, any(!vec4<bool>(arg_0.c.x, arg_1.c.x, false, arg_1.c.x)), true, arg_0.c.x));
    let var_1 = ~1i;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, arg_3) - -1500f), _wgslsmith_f_op_f32(-arg_3))), vec2<f32>(2227f, arg_3)));
    let var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>((i32(-1i) * -1i) | -arg_1.b, _wgslsmith_mod_i32(~select(var_2.b, 1i, true), i32(-1i) * -24205i)), u_input.b >> (~_wgslsmith_mod_vec2_u32(arg_0.b.xy, vec2<u32>(25441u, 9508u)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-180f, _wgslsmith_f_op_f32(827f * _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(select(447f, 1192f, false))))), arg_2.x));
}

fn func_1(arg_0: i32, arg_1: u32) -> vec2<f32> {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_2(u_input.e.zx), Struct_2(vec3<i32>(21236i, -47486i, 1i), -1i, vec2<bool>(true, true), u_input.d.x, arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1048f, 843f)), _wgslsmith_f_op_f32(f32(-1f) * -555f))) + _wgslsmith_f_op_f32(f32(-1f) * -1140f))) + _wgslsmith_f_op_f32(round(394f)));
    var_0 = 0i | u_input.b.x;
    var_0 = _wgslsmith_add_i32(-54508i, u_input.b.x);
    var var_2 = Struct_1(-(~0i) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.b.x >> (u_input.d.x % 32u), u_input.b.x, -2147483647i), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 12864i, arg_0, -2147483647i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, 0i)), -arg_0, u_input.b.x)), vec4<u32>(~(~(~4294967295u)), u_input.a.x, reverseBits(abs(~arg_1)), ~firstTrailingBit(103184u)), func_2(vec2<u32>(arg_1, 1u)).c);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 521f), vec2<f32>(-136f, var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(208f, var_1) - vec2<f32>(362f, var_1)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, -458f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -829f)), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, var_1)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(var_1)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1, -820f), 724f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1(u_input.b.x, 0u));
    var var_1 = _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(27963u, u_input.e.x, u_input.c, 12748u), vec4<u32>(u_input.e.x, 34540u, 1u, u_input.a.x))), u_input.d.x, u_input.e.x), ~vec3<u32>(1u, 87142u, 53295u));
    var var_2 = !((_wgslsmith_add_i32(u_input.b.x, ~(-26209i)) >> (var_1.x % 32u)) != -firstTrailingBit(_wgslsmith_clamp_i32(u_input.b.x, -21160i, -30845i)));
    var var_3 = vec4<u32>(select(1147u, 4294967295u, true), ~34420u, u_input.e.x, var_1.x);
    var var_4 = Struct_2(vec3<i32>(_wgslsmith_add_i32(~u_input.b.x, -1i), _wgslsmith_div_i32(-19464i, abs(-1i)), ~(~_wgslsmith_add_i32(-1i, u_input.b.x))), u_input.b.x, select(select(select(vec2<bool>(false, false), func_2(var_3.xx).c, vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), !func_2(firstTrailingBit(var_1.xy)).c, !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), abs(38914u), _wgslsmith_sub_u32((var_1.x << (u_input.e.x % 32u)) | 0u, _wgslsmith_div_u32(abs(u_input.c), _wgslsmith_mult_u32(4294967295u, var_1.x))) >> (4294967295u % 32u));
    let var_5 = !vec4<bool>(_wgslsmith_f_op_f32(func_3(Struct_1(var_4.a.x, vec4<u32>(4294967295u, 0u, var_3.x, 0u), vec2<bool>(true, var_4.c.x)), Struct_2(vec3<i32>(var_4.a.x, u_input.b.x, -4963i), var_4.b, var_4.c, 41694u, u_input.d.x), var_0, -1436f)) != 203f, var_4.c.x, any(!var_4.c), true);
    var var_6 = Struct_2(var_4.a, -1i, !select(select(select(vec2<bool>(var_5.x, var_4.c.x), vec2<bool>(var_5.x, true), vec2<bool>(true, var_5.x)), select(var_4.c, vec2<bool>(false, var_4.c.x), vec2<bool>(var_5.x, var_5.x)), var_5.xz), var_4.c, true), var_3.x, _wgslsmith_clamp_u32(7030u, ~0u, ~_wgslsmith_div_u32(18198u, var_1.x) & _wgslsmith_dot_vec2_u32(u_input.e.xz, var_3.ww)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(639f)) - var_0.x), countOneBits(abs(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(var_4.d, var_3.x, var_3.x, var_3.x)), vec4<u32>(var_3.x, var_3.x, var_1.x, var_4.e)))));
}

