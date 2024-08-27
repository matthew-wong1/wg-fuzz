struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<i32>(0i, 8642i, i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(15486i, i32(-2147483648), -49897i, -1i)), Struct_1(vec4<i32>(-6791i, 0i, -1i, 1i)), Struct_1(vec4<i32>(28170i, i32(-2147483648), 1588i, 1i)), Struct_1(vec4<i32>(33131i, -66477i, i32(-2147483648), 1i)), Struct_1(vec4<i32>(0i, -16748i, 13927i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, 223i, -2549i, -33668i)), Struct_1(vec4<i32>(8148i, 1i, -43191i, 73005i)), Struct_1(vec4<i32>(0i, 1i, -24388i, i32(-2147483648))), Struct_1(vec4<i32>(4047i, 0i, 1i, -30065i)), Struct_1(vec4<i32>(20349i, 2147483647i, -1i, 42315i)), Struct_1(vec4<i32>(3869i, -14002i, -1i, 1i)), Struct_1(vec4<i32>(1i, 0i, -1i, 19909i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 1i, 2147483647i)), Struct_1(vec4<i32>(99252i, 2147483647i, 2147483647i, -46215i)), Struct_1(vec4<i32>(-45725i, -1i, 0i, 4175i)), Struct_1(vec4<i32>(60625i, -58333i, 0i, 1i)), Struct_1(vec4<i32>(0i, -5820i, 26511i, 2147483647i)), Struct_1(vec4<i32>(35447i, 23632i, 0i, 1i)), Struct_1(vec4<i32>(1i, 0i, -17654i, 2147483647i)), Struct_1(vec4<i32>(-22418i, 61602i, -62372i, 1i)));

var<private> global1: bool = true;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0.zzw - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, -603f)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = Struct_1(select(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -39864i, 1i), vec4<i32>(5137i, -28934i, u_input.a, -1360i)), vec4<i32>(i32(-1i) * -56486i, min(u_input.a, 1i), reverseBits(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-25258i, u_input.a))), 521u <= _wgslsmith_div_u32(u_input.b, u_input.b)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(98541u, 4294967295u, u_input.b, 11258u) << (abs(vec4<u32>(18696u, u_input.b, 4294967295u, 0u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), u_input.b, _wgslsmith_div_u32(u_input.b, u_input.b), u_input.b)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-528f, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-1099f * var_0.x)), var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1127f))))) - vec4<f32>(arg_0.x, -1260f, 689f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f), arg_0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, var_0.x, var_0.x, var_0.x))) - arg_0)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 21u)];
    var var_1 = vec3<bool>(false, true, true);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1680f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) * _wgslsmith_f_op_f32(-862f - arg_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-1000f, -666f, arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, arg_1.x, 438f, -1927f)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_1.x, 1000f, 872f))))));
    let var_3 = var_1.zx;
    var var_4 = 1393f;
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = func_2(arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1115f, 105f, 1000f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, 1115f, 1176f))) + vec3<f32>(_wgslsmith_f_op_f32(279f + 958f), _wgslsmith_f_op_f32(max(-1166f, -1054f)), -396f))));
    var_0 = arg_2;
    var_0 = func_2(func_2(Struct_1(func_2(Struct_1(vec4<i32>(u_input.a, -2147483647i, -2147483647i, u_input.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-588f, 440f, 526f), vec3<f32>(-870f, -974f, 664f)))).a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(659f)) + -105f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2347f) + _wgslsmith_f_op_f32(f32(-1f) * -146f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1020f, 1239f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 2091f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1152f)))), _wgslsmith_f_op_f32(max(-185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1622f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-533f - _wgslsmith_f_op_f32(f32(-1f) * -1817f)), -1000f, true))));
    global1 = any(select(!vec4<bool>(all(vec3<bool>(false, true, true)), true, true, all(vec2<bool>(false, true))), vec4<bool>(false, any(vec4<bool>(true, true, true, true)), true, true && select(true, true, true)), !any(vec3<bool>(false, true, true))));
    let var_1 = global0[_wgslsmith_index_u32(1u, 21u)];
    return -2075i;
}

fn func_1() -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, ~45479u | u_input.b), 21u)];
    let var_1 = true;
    let var_2 = vec3<bool>(var_1, all(vec2<bool>(!any(vec2<bool>(false, var_1)), all(vec2<bool>(var_1, true)))), var_0.a.x > reverseBits(func_4(~u_input.b, countOneBits(u_input.b), func_2(global0[_wgslsmith_index_u32(u_input.b, 21u)], vec3<f32>(-1764f, -1414f, 289f)))));
    var var_3 = vec4<bool>(!(!var_1) & any(var_2), !any(var_2), select(var_2.x, all(select(vec2<bool>(true, true), var_2.zz, var_2.x | false)), all(!vec4<bool>(var_1, false, false, var_2.x))), true);
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1758f, -122f, 980f, -688f), vec4<f32>(-1365f, -1000f, -445f, -680f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-962f + 334f), 1f, _wgslsmith_div_f32(1274f, 248f), _wgslsmith_div_f32(1606f, -2182f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(918f, -1158f, -230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1898f + -487f) * -1920f)))));
    return StorageBuffer(var_4.xyx, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x)))), vec4<f32>(var_4.x, _wgslsmith_f_op_f32(max(var_4.x, 359f)), _wgslsmith_f_op_f32(max(var_4.x, 701f)), _wgslsmith_f_op_f32(select(1459f, var_4.x, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1011f, 419f, -180f, 1716f) - vec4<f32>(-287f, var_4.x, 166f, var_4.x)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.x, -430f, -504f, var_4.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1524f, -271f, false & (u_input.a < 2147483647i))), -1747f)));
    let var_1 = false;
    let x = u_input.a;
    s_output = func_1();
}

