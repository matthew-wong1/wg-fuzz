struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_5) -> i32 {
    global0 = -arg_0.c.x;
    global0 = u_input.a.x;
    global0 = -firstLeadingBit(u_input.c) ^ -max(i32(-1i) * -1948i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.c.x), vec2<i32>(arg_0.b, arg_0.b), arg_0.c), -u_input.a.zx));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f), -308f);
    let var_1 = Struct_3(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(474f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-682f)))), true, Struct_2(Struct_1(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_div_f32(1651f, arg_1.x))), min(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, -28596i, 36179i, 1i), vec4<i32>(u_input.a.x, 41894i, u_input.c, arg_0.b)) & -u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.c.x, -2147483647i), u_input.a) & 0i), -_wgslsmith_sub_vec2_i32(u_input.a.zz, u_input.a.xy), !(_wgslsmith_f_op_f32(round(447f)) >= arg_0.a.b)));
    return ~arg_0.c.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_5 {
    global0 = u_input.a.x;
    global0 = -5063i;
    let var_0 = ~_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -2147483647i, reverseBits(13084i)) & 9404i);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(select(_wgslsmith_sub_i32(~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(16961i, u_input.c, u_input.c), vec3<i32>(var_0, 0i, -1i))), u_input.a.x >> (_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x) % 32u), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), abs(-(u_input.a.x & var_0)), _wgslsmith_clamp_i32(func_3(Struct_2(Struct_1(1537f, -911f), var_0, vec2<i32>(24163i, var_0), true), vec4<f32>(1147f, 2100f, -734f, 897f), Struct_5(u_input.b.x, 4294967295u)), u_input.c, var_0) & (_wgslsmith_clamp_i32(-61599i, u_input.c, 2147483647i) << (select(u_input.b.x, arg_0.x, true) % 32u)), i32(-1i) * -1i), ~firstTrailingBit(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a.x, -1i, var_0, var_0), vec4<i32>(u_input.c, 0i, -30868i, 0i)), select(vec4<i32>(u_input.a.x, -35324i, u_input.c, -1i), vec4<i32>(var_0, u_input.a.x, u_input.a.x, var_0), true))));
    global0 = var_0;
    return Struct_5(46285u, ~arg_0.x);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-254f, _wgslsmith_f_op_f32(f32(-1f) * -265f), false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1558f * _wgslsmith_f_op_f32(f32(-1f) * -639f)))));
    let var_1 = select(vec3<u32>(1u, abs(6486u), _wgslsmith_dot_vec3_u32(~(~arg_1.zyx), arg_1.xwy & (vec3<u32>(34435u, arg_0.a, 0u) & vec3<u32>(u_input.b.x, arg_1.x, u_input.b.x)))), ~(~vec3<u32>(~0u, ~u_input.b.x, 51142u)), select(!select(vec3<bool>(false, false, arg_2.x), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), any(vec2<bool>(arg_2.x, arg_2.x))), arg_2, all(select(arg_2, arg_2, arg_2.x))));
    global0 = _wgslsmith_add_i32(u_input.c, -select(u_input.c, ~u_input.a.x, arg_2.x));
    var var_2 = vec2<u32>(6459u, 0u);
    global0 = u_input.a.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(select(var_0.a, var_0.b, false)))))), _wgslsmith_div_i32(reverseBits(u_input.a.x), u_input.c), u_input.a.zy, arg_2.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    var var_0 = -1i;
    var_0 = countOneBits(-select(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), u_input.a), _wgslsmith_mod_i32(arg_1.x, arg_1.x), any(!vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d))));
    let var_1 = arg_0;
    global0 = ~_wgslsmith_mult_i32(0i ^ _wgslsmith_div_i32(select(0i, 1i, true), 1i), arg_0.b);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.b, var_1.a.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(var_1.a.b * 460f), !arg_0.d)), -594f, 1003f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.a.a)), 1000f), _wgslsmith_f_op_f32(trunc(-479f)), -943f, -354f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, _wgslsmith_f_op_f32(-1250f * 344f), -180f, _wgslsmith_f_op_f32(-1449f - var_1.a.a)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-func_4(Struct_5(0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 17262u), vec3<bool>(arg_0.d, false, arg_0.d)).a.b), 1013f))));
}

fn func_1(arg_0: f32, arg_1: u32) -> f32 {
    return _wgslsmith_f_op_f32(func_5(func_4(func_2(vec3<u32>(16798u, 31130u, u_input.b.x)), ~(vec4<u32>(arg_1, 55071u, arg_1, 37056u) ^ vec4<u32>(u_input.b.x, 77055u, 0u, 0u)), !vec3<bool>(arg_0 != arg_0, true, true)), select(vec2<i32>(u_input.c, -1i), -u_input.a.xx ^ u_input.a.xx, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec4<bool>(true, true, false, _wgslsmith_f_op_f32(-1000f * -1000f) < _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(round(-137f)), ~0u))), false & select(false, false, true));
    var var_1 = var_0.a.yx;
    var var_2 = Struct_4(vec4<bool>(!any(!var_0.a.zyx), false, func_4(func_2(u_input.b), vec4<u32>(u_input.b.x ^ 1u, u_input.b.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 2224u, u_input.b.x), u_input.b)), !select(vec3<bool>(true, var_0.b, var_1.x), vec3<bool>(var_1.x, var_1.x, var_0.b), var_0.b)).d, !func_4(Struct_5(u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 11296u), vec3<bool>(false, false, var_0.b)).d), !((u_input.a.x << (1u % 32u)) <= func_4(Struct_5(7686u, u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 20488u), vec4<u32>(u_input.b.x, u_input.b.x, 4752u, 28364u)), !var_0.a.yxz).c.x));
    let var_3 = Struct_3(false, -200f, true, func_4(Struct_5(~4294967295u, func_2(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)).b), vec4<u32>(~(~22641u), 4294967295u, abs(8041u), reverseBits(~45782u)), !var_0.a.wyx));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_3.d.a.a)), -604f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(226f, var_3.d.a.a)), func_4(Struct_5(u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 14705u, u_input.b.x, u_input.b.x), vec3<bool>(var_2.a.x, var_1.x, var_2.b)).a.b)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1001f, -773f) - vec2<f32>(271f, var_3.d.a.a)))))));
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_mod_u32(~u_input.b.x, ~23755u), _wgslsmith_mod_u32(0u, ~0u), u_input.b.x), ~(~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) >> (vec4<u32>(40991u, 84048u, 1u, u_input.b.x) % vec4<u32>(32u)))), vec4<u32>(u_input.b.x, ~u_input.b.x, 0u >> (1u % 32u), 0u | ~u_input.b.x)), var_3.d.c.x, var_4.x, vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(-13724i, u_input.a.x)) ^ 1319i, -34611i) << (~(~u_input.b.zy) % vec2<u32>(32u)));
}

