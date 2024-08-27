struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)), false, false);
    var_0 = vec3<bool>(select(var_0.x, ~min(1u, 17973u) > u_input.a.x, true), false, all(vec4<bool>(true, !select(false, var_0.x, var_0.x), var_0.x, arg_0.x >= -706f)));
    var_0 = select(vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-11864i, 15529i, -2147483647i) >> (vec3<u32>(0u, 10144u, arg_1.x) % vec3<u32>(32u))) > 1i, !var_0.x, !var_0.x), vec3<bool>(true, any(vec4<bool>(true, true, false, var_0.x)), !(_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(floor(arg_0.x)))), !select(select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x)), select(vec3<bool>(false, false, true), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), true), select(!vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(false, var_0.x, false), all(vec4<bool>(false, var_0.x, true, var_0.x))), all(vec3<bool>(true, var_0.x, true))));
    let var_1 = Struct_3(abs(-(~(~vec2<i32>(64468i, 2147483647i)))));
    var_0 = select(vec3<bool>(!(0i < (-2147483647i >> (u_input.a.x % 32u))), var_0.x, !var_0.x), vec3<bool>(var_0.x, true, select(false, false, !(!var_0.x))), select(vec3<bool>(all(select(var_0.xy, vec2<bool>(false, var_0.x), var_0.xx)), any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x))), var_0.x), vec3<bool>(true, true, true), vec3<bool>(all(!vec4<bool>(false, var_0.x, var_0.x, false)), _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_div_f32(816f, arg_0.x), true)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1404f)))))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-410f, -667f, -731f, 655f))))), vec2<u32>(~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), 119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1874f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-118f, 1367f, 1225f, -1127f), vec4<f32>(-508f, -1995f, -1000f, -949f))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, 1139f, 726f, -1415f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-416f, -632f, -1229f, 889f) + vec4<f32>(777f, -1517f, 1057f, 914f))), vec4<f32>(1715f, -427f, 916f, -948f)))));
    var var_1 = true;
    var_1 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1101f + _wgslsmith_f_op_f32(func_3(vec4<f32>(var_0.x, -1342f, 1102f, var_0.x), vec2<u32>(u_input.a.x, u_input.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -792f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.wzx * var_0.xwy), _wgslsmith_f_op_vec3_f32(-var_0.yzx)), _wgslsmith_div_vec3_f32(var_0.wxz, _wgslsmith_div_vec3_f32(var_0.zxy, vec3<f32>(var_0.x, 2515f, var_0.x))), !any(vec4<bool>(true, false, false, true)))) * _wgslsmith_f_op_vec3_f32(var_0.xxz * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.xww * var_0.wzy))))));
    var var_3 = u_input.b.x;
    return var_0.x;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = -min(firstTrailingBit(-_wgslsmith_div_i32(-1i, -1i)), ~firstLeadingBit(~1i));
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-arg_0)), -427f, 766f)));
    let var_3 = select(select(select(vec4<bool>(true, arg_1, arg_2.a.x, true), !select(vec4<bool>(false, false, arg_2.a.x, arg_1), vec4<bool>(arg_1, arg_1, arg_2.a.x, true), vec4<bool>(true, var_1, false, false)), vec4<bool>(true, !var_1, any(arg_2.a.yy), false)), vec4<bool>(arg_1, false != arg_1, false, !arg_2.a.x && !arg_1), select(vec4<bool>(false, u_input.b.x <= 0u, arg_1, all(vec4<bool>(false, arg_1, true, arg_2.a.x))), vec4<bool>(any(vec2<bool>(var_1, true)), true && arg_1, any(arg_2.a.zx), all(vec3<bool>(false, false, var_1))), true)), vec4<bool>(true, true, !arg_2.a.x, arg_1), true);
    let var_4 = 1989f;
    return var_2.a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(178f, _wgslsmith_f_op_f32(max(-672f, 907f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(948f, -1998f)) * _wgslsmith_f_op_vec2_f32(func_1(1930f, false, Struct_2(vec3<bool>(true, true, true)))))))));
    var var_1 = !any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))));
    var var_2 = ~u_input.a;
    var var_3 = Struct_3(vec2<i32>(1i, firstTrailingBit(min(-35215i, abs(48195i)))));
    var var_4 = -244f;
    var_2 = u_input.a;
    var_3 = Struct_3(vec2<i32>(firstTrailingBit(var_3.a.x), -2147483647i));
    let var_5 = 4294967295u;
    let var_6 = Struct_4(Struct_3(var_3.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(round(1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wwx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_6.b, -126f) + _wgslsmith_f_op_f32(221f + 526f)))), 38522i, vec3<i32>(-1i, (-var_3.a.x & _wgslsmith_mult_i32(33646i, var_6.a.a.x)) << ((firstTrailingBit(55522u) >> (firstTrailingBit(var_2.x) % 32u)) % 32u), firstLeadingBit(var_3.a.x)));
}

