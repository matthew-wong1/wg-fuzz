struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_1(select(!vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, true), vec4<bool>(false, all(vec4<bool>(true, true, true, true)), !(u_input.a < u_input.a), true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1066f, -2041f, -1519f, -908f))), vec4<f32>(107f, 2149f, 1193f, -439f))), vec4<f32>(163f, _wgslsmith_f_op_f32(-1291f + 745f), -265f, -1065f)))), 1392f, vec2<bool>(true, true));
    var var_1 = Struct_1(select(var_0.a, var_0.a, var_0.d.x | true), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1291f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-462f, _wgslsmith_f_op_f32(-var_0.c))))), select(!(!select(vec2<bool>(var_0.a.x, true), var_0.d, vec2<bool>(var_0.a.x, true))), !var_0.a.xw, false & var_0.a.x));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, -2157f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.x, var_1.c), var_0.b.x), _wgslsmith_f_op_f32(-970f * _wgslsmith_f_op_f32(round(var_0.c))), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-235f, var_0.b.x, -1198f), vec3<f32>(var_0.c, var_0.b.x, var_0.b.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.zwx) - var_0.b.wxw))));
    let var_3 = ~(~(~(~select(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a), var_1.d.x))));
    let var_4 = Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1500f), _wgslsmith_f_op_f32(var_0.c + var_1.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -128f, var_2.x, var_2.x), var_0.b)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1458f))), var_1.d);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.x) * _wgslsmith_f_op_f32(var_2.x * var_4.b.x))), 1273f, -1000f, -935f));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(!(!(!(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 267f) * -197f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1321f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -682f)), 1082f)), _wgslsmith_f_op_f32(f32(-1f) * -1215f), select(vec2<bool>(true, true), vec2<bool>(false, !arg_1), select(vec2<bool>(!arg_1, any(vec4<bool>(true, arg_1, arg_1, arg_1))), vec2<bool>(true, any(vec3<bool>(true, arg_1, arg_1))), select(vec2<bool>(true, true), select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), vec2<bool>(false, false)), false))));
    var_0 = Struct_1(select(!var_0.a, vec4<bool>(var_0.a.x || (arg_0.x >= arg_0.x), all(vec2<bool>(true, true)), !all(vec2<bool>(var_0.a.x, true)), any(vec4<bool>(var_0.d.x, var_0.a.x, false, false))), !(arg_0.x > -27449i) & any(select(vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.a.wyx, true))), vec4<f32>(-1012f, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-var_0.b.x)) - var_0.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-369f, _wgslsmith_f_op_f32(-var_0.b.x)))))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f) + var_0.b.x))), !(!vec2<bool>(true, arg_1)));
    var var_1 = var_0.b.x;
    var_0 = Struct_1(!(!select(select(vec4<bool>(arg_1, var_0.d.x, true, arg_1), vec4<bool>(arg_1, true, true, true), vec4<bool>(var_0.a.x, var_0.d.x, true, arg_1)), select(var_0.a, var_0.a, vec4<bool>(arg_1, arg_1, false, true)), select(var_0.a, vec4<bool>(false, true, false, true), vec4<bool>(var_0.d.x, var_0.a.x, true, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * _wgslsmith_f_op_vec4_f32(min(var_0.b, var_0.b))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + 1547f), _wgslsmith_f_op_f32(-var_0.c), 705f, 355f), vec4<f32>(-1264f, _wgslsmith_f_op_f32(-var_0.b.x), var_0.c, 532f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, 1214f), _wgslsmith_f_op_f32(-var_0.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.c, 839f, arg_1)), -1003f)))), var_0.d);
    var_0 = Struct_1(select(!select(var_0.a, select(var_0.a, var_0.a, true), true), !(!(!vec4<bool>(var_0.d.x, true, var_0.a.x, false))), false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.c - var_0.c), var_0.c, var_0.c, _wgslsmith_div_f32(var_0.c, var_0.c))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1546f), _wgslsmith_f_op_f32(-658f + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - 319f), _wgslsmith_f_op_f32(ceil(var_0.b.x))), 1054f)), var_0.c, vec2<bool>(arg_1, all(vec2<bool>(var_0.a.x, false))));
    return Struct_1(!select(select(vec4<bool>(true, arg_1, false, true), var_0.a, arg_1), vec4<bool>(select(true, true, true), var_0.d.x, !arg_1, arg_1), arg_1), var_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-326f, var_0.c) - _wgslsmith_f_op_f32(var_0.c + -691f)))))), var_0.d);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = true;
    var var_1 = func_4(func_2(~arg_0.xy, !select(var_0, var_0, var_0) && true), false);
    var var_2 = ~countOneBits(~(~vec3<u32>(arg_1, 4294967295u, arg_1)));
    var_2 = ~abs(~vec3<u32>(0u >> (var_2.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.a), vec3<u32>(1u, var_2.x, 56210u)), ~u_input.a));
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(func_4(Struct_1(vec4<bool>(true, var_0, var_0, var_0), vec4<f32>(var_1.b.x, 2168f, var_1.c, var_1.b.x), -1185f, vec2<bool>(var_1.a.x, var_1.d.x)), var_0).c, var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) - var_1.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.b.x)), _wgslsmith_f_op_f32(floor(var_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-486f)), var_1.c)), vec2<bool>(!var_0, !var_0));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_1(reverseBits(select(_wgslsmith_div_vec3_i32(vec3<i32>(5925i, 48939i, 16131i), vec3<i32>(-19874i, -2147483647i, 140i)), vec3<i32>(1i, 1i, 1i), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), ~u_input.b.x & u_input.b.x), _wgslsmith_mod_i32(-1i << (firstTrailingBit(~u_input.b.x) % 32u), _wgslsmith_div_i32(-max(27451i, -7203i), 9252i)), ~(-_wgslsmith_div_i32(~7269i, -2147483647i)));
    var_0 = -_wgslsmith_add_vec3_i32(-select(vec3<i32>(1i, -17599i, 1i), vec3<i32>(17250i, 2147483647i, 1i), func_4(Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(195f, 193f, 1031f, 926f), 191f, vec2<bool>(false, true)), true).a.zyw), _wgslsmith_div_vec3_i32(vec3<i32>(-22109i | var_0.x, var_0.x, -1i), -reverseBits(vec3<i32>(var_0.x, var_0.x, var_0.x))));
    var var_1 = vec4<bool>(~(~firstTrailingBit(u_input.a)) == 32233u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-580f, -1460f)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1f, -1986f)), _wgslsmith_f_op_f32(-1f)), false, all(!(!func_4(Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(417f, -172f, -1266f, -1047f), -928f, vec2<bool>(false, true)), false).a.wxz)));
    var var_2 = vec4<bool>(true, !(u_input.a <= ~(~0u)), !((var_1.x || true) != true), var_1.x);
    let var_3 = _wgslsmith_mult_u32(max(firstTrailingBit(1u), 54250u), 64347u) ^ 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)), _wgslsmith_f_op_f32(ceil(func_4(func_2(var_0.xx, var_1.x), true || var_1.x).b.x)), 1181f), var_0.yx, ~firstTrailingBit(~(~vec3<u32>(4294967295u, 18070u, 51461u))), ~(~u_input.b), max(u_input.a, 4294967295u));
}

