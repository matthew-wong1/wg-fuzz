struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    let var_0 = ~abs(~vec2<u32>(13986u, 1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) + _wgslsmith_f_op_f32(f32(-1f) * -420f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f - -1618f) - _wgslsmith_f_op_f32(f32(-1f) * -855f)))));
}

fn func_3() -> bool {
    return false;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_3 {
    let var_0 = Struct_2(min(abs(~firstLeadingBit(vec2<u32>(u_input.b.x, u_input.c))), u_input.b));
    var var_1 = !(!(arg_0 == true));
    var var_2 = var_0.a.x;
    var_1 = func_3() == true;
    let var_3 = Struct_2(u_input.b & ~select(var_0.a << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(63444u, var_0.a.x), vec2<bool>(false, arg_0)));
    return Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(arg_1))), -1089f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 * 293f), arg_1)), _wgslsmith_div_f32(1232f, arg_1)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1404f, 1014f) + arg_1))), !select(select(vec2<bool>(false, false), vec2<bool>(arg_0, true), vec2<bool>(true, arg_0)), !vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, false), vec2<bool>(arg_0, false)))), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1308f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b) + _wgslsmith_f_op_f32(-arg_0.a.x)), arg_1.a.b);
    var_0 = func_2(false, arg_1.a.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f + arg_1.a.a.x)) - -1599f)));
    var var_2 = _wgslsmith_f_op_f32(select(1163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)) - 345f), !arg_1.a.c.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(var_0.a.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-593f, -484f));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    var var_0 = arg_1.x;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(706f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(ceil(arg_2)), -1126f) * vec4<f32>(_wgslsmith_f_op_f32(1064f + -366f), _wgslsmith_f_op_f32(f32(-1f) * -731f), -1032f, -516f)), 1657f, !arg_1.ww), reverseBits(firstLeadingBit(u_input.b.x)));
    var var_2 = Struct_2(~vec2<u32>(var_1.b >> (var_1.b % 32u), arg_0.x));
    var_0 = any(select(arg_1.zzz, vec3<bool>(true, false, !arg_1.x), select(!(!vec3<bool>(var_1.a.c.x, false, arg_1.x)), !arg_1.xyy, false)));
    let var_3 = var_1.b;
    return ~(~_wgslsmith_mod_i32(i32(-1i) * -31646i, u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(22377i, ~u_input.d, i32(-1i) * -18309i, ~_wgslsmith_sub_i32(u_input.d & 1i, u_input.a));
    let var_1 = func_5(vec2<u32>(7996u, u_input.c), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(922f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1070f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1370f + -1378f)))) * _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(456f, -554f, 1000f, -393f)), _wgslsmith_f_op_f32(ceil(-477f)), vec2<bool>(true, true)), func_2(true, -835f)))));
    let var_2 = !func_3();
    var_0 = vec4<i32>(-1i) * -(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_0.x, var_1, -5019i), -vec4<i32>(8857i, 24330i, -5022i, var_0.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(-633f, -717f, var_2)), _wgslsmith_f_op_f32(-761f + 1073f), _wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(round(-170f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(491f, 631f, var_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1723f + 1000f))))), vec2<bool>(var_2, !var_2));
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1386f, var_3.a.x, 1218f, -1344f), _wgslsmith_f_op_vec4_f32(var_3.a * var_3.a)))) + vec4<f32>(_wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(f32(-1f) * -497f)), 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1297f))), 1419f)), _wgslsmith_f_op_f32(-1059f + _wgslsmith_f_op_f32(-var_3.b)), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(var_0.x), -var_0.x, -var_0.x, var_1), func_5(u_input.b, select(vec4<bool>(all(vec3<bool>(false, var_2, var_2)), var_3.c.x, u_input.d >= var_1, true), !(!vec4<bool>(true, var_2, true, var_3.c.x)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1185f, var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))), ~u_input.a, _wgslsmith_div_f32(_wgslsmith_div_f32(-210f, _wgslsmith_div_f32(-1394f, _wgslsmith_f_op_f32(ceil(2049f)))), 1f), ~(~(reverseBits(vec2<u32>(u_input.b.x, u_input.c)) | min(vec2<u32>(4294967295u, 1u), u_input.b))));
}

