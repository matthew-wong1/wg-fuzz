struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(-1846f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-573f, _wgslsmith_f_op_f32(select(-2233f, -1410f, false)), true)) * _wgslsmith_f_op_f32(254f + _wgslsmith_f_op_f32(sign(-431f)))), -1262f, !((u_input.a.x < 0i) | false)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * vec3<f32>(var_0, -1000f, -1000f))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-413f)) + _wgslsmith_f_op_f32(abs(1061f))), var_0)), ~_wgslsmith_mod_i32(1i, -1i << (u_input.b % 32u)), min(~(-10535i), 14124i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, var_0, -1000f, 1000f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1245f, -866f, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1000f, 892f, -1285f) + vec4<f32>(var_0, var_0, var_0, -931f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1145f, 845f, -477f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1553f, var_0, 995f, var_0), vec4<f32>(var_0, var_0, var_0, -1190f), true))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1015f, -397f, var_0, 117f), vec4<f32>(var_0, -1811f, var_0, var_0), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) * vec4<f32>(-1526f, 903f, 167f, var_0)), vec4<bool>(false, true, true, true))))));
    let var_2 = !(~u_input.b <= 1u);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(ceil(var_1.d.x)))))));
    var var_4 = -1225f;
    return var_1.d.x;
}

fn func_2() -> f32 {
    let var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(-1f) < _wgslsmith_f_op_f32(func_3()), !all(select(vec2<bool>(true, false), vec2<bool>(false, false), true))), vec2<bool>(!select(false, true, true), false), select(vec2<bool>(true, !(u_input.b != u_input.b)), !vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, ~u_input.b > 4294967295u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-684f, 596f, 1000f))))))), _wgslsmith_sub_i32(-22387i, -36984i), -20437i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-503f))))), -284f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1879f + 758f), _wgslsmith_f_op_f32(-720f + -1163f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1090f)))))));
    var var_2 = var_0.x;
    var var_3 = u_input.a.x;
    var var_4 = -(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(~u_input.a.zy, min(u_input.a.xx, vec2<i32>(u_input.a.x, 1i))), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_1.c), -u_input.a.yz)) << (~(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(-687f, 722f)), _wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(ceil(1305f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1047f, -1157f, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x)) + vec3<f32>(var_0.x, var_0.x, -1268f)))), -2147483647i, -(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, 1i), 1i) ^ ~(-u_input.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -1025f)), _wgslsmith_f_op_f32(ceil(var_0.x)), -1108f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1362f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(1043f)), _wgslsmith_f_op_f32(sign(var_0.x)))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(var_1.d.xww, _wgslsmith_f_op_vec3_f32(var_1.d.xzz * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 1000f, _wgslsmith_f_op_f32(abs(var_1.d.x)))))), _wgslsmith_sub_i32(-78867i, countOneBits(firstTrailingBit(u_input.a.x))) >> (select(u_input.b << (~4294967295u % 32u), ~(~u_input.b), select(true, true, true) | true) % 32u), var_1.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.d, vec4<f32>(var_0.x, var_0.x, 1302f, var_1.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1249f, var_1.a.x, var_0.x, var_0.x))), _wgslsmith_div_vec4_f32(var_1.d, _wgslsmith_f_op_vec4_f32(-var_1.d)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(677f, var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -883f)), 258f, _wgslsmith_f_op_f32(func_2())))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d.zzz - var_1.a))), _wgslsmith_add_i32(u_input.a.x, var_1.c), max(_wgslsmith_sub_i32(var_1.b, u_input.a.x), var_1.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.x, -683f, var_0.x, 1160f), vec4<f32>(-196f, -699f, 1467f, var_1.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-556f - 1321f))), _wgslsmith_f_op_f32(var_1.d.x - var_0.x), var_1.d.x, _wgslsmith_f_op_f32(1000f + var_1.a.x)), false)));
    var_1 = Struct_1(var_2.d.zww, u_input.a.x, i32(-1i) * -var_2.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_1.d - vec4<f32>(var_0.x, -353f, _wgslsmith_f_op_f32(ceil(var_2.d.x)), _wgslsmith_f_op_f32(-var_1.d.x))))));
    return StorageBuffer(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), max(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b))), vec3<u32>(30479u << (u_input.b % 32u), _wgslsmith_div_u32(u_input.b, u_input.b), u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(false | any(vec4<bool>(true, false, true, false)), ~u_input.b <= ~u_input.b, true)), true);
    let x = u_input.a;
    s_output = func_1();
}

