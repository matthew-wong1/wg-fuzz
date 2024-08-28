struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-931f, 1177f)))))), ~max(-3229i, -2147483647i), !(-636f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-698f, -589f, arg_2.x)))), vec4<bool>(all(vec3<bool>(arg_3.x, false, true)) == (-u_input.a.x >= (0i >> (arg_1 % 32u))), arg_2.x, false, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-365f, 1000f), -1000f, _wgslsmith_f_op_f32(751f + -121f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, 1000f, 658f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(355f, -1268f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = -_wgslsmith_mod_i32(54132i, var_0.b);
    var_1 = (var_0.b ^ _wgslsmith_mod_i32(-var_0.b, 0i)) >> (~arg_0.x % 32u);
    let var_2 = u_input.b.x << (37752u % 32u);
    let var_3 = _wgslsmith_add_u32(~(min(min(arg_0.x, 4294967295u), max(arg_0.x, 1u)) & _wgslsmith_clamp_u32(arg_1, ~35204u, 34333u)), abs(arg_1));
    return 1u;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(965f + 214f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-195f)) - _wgslsmith_div_f32(1074f, -317f)))), _wgslsmith_f_op_f32(select(-1566f, 612f, false)))));
    var var_1 = vec3<bool>(all(vec3<bool>(any(vec2<bool>(true, false)), true, true)) != false, !(~u_input.a.x <= (u_input.a.x << (func_3(vec4<u32>(1u, 45893u, 57820u, 0u), 48617u, vec3<bool>(false, true, true), vec4<bool>(false, false, true, true)) % 32u))), !any(vec4<bool>(false, true, all(vec2<bool>(false, false)), true)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1126f - -1207f)))), max(u_input.a.x, -1i), true, !select(select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x)), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true), var_1.x), select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(false, false, false, true), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1118f, _wgslsmith_f_op_f32(-351f + -392f), _wgslsmith_f_op_f32(abs(429f))))), select(!vec4<bool>(!var_1.x, !var_1.x, true, var_1.x), select(!(!vec4<bool>(true, var_1.x, true, var_1.x)), vec4<bool>(var_1.x, true, true, false), vec4<bool>(true, var_1.x, any(var_1.zz), true)), vec4<bool>(true, all(var_1.yz), var_1.x, firstTrailingBit(4294967295u) <= _wgslsmith_div_u32(1u, 1u))));
    var var_3 = Struct_1(var_2.a.e.x, _wgslsmith_mult_i32(-24102i, firstTrailingBit(u_input.b.x)), true, vec4<bool>(true, true, var_1.x, !(~var_2.a.b >= _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -28155i, -47839i, 1i), vec4<i32>(var_2.a.b, -17451i, 39494i, u_input.a.x)))), vec3<f32>(var_2.a.a, 167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_4 = vec4<f32>(1541f, _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e.x - -204f))) - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1440f));
    return Struct_1(var_4.x, u_input.b.x, var_3.d.x, !(!(!var_2.a.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1104f, -345f, _wgslsmith_f_op_f32(f32(-1f) * -631f)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> f32 {
    var var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_f_op_f32(round(-1621f)), 17530i, false, vec4<bool>(!(any(arg_0.b) || arg_0.a.d.x), true, true, arg_1.a.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(func_2().e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a.e, arg_0.a.e)), func_2().d.zwz)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(-1085f, var_0.e.x, var_0.d.x)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(floor(222f)))))));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.a.e.x);
    return _wgslsmith_f_op_f32(floor(arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(-1142f, 2147483647i, false, vec4<bool>(true, false, true, false), vec3<f32>(-380f, -661f, 880f)), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(-721f, 23885i, true, vec4<bool>(true, false, false, false), vec3<f32>(222f, 1058f, -746f)), vec4<bool>(false, false, true, false)), 1000f)), _wgslsmith_f_op_f32(-1175f + -1496f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1681f, 633f, true)))) * 561f) * _wgslsmith_div_f32(519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1565f)))));
    let var_1 = 360i;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + func_2().e.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-309f, -573f));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-881f, 299f, true)))), -(var_1 ^ -var_1), any(!func_2().d.zxy), func_2().d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1085f, -1104f, 498f) * vec3<f32>(-107f, -264f, 170f)), vec3<f32>(1784f, 385f, -1000f))))), vec4<bool>(true, false, reverseBits(60605i) != (2147483647i | ~u_input.b.x), false));
    var_2 = var_3.a.e.x;
    var var_4 = false;
    var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_3.a.a * -1982f), _wgslsmith_div_f32(410f, var_3.a.a), _wgslsmith_f_op_f32(max(215f, var_3.a.e.x)), _wgslsmith_f_op_f32(var_3.a.a - var_3.a.e.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a.e.x - 298f), 221f, false)) - 1000f))));
}

