struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    var var_0 = ~0u;
    var var_1 = Struct_2(arg_2.c.a, arg_2.a.b);
    var var_2 = Struct_3(Struct_1(arg_1.a.a), select(!arg_2.c.b, all(select(vec2<bool>(true, true), !arg_0.wy, false)), true), abs(_wgslsmith_mult_u32(1u, ~(~23006u))), var_1.a, arg_1.a.a.x);
    var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.a - _wgslsmith_f_op_vec3_f32(round(arg_2.b.wzz))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-arg_2.a.a.a.x), var_1.a.a.x))), any(select(arg_0.zw, arg_0.yz, select(arg_0.yy, select(arg_0.yy, vec2<bool>(true, true), arg_2.c.b), vec2<bool>(var_2.b, true)))), reverseBits(abs(arg_1.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.a.a.x, -271f), -1000f))) * arg_2.c.e));
    let var_3 = -abs(firstLeadingBit(u_input.b.x) << (0u % 32u));
    return 2471u;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(func_3(vec4<bool>(arg_1, any(vec2<bool>(arg_1, arg_1)), all(vec4<bool>(false, arg_1, false, true)), arg_1), Struct_2(Struct_1(vec3<f32>(-1140f, 852f, 1000f)), ~vec3<u32>(u_input.a.x, 47482u, arg_0.x)), Struct_4(Struct_2(Struct_1(vec3<f32>(-1371f, 1188f, -1214f)), vec3<u32>(0u, 11835u, 15976u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1116f, 366f, 1342f, -1564f) * vec4<f32>(1151f, 1343f, 999f, 364f)), Struct_3(Struct_1(vec3<f32>(-511f, -1067f, 744f)), arg_1, u_input.a.x, Struct_1(vec3<f32>(1690f, -1433f, 972f)), 837f))), u_input.a.x & (_wgslsmith_mult_u32(0u, arg_0.x) << (arg_0.x % 32u))) <= 70467u;
    let var_1 = Struct_4(Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1000f - -501f), -259f, -613f)), _wgslsmith_mod_vec3_u32(~arg_0.xzz, reverseBits(vec3<u32>(u_input.a.x, arg_0.x, 60456u))) | vec3<u32>(_wgslsmith_div_u32(4294967295u, 1u), u_input.a.x, reverseBits(19960u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-259f, 674f, 980f, 434f))) + vec4<f32>(-535f, 203f, -1321f, -537f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-245f, 1000f, -1252f, 2024f) * vec4<f32>(-747f, 1444f, 1551f, -134f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(295f * 822f), _wgslsmith_div_f32(301f, 280f), 2767f, _wgslsmith_f_op_f32(f32(-1f) * -555f)))), Struct_3(Struct_1(vec3<f32>(-921f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-621f - -209f))), true, 10930u, Struct_1(vec3<f32>(1844f, _wgslsmith_f_op_f32(-1035f + -1492f), _wgslsmith_f_op_f32(trunc(1551f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -1673f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(f32(-1f) * -1052f), !var_0)))));
    var var_2 = select(!(!select(select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(false, true, var_1.c.b, false), vec4<bool>(true, var_1.c.b, var_1.c.b, var_1.c.b)), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(true, false, var_1.c.b, var_0), vec4<bool>(false, false, arg_1, false)), true)), !select(!(!vec4<bool>(arg_1, true, false, true)), vec4<bool>(arg_1, var_0, true, true), true), arg_1);
    var_2 = vec4<bool>(true, any(select(vec2<bool>(arg_1, true), select(select(vec2<bool>(true, false), var_2.ww, vec2<bool>(var_0, var_2.x)), var_2.zx, vec2<bool>(var_2.x, true)), true)), any(select(var_2.zz, vec2<bool>(arg_1, false), !var_2.yx)), select(true, true, var_2.x));
    var var_3 = var_1.a;
    return Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(307f, 1315f), _wgslsmith_div_f32(var_3.a.a.x, -1358f))), var_1.c.e, 1f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1046f, var_3.a.a.x, 1139f))))))));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-956f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(504f)) + _wgslsmith_f_op_f32(277f - -328f)))));
    var var_1 = _wgslsmith_f_op_f32(round(var_0.a.x));
    let var_2 = Struct_2(func_2(~countOneBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u) | vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)), _wgslsmith_f_op_f32(abs(var_0.a.x)) < _wgslsmith_f_op_f32(min(-2106f, _wgslsmith_f_op_f32(ceil(var_0.a.x))))), select(firstLeadingBit(select(u_input.a.zxw, u_input.a.ywx, true) & u_input.a.wzy), vec3<u32>(max(u_input.a.x, ~108451u), abs(1u), _wgslsmith_mod_u32(~u_input.a.x, abs(34238u))), select(vec3<bool>(true, all(vec4<bool>(arg_0, true, false, false)), any(vec2<bool>(true, arg_0))), !(!vec3<bool>(arg_0, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0, false), all(vec3<bool>(arg_0, false, true))))));
    let var_3 = ~53559i;
    var var_4 = Struct_2(func_2(vec4<u32>(18152u, var_2.b.x, func_3(vec4<bool>(arg_0, arg_0, false, arg_0), Struct_2(var_0, u_input.a.ywz), Struct_4(var_2, vec4<f32>(-1303f, 1649f, var_0.a.x, var_2.a.a.x), Struct_3(Struct_1(var_0.a), false, u_input.a.x, var_2.a, var_0.a.x))), u_input.a.x), false), abs(vec3<u32>(u_input.a.x, ~50333u, max(34396u, 46933u) >> (u_input.a.x % 32u))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, -485f, _wgslsmith_f_op_f32(abs(388f)), -687f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-972f, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(-1278f, 253f, var_4.a.a.x, 1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_2.a.a.x, -710f, var_2.a.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 399f, -149f, var_2.a.a.x) + vec4<f32>(var_4.a.a.x, 877f, var_2.a.a.x, 612f)), !vec4<bool>(arg_0, arg_0, true, arg_0))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -864f), var_2.a.a.x, 1f, _wgslsmith_f_op_f32(var_4.a.a.x * var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a.a.x, var_0.a.x, 485f, 416f), vec4<f32>(1636f, -1579f, -1000f, 648f), vec4<bool>(arg_0, false, arg_0, true))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.a.x, var_4.a.a.x, var_4.a.a.x, var_2.a.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x << (0u % 32u);
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(259f, -789f, -1000f, -640f), vec4<f32>(-577f, 199f, 1000f, 362f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-727f, -1641f, -1000f, -496f), vec4<f32>(291f, -531f, -2092f, 1195f)))), _wgslsmith_f_op_vec4_f32(func_1(true))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -978f, _wgslsmith_f_op_vec4_f32(func_1(true)).x, _wgslsmith_f_op_f32(abs(-617f))))));
    let var_3 = Struct_3(func_2(firstLeadingBit(~(u_input.a & vec4<u32>(1u, 1u, 31175u, 0u))), all(vec3<bool>(true, false, all(vec2<bool>(true, true))))), any(vec2<bool>(true, true)), 4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, -934f, -1199f)))), var_2.x);
    let var_4 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(reverseBits(var_0), _wgslsmith_sub_u32(~48142u, _wgslsmith_add_u32(1u, u_input.a.x)))), var_3.c & ~20663u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1000f, 835f, -1463f), vec4<f32>(381f, var_3.a.a.x, var_2.x, var_2.x), false))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(760f, var_3.e, var_2.x, var_2.x))))))), var_4, var_4);
}

