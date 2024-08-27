struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -743f, _wgslsmith_div_f32(arg_0.x, -283f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-263f)))), -1238f))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = vec3<i32>(11962i, u_input.a.x ^ u_input.a.x, -25971i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(778f, 218f, 907f)), vec3<f32>(_wgslsmith_f_op_f32(step(1410f, -511f)), -1879f, _wgslsmith_f_op_f32(-266f - -874f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-209f, -203f, _wgslsmith_div_f32(-866f, -2383f))), true)));
    let var_2 = Struct_2(!(!arg_0), -429f, 1346f, ~(~(~vec3<u32>(1u, 1u, 1u))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(ceil(1730f)), var_2.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, var_2.c, -596f))) - vec3<f32>(var_2.b, -105f, -930f)), vec3<f32>(-136f, _wgslsmith_f_op_f32(var_1.x * var_1.x), var_2.c))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_2.c, -2057f, -965f), vec4<f32>(597f, var_1.x, var_1.x, 1000f))) * vec4<f32>(280f, _wgslsmith_f_op_f32(973f + -501f), var_2.c, _wgslsmith_f_op_f32(var_1.x * var_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1144f, var_2.b, 536f) * vec4<f32>(-2001f, -993f, 136f, 1000f)), vec4<f32>(1117f, 533f, -504f, 833f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -559f, 354f, 682f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 981f) - vec2<f32>(var_1.x, -352f)), arg_0)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, var_2.c, -964f, -643f), vec4<f32>(-2992f, -1738f, -340f, -1421f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1196f, var_2.c)));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-378f, _wgslsmith_f_op_f32(-181f - -302f)), _wgslsmith_f_op_f32(func_2(true)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -610f)), -1473f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -1000f, var_0.x))))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -760f))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - -941f)));
    let var_3 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -2147483647i, ~17695i, _wgslsmith_sub_i32(u_input.a.x, arg_0.a)), vec4<i32>(max(firstTrailingBit(2219i), 0i), i32(-1i) * -2147483647i, -1i, _wgslsmith_sub_i32(countOneBits(u_input.a.x), -1i)));
    let var_4 = Struct_3(!vec4<bool>(all(!arg_0.c.yzw), false, arg_1.d.a, arg_0.c.x), arg_0.c.wyy);
    return -14117i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_div_i32(max(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, 37961i, -4577i), vec3<i32>(u_input.a.x, -29065i, u_input.a.x) ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), 41094i), -2147483647i), false, vec4<bool>(any(vec4<bool>(true, true, true, true)), false || select(true, true, true), _wgslsmith_add_i32(countOneBits(-17753i), u_input.a.x) != _wgslsmith_add_i32(u_input.a.x >> (0u % 32u), func_1(Struct_5(-9276i, true, vec4<bool>(false, false, false, false), Struct_1(true), 0u), Struct_5(-1i, true, vec4<bool>(false, false, true, false), Struct_1(false), 0u), Struct_4(27039u))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), Struct_1(true), _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 53418u, 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_div_u32(1443u, reverseBits(1u))));
    var var_1 = var_0.e >> (~var_0.e % 32u);
    let var_2 = countOneBits(_wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(-vec4<i32>(-43055i, u_input.a.x, var_0.a, -2147483647i), abs(vec4<i32>(-44235i, var_0.a, -2147483647i, var_0.a))), vec4<i32>(-1i) * -(~vec4<i32>(var_0.a, -2147483647i, -1i, var_0.a))));
    var_1 = firstLeadingBit(var_0.e);
    let var_3 = ~34709u;
    var_1 = 4294967295u;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1196f, -267f, all(var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(523f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(584f * -504f))), _wgslsmith_f_op_f32(abs(-1086f)))), 890f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 820f)))));
    var var_5 = -var_2.wzy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.x, var_4.x), var_4.xz), var_4.yy))), var_2.wzx, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-700f - var_4.x))), var_0.c.x)).xy, _wgslsmith_clamp_u32(~var_0.e, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, var_3, 63244u), vec3<u32>(var_3, 4294967295u, 78708u)), abs(~34939u)), ~1u));
}

