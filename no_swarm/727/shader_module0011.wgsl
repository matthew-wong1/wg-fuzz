struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> vec3<u32> {
    var var_0 = 8749u;
    let var_1 = ~arg_1.b.zz >> ((arg_1.b.yy ^ (firstLeadingBit(arg_1.b.zy) << (~reverseBits(arg_1.b.xz) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1.b.x, 1u), ~select(var_1.x, ~(4294967295u | var_1.x), !arg_1.c));
    let var_2 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-788f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1316f)), _wgslsmith_div_f32(-386f, 787f))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 706f))))));
    var var_3 = -arg_1.e.x;
    return reverseBits(vec3<u32>(var_1.x, _wgslsmith_mult_u32(var_1.x, _wgslsmith_sub_u32(var_1.x, ~arg_1.b.x)), abs(~4294967295u)));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    return vec3<u32>(firstLeadingBit(arg_0.b.x), _wgslsmith_mod_u32(arg_0.b.x, 9706u), ~(~(1u >> (arg_0.b.x % 32u)))) << (max(func_3(true | arg_0.d.x, arg_0, !all(vec2<bool>(true, false)), arg_0.e.xw), vec3<u32>(0u, arg_0.b.x, 1u)) % vec3<u32>(32u));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(0i >= u_input.a, select(vec3<u32>(_wgslsmith_mult_u32(7642u, 1u), firstTrailingBit(1u), ~0u), vec3<u32>(1u, 1u, 1u), true) ^ ~func_2(Struct_1(true, vec3<u32>(9585u, 4930u, 57221u), true, vec3<bool>(false, false, true), vec4<i32>(u_input.a, -1i, u_input.a, u_input.b))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), vec3<bool>(false, !select(false, u_input.a > 1i, true), !all(vec4<bool>(false, true, false, false)) == true), ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 1i, -6894i, -8497i) | vec4<i32>(-25843i, u_input.b, -13193i, u_input.a), min(vec4<i32>(14582i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(605f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1142f), _wgslsmith_f_op_f32(-1760f * 282f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-824f, -352f, -1386f, 788f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, -374f, 1423f, -555f)))))));
    let var_2 = -(i32(-1i) * -29736i);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, var_1.x, var_1.x, 747f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1107f, var_1.x, var_1.x) * vec4<f32>(502f, var_1.x, -1330f, var_1.x))) - vec4<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, -1078f), _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-676f, -255f, -824f, -1493f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 204f, var_1.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1379f, 1964f, 434f, -1545f))), !vec4<bool>(var_0.a, false, var_0.c, var_0.d.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1000f, 518f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, -1514f, var_1.x)))))));
    var var_3 = var_0.d;
    return Struct_1(var_0.a, var_0.b, false, !var_0.d, vec4<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(abs(8230i), countOneBits(var_2))), i32(-1i) * -50843i, -u_input.b, min(~58689i, var_2) << (_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, var_0.b.x), vec4<u32>(4294967295u, 81432u, var_0.b.x, var_0.b.x))) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = !vec4<bool>(true, !any(vec2<bool>(false, true)), abs(var_0.e.x) < u_input.b, var_0.c);
    var_1 = vec4<bool>(18558u >= var_0.b.x, var_0.c, 0i >= u_input.a, !(var_1.x == var_0.a));
    var var_2 = select(select(vec4<bool>(true, false, var_0.a, !(!var_1.x)), !(!(!vec4<bool>(var_1.x, var_1.x, var_0.c, false))), vec4<bool>(59460u >= (var_0.b.x | var_0.b.x), select(any(var_1.yz), var_0.a, true), !(false | var_1.x), false | var_1.x)), vec4<bool>(select(any(vec4<bool>(true, var_1.x, true, var_0.a)) && true, true, var_1.x), !var_0.d.x, var_1.x, all(select(select(vec3<bool>(true, false, var_1.x), var_1.wxy, vec3<bool>(var_1.x, var_0.d.x, true)), !var_1.wxz, vec3<bool>(var_0.c, false, false)))), !var_1.x);
    var_1 = !vec4<bool>(select(true, var_1.x, func_1().c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(154f)) * -946f) != 713f, var_0.d.x, !(!(!var_2.x)));
    var_1 = select(vec4<bool>(any(vec3<bool>(true, !var_1.x, !var_0.a)), any(select(select(var_2.xwz, var_0.d, false), select(vec3<bool>(true, var_2.x, var_0.d.x), var_0.d, vec3<bool>(false, true, false)), var_2.yxz)), true, all(select(select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, var_2.x), false), vec4<bool>(true, true, true, var_0.d.x), vec4<bool>(var_1.x, var_0.c, true, var_1.x)))), vec4<bool>(all(var_0.d.xy), false, all(vec2<bool>(true, true)), !(!(var_0.e.x <= 26720i))), vec4<bool>(false, true, false, all(!(!vec3<bool>(var_2.x, false, var_1.x)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-740f - _wgslsmith_f_op_f32(select(-830f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(866f * -858f), 558f)), false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(2115f - 478f)) * _wgslsmith_f_op_f32(step(-681f, -1110f)))));
    let var_4 = _wgslsmith_f_op_f32(select(-1665f, 579f, false));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, -(~(-42180i)));
}

