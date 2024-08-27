struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15>;

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(1u, 21632u, 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: f32, arg_3: u32) -> u32 {
    global0 = array<vec3<f32>, 15>();
    global1 = array<vec3<u32>, 1>();
    global0 = array<vec3<f32>, 15>();
    global1 = array<vec3<u32>, 1>();
    let var_0 = Struct_1(~(~vec2<i32>(-1i, arg_0.x) | abs(arg_0.zz)), ~(~(~(~vec2<u32>(0u, arg_3)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(-1585f - -401f)), arg_2, arg_2))), !any(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, 8550u), vec4<u32>(4294967295u, 0u, 4294967295u, arg_3)) & _wgslsmith_mod_u32(u_input.a.x, 1u), 0u));
    return ~_wgslsmith_sub_u32(arg_3, ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, u_input.a.x, var_0.e, arg_3), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, arg_3))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec2<u32> {
    return ~vec2<u32>(26742u & firstTrailingBit(0u), _wgslsmith_sub_u32(0u, arg_1.b.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    var var_0 = Struct_1(firstTrailingBit(arg_1.a), ~func_4(select(select(vec4<bool>(false, false, arg_1.d, arg_1.d), vec4<bool>(false, arg_1.d, false, true), vec4<bool>(true, arg_2.x, false, arg_1.d)), !vec4<bool>(arg_1.d, arg_1.d, true, arg_1.d), select(vec4<bool>(true, arg_2.x, false, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_1.d, arg_1.d, false, arg_1.d))), Struct_1(abs(vec2<i32>(2147483647i, 0i)), ~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(-arg_1.c), true, func_3(vec4<i32>(1i, -48832i, arg_1.a.x, -1i), arg_1.a.x, 845f, 87041u)), _wgslsmith_f_op_f32(min(-760f, arg_1.c.x)), arg_1), arg_0, arg_1.d, 43369u);
    global0 = array<vec3<f32>, 15>();
    global0 = array<vec3<f32>, 15>();
    var_0 = Struct_1(var_0.a << (min(~arg_1.b, var_0.b) % vec2<u32>(32u)), select(~max(vec2<u32>(var_0.e, arg_1.b.x) << (arg_1.b % vec2<u32>(32u)), vec2<u32>(var_0.b.x, 1u)), vec2<u32>(~4294967295u, ~var_0.b.x), !select(select(arg_2.xy, vec2<bool>(true, true), vec2<bool>(arg_2.x, false)), select(arg_2.yz, vec2<bool>(true, true), true), !vec2<bool>(var_0.d, var_0.d))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-814f)), _wgslsmith_f_op_f32(max(1569f, 727f)), _wgslsmith_div_f32(arg_1.c.x, -527f), arg_1.c.x)))), !(arg_2.x && var_0.d), 2924u);
    global1 = array<vec3<u32>, 1>();
    return abs(~(~(~_wgslsmith_clamp_u32(arg_1.e, 95779u, arg_3))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = true || any(vec4<bool>(!var_1.d, true || var_0.d, !(!var_1.d), var_1.d));
    var var_3 = var_0;
    global1 = array<vec3<u32>, 1>();
    return var_1.e;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<i32>) -> vec3<u32> {
    global1 = array<vec3<u32>, 1>();
    var var_0 = ~func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1685f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -867f))), Struct_1(vec2<i32>(-arg_2.x, arg_2.x), countOneBits(max(u_input.a.zz, vec2<u32>(u_input.a.x, 5620u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(122f, -832f, arg_0, 1000f)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -646f, -1000f, 484f)), Struct_1(vec2<i32>(arg_1, 0i), vec2<u32>(u_input.a.x, 32699u), vec4<f32>(arg_0, arg_0, -274f, arg_0), true, u_input.a.x), vec3<bool>(true, true, true), u_input.a.x)), arg_0);
    let var_1 = 0u;
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(~min(35728i, -2147483647i), arg_2.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_1, 0i), ~arg_2.x << (~0u % 32u)), i32(-1i) * -(~0i)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1502i, arg_2.x), _wgslsmith_clamp_vec2_i32(arg_2.xx, vec2<i32>(arg_2.x, arg_1), vec2<i32>(1i, 1207i))), 43023i), _wgslsmith_add_i32(1i, _wgslsmith_add_i32(arg_1, -1i)), -2147483647i));
    return global1[_wgslsmith_index_u32(~u_input.a.x, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 1>();
    let var_0 = Struct_1(vec2<i32>(-1i) * -(~(-vec2<i32>(0i, -22513i))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~4294967295u), _wgslsmith_div_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, 35360u)) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))), firstLeadingBit(~vec2<u32>(u_input.a.x, 4294967295u)) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 2237u), u_input.a.zy << (u_input.a.yx % vec2<u32>(32u))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1102f, 521f, -1754f, -403f) - vec4<f32>(-1495f, 177f, 292f, -1622f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, -215f, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(1000f + 1000f), _wgslsmith_f_op_f32(sign(-398f)), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(sign(121f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1483f) + _wgslsmith_f_op_f32(trunc(-1904f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1316f * 1439f) - _wgslsmith_f_op_f32(f32(-1f) * -775f)))) != 1158f, 19105u);
    var var_1 = Struct_1(vec2<i32>(var_0.a.x, _wgslsmith_add_i32(var_0.a.x, _wgslsmith_mult_i32(0i, var_0.a.x)) >> (_wgslsmith_dot_vec3_u32(~u_input.a, func_1(var_0.c.x, 0i, vec3<i32>(-24220i, var_0.a.x, var_0.a.x))) % 32u)), min(var_0.b, var_0.b), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-834f))), _wgslsmith_f_op_f32(sign(var_0.c.x))), var_0.c), true, 1u);
    global0 = array<vec3<f32>, 15>();
    var var_2 = Struct_1(var_1.a, abs(select(func_4(vec4<bool>(true, var_0.d, var_1.d, false), Struct_1(var_0.a, vec2<u32>(var_0.e, 1u), vec4<f32>(152f, var_0.c.x, var_1.c.x, 526f), var_0.d, var_1.b.x), var_1.c.x, var_0), abs(~var_1.b), select(!vec2<bool>(false, var_0.d), vec2<bool>(true, true), true))), vec4<f32>(_wgslsmith_f_op_f32(min(var_1.c.x, var_1.c.x)), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(625f))), 1f), 1000f), !var_1.d, ~func_3(firstTrailingBit(vec4<i32>(-2912i, 1323i, 45236i, 0i) | vec4<i32>(24300i, 13811i, var_0.a.x, var_1.a.x)), var_0.a.x, -1210f, _wgslsmith_add_u32(0u, _wgslsmith_div_u32(84985u, 4294967295u))));
    var var_3 = Struct_1(reverseBits(var_2.a << (var_2.b % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, reverseBits(_wgslsmith_add_u32(24977u, 46151u))), vec2<u32>(_wgslsmith_sub_u32(~var_2.b.x, ~1u), _wgslsmith_add_u32(15488u, ~var_0.b.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(var_0.c, vec4<f32>(230f, -750f, var_2.c.x, -269f)))))))), any(vec3<bool>(true, false, !var_0.d)) & !var_1.d, ~abs(_wgslsmith_div_u32(var_0.e, ~var_2.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.c.x), var_0.c.x);
}

