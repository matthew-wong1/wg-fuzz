struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_2(false, Struct_1(countOneBits(vec3<u32>(select(0u, arg_0.a.x, false), arg_0.a.x, ~36550u)), any(arg_0.e), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-124f, _wgslsmith_f_op_f32(arg_1.x + -1989f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.d.x, arg_0.c.x), arg_0.d.xx)) * arg_1.xz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-757f, 775f, arg_1.x, arg_0.d.x), arg_0.d)))), arg_0.e));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-691f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * arg_0.c.x), _wgslsmith_f_op_f32(111f + arg_0.d.x)))));
    let var_2 = -abs(firstTrailingBit(max(~u_input.a, 2147483647i)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b.c.x, _wgslsmith_f_op_f32(arg_0.c.x - arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1, true))), -283f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * arg_0.c.x));
    let var_4 = Struct_1(reverseBits(vec3<u32>(~1u, 1u, var_0.b.a.x ^ (4294967295u & var_0.b.a.x))), !(false | (var_0.a | !var_0.b.e.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_0.b.d.zz, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_3.wz, vec2<f32>(var_1, arg_1.x), var_0.b.e.xx)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(118f, -1546f), arg_0.d.xy)))))), arg_0.d, !(!select(select(vec3<bool>(false, true, var_0.a), var_0.b.e, false), var_0.b.e, any(vec4<bool>(true, arg_0.e.x, arg_0.b, true)))));
    return var_3.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = 0u;
    var_0 = 11404u;
    let var_1 = Struct_2((reverseBits(18363i >> (0u % 32u)) >= ~_wgslsmith_sub_i32(8426i, u_input.a)) | true, Struct_1(~(~reverseBits(vec3<u32>(74918u, 18175u, 36605u))), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-850f, 277f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1120f * -573f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-608f)) - _wgslsmith_f_op_f32(sign(-1250f))), _wgslsmith_f_op_f32(-502f * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(933u, 20872u, 8535u), false, vec2<f32>(-1499f, 1000f), vec4<f32>(-2309f, 2445f, 844f, -1014f), vec3<bool>(true, true, false)), vec3<f32>(-708f, 1811f, 285f)))), 1f), vec3<bool>(true, true, !any(vec3<bool>(true, true, false)))));
    var var_2 = var_1.b;
    let var_3 = Struct_2(false, var_1.b);
    return select(!(!var_2.e.yx), select(var_2.e.xy, vec2<bool>(true, true), var_1.b.b), var_2.e.xx);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<u32>) -> vec2<f32> {
    var var_0 = u_input.a;
    let var_1 = countOneBits(~u_input.a);
    var_0 = max(u_input.a, ~(~firstLeadingBit(20008i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2121f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(285f, _wgslsmith_f_op_f32(select(-1444f, 433f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -668f))))) * 373f);
    var_0 = ~(-u_input.a);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(-106f - 954f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2)))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-973f, _wgslsmith_f_op_f32(ceil(var_2)))))));
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_1(vec3<u32>(4294967295u, ~(~(~110576u)), _wgslsmith_mod_u32(~0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 29610u, 23265u), vec3<u32>(14644u, 1u, 34249u)))), select(true, any(vec2<bool>(true, true)) & true, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(func_4(func_2(), _wgslsmith_sub_u32(min(1u, _wgslsmith_add_u32(40720u, 36770u)), select(0u, ~27502u, true)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)), vec3<u32>(1u, 1u, 1u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-133f, -1122f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1895f, -558f)))), _wgslsmith_f_op_f32(round(-1647f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(156f - -355f) + 1035f), -998f), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.a <= 26006i)), true, false && !any(vec2<bool>(true, true))));
    var_0 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(select(var_0.d, _wgslsmith_f_op_vec4_f32(-var_0.d), select(var_0.b & !var_0.e.x, true, any(vec3<bool>(var_0.e.x, false, var_0.b))))), select(vec3<bool>(true, true, true), !(!var_0.e), all(vec2<bool>(func_2().x, var_0.e.x))));
    var_0 = Struct_1(~var_0.a >> (vec3<u32>(var_0.a.x, ~firstTrailingBit(var_0.a.x), _wgslsmith_div_u32(1u, var_0.a.x) ^ ~1u) % vec3<u32>(32u)), any(vec4<bool>(!var_0.e.x, !var_0.b, func_2().x, var_0.e.x && true)), vec2<f32>(_wgslsmith_div_f32(-211f, _wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, var_0.a.x == var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.d, vec4<f32>(var_0.d.x, var_0.d.x, -1000f, -762f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.d))))), !(!select(!var_0.e, var_0.e, select(var_0.e.x, var_0.e.x, true))));
    var_0 = Struct_1(vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(13674u, var_0.a.x, var_0.a.x), var_0.a), _wgslsmith_mult_u32(abs(var_0.a.x), ~83059u), all(vec3<bool>(var_0.b, var_0.e.x, var_0.e.x))), 93995u, ~(60177u ^ ~var_0.a.x)), true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, -106f) - vec2<f32>(-1000f, 806f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 605f) * var_0.d.wz)), select(var_0.e.xy, var_0.e.yz, all(vec4<bool>(true, var_0.b, var_0.b, var_0.b))))))), var_0.d, vec3<bool>(false, true || any(select(vec3<bool>(var_0.e.x, true, true), var_0.e, var_0.e.x)), false || any(!vec4<bool>(false, var_0.b, var_0.e.x, true))));
    var_0 = Struct_1(vec3<u32>(1u, var_0.a.x, 1u), var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), -855f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(var_0.d, var_0.d)), _wgslsmith_f_op_vec4_f32(-var_0.d))), vec3<bool>(var_0.e.x, true, any(!var_0.e)));
    return firstLeadingBit(~vec3<i32>(u_input.a, -46433i, _wgslsmith_sub_i32(u_input.a, max(u_input.a, 44254i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    let var_1 = Struct_2(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), Struct_1(vec3<u32>(30709u, 21646u, 1u), true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2106f, -559f) - vec2<f32>(456f, 904f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-218f, 773f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, 1137f, -1460f) * vec4<f32>(1349f, 1129f, 627f, 157f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1489f, -1000f, -1299f, -866f))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)));
    let var_2 = var_1.b.a.xx;
    var var_3 = var_1.b;
    var_3 = Struct_1(max(reverseBits(firstTrailingBit(~vec3<u32>(1u, var_2.x, 1u))), var_1.b.a), var_1.b.e.x && !var_1.a, vec2<f32>(_wgslsmith_f_op_f32(func_3(var_1.b, vec3<f32>(_wgslsmith_f_op_f32(sign(1065f)), 226f, _wgslsmith_f_op_f32(floor(-1734f))))), -1486f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.x, 451f, var_3.c.x, 436f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-946f, 2416f, var_1.b.d.x, 213f), vec4<f32>(var_3.c.x, -558f, var_1.b.c.x, -634f)))), vec4<f32>(var_3.d.x, _wgslsmith_f_op_f32(min(var_3.d.x, 1861f)), -1248f, _wgslsmith_f_op_f32(max(407f, 108f))), !vec4<bool>(var_3.b, false, var_1.a, true))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.b.d), _wgslsmith_f_op_vec4_f32(step(var_1.b.d, var_1.b.d)), select(!vec4<bool>(var_1.b.b, var_1.a, var_3.b, var_1.a), !vec4<bool>(false, var_1.a, var_3.b, var_1.b.b), vec4<bool>(var_3.e.x, true, var_3.e.x, false))))), vec3<bool>(!(!any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1209f)) - -1076f) < 1000f, var_3.b));
    var var_4 = ~var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x);
}

