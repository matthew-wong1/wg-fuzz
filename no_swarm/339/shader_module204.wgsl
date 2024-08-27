struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_1((i32(-1i) * -min(-35441i, 0i)) << (_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(29652u, u_input.a.x, 8040u), vec3<u32>(u_input.a.x, u_input.a.x, 114391u))), vec3<u32>(u_input.a.x, 0u, u_input.a.x)) % 32u), vec3<bool>(true, true, !all(vec4<bool>(true, true, true, true))), _wgslsmith_div_i32(min(1i, countOneBits(1i)), _wgslsmith_sub_i32(max(-12606i, -33001i), firstTrailingBit(-21048i))) >> (_wgslsmith_mult_u32(0u, 32962u) % 32u));
    var var_1 = var_0.b.x;
    var var_2 = vec4<bool>(any(select(vec2<bool>(false, !var_0.b.x), vec2<bool>(var_0.b.x, var_0.b.x), any(!vec3<bool>(var_0.b.x, true, false)))), true, false, any(select(select(!vec2<bool>(var_0.b.x, false), !var_0.b.yz, var_0.b.xz), var_0.b.yz, false)));
    var var_3 = Struct_1(var_0.c, !vec3<bool>(_wgslsmith_div_i32(var_0.c, 1i) >= 0i, true, ~u_input.a.x == 4294967295u), ~7457i);
    var_3 = Struct_1(-40652i, !var_0.b, ~(-_wgslsmith_mult_i32(0i, -20950i)) >> (~u_input.a.x % 32u));
    return true;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> bool {
    var var_0 = -countOneBits(select(-2147483647i, _wgslsmith_sub_i32(~9742i, _wgslsmith_div_i32(arg_0.x, arg_0.x)), any(!arg_1)));
    var var_1 = ~(~u_input.a.x);
    var var_2 = Struct_1(_wgslsmith_sub_i32(arg_0.x, arg_0.x) & arg_0.x, select(!select(vec3<bool>(false, arg_2, false), vec3<bool>(true, true, true), any(vec2<bool>(false, arg_2))), vec3<bool>(arg_1.x, all(select(vec3<bool>(true, arg_2, false), vec3<bool>(false, arg_1.x, arg_2), vec3<bool>(arg_2, arg_2, true))), arg_2), !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2, arg_1.x, arg_2), vec3<bool>(arg_2, true, true), vec3<bool>(arg_1.x, false, false)), !vec3<bool>(arg_1.x, true, arg_2))), _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec3_i32(max(arg_0, arg_0), vec3<i32>(-17374i, arg_0.x, arg_0.x))), -17223i));
    var_0 = i32(-1i) * -45529i;
    var_2 = Struct_1(firstLeadingBit(countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.yy, vec2<i32>(1i, -38252i)), -5386i))), var_2.b, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_2.a, arg_0.x, i32(-1i) * -1i)), ~(-arg_0)));
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = !(!vec2<bool>(func_4(vec3<i32>(1i, 0i, -2147483647i), vec2<bool>(true, true), func_3(), arg_0.x), true));
    var_0 = !(!(!select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), var_0.x), var_0.x)));
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(select(-168i, 20979i, var_0.x), ~1i), -(23844i << (arg_1.x % 32u))), -(i32(-1i) * -1i), _wgslsmith_clamp_i32(~max(0i, 0i), ~abs(-2147483647i), _wgslsmith_sub_i32(1i, 1i))), vec3<i32>(-2638i, abs(1i), _wgslsmith_add_i32(~0i, (-2159i << (u_input.a.x % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, 2147483647i, 0i), vec4<i32>(0i, -46272i, 2147483647i, 9328i)))));
    let var_2 = !vec4<bool>(any(vec3<bool>(!var_0.x, false, true)), var_0.x, !all(!vec2<bool>(var_0.x, true)), false);
    var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(var_1.x, 0i, 0i), firstLeadingBit(-var_1.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(2444i, 33566i), var_1.x)), vec3<i32>(~(i32(-1i) * -19064i), -15776i, ~(~var_1.x))), vec3<i32>(~(i32(-1i) * -35069i), reverseBits(-1i), var_1.x));
    return vec4<u32>(_wgslsmith_sub_u32(countOneBits(~(~arg_1.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(32528u, u_input.a.x, arg_1.x, 0u), ~vec4<u32>(4294967295u, u_input.a.x, 1u, 40767u) & vec4<u32>(u_input.a.x, 4807u, u_input.a.x, 0u))), ~_wgslsmith_sub_u32(4294967295u, ~u_input.a.x), ~arg_1.x, arg_1.x | 18525u);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = ~(~func_2(vec2<f32>(108f, 1640f), u_input.a) & _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 49753u, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, arg_0), vec4<u32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x)))) & vec4<u32>(0u, 4832u ^ u_input.a.x, reverseBits(~4294967295u & ~arg_0), 14143u);
    var var_1 = Struct_1(-(~(-1i)), select(vec3<bool>(!any(vec4<bool>(true, false, false, true)), true, true), vec3<bool>(true, true, true), false), 1i);
    let var_2 = Struct_1(_wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(arg_1.x, ~var_1.c), arg_1.x), var_1.b, var_1.c);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-262f, _wgslsmith_f_op_f32(f32(-1f) * -1351f)) * _wgslsmith_f_op_f32(-1027f * -259f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2817f)) - _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(round(-255f)), var_2.b.x))) - -1000f));
    let var_4 = ~_wgslsmith_dot_vec4_i32(~vec4<i32>(min(10625i, 7607i), select(var_2.a, var_1.c, true), -arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, 0i, var_1.a, var_2.a), vec4<i32>(-1i, var_1.a, var_1.a, arg_1.x))), -(~(-vec4<i32>(var_2.a, var_2.c, 19017i, -1i))));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1165f, -244f, 1161f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1876f, var_0.x, var_0.x)))), vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f * var_0.x))))));
    let var_1 = Struct_1(~1i, func_1(~_wgslsmith_clamp_u32(min(26670u, 1u), ~u_input.a.x, 1u), -reverseBits(vec2<i32>(-2147483647i, 48292i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(24664i, -7875i, 2147483647i, 1i), ~vec4<i32>(22965i, -15873i, -1i, 26251i)), -1i) >> (_wgslsmith_div_u32(countOneBits(26332u), u_input.a.x) % 32u));
    let var_2 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1025f, 796f)), _wgslsmith_f_op_f32(f32(-1f) * -1251f))) * _wgslsmith_f_op_f32(exp2(var_0.x)))), 1319f);
    let var_3 = ~vec3<i32>(52786i, var_1.a, var_1.a);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(-996f, 801f, 1270f)))), vec3<f32>(-102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2411f), _wgslsmith_f_op_f32(ceil(558f)))))));
    var_0 = var_2;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x)), 640f, -472f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, _wgslsmith_f_op_vec2_f32(var_0.yz + var_0.zx));
}

