struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> vec3<bool> {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1019f, 1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(vec3<bool>(true, arg_0, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -626f), -639f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-675f, _wgslsmith_f_op_f32(f32(-1f) * -485f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) + _wgslsmith_f_op_f32(step(-352f, 1043f)))), _wgslsmith_f_op_f32(step(678f, _wgslsmith_f_op_f32(abs(1f))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.a))))));
    let var_2 = var_1.a.x;
    let var_3 = var_1;
    let var_4 = 31408u;
    return vec3<bool>(true | all(vec3<bool>(any(vec2<bool>(true, true)), true, true)), all(!select(!vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, false, arg_0), true), vec4<bool>(true, true, true, true))), !arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(arg_0.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-127f, _wgslsmith_f_op_f32(floor(-1000f)))) - _wgslsmith_f_op_vec2_f32(arg_0.b + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0.a) - arg_0.b))), !arg_2.a.x, ~(~firstLeadingBit(arg_0.d)) & vec3<u32>(arg_0.d.x, 4294967295u, arg_1.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(784f, arg_0.b.x)) - arg_0.b.x) - var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.a) - var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1047f + arg_0.b.x) + arg_0.a))));
    var_0 = Struct_1(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-1532f - _wgslsmith_f_op_f32(f32(-1f) * -803f)), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x))))), true, ~vec3<u32>(~(var_0.d.x >> (var_0.d.x % 32u)), 112299u, abs(_wgslsmith_dot_vec3_u32(arg_0.d, arg_1.zyz))));
    var_0 = arg_0;
    var_0 = arg_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(300f, 1521f))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(-1000f - arg_0.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(971f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -300f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(469f, 554f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(997f, 318f))) * vec2<f32>(-1295f, -415f))), true, select(vec3<u32>(~u_input.c.x, 43959u, u_input.c.x ^ u_input.d.x), vec3<u32>(24200u, _wgslsmith_dot_vec3_u32(u_input.d.wxx, u_input.d.zwy), ~0u), func_3(any(vec3<bool>(false, true, false))))), vec4<u32>(_wgslsmith_clamp_u32(13322u, ~75401u, max(u_input.d.x, 2331u)), reverseBits(~0u), u_input.c.x, max(1u, 4294967295u) & _wgslsmith_sub_u32(min(u_input.d.x, u_input.d.x), 0u | u_input.c.x)), Struct_2(vec2<bool>(true, true))));
    let var_1 = 1u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -672f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.x))))), var_0.x), true && all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), ~(~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.d.x), u_input.c) & ~u_input.c)));
    var_2 = Struct_1(-1482f, _wgslsmith_f_op_vec2_f32(-var_2.b), var_2.c, ~(~(~vec3<u32>(var_2.d.x, var_1, 60092u))));
    let var_3 = vec4<bool>(true, all(!vec4<bool>(u_input.b != 2147483647i, true, var_2.a >= -324f, true)), false, true);
    return Struct_1(809f, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-109f, -1036f))), var_3.x, firstTrailingBit(vec3<u32>(45350u, 0u, 1u) << (var_2.d % vec3<u32>(32u)))), ~vec4<u32>(~13939u, ~63368u, var_1 >> (var_1 % 32u), 25931u), Struct_2(func_3(var_2.c && false).zy))), !(!var_2.c), u_input.d.xzz);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(select(vec2<bool>(false, !arg_0.c), !(!select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, arg_0.c), arg_0.c)), vec2<bool>(arg_0.c, arg_0.c)));
    var var_1 = _wgslsmith_dot_vec4_u32(~u_input.d, _wgslsmith_add_vec4_u32(~u_input.d, ~vec4<u32>(u_input.c.x, _wgslsmith_div_u32(82943u, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 18671u, 95220u, arg_0.d.x), vec4<u32>(arg_0.d.x, arg_0.d.x, 17936u, 100822u)), min(u_input.d.x, 1u))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(617f)) - -2156f)));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2))));
    let var_4 = select(min(~u_input.d.zw, ~abs(abs(vec2<u32>(44507u, 7198u)))), abs(~u_input.c.yy & select(vec2<u32>(arg_0.d.x, u_input.c.x), _wgslsmith_sub_vec2_u32(arg_0.d.zz, vec2<u32>(1u, arg_0.d.x)), select(var_0.a, var_0.a, false))), func_3(all(vec3<bool>(all(vec3<bool>(arg_0.c, arg_0.c, var_0.a.x)), true, 1i <= u_input.a))).yy);
    return func_2();
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = u_input.c.x;
    var_0 = arg_0.x;
    var var_1 = func_5(func_2(), ~(vec3<i32>(1i, 2147483647i, u_input.b << (u_input.d.x % 32u)) >> (min(vec3<u32>(u_input.d.x, 43576u, u_input.c.x), arg_0) % vec3<u32>(32u))));
    var var_2 = -1772f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a))) * -308f));
    var var_3 = var_1.b.x;
    return !(!select(!select(vec4<bool>(var_1.c, var_1.c, true, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, false), true), !(!vec4<bool>(var_1.c, var_1.c, var_1.c, false)), select(vec4<bool>(true, var_1.c, var_1.c, true), !vec4<bool>(var_1.c, var_1.c, var_1.c, true), vec4<bool>(var_1.c, false, var_1.c, var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(true, true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), all(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(true, true, false)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f * 264f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), any(func_1(firstTrailingBit(vec3<u32>(u_input.d.x, 1u, 55396u))))), vec4<bool>(any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)), any(vec4<bool>(true, true, true, true)), true, !func_5(Struct_1(1787f, vec2<f32>(-816f, 685f), false, vec3<u32>(u_input.d.x, u_input.d.x, 1u)), vec3<i32>(0i, u_input.b, u_input.b) >> (vec3<u32>(u_input.d.x, 22213u, 34165u) % vec3<u32>(32u))).c));
    var_0 = !select(!vec4<bool>(var_0.x, true, false, false), func_1(_wgslsmith_clamp_vec3_u32(u_input.d.yyy, ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.d.x), reverseBits(u_input.d.xxw))), false);
    var_0 = vec4<bool>(true, true, true, true);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(891f, -847f, -1000f, 873f), vec4<f32>(529f, -234f, 891f, -888f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-590f, -163f, 988f, -554f)))))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    var_0 = vec4<bool>(1806f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-410f - var_1.a.x), var_0.x))), true, true, true);
    var_2 = -776f;
    var var_3 = Struct_2(select(vec2<bool>(var_1.a.x > _wgslsmith_f_op_f32(round(var_1.a.x)), ~0u < max(u_input.c.x, u_input.d.x)), vec2<bool>(select(u_input.b >= 2147483647i, all(var_0.zx), var_0.x), var_0.x), var_0.xw));
    var_3 = Struct_2(vec2<bool>(false, !var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.wyz, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -308f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1057f)) * _wgslsmith_f_op_vec2_f32(func_4(func_2(), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 107081u, 9859u, u_input.c.x), u_input.d << (vec4<u32>(1529u, 4294967295u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), abs(u_input.d)), Struct_2(func_1(vec3<u32>(54472u, u_input.d.x, u_input.c.x)).xx))).x));
}

