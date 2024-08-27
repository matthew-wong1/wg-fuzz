struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
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

var<private> global0: bool = true;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = -503f;
    var var_1 = !vec4<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)) & false, any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)));
    var var_2 = Struct_3(vec2<i32>(u_input.c.x, u_input.c.x) ^ u_input.d);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1034f) + _wgslsmith_f_op_f32(f32(-1f) * -125f)) + 1593f) - _wgslsmith_f_op_f32(ceil(891f))), _wgslsmith_f_op_f32(-569f - -1783f));
    return u_input.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    let var_0 = true;
    var var_1 = all(!select(!(!vec4<bool>(var_0, arg_1.x, true, arg_1.x)), select(select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(var_0, true, false, var_0), vec4<bool>(arg_1.x, true, arg_1.x, false)), !vec4<bool>(true, arg_1.x, true, true), select(vec4<bool>(true, false, arg_1.x, true), vec4<bool>(true, var_0, false, arg_1.x), arg_1.x)), !select(vec4<bool>(false, arg_1.x, var_0, false), vec4<bool>(false, arg_1.x, arg_1.x, true), var_0)));
    global1 = any(!(!vec3<bool>(true | var_0, true, false | var_0)));
    let var_2 = ~1u;
    let var_3 = _wgslsmith_mod_u32(arg_0.a.b.x, arg_2.a.b.x);
    return select(!(true || arg_1.x), false, arg_1.x | true) && ((~(-u_input.d.x) | arg_2.c) > 0i);
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = true;
    let var_1 = func_4(Struct_2(Struct_1(-1065f, _wgslsmith_mod_vec4_u32(vec4<u32>(62805u, 23675u, 4294967295u, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 2790u, u_input.e.x, 1u), vec4<u32>(u_input.e.x, u_input.b, u_input.b, 1u)))), vec4<f32>(_wgslsmith_f_op_f32(abs(-1058f)), -1000f, -936f, _wgslsmith_f_op_f32(ceil(2277f))), _wgslsmith_mult_i32(~select(9289i, arg_0.x, var_0), func_3())), vec2<bool>(!(!all(vec2<bool>(var_0, false))), var_0), Struct_2(Struct_1(1f, abs(vec4<u32>(11523u, u_input.b, 0u, 49199u)) | ~vec4<u32>(25655u, u_input.b, 86279u, u_input.e.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(395f, -2417f, -101f, 310f) - vec4<f32>(267f, 1932f, -1916f, -1245f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1426f, -163f, -180f, 304f)))))), 18228i));
    var var_2 = Struct_1(-190f, select(select(_wgslsmith_add_vec4_u32(vec4<u32>(12345u, 36650u, u_input.e.x, 0u), vec4<u32>(65423u, 63384u, 1u, u_input.b)), ~vec4<u32>(u_input.b, 0u, u_input.e.x, u_input.b), true), _wgslsmith_add_vec4_u32(vec4<u32>(54266u, 0u, u_input.b, 1u), ~vec4<u32>(23094u, u_input.b, u_input.e.x, u_input.e.x)), !var_0) << ((vec4<u32>(u_input.b, ~11606u, ~u_input.b, ~u_input.e.x) & select(~vec4<u32>(49760u, u_input.b, 8509u, u_input.e.x), ~vec4<u32>(u_input.e.x, u_input.b, u_input.b, u_input.e.x), !vec4<bool>(true, var_1, var_1, var_1))) % vec4<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1348f))), (vec4<u32>(~u_input.b, 31948u, ~18150u, _wgslsmith_div_u32(u_input.b, 13975u)) & var_2.b) << (vec4<u32>(~countOneBits(u_input.b), ~5258u, var_2.b.x, ~var_2.b.x) % vec4<u32>(32u)));
    var var_4 = Struct_3(abs(arg_0) << (u_input.e % vec2<u32>(32u)));
    return vec3<bool>(true, false, var_0);
}

