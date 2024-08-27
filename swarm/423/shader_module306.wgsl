struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    let var_0 = arg_1;
    var var_1 = firstLeadingBit(var_0.a.x);
    let var_2 = u_input.a;
    var var_3 = Struct_1(true, arg_2.x, reverseBits(var_2 << ((u_input.b << (~u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-647f)) - _wgslsmith_f_op_f32(1474f - -1218f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(752f * -834f), _wgslsmith_f_op_f32(floor(319f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1467f)), _wgslsmith_f_op_f32(405f + -521f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-423f, -694f, any(vec2<bool>(false, true)))), _wgslsmith_div_f32(1370f, _wgslsmith_f_op_f32(-414f - -114f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(377f, 1551f))))), arg_2);
    let var_4 = Struct_1(~arg_1.a.x <= select(firstLeadingBit(72808i), _wgslsmith_sub_i32(0i, arg_0), false), u_input.b.x, var_2, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -637f), 1027f, var_3.d.x, _wgslsmith_div_f32(var_3.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.d.x), -1138f)))), ~var_3.e);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.d.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-560f));
    var var_1 = _wgslsmith_f_op_f32(abs(879f));
    var_1 = _wgslsmith_f_op_f32(func_3(3811i, Struct_2(reverseBits(reverseBits(~u_input.a.xxx))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x ^ 65577u, 0u), u_input.b.x >> (~u_input.b.x % 32u)), vec2<u32>(firstTrailingBit(3031u ^ u_input.b.x), 52679u))));
    var_1 = 1585f;
    var var_2 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec3<bool>(true, false, false)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true), true));
    return Struct_1(false, _wgslsmith_sub_u32(min(~4294967295u, min(46956u, u_input.b.x)), ~u_input.b.x << (abs(4294967295u) % 32u)) ^ _wgslsmith_add_u32(u_input.b.x, 0u), -vec4<i32>(1i >> (u_input.b.x % 32u), 0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-2147483647i, -1i)), _wgslsmith_mod_i32(u_input.a.x, -54649i)), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-944f, _wgslsmith_f_op_f32(-1026f + var_0), _wgslsmith_f_op_f32(step(var_0, var_0)), _wgslsmith_f_op_f32(floor(-1000f)))))), u_input.b.yw);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = arg_0.e;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(916f + 1618f));
    var var_3 = u_input.b.x;
    let var_4 = arg_0.c.x;
    return Struct_2(vec3<i32>(-27034i, u_input.a.x, -(~countOneBits(u_input.a.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = func_4(func_2(), !(!(_wgslsmith_div_u32(0u, 1u) <= firstTrailingBit(arg_1))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-516f + 813f) - _wgslsmith_f_op_f32(func_3(-2147483647i, Struct_2(arg_2.yzw), u_input.b.xy))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(852f + 275f), _wgslsmith_f_op_f32(222f - -1000f)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-978f)) * _wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_2(arg_2.zzz), u_input.b.zx))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-869f, -452f)))), -540f));
    var var_1 = Struct_2(countOneBits(vec3<i32>(-arg_3 & arg_2.x, reverseBits(u_input.a.x), arg_3)));
    let var_2 = vec2<bool>(true, any(vec2<bool>(true, true)));
    var var_3 = var_2;
    let var_4 = u_input.b;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.wy;
    let var_1 = func_1(max(~firstTrailingBit(~u_input.b), vec4<u32>(1u, _wgslsmith_mult_u32(select(72522u, 32570u, true), 62464u), ~(u_input.b.x << (u_input.b.x % 32u)), abs(70988u) | _wgslsmith_add_u32(0u, u_input.b.x))), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), vec4<i32>(((u_input.a.x << (57989u % 32u)) >> (var_0.x % 32u)) << (~54883u % 32u), u_input.a.x, u_input.a.x, _wgslsmith_add_i32(35037i, -6937i)), -(u_input.a.x ^ _wgslsmith_div_i32(firstTrailingBit(u_input.a.x), ~(-44467i))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1277f, -234f) - _wgslsmith_f_op_f32(trunc(1000f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - var_1.d.x) + _wgslsmith_f_op_f32(ceil(var_1.d.x)))))), var_1.d.x);
    let var_3 = firstTrailingBit(u_input.b);
    var var_4 = _wgslsmith_f_op_f32(ceil(var_2.x));
    var var_5 = min(~1i, -var_1.c.x);
    var var_6 = Struct_1(all(select(!select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, false, false), var_1.a), select(select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(true, var_1.a, var_1.a)), vec3<bool>(var_1.a, var_1.a, true), all(vec3<bool>(var_1.a, false, false))), true)), _wgslsmith_sub_u32(var_0.x, var_0.x) ^ ~(_wgslsmith_div_u32(1u, 1u) | (u_input.b.x & var_0.x)), u_input.a ^ (vec4<i32>(-1i) * -abs(vec4<i32>(-44647i, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * 490f)), _wgslsmith_f_op_f32(-1609f - _wgslsmith_f_op_f32(abs(var_2.x))), -1118f), ~vec2<u32>(var_0.x, _wgslsmith_div_u32(u_input.b.x, ~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a.ww), var_2.x, vec4<u32>(~var_0.x, u_input.b.x, 19087u, reverseBits(var_1.e.x)), u_input.a.x ^ var_6.c.x);
}

