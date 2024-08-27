struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_1(select(!vec2<bool>(select(true, true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false))), vec2<bool>(true, all(vec2<bool>(false, true)) & all(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-175f + -671f), _wgslsmith_f_op_f32(floor(281f)))))), select(vec4<bool>(!(u_input.a < u_input.a), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), true, true), !vec4<bool>(false, u_input.a != -1i, true, true), vec4<bool>(true, true, true || any(vec2<bool>(true, false)), min(u_input.a, -47235i) <= _wgslsmith_mult_i32(1i, -2147483647i))));
    let var_1 = -12991i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f * _wgslsmith_f_op_f32(-var_0.b)));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, var_2, var_0.b, -473f))))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.yyz - _wgslsmith_f_op_vec3_f32(-var_3.zzw)) - _wgslsmith_f_op_vec3_f32(var_3.yxy * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1164f, var_2, 1064f)))))))));
    return select(!(!var_0.a), !var_0.c.xx, var_0.a);
}

fn func_2() -> Struct_3 {
    let var_0 = min(_wgslsmith_mult_i32(~u_input.a, -u_input.a), u_input.a);
    let var_1 = !func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 18293u >> (u_input.b % 32u), _wgslsmith_mod_u32(u_input.b, 1992u)), ~vec3<u32>(u_input.b, 0u, u_input.b)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-337f, -1000f) * vec2<f32>(1000f, -1072f)) + vec2<f32>(1000f, 1000f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1017f, 1038f) - vec2<f32>(562f, 580f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1228f, 1533f)))), func_3(~firstTrailingBit(vec3<u32>(u_input.b, 4294967295u, 84435u))))));
    var var_3 = Struct_3(vec3<bool>((2147483647i < _wgslsmith_dot_vec4_i32(vec4<i32>(-9704i, -2147483647i, 1i, u_input.a), vec4<i32>(u_input.a, 0i, 2147483647i, -1i))) | !var_1.x, !(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)) > var_2.x), all(!(!vec4<bool>(var_1.x, true, var_1.x, true)))), Struct_1(var_1, _wgslsmith_f_op_f32(ceil(var_2.x)), !vec4<bool>(!var_1.x, var_1.x, var_1.x, var_1.x || var_1.x)), Struct_1(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1818f, _wgslsmith_f_op_f32(select(var_2.x, 289f, true)))) * -656f), select(vec4<bool>(!var_1.x, u_input.b != u_input.b, !var_1.x, var_1.x || true), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, false), true), select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), false), any(vec4<bool>(true, var_1.x, var_1.x, var_1.x))), vec4<bool>(var_1.x, any(vec3<bool>(true, var_1.x, var_1.x)), false | var_1.x, var_2.x <= 137f))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(66247u, 1u)), vec2<u32>(u_input.b, 2787u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, var_2.x))), _wgslsmith_f_op_f32(-var_2.x), var_1.x)));
    var_2 = vec2<f32>(150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1146f)) * -475f));
    return Struct_3(!vec3<bool>(true, all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-var_3.e) <= _wgslsmith_f_op_f32(sign(var_2.x))), var_3.c, var_3.c, (select(var_3.d ^ vec2<u32>(var_3.d.x, 4294967295u), var_3.d, false) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), var_3.d) % vec2<u32>(32u))) & (reverseBits(var_3.d) << (vec2<u32>(~1u, ~u_input.b) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(-1672f)));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = func_2();
    let var_1 = u_input.a;
    var var_2 = select(true, any(!var_0.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1042f, 219f)))) < _wgslsmith_f_op_f32(-var_0.e));
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, _wgslsmith_mult_i32(21257i, var_1) >> (var_0.d.x % 32u), var_1, _wgslsmith_mod_i32(u_input.a, var_1) | 1i), abs(vec4<i32>(-89026i, var_1, 3936i, select(u_input.a, 2147483647i, true)))) == ~u_input.a;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-398f, var_0.b.b, arg_0)))))), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.a, 1i), vec3<i32>(-1i, u_input.a, u_input.a)) & (-firstTrailingBit(var_1) | ~(-56918i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1193f * -286f)), -1754f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-745f, var_0.b.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 57960u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1416f, -171f, -418f, -733f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-984f, -1307f, 1419f, 202f)))), true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-433f, -214f, -709f, -1000f), vec4<f32>(921f, 160f, -984f, -1712f), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, -1245f, 2184f, 1080f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(-312f)) * vec4<f32>(-1007f, 126f, 1275f, 415f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(506f, 2243f, -795f, -1593f) * vec4<f32>(435f, 1021f, -807f, 147f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1392f, -245f, 198f, 1063f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, 411f, -619f)))))) - vec4<f32>(287f, 1096f, _wgslsmith_f_op_f32(-var_1.x), 1699f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(198f, var_1.x, var_1.x, var_1.x) + vec4<f32>(var_1.x, -537f, 512f, var_1.x))))), all(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))))));
    let var_2 = vec4<f32>(154f, var_1.x, _wgslsmith_f_op_f32(-1719f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 707f)))));
    var var_3 = vec4<i32>(min(firstTrailingBit(u_input.a), firstTrailingBit(u_input.a)), _wgslsmith_sub_i32(u_input.a, ~u_input.a), ~_wgslsmith_sub_i32(-2147483647i, firstTrailingBit(-2147483647i ^ u_input.a)), 13033i);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1058f, -770f))))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1450f)) - _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_div_f32(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.xyy, _wgslsmith_f_op_vec3_f32(-var_2.wyy)))), var_1.wxx, vec3<bool>(true, true, true))));
}

