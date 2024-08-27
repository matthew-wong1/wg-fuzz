struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = arg_0.a;
    var var_1 = Struct_2(Struct_1(vec4<u32>(~arg_0.a.a.x, 15u, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.a.x, arg_0.a.b.x), 1493u), 0u), ~(~var_0.a.wy ^ ~arg_0.a.a.zz)), arg_0.b, vec3<i32>(~43736i, 2147483647i, u_input.c.x));
    var var_2 = Struct_1(var_1.a.a, ~var_1.a.a.zy);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.yyy * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(var_1.b.yzz)))))), arg_0.b.xyx, vec3<bool>(0i != _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 2147483647i, 41761i), any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)))));
    var var_4 = Struct_2(arg_0.a, arg_0.b, var_1.c);
    return false;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    let var_0 = any(!vec2<bool>(any(select(vec2<bool>(false, arg_2), vec2<bool>(false, false), false)), arg_2));
    var var_1 = false;
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(55570u, 26672u), vec2<u32>(countOneBits(16170u), 11008u)), 33003u);
    var var_3 = select(select(select(vec4<bool>(any(vec4<bool>(arg_0.x, var_0, var_0, false)), arg_0.x, var_0, arg_2), select(arg_0, vec4<bool>(var_0, false, false, arg_2), select(arg_0, vec4<bool>(false, false, false, true), arg_0.x)), !arg_0), arg_0, var_0), !(!select(select(vec4<bool>(var_0, var_0, arg_0.x, true), vec4<bool>(true, true, false, arg_2), vec4<bool>(true, var_0, false, arg_2)), vec4<bool>(false, true, arg_0.x, arg_0.x), var_0)), vec4<bool>(arg_2, !(!arg_0.x), any(vec2<bool>(false, !var_0)), arg_2));
    var_3 = vec4<bool>(!var_3.x, arg_0.x, func_3(Struct_2(Struct_1(vec4<u32>(51211u, 97033u, 36329u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), -reverseBits(vec3<i32>(u_input.a, u_input.b.x, u_input.c.x)))), !all(vec2<bool>(false, arg_0.x)));
    return Struct_2(Struct_1(vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(38476u), firstTrailingBit(3218u)), ~(~0u), 44447u, _wgslsmith_add_u32(~4294967295u, ~38640u)), ~min(vec2<u32>(4294967295u, 27147u), ~vec2<u32>(7445u, 35863u))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(570f, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_div_vec4_f32(arg_1, vec4<f32>(arg_1.x, arg_1.x, -1000f, arg_1.x))))))), u_input.b.yxx);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -949f))) + var_0.b.x)), func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, true, false)), any(vec4<bool>(false, true, false, true)), arg_2.c.x >= -2147483647i), func_2(vec4<bool>(false, false, false, true), arg_2.b, false).c.x >= _wgslsmith_clamp_i32(var_0.c.x, -7622i, arg_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, arg_2.b.x, var_0.b.x, 206f))), func_2(vec4<bool>(true, false, true, true), vec4<f32>(272f, arg_0.b.x, 202f, 157f), true).b, any(vec4<bool>(false, false, false, true))))), true).b.yy);
    var_0 = Struct_2(Struct_1(arg_2.a.a >> (~(~arg_0.a.a) % vec4<u32>(32u)), ~select(var_0.a.a.xw, vec2<u32>(36372u, 4294967295u), true)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-602f)), _wgslsmith_f_op_f32(f32(-1f) * -531f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x))) - -742f), -1411f), arg_0.c);
    var var_2 = _wgslsmith_mult_vec4_i32(abs(~vec4<i32>(func_2(vec4<bool>(false, true, true, false), vec4<f32>(var_1.x, 186f, arg_2.b.x, var_0.b.x), false).c.x, u_input.c.x << (arg_0.a.a.x % 32u), 70687i, 19849i)), vec4<i32>(1i, i32(-1i) * -_wgslsmith_mult_i32(arg_0.c.x, arg_2.c.x), ~(i32(-1i) * -28026i), -65392i));
    var var_3 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(step(arg_2.b.x, 1277f)), arg_0.b.x, _wgslsmith_div_f32(var_1.x, arg_1.x)))), u_input.c);
    return !vec2<bool>(arg_1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.b.x))), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
}

fn func_1() -> i32 {
    let var_0 = all(!func_4(func_2(vec4<bool>(true, true, false, false), vec4<f32>(782f, 147f, 1221f, 548f), false), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1410f, 646f, -2002f))), func_2(vec4<bool>(false, false, false, false), vec4<f32>(190f, -140f, 1000f, 2047f), false), u_input.a)) && !((reverseBits(-40698i) == (u_input.a | 2147483647i)) | true);
    var var_1 = abs(_wgslsmith_div_i32(reverseBits(~23903i), u_input.a));
    var var_2 = ~select(_wgslsmith_add_u32(reverseBits(4302u), _wgslsmith_div_u32(0u, 75791u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 84460u, 4294967295u, 2630u), vec4<u32>(50358u, 0u, 71412u, 0u)), ~1u), true) >> (1u % 32u);
    let var_3 = Struct_1(reverseBits(vec4<u32>(func_2(select(vec4<bool>(var_0, true, false, var_0), vec4<bool>(var_0, var_0, var_0, false), true), vec4<f32>(-616f, -901f, 198f, 1235f), true).a.b.x, ~1u, min(1u, ~19227u), _wgslsmith_mult_u32(1u, 4294967295u))), ~select(~vec2<u32>(1u, 1u), select(reverseBits(vec2<u32>(5479u, 36192u)), ~vec2<u32>(40291u, 1u), select(vec2<bool>(var_0, true), vec2<bool>(false, false), vec2<bool>(true, true))), select(select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), var_0), vec2<bool>(true, true), false)));
    var_2 = ~var_3.a.x;
    return -u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    var_0 = _wgslsmith_clamp_vec4_i32(-(vec4<i32>(abs(u_input.c.x), select(2147483647i, 29693i, true), ~var_0.x, 1i) | vec4<i32>(max(var_0.x, var_0.x), _wgslsmith_dot_vec3_i32(u_input.b.yxz, var_0.xwy), 2147483647i, u_input.b.x)), vec4<i32>(var_0.x, ~u_input.c.x, -2147483647i, i32(-1i) * -42897i) | u_input.b, -countOneBits(~(~u_input.b)));
    let var_1 = -_wgslsmith_mod_i32(var_0.x, _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, 14145i) | func_1());
    let var_2 = abs(var_0.yw);
    var_0 = max(_wgslsmith_mod_vec4_i32(abs(-firstLeadingBit(u_input.b)), vec4<i32>(~firstTrailingBit(2147483647i), firstTrailingBit(-u_input.b.x), 23865i, ~_wgslsmith_clamp_i32(var_2.x, 14584i, var_1))), vec4<i32>(var_0.x, var_1, var_2.x, ~1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1116f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1035f, 218f)) - -186f)))), vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_sub_u32(func_2(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), vec4<f32>(-2012f, 622f, 1804f, -398f), true).a.b.x, 4294967295u), 37985u));
}

