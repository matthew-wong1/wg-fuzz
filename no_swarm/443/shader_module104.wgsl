struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = !(any(!(!arg_0.b.yw)) && true);
    let var_1 = !all(select(vec2<bool>(true, all(arg_0.b)), vec2<bool>(true, var_0), all(arg_2.b) && !arg_2.d));
    let var_2 = -21639i ^ u_input.a;
    var var_3 = arg_2;
    var_3 = Struct_1(arg_0.a, vec4<bool>(true, arg_2.a > _wgslsmith_mod_u32(arg_0.a << (24676u % 32u), _wgslsmith_mod_u32(0u, 14714u)), true, !any(arg_2.c)), !select(vec2<bool>(true, true), select(select(var_3.c, vec2<bool>(true, false), vec2<bool>(true, arg_1)), arg_0.b.yz, var_3.a > var_3.a), select(arg_2.b.wx, !vec2<bool>(var_0, false), arg_0.c.x)), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-365f + -316f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-271f)) + arg_1.x));
    var_0 = -1000f;
    var var_1 = 4294967295u;
    var_0 = _wgslsmith_f_op_f32(trunc(-1643f));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_add_u32(arg_0.a, ~_wgslsmith_add_u32(arg_0.a, arg_0.a)), !arg_0.b, !arg_0.c, false), !arg_0.b.x, arg_0));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(arg_0, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -1059f, 1369f))))))))));
    let var_1 = !any(!select(!arg_0.b.zyz, vec3<bool>(arg_0.d, false, arg_1.x), arg_0.b.yyz));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f * _wgslsmith_f_op_f32(ceil(536f))))));
    var_2 = Struct_1(countOneBits(~(~var_2.a)), select(!vec4<bool>(false, all(vec4<bool>(true, true, arg_0.c.x, true)), !arg_0.c.x, true), arg_0.b, ~arg_0.a != 8282u), var_2.c, false);
    return 40418u >> ((_wgslsmith_add_u32(57885u, var_2.a) | var_2.a) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(arg_0.a, 22794u);
    var var_1 = arg_2;
    let var_2 = arg_0;
    var var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1096f - -385f), -1287f)), 1f)));
    return Struct_1(_wgslsmith_sub_u32(33946u >> (_wgslsmith_sub_u32(21056u, arg_0.a) % 32u), 0u) << (firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.a, 0u)), countOneBits(vec2<u32>(63369u, var_2.a)))) % 32u), var_3.b, select(arg_0.c, !select(!vec2<bool>(arg_0.c.x, var_2.c.x), arg_0.b.zw, vec2<bool>(var_2.d, true)), vec2<bool>(true, !(var_2.a != arg_0.a))), arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(4294967295u, !(!vec4<bool>(true, select(true, true, true), all(vec3<bool>(false, false, true)), false)), !vec2<bool>(true == any(vec3<bool>(false, true, true)), true), !all(vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-811f)), _wgslsmith_f_op_f32(f32(-1f) * -852f), -102f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-882f * 1097f), _wgslsmith_f_op_f32(min(-1000f, 130f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f * -491f)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x))));
    var var_2 = func_4(Struct_1(func_1(Struct_1(28563u, vec4<bool>(var_0.c.x, var_0.d, var_0.b.x, true), !var_0.c, true), !select(var_0.b, var_0.b, vec4<bool>(true, true, true, var_0.d))), vec4<bool>(!var_0.d, all(select(var_0.b.xzw, vec3<bool>(false, var_0.c.x, var_0.b.x), var_0.b.x)), all(select(var_0.b, var_0.b, vec4<bool>(false, false, false, var_0.d))), all(vec2<bool>(false, true))), vec2<bool>(_wgslsmith_f_op_f32(sign(-814f)) == var_1.x, true && var_0.c.x), var_0.b.x), ~u_input.a, 0i);
    var var_3 = Struct_1(~4294967295u, select(var_0.b, vec4<bool>(false | !var_2.d, true, max(u_input.a, 44260i) == u_input.a, -1534f >= _wgslsmith_div_f32(-850f, var_1.x)), select(select(select(vec4<bool>(var_2.d, var_2.c.x, var_0.d, var_0.d), var_0.b, var_2.c.x), var_0.b, vec4<bool>(false, var_2.b.x, false, false)), var_0.b, vec4<bool>(var_2.c.x | var_0.c.x, !var_2.b.x, var_0.c.x, true))), func_4(func_4(Struct_1(var_2.a | var_2.a, var_2.b, select(var_2.c, var_0.c, true), true), ~_wgslsmith_mult_i32(-1i, u_input.a), 0i), -_wgslsmith_div_i32(u_input.a, u_input.a), 39069i).b.wz, any(var_2.b));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1187f, var_1.x))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, var_1.x)));
    let var_4 = abs(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(~1i, _wgslsmith_mult_i32(-27129i, 11495i)), -46973i, (u_input.a & -1i) | reverseBits(2147483647i))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-719f, var_1.x)) - _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(select(var_1.x, 1528f, false | var_0.c.x)))));
    let var_6 = func_4(Struct_1(min(23034u, 48576u), vec4<bool>(true && (var_1.x >= var_1.x), any(func_4(Struct_1(1928u, var_0.b, var_3.b.xx, var_0.d), 1i, var_4).b.wzw), var_2.d, u_input.a <= _wgslsmith_mult_i32(-2051i, u_input.a)), !var_0.c, all(!vec3<bool>(false, var_3.d, var_2.d))), select(-1i, -18471i >> (var_3.a % 32u), any(!select(vec2<bool>(true, true), var_0.c, var_2.d))), reverseBits(~countOneBits(10415i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(35596u, var_3.a)), -abs(vec2<i32>(u_input.a, 1i)));
}

