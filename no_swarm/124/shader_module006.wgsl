struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_4,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<f32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(530f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f - -1100f)) - 775f)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, u_input.c.x), ~u_input.a << ((u_input.a & u_input.c) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 445f, _wgslsmith_f_op_f32(abs(var_0.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 1211f, 1195f) - vec3<f32>(arg_0, var_0.a, arg_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1329f, -423f, -1764f))))));
    var var_2 = !(!select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(true, false, true, false)), true, any(vec2<bool>(false, true)), true)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.x), ~_wgslsmith_sub_vec2_u32(~select(vec2<u32>(15775u, var_0.b.x), var_0.b, false), vec2<u32>(min(0u, var_0.b.x), max(4294967295u, 65139u))));
    var var_4 = Struct_4(!vec3<bool>(var_2.x, var_2.x, !var_2.x || true), u_input.b);
    return vec4<i32>(-2068i ^ ~min(u_input.b, _wgslsmith_add_i32(-21972i, u_input.b)), u_input.b, ~var_4.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-55333i, ~(-52016i), var_4.b) | firstTrailingBit(firstTrailingBit(vec3<i32>(u_input.b, 27380i, 2147483647i))), vec3<i32>(-45483i, u_input.b, 4875i >> (_wgslsmith_div_u32(var_3.b.x, u_input.c.x) % 32u))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = 0i;
    let var_1 = ~(-(abs(func_3(-786f, 1000f)) ^ vec4<i32>(var_0, 1i ^ var_0, u_input.b, ~u_input.b)));
    let var_2 = arg_3.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(abs(arg_3.a)))) * _wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(833f)) * 151f))));
    let var_4 = vec4<bool>(!(!((var_1.x >= 0i) & all(arg_0.xz))), !(!all(vec2<bool>(arg_2, true))), false, false);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, arg_3.a, 1000f))), !var_4.zwy)) * vec3<f32>(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-455f, arg_3.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a, -1000f) + _wgslsmith_f_op_f32(arg_3.a + -1163f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.a, arg_3.a, 163f), vec3<f32>(-330f, var_2, 1000f))), vec3<f32>(var_2, -1274f, 123f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-709f, -1242f, 1431f) + vec3<f32>(-430f, -1405f, -1006f)), true))), all(!select(vec2<bool>(false, false), arg_0.yx, select(arg_0.yy, var_4.yy, var_4.x)))));
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(108f + 1377f))) * -1071f), _wgslsmith_f_op_f32(step(arg_2.a, 885f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1218f, arg_2.a, var_0.x, -282f), vec4<f32>(var_0.x, 773f, -827f, arg_2.a), false)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-733f, -1444f, 955f, arg_2.a)))))));
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 4294967295u) >> (arg_3.xz % vec2<u32>(32u))), vec2<u32>(max(1u, arg_1.a.x), 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.b.x, 44353u) ^ ~arg_3.wx, firstTrailingBit(arg_2.b))), ~arg_1.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(func_2(!(!(!select(arg_1.c.a, vec3<bool>(false, arg_1.c.a.x, arg_1.c.a.x), vec3<bool>(true, false, false)))), arg_3.wyy, all(arg_1.c.a), Struct_1(_wgslsmith_f_op_f32(trunc(-104f)), vec2<u32>(firstTrailingBit(0u), 24866u))));
    var var_3 = i32(-1i) * -29314i;
    return !vec2<bool>(_wgslsmith_add_i32(reverseBits(arg_1.c.b), 19567i) < -_wgslsmith_sub_i32(-1i, 0i), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(any(!func_1(-447f, Struct_5(u_input.c, vec2<u32>(u_input.a.x, 4u), Struct_4(vec3<bool>(false, true, false), u_input.b), vec2<i32>(-14008i, 14614i)), Struct_1(-1025f, vec2<u32>(u_input.e.x, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.e.x, 0u, u_input.d))), -23797i <= _wgslsmith_mult_i32(1i, ~u_input.b), true || select(false, true, true)), vec3<bool>(select(any(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, true, true, true)), true), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false), select(true, true, false))), true), any(select(vec2<bool>(true, true), !func_1(674f, Struct_5(u_input.e.zx, vec2<u32>(u_input.e.x, 1u), Struct_4(vec3<bool>(true, false, true), 2147483647i), vec2<i32>(u_input.b, u_input.b)), Struct_1(-224f, u_input.c), vec4<u32>(u_input.a.x, 16061u, 22252u, u_input.c.x)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1142f)));
    let var_2 = Struct_4(!select(select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), true), !vec3<bool>(var_0.x, var_0.x, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.x, true), var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), any(vec4<bool>(true, true, var_0.x, true))), !var_0.x & false), 2147483647i);
    let var_3 = vec3<i32>(3926i, i32(-1i) * -45819i, u_input.b);
    var_0 = !vec3<bool>(true, true, all(!vec4<bool>(true, var_2.a.x, var_2.a.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(511f, -156f) - vec2<f32>(-1000f, 1000f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-693f + -545f), -1515f, 1531f)), ~39322u, var_3.yz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1059f, _wgslsmith_f_op_f32(f32(-1f) * -198f), var_2.a.x)), 1000f, 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-202f * 1135f))))));
}

