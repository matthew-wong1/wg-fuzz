struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    return !(!select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1219f, _wgslsmith_f_op_f32(sign(arg_2.a.x))))) + arg_2.a.x));
    var var_1 = arg_1 <= u_input.b;
    let var_2 = firstTrailingBit(u_input.d);
    var var_3 = u_input.d;
    var var_4 = arg_3.a.d;
    return ~40714u;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = u_input.d >> (firstTrailingBit(_wgslsmith_mod_vec4_u32((u_input.d >> (u_input.d % vec4<u32>(32u))) & vec4<u32>(u_input.d.x, u_input.e.x, u_input.b, u_input.d.x), vec4<u32>(u_input.e.x, 30589u, select(u_input.e.x, 33463u, false), func_3(u_input.e, u_input.d.x, Struct_2(arg_2.a, 30147i, 0i, arg_2.d), Struct_3(arg_2, vec3<i32>(u_input.a.x, u_input.a.x, 36953i), arg_2.a.zy))))) % vec4<u32>(32u));
    var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_2.a.x));
    let var_2 = Struct_3(Struct_2(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.a, arg_0.a)))), countOneBits(arg_2.b), ~(~arg_2.c), !arg_2.d), abs(u_input.a.zyy), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(arg_2.a.zz)))));
    var var_3 = arg_1;
    return false;
}

fn func_4(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = vec3<bool>(true, !all(!select(arg_0, arg_0, vec3<bool>(arg_0.x, false, arg_0.x))), arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1039f - -437f), 2022f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-934f)))))));
    var var_2 = u_input.e.xy;
    let var_3 = _wgslsmith_mod_u32(var_2.x, u_input.e.x);
    let var_4 = var_0.x;
    return !(!vec2<bool>(true, var_4));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, all(vec4<bool>(false, true, false, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), !func_1(_wgslsmith_f_op_f32(-1856f + 872f))), vec2<bool>(true, true), func_4(!vec3<bool>(false, func_2(Struct_1(1222f), true, Struct_2(vec3<f32>(-1000f, 2702f, -1509f), u_input.a.x, u_input.a.x, vec2<bool>(false, true)), Struct_1(792f)), true)));
    var var_1 = vec2<i32>(-38233i, abs(countOneBits(~2147483647i)));
    var_1 = -((vec2<i32>(-1i) * -u_input.a.xy) >> (vec2<u32>(0u, ~u_input.e.x) % vec2<u32>(32u)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1277f), -439f, _wgslsmith_f_op_f32(trunc(1f))))), i32(-1i) * -var_1.x, 37895i, !var_0);
    let var_3 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(u_input.d, u_input.d, vec4<bool>(true, var_0.x, true, true)), ~u_input.d), u_input.d), ~reverseBits(u_input.c.x) & (u_input.d.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.b), u_input.d))), u_input.d.x);
    let var_4 = Struct_3(var_2, u_input.a.zyy, _wgslsmith_f_op_vec2_f32(max(var_2.a.zx, var_2.a.zy)));
    var_1 = _wgslsmith_clamp_vec2_i32(var_4.b.xx, var_4.b.xx, vec2<i32>(var_2.b, var_2.c));
    var var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_4.a.a), vec3<f32>(-477f, -447f, -945f))), var_4.a.a))), _wgslsmith_dot_vec4_i32(u_input.a & ~u_input.a, -(-u_input.a | firstLeadingBit(u_input.a))), _wgslsmith_mod_i32(-18139i, ~abs(countOneBits(1i))), vec2<bool>(!(true || !var_2.d.x), _wgslsmith_f_op_f32(-var_4.a.a.x) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_4.a.a.x, 991f, var_4.a.d.x)), var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(u_input.a.x, ~(-29254i), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.b, var_2.c, u_input.a.x, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(26817i, -36881i, 1i, var_4.a.b), vec4<i32>(-20088i, var_1.x, 12154i, 1i))), -select(u_input.a.x, var_5.b, false))), abs(select(12155u, countOneBits(var_3), false)), -139f, _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, -1362f), var_4.a.a.zz), _wgslsmith_clamp_vec3_u32(vec3<u32>(~70216u, u_input.c.x, 1u), vec3<u32>(reverseBits(1u), var_3, _wgslsmith_clamp_u32(u_input.d.x, ~var_3, u_input.b)), vec3<u32>(var_3, ~1u, u_input.c.x & ~u_input.d.x)));
}

