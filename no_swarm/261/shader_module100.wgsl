struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -409f, 631f))))), Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a, 0i), -39338i), vec2<i32>(-17646i, -1i)), vec4<i32>(u_input.a, ~(-34168i) | (u_input.a >> (u_input.d % 32u)), _wgslsmith_add_i32(35468i | u_input.a, -u_input.a), 0i), false != all(vec2<bool>(true, true))), select(all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true))), all(vec3<bool>(any(vec3<bool>(true, false, true)), true, select(false, true, false))), true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, 169f, -553f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.a.a.zx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1413f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, 704f), var_0.a.a.yy)))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x);
    var var_3 = max(~(~abs(vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.e))), vec4<u32>(0u, select(u_input.b.x, 4294967295u, all(!vec2<bool>(true, var_0.b.c))), ~(~(~21708u)), ~u_input.e));
    return _wgslsmith_f_op_f32(step(-2459f, _wgslsmith_f_op_f32(var_0.a.a.x * var_2.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), 557f, arg_1.a.a.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.a.a)))));
    let var_1 = vec3<i32>(arg_0.x, 1i, -u_input.a);
    let var_2 = -394f;
    var_0 = arg_1.a;
    var var_3 = !select(vec3<bool>(any(select(vec3<bool>(false, false, arg_1.c), vec3<bool>(false, arg_1.c, arg_1.c), vec3<bool>(arg_1.c, arg_1.c, true))), arg_1.b.c, -248f <= _wgslsmith_f_op_f32(-var_0.a.x)), vec3<bool>(arg_1.c, any(select(vec2<bool>(true, false), vec2<bool>(arg_1.c, true), vec2<bool>(true, arg_1.b.c))), false), !select(select(vec3<bool>(false, arg_1.c, arg_1.b.c), vec3<bool>(arg_1.b.c, true, arg_1.b.c), arg_1.c), !vec3<bool>(arg_1.b.c, arg_1.c, arg_1.b.c), !vec3<bool>(true, true, arg_1.c)));
    return arg_1.a;
}

fn func_1() -> f32 {
    var var_0 = u_input.b;
    var_0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(485f, 895f), vec2<f32>(-1041f, 249f), true))), vec2<f32>(_wgslsmith_div_f32(-1232f, 317f), _wgslsmith_f_op_f32(1277f - -1017f)), vec2<bool>(true, false))))));
    let var_2 = Struct_2(~_wgslsmith_add_vec2_i32(-(~vec2<i32>(-23353i, 33854i)), ~firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), ~vec4<i32>(-1i ^ u_input.a, u_input.a, -37059i, u_input.a), !select(true, false, true));
    var var_3 = Struct_3(func_2(vec4<i32>(-1i) * -(vec4<i32>(var_2.a.x, var_2.a.x, 2147483647i, -28326i) | var_2.b), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(370f, var_1.x, var_1.x), vec3<bool>(true, false, false)))), Struct_2(vec2<i32>(var_2.b.x, var_2.b.x), var_2.b, !var_2.c), !var_2.c), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 2208f))))), Struct_2(vec2<i32>(u_input.a, 42001i), firstLeadingBit(var_2.b), var_2.c), !var_2.c || true);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.x, -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(385f + _wgslsmith_f_op_f32(func_1()));
    let var_1 = Struct_2(vec2<i32>(23700i, -1i) | vec2<i32>(-max(-61238i, -1i), u_input.a), vec4<i32>(i32(-1i) * -1i, u_input.a, -11379i >> (0u % 32u), ~u_input.a) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(21061u, 1u, 0u, 6057u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 17383u, u_input.d, 0u), ~vec4<u32>(u_input.c, 19772u, 4294967295u, 1u))) % vec4<u32>(32u)), true);
    var var_2 = func_2(vec4<i32>(~1i, ~(~u_input.a) & max(-331i, -u_input.a), u_input.a, -8685i), Struct_3(func_2(var_1.b, Struct_3(Struct_1(vec3<f32>(162f, 1973f, -795f)), Struct_2(var_1.a, vec4<i32>(var_1.a.x, 54275i, var_1.b.x, 0i), false), true), Struct_1(vec3<f32>(1000f, -1283f, -557f))), Struct_2(abs(vec2<i32>(u_input.a, 2147483647i)), var_1.b, true), any(select(!vec2<bool>(true, var_1.c), !vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(-2153f)), _wgslsmith_f_op_f32(766f - 1441f), _wgslsmith_f_op_f32(1536f * 239f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-873f, -232f, 2155f), vec3<f32>(-703f, 1009f, -105f), var_1.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, 1000f, 2290f)))))));
    let var_3 = -1703f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1693f * var_3) * _wgslsmith_f_op_f32(floor(-1263f))))), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.b.x, -608i), vec2<i32>(-98482i, 2147483647i))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(var_1.a.x, 0i, var_1.b.x)), _wgslsmith_mod_i32(0i, u_input.a))) ^ var_1.b.x, abs(-18285i) & var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)));
}

