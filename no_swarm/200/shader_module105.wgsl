struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = false;
    var var_1 = var_0;
    var var_2 = any(vec3<bool>(true, true, true));
    let var_3 = vec3<bool>(true, true, var_0);
    var var_4 = Struct_2(-1259f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f + _wgslsmith_f_op_f32(abs(246f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1438f + _wgslsmith_f_op_f32(f32(-1f) * -2587f)) - _wgslsmith_div_f32(878f, -148f))), ~(~_wgslsmith_div_i32(~(-2368i), 3596i >> (0u % 32u))), vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(577f)), 1f, _wgslsmith_f_op_f32(floor(-1000f))));
    return ~reverseBits(_wgslsmith_mod_i32(reverseBits(_wgslsmith_mod_i32(1i, var_4.c)), var_4.c));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = -_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, 15840i) | func_3(), countOneBits(abs(32027i))) & _wgslsmith_clamp_i32(-20697i, select(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-20314i, -2147483647i, -1i, -19243i), vec4<i32>(-2147483647i, 58064i, -41529i, 1i)), vec4<i32>(-19464i, -16764i, 1i, -17611i)), select(~(-66605i), ~(-18113i), all(vec4<bool>(false, false, true, true))), false), 2147483647i);
    let var_1 = vec3<i32>(-39539i, -(i32(-1i) * -1i), -7727i);
    var var_2 = Struct_1(arg_0.a);
    var_2 = arg_0;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(1028f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(811f))), -2147483647i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(673f, -1284f, -855f, -353f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-514f, -1000f, -211f, 1212f), vec4<f32>(-456f, 281f, -129f, -1341f), true))))))));
    return reverseBits(-1i >> (var_2.a % 32u));
}

fn func_1() -> Struct_2 {
    let var_0 = all(vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_add_i32(14434i, _wgslsmith_dot_vec3_i32(vec3<i32>(-760i, ~func_2(Struct_1(42339u), 21476u), ~reverseBits(-2147483647i)), abs(-vec3<i32>(-14105i, -27136i, -1i))));
    let var_2 = _wgslsmith_sub_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.c.x), vec2<u32>(25176u, 38026u))) & u_input.c.ww, vec2<u32>((1u | u_input.b.x) << (select(1u, u_input.a, var_0) % 32u), _wgslsmith_dot_vec4_u32(u_input.c, min(u_input.b, u_input.b)))) << (abs(u_input.c.zw) % vec2<u32>(32u));
    let var_3 = 0u;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-106f - 249f), _wgslsmith_f_op_f32(387f - -794f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(334f, _wgslsmith_f_op_f32(trunc(-617f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-173f + -1996f))) + 1f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f)), _wgslsmith_div_f32(973f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(376f - -534f))), _wgslsmith_f_op_f32(exp2(1f))));
    return Struct_2(447f, _wgslsmith_f_op_f32(floor(var_4.x)), 12937i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_4.x + var_4.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.x), var_4.x, var_1 >= var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.x)) + var_4.x), _wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(abs(1000f))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_1(~arg_1);
    var_0 = Struct_1(~(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(17989u, 4294967295u, var_0.a, 20155u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, u_input.c.x) | vec2<u32>(var_0.a, 63022u), vec2<u32>(var_0.a, 33887u))));
    var var_1 = Struct_1(max(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(1u, 24607u)), ~u_input.c.wy), arg_1));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(1050f - arg_3.a), arg_2.b))) + arg_3.d.xx), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.x + arg_3.d.x) - _wgslsmith_f_op_f32(floor(arg_0.a))), arg_2.b))));
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.c.yyz, vec3<u32>(4271u, 28720u, _wgslsmith_mult_u32(1u, var_1.a & u_input.b.x))));
    return 56930u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), 77549u | _wgslsmith_dot_vec2_u32(vec2<u32>(select(u_input.b.x, 1u, false), 4743u), countOneBits(abs(vec2<u32>(42180u, u_input.c.x)))), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(147f, -878f) - _wgslsmith_f_op_f32(536f + 1531f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(215f)), _wgslsmith_f_op_f32(f32(-1f) * -287f))))), -562f, -(func_2(Struct_1(0u), 4294967295u) << (_wgslsmith_dot_vec3_u32(u_input.c.zxx, u_input.b.wwx) % 32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(370f, 677f, -2144f, 1466f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-371f, -1534f, -1192f, 1090f))))))), Struct_2(869f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1382f)))), -(~32892i >> (_wgslsmith_sub_u32(u_input.c.x, 4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(366f, -123f, 879f, -1537f), vec4<f32>(-132f, -928f, -147f, -232f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1146f, 1000f, -1722f, 270f)))))));
    var var_1 = ~select(firstTrailingBit(reverseBits(-37778i)), -func_1().c, true);
    var_1 = -(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 18852i, 1354i), ~vec3<i32>(0i, -51272i, 20662i)) ^ -36214i) << (var_0 % 32u);
    let var_2 = ~(-18964i);
    var var_3 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), select(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), -1258f >= _wgslsmith_f_op_f32(sign(-1000f))), any(vec3<bool>(true, true, true)));
    var_1 = _wgslsmith_clamp_i32(var_2, abs(-42826i), abs(-1i));
    let var_4 = Struct_1(~select(_wgslsmith_add_u32(4294967295u >> (var_0 % 32u), var_0), min(var_0, 5438u), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_2, var_2, var_2, var_2), vec4<i32>(-1i, 10358i, 14060i, 0i))), (var_2 >> (~var_4.a % 32u)) & func_2(Struct_1(var_4.a), 18957u), _wgslsmith_dot_vec4_i32(~vec4<i32>(20249i, -6231i, 2147483647i, var_2), -vec4<i32>(var_2, var_2, var_2, var_2)) >> (24918u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-164f, 921f, 486f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1320f, 664f, -436f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-2409f, -541f, -838f), vec3<f32>(-1656f, -482f, 1608f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-196f, -1000f, -1000f), vec3<f32>(170f, 402f, 537f))))), vec4<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(16255u, 1u, 96598u), ~u_input.b.xzw), ~firstTrailingBit(var_4.a), ~(~(~21508u)), 87136u), var_0);
}

