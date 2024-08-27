struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(2147483647i, -24557i, vec2<f32>(857f, -640f), -527f, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2640i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(Struct_2(Struct_1(abs(u_input.a.x), ~min(global1.e.x, -61989i), global1.c, global0.x, firstLeadingBit(-global1.e))));
    return -2147483647i;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> u32 {
    global1 = Struct_1(1i << (u_input.c.x % 32u), firstTrailingBit(arg_0.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, 1088f) * _wgslsmith_f_op_f32(global1.d - global0.x))))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), global1.e);
    global1 = Struct_1(-arg_0.x, select(_wgslsmith_mod_i32(min(abs(global1.a), u_input.a.x), ~(-arg_1)), func_3(), all(vec2<bool>(false, true)) && false), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1085f, global0.x))), -412f), _wgslsmith_f_op_f32(select(-355f, global0.x, false)), vec4<i32>(10199i, 1i & -arg_0.x, firstTrailingBit(global1.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-41820i, u_input.a.x, global1.a) << (u_input.d.zzz % vec3<u32>(32u)), ~arg_0.wxw)));
    global1 = Struct_1(_wgslsmith_mod_i32(func_3(), global1.b), arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1487f * global0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1965f + _wgslsmith_div_f32(908f, global0.x)))))), arg_0);
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)) + _wgslsmith_f_op_f32(floor(global0.x))), global1.d, global0.x)))));
    var var_1 = _wgslsmith_dot_vec4_i32(-(~(~(~vec4<i32>(0i, u_input.a.x, u_input.a.x, 0i)))), ~(-(~global1.e)));
    return ~_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(~u_input.d.x, 4294967295u));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_i32(func_3(), max(-7457i << (arg_2 % 32u), _wgslsmith_div_i32(-38125i, global1.b))), global1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.c - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -669f), global0.zy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.yz))), any(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, true, arg_0, arg_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-768f, 607f)) * _wgslsmith_f_op_f32(step(global0.x, -731f))), -1000f), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global1.b, u_input.a.x), -global1.b, min(2147483647i, u_input.a.x), countOneBits(24797i)), max(~global1.e, vec4<i32>(-2147483647i, global1.a, 153i, u_input.a.x)))));
    let var_1 = -247f;
    var var_2 = Struct_1(firstTrailingBit(firstLeadingBit(u_input.a.x)), reverseBits(global1.b << (~(47072u >> (arg_2 % 32u)) % 32u)), _wgslsmith_f_op_vec2_f32(global1.c + _wgslsmith_f_op_vec2_f32(trunc(var_0.a.c))), _wgslsmith_f_op_f32(-var_0.a.d), vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 41851i, 0i), vec3<i32>(1i, 0i, u_input.a.x))), ~global1.e.zyx), min(global1.e.x, 1i), ~(-(~var_0.a.e.x)), firstTrailingBit(firstTrailingBit(u_input.a.x))));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 13301i), vec2<i32>(-2147483647i, global1.b), vec2<i32>(global1.b, u_input.a.x)), _wgslsmith_sub_vec2_i32(var_2.e.wy, vec2<i32>(-1i, -9075i))), reverseBits(var_2.a), -1i), firstTrailingBit(-35112i)) | (_wgslsmith_dot_vec4_i32(var_0.a.e, ~reverseBits(global1.e)) | max(var_0.a.b, max(_wgslsmith_mult_i32(0i, -25466i), ~var_0.a.b)));
    global1 = var_0.a;
    return _wgslsmith_add_i32(~reverseBits(global1.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(-47425i, global1.a, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, 2147483647i, 8502i, 0i)), ~var_0.a.e));
}

fn func_1() -> vec4<i32> {
    var var_0 = global1.e.yy;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -830f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1200f * _wgslsmith_f_op_f32(f32(-1f) * -1958f)) * _wgslsmith_div_f32(global1.c.x, global1.d)));
    global1 = Struct_1(-(~var_0.x), u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.yy, _wgslsmith_f_op_vec2_f32(select(global0.zx, vec2<f32>(global1.c.x, global0.x), vec2<bool>(true, true))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, global0.x) + vec2<f32>(global0.x, global1.d)) * vec2<f32>(global0.x, global1.c.x))) + _wgslsmith_f_op_vec2_f32(global0.xx - global1.c)), _wgslsmith_f_op_f32(ceil(892f)), vec4<i32>(~func_4(true, _wgslsmith_f_op_vec2_f32(abs(global0.xz)), func_2(global1.e, 74509i)), u_input.a.x, global1.a, ~select(-1i, u_input.a.x, any(vec4<bool>(false, false, true, false)))));
    let var_1 = _wgslsmith_dot_vec2_i32(countOneBits(global1.e.xz), ~vec2<i32>(_wgslsmith_div_i32(max(-31968i, 31666i), -global1.b), _wgslsmith_dot_vec4_i32(global1.e ^ vec4<i32>(1127i, 0i, var_0.x, global1.b), global1.e)));
    global1 = Struct_1(func_3(), ~19801i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.d, 573f), vec2<f32>(-121f, -1748f), true))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(1121f, 814f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)) * 330f), select(global1.e, vec4<i32>(_wgslsmith_div_i32(~0i, 2147483647i), firstLeadingBit(func_4(true, global0.xz, 0u)), ~_wgslsmith_add_i32(0i, var_1), -2147483647i), any(vec2<bool>(any(vec4<bool>(true, true, true, false)), true))));
    return global1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~(-global1.a), 2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(663f, global1.d) * global1.c), -371f, -func_1() >> (vec4<u32>(16912u, u_input.d.x, u_input.c.x, ~_wgslsmith_sub_u32(u_input.c.x, 12224u)) % vec4<u32>(32u)));
    var var_0 = global1.b;
    var var_1 = vec2<u32>(4294967295u, ~4294967295u);
    let var_2 = select(select(!vec4<bool>(false, false, all(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true))), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), true), any(vec4<bool>(true, any(vec2<bool>(false, true)), all(vec2<bool>(false, false)), true))), vec4<bool>(all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)))), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, any(vec2<bool>(true, true))), !(~(~u_input.b.x) == 1u));
    var var_3 = Struct_2(Struct_1(1i, reverseBits(_wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(u_input.a.x, global1.b), u_input.a.x | 2147483647i)), global0.yx, 1072f, global1.e << (countOneBits(u_input.c << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_4 = ~u_input.d.x;
    var var_5 = true;
    let var_6 = Struct_3(Struct_2(Struct_1(-var_3.a.b, -108356i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(116f, global0.x), var_3.a.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.c.x) * _wgslsmith_f_op_f32(global1.d + 2021f)), var_3.a.e)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(6483u, u_input.c.x, 0u)), ~vec3<u32>(var_4, var_4, var_4))), u_input.c.xwz >> (abs(~(~u_input.d.xxy)) % vec3<u32>(32u)), u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1040f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.c.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)))));
}

