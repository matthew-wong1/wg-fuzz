struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = true;
    var var_1 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-443f)))), abs(_wgslsmith_clamp_i32(0i, 8145i, -28145i) ^ _wgslsmith_mult_i32(0i, 19655i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-814f, -1000f)))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1000f)))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(-5016i, 26535i, 2147483647i), vec3<i32>(11118i, 20754i, -62987i), vec3<bool>(false, arg_0.a, arg_0.a)) | vec3<i32>(1i, 1i, 1i), vec3<i32>(-30225i, 1i, -36680i)), vec3<i32>(27948i, 2147483647i, abs(-1i))), vec4<bool>(true, all(vec4<bool>(arg_0.a, true, true, arg_0.a || true)), arg_0.a && true, !(!all(vec2<bool>(false, arg_0.a)))), vec3<f32>(-687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1179f, 1000f)))), _wgslsmith_f_op_f32(trunc(-287f))));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, max(-_wgslsmith_mult_i32(var_1.c.x, var_1.c.x), _wgslsmith_mult_i32(firstTrailingBit(15763i), -13621i))), var_1.c.yy);
    var_0 = !(all(select(vec4<bool>(var_1.b, var_1.b, true, var_1.b), var_1.d, !var_1.d)) & (select(-var_1.a.b, _wgslsmith_clamp_i32(var_1.a.b, var_2, -2147483647i), true) == var_1.a.b));
    var var_3 = vec3<i32>(1i, var_2, var_2);
    return var_1.e.x;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1324f), _wgslsmith_div_f32(-1124f, 835f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(false))), _wgslsmith_f_op_f32(func_3(Struct_4(false))))), -firstTrailingBit(1i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(-230f + -237f))) * -1473f), max(firstLeadingBit(i32(-1i) * -2147483647i), 0i)), -1000f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-940f * 472f))), _wgslsmith_mod_i32(-2147483647i, -34363i << (u_input.a % 32u))));
    var_0 = Struct_2(var_0.b, var_0.a, _wgslsmith_f_op_f32(-1f), var_0.d);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.b.a, 100f)), var_0.b.a)));
    var var_2 = Struct_2(var_0.b, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.a))), var_0.a.a) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f))))))), Struct_1(_wgslsmith_f_op_f32(1520f * 1000f), _wgslsmith_mult_i32(firstTrailingBit(var_0.b.b), select(77683i, var_0.d.b, false)) ^ var_0.a.b));
    var var_3 = countOneBits(var_2.a.b);
    return Struct_4(false);
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(686f, -130f, -1000f, -1169f), vec4<f32>(805f, -1274f, -1731f, 1000f)))) + vec4<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1739f))), -308f, _wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2017f, -1334f, -475f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2354f, 1043f, 1450f, 398f), vec4<f32>(-1310f, -1626f, 1328f, 529f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1906f, -1908f, -322f, -262f))))), true)), vec4<bool>(all(select(select(vec3<bool>(true, false, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, false, false)), vec3<bool>(var_0.a, false, false), !var_0.a)), true, all(select(!vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(var_0.a, var_0.a, true, var_0.a), select(vec4<bool>(true, false, var_0.a, false), vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(false, true, false, false)))), true)));
    let var_2 = var_0.a;
    let var_3 = ~vec3<u32>(arg_0 | u_input.a, abs(u_input.a), _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, 34025u), arg_0)) | ~vec3<u32>(u_input.a, 1u, 1u);
    var var_4 = i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-1i), 1i), ~(vec2<i32>(-1i, -55349i) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.wz)) - _wgslsmith_f_op_vec2_f32(floor(var_1.zx))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(false);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1013f, _wgslsmith_div_f32(798f, -266f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 213f))), true))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1694f, 217f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(106f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-228f, 1414f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(311f, -144f, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1076f * 608f) - var_1.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1992f))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-375f, -350f, true))), -263f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, -397f, -936f)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 976f, 188f, 1000f), vec4<f32>(-183f, -1386f, 1122f, var_1.x))), var_0.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-982f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_1.x)))), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1843f)) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1119f + var_1.x)), -133f, _wgslsmith_f_op_f32(min(var_1.x, 1f)))));
    var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + -1064f), _wgslsmith_f_op_f32(round(-2883f))))), _wgslsmith_f_op_vec2_f32(func_1(~_wgslsmith_sub_u32(u_input.a, 1u))).x, _wgslsmith_f_op_f32(select(432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), !(!var_0.a))))));
    var var_3 = Struct_2(Struct_1(var_1.x, countOneBits(_wgslsmith_add_i32(6358i >> (u_input.a % 32u), -12531i))), Struct_1(_wgslsmith_f_op_f32(round(-434f)), max(~_wgslsmith_add_i32(-1i, -12855i), _wgslsmith_add_i32(_wgslsmith_mult_i32(-33255i, 36010i), 1i))), -1000f, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1585f)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 26736i, 0i, -1i), ~reverseBits(vec4<i32>(-4492i, 23409i, 62628i, -11997i)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 11496u, u_input.a) ^ ~u_input.a, firstTrailingBit(1u))), vec3<i32>(var_3.d.b, _wgslsmith_dot_vec3_i32(vec3<i32>(75031i, var_3.b.b, var_3.a.b) & vec3<i32>(2147483647i, var_3.a.b, var_3.b.b), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.b.b, -2147483647i, var_3.a.b), vec3<i32>(-2147483647i, 206i, -2147483647i))) ^ var_3.d.b, ~min(-19549i & var_3.b.b, ~1431i)), _wgslsmith_mod_u32(u_input.a, u_input.a));
}

