struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = select(select(select(!vec4<bool>(arg_1.c.a.x, arg_1.d.a.x, arg_1.a, arg_1.c.a.x), vec4<bool>(true, true, true, false), !(!vec4<bool>(false, arg_1.d.a.x, arg_1.d.a.x, arg_1.a))), !select(select(vec4<bool>(arg_1.a, true, true, false), vec4<bool>(arg_1.d.a.x, false, arg_1.a, arg_1.a), vec4<bool>(arg_1.d.a.x, false, true, true)), vec4<bool>(arg_1.c.a.x, true, arg_1.c.a.x, arg_1.c.a.x), arg_1.d.a.x | arg_1.c.a.x), select(!vec4<bool>(arg_1.c.a.x, arg_1.c.a.x, arg_1.a, arg_1.d.a.x), vec4<bool>(1u <= arg_1.c.b, !arg_1.a, any(vec2<bool>(arg_1.a, arg_1.d.a.x)), true), vec4<bool>(true, arg_2 <= u_input.a, arg_2 == 0u, all(vec4<bool>(false, arg_1.d.a.x, arg_1.c.a.x, true))))), vec4<bool>(all(arg_1.d.a.zz), arg_1.a, arg_1.d.a.x, all(!arg_1.c.a)), true && all(!vec4<bool>(true, arg_1.c.a.x, arg_1.d.a.x, true)));
    var var_1 = arg_1.d;
    var var_2 = abs(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), -vec3<i32>(1i, 2147483647i, -16448i), -(~vec3<i32>(arg_0.x, arg_0.x, arg_0.x))) | vec3<i32>(_wgslsmith_add_i32(arg_0.x, 1i), arg_0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-3593i, arg_0.x), arg_0), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, 10981i), arg_0.x)));
    var var_3 = Struct_3(_wgslsmith_mult_u32(4294967295u, firstLeadingBit(4294967295u)), countOneBits(countOneBits(~vec2<u32>(3396u, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-898f)))))), arg_1.d);
    var_1 = Struct_1(select(select(select(select(var_0.xyz, vec3<bool>(false, var_1.a.x, var_1.a.x), arg_1.a), var_0.zxx, true), vec3<bool>(true | var_1.a.x, true, var_3.c <= var_3.c), (var_2.x | -1i) > firstLeadingBit(arg_0.x)), var_1.a, !vec3<bool>(!arg_1.a, all(vec4<bool>(var_1.a.x, false, false, var_0.x)), true)), var_1.b);
    return -32932i;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = -587f;
    var var_1 = arg_1;
    global0 = max(~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_1.b.x, u_input.a), u_input.a), select(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(1u, ~arg_3.a)), ~(~arg_2.b) >> (~4294967295u % 32u), !any(!vec4<bool>(arg_2.a.x, true, arg_1.d.a.x, arg_3.d.a.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - 1000f), -639f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1616f, var_1.c)) * _wgslsmith_f_op_f32(f32(-1f) * -461f)))), 1301f));
    global0 = u_input.a;
    return vec3<i32>(1i, _wgslsmith_mult_i32(func_3(vec2<i32>(0i, -18237i), Struct_2(false, vec2<u32>(31719u, arg_3.d.b), arg_2, arg_3.d), 0u), -2147483647i) ^ 6256i, _wgslsmith_dot_vec4_i32(vec4<i32>(~func_3(vec2<i32>(-1i, 0i), Struct_2(arg_1.d.a.x, arg_1.b, Struct_1(arg_2.a, arg_1.a), Struct_1(vec3<bool>(false, arg_3.d.a.x, true), 0u)), 4294967295u), ~(~20377i), min(i32(-1i) * -2147483647i, ~1i), ~(~23027i)), vec4<i32>(1i >> (countOneBits(arg_3.b.x) % 32u), -func_3(vec2<i32>(0i, 8971i), Struct_2(true, vec2<u32>(arg_2.b, 107494u), arg_3.d, Struct_1(vec3<bool>(arg_2.a.x, false, var_1.d.a.x), u_input.a)), u_input.a), _wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, 1i, 0i), vec3<i32>(-2147483647i, -4976i, -64667i)), countOneBits(vec3<i32>(1i, 1i, -1i))), firstTrailingBit(-3794i))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = select(vec3<i32>(_wgslsmith_div_i32(-1i, i32(-1i) * -30119i), ~countOneBits(29608i), firstLeadingBit(_wgslsmith_sub_i32(1937i, -1i))), max(~func_2(vec2<f32>(-734f, 627f), arg_0, arg_0.d, arg_0), select(vec3<i32>(2147483647i, 1i, -11877i), -vec3<i32>(-13627i, 1i, 19090i), all(vec4<bool>(arg_0.d.a.x, false, arg_0.d.a.x, false)))), arg_0.d.a) & _wgslsmith_add_vec3_i32(~vec3<i32>(-11560i, -17609i, 23322i), ~max(vec3<i32>(-34304i, -1i, 50411i), vec3<i32>(-1i, 19644i, -15700i)));
    var var_1 = ~(select(~(vec4<u32>(arg_0.b.x, arg_0.d.b, arg_0.b.x, u_input.a) | vec4<u32>(u_input.a, 79878u, arg_0.d.b, u_input.a)), select(select(vec4<u32>(u_input.a, u_input.a, arg_0.d.b, 12657u), vec4<u32>(u_input.a, arg_0.a, u_input.a, u_input.a), false), min(vec4<u32>(47847u, 52138u, u_input.a, 0u), vec4<u32>(u_input.a, 35018u, u_input.a, arg_0.b.x)), vec4<bool>(arg_0.d.a.x, arg_0.d.a.x, true, false)), !(!vec4<bool>(false, arg_0.d.a.x, true, arg_0.d.a.x))) & vec4<u32>(countOneBits(_wgslsmith_div_u32(0u, arg_0.b.x)), reverseBits(_wgslsmith_mult_u32(4294967295u, u_input.a)), _wgslsmith_mult_u32(arg_0.d.b, u_input.a) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(8352u, arg_0.a, u_input.a), vec3<u32>(0u, arg_0.a, u_input.a)), _wgslsmith_div_u32(1u, ~arg_0.a)));
    var var_2 = reverseBits(0u);
    var var_3 = _wgslsmith_mod_vec4_u32(~min(vec4<u32>(29993u, 36017u, 19995u, arg_0.d.b) ^ vec4<u32>(var_1.x, 41466u, 27010u, u_input.a), vec4<u32>(0u, 26365u, var_1.x, 15579u)) | vec4<u32>(_wgslsmith_clamp_u32(~u_input.a, var_1.x, ~1u), _wgslsmith_dot_vec3_u32(countOneBits(var_1.wwy), vec3<u32>(1u, 0u, 0u)), select(1u, u_input.a, arg_0.d.a.x), _wgslsmith_mult_u32(arg_0.d.b, select(var_1.x, var_1.x, arg_0.d.a.x))), vec4<u32>(42095u, select(firstLeadingBit(1u), ~(u_input.a | var_1.x), !all(vec4<bool>(arg_0.d.a.x, false, arg_0.d.a.x, arg_0.d.a.x))), arg_0.b.x, _wgslsmith_add_u32(10059u, 14908u)));
    var_1 = max(vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_add_u32(25433u, 84298u), var_1.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.x, u_input.a, var_1.x, 0u), ~vec4<u32>(var_3.x, 34514u, arg_0.d.b, var_3.x)), ~83605u & countOneBits(~var_1.x), _wgslsmith_dot_vec3_u32(max(vec3<u32>(var_3.x, 1u, arg_0.b.x), vec3<u32>(u_input.a, 2111u, arg_0.b.x)), var_1.yxz) | u_input.a), _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(var_1.x, 4294967295u, 4294967295u, arg_0.d.b))), vec4<u32>(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_1.x, var_3.x), var_1.ywy)), select(firstTrailingBit(u_input.a), 1u, all(arg_0.d.a)), 1u, ~abs(var_3.x)), vec4<u32>(4294967295u, _wgslsmith_div_u32(select(arg_0.b.x, var_1.x, false), var_3.x), 1u, firstLeadingBit(_wgslsmith_add_u32(var_3.x, 22278u)))));
    return arg_0.d;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: vec4<f32>) -> vec3<i32> {
    var var_0 = 17177u;
    global0 = 31061u;
    global0 = arg_1.d.b;
    global0 = 61203u;
    var var_1 = vec3<u32>(max(arg_1.a, 1u), arg_1.d.b, _wgslsmith_dot_vec2_u32(arg_1.b, ~vec2<u32>(arg_1.a, countOneBits(4294967295u))));
    return vec3<i32>(~countOneBits(-arg_0 & (arg_0 >> (arg_1.b.x % 32u))), abs(arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(~arg_0, arg_0) >> (abs(vec2<u32>(20226u, var_1.x)) % vec2<u32>(32u)), func_2(_wgslsmith_f_op_vec2_f32(-arg_3.wx), arg_1, func_1(arg_1), arg_1).xy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 0i, 11237i), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-19689i, -14084i, -1i), vec3<i32>(-1i, -2147483647i, 37585i)), -vec3<i32>(17496i, 23513i, -19919i))), _wgslsmith_clamp_i32(1i, -1i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(13104i, 78061i, -1i), vec3<i32>(-1i, 0i, 2147483647i)))), 1i), _wgslsmith_mod_vec3_i32(~(~(-vec3<i32>(14268i, 19018i, 20394i))), func_4(_wgslsmith_div_i32(countOneBits(-16908i), -10099i), Struct_3(u_input.a, reverseBits(vec2<u32>(u_input.a, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -653f), func_1(Struct_3(u_input.a, vec2<u32>(36442u, u_input.a), -370f, Struct_1(vec3<bool>(true, false, false), u_input.a)))), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, -674f, 2349f, -736f) * vec4<f32>(-1000f, -247f, 310f, -353f)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(200f, -479f, 275f), vec3<f32>(588f, -508f, 851f))), vec3<f32>(1229f, 558f, -1079f), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(788f, 1384f, -672f), vec3<f32>(-1593f, -155f, -1204f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(457f, -571f, -611f) * vec3<f32>(725f, 1662f, -1689f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(642f, -842f, 1137f, -257f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1221f, 3084f, -1692f, 1037f))), select(all(vec3<bool>(true, true, false)), select(false, false, false), u_input.a < 37895u))), vec4<f32>(1601f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(-701f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -186f))), _wgslsmith_f_op_f32(ceil(-1179f))))));
}

