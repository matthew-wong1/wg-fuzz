struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<f32>(1f, 1f);
    var var_1 = select(true, true, (!(u_input.b.x < 1u) && true) && func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -155f) - _wgslsmith_f_op_f32(var_0.x * 510f))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -474f), ~(~countOneBits(_wgslsmith_add_u32(u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -619f, -587f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -284f, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x))), vec4<f32>(-641f, _wgslsmith_f_op_f32(trunc(var_0.x)), -919f, var_0.x)))));
    let var_3 = 0i;
    let var_4 = false;
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1625f, _wgslsmith_div_f32(-2114f, -153f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1376f - -732f) + var_2.a)), 1u < _wgslsmith_mod_u32(var_2.b, u_input.b.x))), var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1068f, 707f, var_2.a, var_2.a), vec4<f32>(1376f, var_2.c.x, 1389f, 1738f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-715f, -477f, var_2.a, 363f) - vec4<f32>(var_2.c.x, var_2.c.x, -1181f, var_2.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(1308f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -602f), -118f), select(vec4<bool>(true, true, false, var_4), vec4<bool>(var_4, true, var_4, false), all(vec3<bool>(var_4, true, false)))))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    var var_0 = all(vec4<bool>(true, true, false, true));
    var var_1 = func_2();
    var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(957f - -1478f), var_1.c.x)), any(arg_1))), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x >> (60349u % 32u)), firstTrailingBit(u_input.b.x) | abs(var_1.b)), _wgslsmith_div_vec4_f32(var_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-324f, 1043f, -1335f, -1330f) + var_1.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(var_1.c.yw + var_1.c.zw), true, func_2());
    let var_3 = Struct_1(1173f, var_2.c.b, _wgslsmith_f_op_vec4_f32(-var_1.c));
    return -284f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-41330i, _wgslsmith_mult_i32(-83i, -u_input.a) << (_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) % 32u), u_input.a, u_input.a) ^ vec4<i32>(_wgslsmith_div_i32(-u_input.a, abs(2147483647i)) | u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 961i), firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), i32(-1i) * -2147483647i);
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1205f - -1092f) - -930f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(312f))))), _wgslsmith_mult_u32(u_input.b.x, ~(~_wgslsmith_mult_u32(u_input.b.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_1(false, select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, false), false), var_0.wx, 20979u < u_input.b.x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(607f)) + -2067f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1110f - 762f) * _wgslsmith_f_op_f32(f32(-1f) * -2238f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2929f + -659f))), _wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(125f, -1462f)) * _wgslsmith_f_op_f32(-216f - -142f))))));
    var_1 = vec3<bool>(all(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), false), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), var_1.x), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), any(vec2<bool>(var_1.x, var_1.x))), vec4<bool>(var_1.x, !var_1.x, !var_1.x, var_1.x))), all(!select(vec3<bool>(true, true, true), !vec3<bool>(true, var_1.x, false), select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, false), var_1.x))), var_1.x);
    var_2 = Struct_1(578f, u_input.b.x, _wgslsmith_f_op_vec4_f32(floor(var_2.c)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.c.x, -936f)) * var_2.c.xww), _wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x) ^ (vec4<u32>(var_2.b, 20569u, var_2.b, u_input.b.x) << (vec4<u32>(u_input.b.x, var_2.b, 4038u, 40389u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 6437u, 48147u, u_input.b.x), vec4<u32>(16680u, 43521u, var_2.b, var_2.b)), vec4<u32>(4294967295u, var_2.b, 19571u, u_input.b.x)), reverseBits(~vec4<u32>(1u, 12336u, var_2.b, 0u)))), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.xw - var_2.c.yx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, 711f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2118f, var_2.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.wz)) - var_2.c.zz), var_1.x)), _wgslsmith_div_vec4_i32(-var_0, -firstTrailingBit(max(vec4<i32>(-1i, var_0.x, 6777i, 2147483647i), var_0))));
    var var_4 = Struct_1(-1834f, _wgslsmith_dot_vec2_u32(vec2<u32>(max(90434u, ~535u), var_3.c), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(103817u, var_3.b.x)), abs(u_input.b >> (vec2<u32>(var_2.b, 6320u) % vec2<u32>(32u))))), vec4<f32>(-338f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 438f, -842f));
    let var_5 = var_3.d;
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b | var_2.b);
}

