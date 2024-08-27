struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> bool {
    let var_0 = arg_3;
    let var_1 = arg_3;
    let var_2 = vec3<u32>(42175u, ~_wgslsmith_clamp_u32(u_input.a, u_input.a, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(65448u, 4294967295u, u_input.b, 4294967295u), vec4<u32>(u_input.a, 54018u, 20150u, 78858u)))), u_input.b);
    var var_3 = u_input.c.x;
    var var_4 = Struct_4(max(_wgslsmith_mult_i32(u_input.c.x, 31865i), select(_wgslsmith_mod_i32(arg_3.a.b.x | u_input.c.x, min(var_0.a.b.x, u_input.c.x)), 22536i, ~var_2.x < _wgslsmith_sub_u32(17344u, var_2.x))), ~(-2147483647i));
    return all(vec4<bool>(all(!vec4<bool>(arg_0.x, arg_1, arg_2, true)), arg_0.x, true, arg_2 || true));
}

fn func_2() -> Struct_4 {
    let var_0 = abs(vec2<i32>(1i, u_input.c.x));
    let var_1 = 1403f;
    var var_2 = !vec2<bool>(_wgslsmith_add_u32(u_input.a, ~u_input.a) > 4294967295u, (~u_input.a > _wgslsmith_mult_u32(u_input.a, u_input.b)) && func_3(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, false)), false, Struct_3(Struct_2(vec2<i32>(u_input.c.x, 2147483647i), vec3<i32>(-1i, var_0.x, u_input.c.x), vec4<f32>(var_1, 1000f, -673f, -1581f), var_1))));
    let var_3 = Struct_4(_wgslsmith_sub_i32(countOneBits(firstTrailingBit(_wgslsmith_mult_i32(-1i, 2147483647i))), i32(-1i) * -u_input.c.x), countOneBits(_wgslsmith_dot_vec2_i32(var_0, var_0)));
    var_2 = select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, var_2.x), !select(!vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x), false), true));
    return var_3;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = select(!vec3<bool>(true, func_3(arg_3.yyx, false & arg_3.x, func_3(arg_3.zzy, arg_3.x, true, Struct_3(Struct_2(u_input.c.wx, vec3<i32>(u_input.c.x, u_input.c.x, 1i), vec4<f32>(-216f, 1314f, 1723f, -1000f), 1380f))), Struct_3(Struct_2(vec2<i32>(arg_2.x, u_input.c.x), u_input.c.zyy, vec4<f32>(-2000f, -948f, -301f, 252f), -3589f))), func_3(select(arg_3.ywx, arg_3.ywy, vec3<bool>(arg_3.x, arg_3.x, false)), select(false, true, true), !arg_3.x, Struct_3(Struct_2(vec2<i32>(26775i, -2147483647i), arg_2.yzz, vec4<f32>(-723f, -1000f, 295f, 1076f), -1841f)))), arg_3.wxz, arg_3.yyw);
    var var_1 = Struct_2(~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -17013i), abs(u_input.c.zz)) & _wgslsmith_div_vec2_i32(abs(~vec2<i32>(1i, 0i)), vec2<i32>(1i, arg_0.a)), firstTrailingBit(arg_2.wyw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(984f)), -340f, _wgslsmith_f_op_f32(select(-213f, -1000f, false))) - vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-952f - 196f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * -1115f)), false)));
    var var_3 = true;
    var_3 = arg_3.x || !select(_wgslsmith_f_op_f32(var_2 + 2723f) != _wgslsmith_f_op_f32(f32(-1f) * -1981f), true, arg_3.x);
    return vec4<i32>(u_input.c.x, ~u_input.c.x, ~(~reverseBits(arg_2.x) & 46793i), abs(27111i));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = func_4(func_2(), firstLeadingBit(countOneBits(vec4<u32>(62017u, 0u, u_input.a, u_input.b))) << (vec4<u32>(~(96888u ^ u_input.a), u_input.a, 1u, select(u_input.b, ~0u, 56698i != arg_2.x)) % vec4<u32>(32u)), countOneBits(vec4<i32>(-13180i, ~u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, 18674i), countOneBits(u_input.c.x))), !vec4<bool>(true, true, false, func_3(vec3<bool>(true, true, false), 4294967295u != u_input.b, false, Struct_3(Struct_2(u_input.c.xz, arg_2, arg_0.b, -1178f)))));
    var_0 = abs(func_4(Struct_4(arg_1.x, var_0.x), vec4<u32>(min(10520u, u_input.b), reverseBits(70942u), 1u, u_input.b), vec4<i32>(var_0.x, ~38456i, u_input.c.x, arg_2.x), vec4<bool>(true, true, true, true)) & firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(var_0.x, var_0.x), min(2147483647i, -2147483647i), _wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(var_0.x, -6707i)), _wgslsmith_mod_i32(u_input.c.x, 29028i))));
    var_0 = select(vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(firstTrailingBit(var_0.x), firstLeadingBit(arg_2.x))), -_wgslsmith_clamp_i32(1i, u_input.c.x, ~u_input.c.x), 1917i, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -28334i), arg_2.xz), _wgslsmith_div_i32(24496i, -1i))), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(-29575i, 2147483647i, 14979i, arg_1.x), u_input.c), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), -2589i > u_input.c.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b.x))) - arg_0.a) == arg_0.a, ((u_input.a < (u_input.b << (15159u % 32u))) || true) || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x))) >= arg_0.b.x), true);
    var var_2 = arg_0.b.xwy;
    return select(!vec2<bool>(_wgslsmith_f_op_f32(var_2.x + 1000f) > _wgslsmith_f_op_f32(select(arg_0.a, 383f, var_1.x)), any(vec2<bool>(true, true))), select(select(!var_1.xz, var_1.xx, !var_1.x), var_1.xx, !var_1.x), !select(vec2<bool>(!var_1.x, var_1.x | false), select(var_1.xy, vec2<bool>(var_1.x, var_1.x), var_1.x || true), any(!vec4<bool>(var_1.x, true, var_1.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(false, true), vec2<bool>(true, !any(vec3<bool>(true, true, true))), !select(vec2<bool>(all(vec3<bool>(true, false, true)), true), func_1(Struct_1(712f, vec4<f32>(418f, -546f, 2631f, -690f)), vec4<i32>(u_input.c.x, -56892i, -2147483647i, u_input.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -1i, 2847i), u_input.c.yxw)), true));
    var var_1 = select(!vec2<bool>(true, true | var_0.x), !(!select(select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), var_0.x), vec2<bool>(false, false), !vec2<bool>(true, var_0.x))), func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-961f, 1223f, -198f, 1999f) + vec4<f32>(2353f, 132f, -446f, -1609f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-669f, -1000f, -417f, -1116f)))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x) >> (~vec4<u32>(0u, u_input.b, 62693u, 0u) % vec4<u32>(32u)), vec4<i32>(-1i, -2147483647i, u_input.c.x, -2147483647i) & _wgslsmith_add_vec4_i32(u_input.c, u_input.c)), vec3<i32>(abs(_wgslsmith_mult_i32(41885i, -4224i)), u_input.c.x, countOneBits(2147483647i))).x);
    let var_2 = select(!vec3<bool>(u_input.c.x > ~u_input.c.x, false, var_0.x), !(!(!select(vec3<bool>(var_1.x, false, var_0.x), vec3<bool>(var_1.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true)))), !select(!select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, var_0.x, var_1.x), vec3<bool>(var_0.x, var_1.x, var_1.x)), !vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, any(vec4<bool>(var_1.x, var_1.x, false, var_0.x)), true)));
    let var_3 = 7815u;
    var_1 = !select(vec2<bool>(all(select(var_2, var_2, vec3<bool>(var_1.x, var_2.x, false))), var_2.x), select(vec2<bool>(all(vec4<bool>(var_2.x, false, var_2.x, false)), true), vec2<bool>(var_2.x & true, true), false), var_0.x);
    var_1 = !vec2<bool>(!(!var_0.x) && var_0.x, false);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1107f)))), _wgslsmith_f_op_f32(981f * _wgslsmith_f_op_f32(f32(-1f) * -1013f)), 1853f, 968f)));
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(u_input.a << (13699u % 32u), ~16666u) | ~min(48926u, 53636u), (var_3 & min(var_3, var_3)) | 1u), ~abs(abs(u_input.b >> (u_input.a % 32u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -1645f, var_4.x)))))));
}