fn func_5(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    global0 = true;
    var var_0 = true || arg_0;
    var_0 = true;
    var var_1 = Struct_3(vec2<i32>(~2147483647i, _wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, u_input.a.x)));
    var var_2 = Struct_3(-vec2<i32>(u_input.c.x, ~(-2717i)));
    return ~_wgslsmith_sub_i32(-(0i & _wgslsmith_dot_vec4_i32(vec4<i32>(-26930i, u_input.c.x, var_1.a.x, 0i), vec4<i32>(-22893i, u_input.a.x, u_input.a.x, 29495i))), -9388i);
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global1 = all(vec2<bool>(_wgslsmith_sub_u32(~u_input.b, 1u) < ~(~12364u), true));
    global0 = !any(vec3<bool>(true, true, true));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)), -842f))));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_0.xx, _wgslsmith_clamp_vec2_i32(vec2<i32>(-2470i, i32(-1i) * -47646i), -_wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(arg_0.x, _wgslsmith_mod_i32(arg_0.x, u_input.c.x)))), -func_5(all(vec4<bool>(true, false, true, false)), func_2(arg_0.yz)));
    global1 = func_4(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1165f), -540f), vec4<u32>(firstTrailingBit(u_input.e.x), select(4294967295u, u_input.b, false), u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4351u, u_input.b, 0u), vec3<u32>(u_input.b, u_input.e.x, u_input.e.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 303f, -1383f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-152f, 1000f, -1812f, -1253f)))), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-3201i, -1190i, 0i, u_input.d.x)), vec4<i32>(2147483647i ^ var_1, -32824i, _wgslsmith_mult_i32(var_1, 0i), -4442i))), select(!func_2(u_input.d).zx, vec2<bool>(true, true), true), Struct_2(Struct_1(-304f, vec4<u32>(u_input.b, 4294967295u ^ u_input.b, _wgslsmith_div_u32(u_input.e.x, u_input.e.x), u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, 873f, 250f, -1969f))))), 1i));
    return all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)) || false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    global0 = true;
    var var_0 = select(!(!vec3<bool>(true, true, all(vec3<bool>(false, true, true)))), select(vec3<bool>(true, all(vec3<bool>(false, true, false)), false || func_1(vec3<i32>(u_input.d.x, -11420i, 0i))), func_2(max(vec2<i32>(21857i, u_input.c.x) >> (u_input.e % vec2<u32>(32u)), ~u_input.d)), true), !vec3<bool>(true, u_input.b >= u_input.e.x, all(vec2<bool>(true, true))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1665f)))), vec4<u32>(u_input.e.x, 57404u, firstTrailingBit(u_input.e.x), _wgslsmith_mult_u32(u_input.e.x, 35743u)) << (~vec4<u32>(u_input.b, 19693u, u_input.b, 46062u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(629f, 1154f, -1000f, -562f), vec4<f32>(-1420f, 1192f, -482f, -1191f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1384f, 600f, 1155f, 2509f))))))), _wgslsmith_mod_i32(u_input.c.x, -_wgslsmith_clamp_i32(_wgslsmith_add_i32(-22983i, -37474i), max(53335i, u_input.c.x), 1i)));
    global0 = -589f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1312f + var_1.b.x))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) + _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_clamp_vec4_u32(~(var_1.a.b ^ var_1.a.b), (vec4<u32>(u_input.b, 4294967295u, 27284u, var_1.a.b.x) ^ var_1.a.b) ^ var_1.a.b, var_1.a.b)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-486f + -608f) * var_1.a.a), var_1.b.x)), var_1.b.x, var_1.a.a), u_input.a.x);
    var_2 = Struct_2(var_2.a, vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) * _wgslsmith_f_op_f32(-var_1.b.x)))), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -772f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2021f * -713f)))), var_2.c);
    var_1 = Struct_2(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(-602f * 1107f), var_1.a.a, _wgslsmith_f_op_f32(max(-1770f, 771f)), var_1.a.a), _wgslsmith_mod_i32(40326i, ~(~2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.x - 1f), _wgslsmith_f_op_f32(var_2.a.a - _wgslsmith_div_f32(var_1.a.a, var_1.b.x)))))));
}

