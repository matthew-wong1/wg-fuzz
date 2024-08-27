struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-518f)), 333f))));
    let var_2 = ~vec2<u32>(0u, 0u);
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(1473f + 1000f))))), 1221f));
    let var_3 = Struct_1(var_1.a);
    return var_1.a.x;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: bool) -> vec3<bool> {
    let var_0 = vec2<u32>(25890u, arg_2);
    let var_1 = u_input.a;
    return vec3<bool>(!(!select(true, arg_3, 0u >= arg_1)), false, all(!(!(!vec3<bool>(arg_3, arg_3, false)))));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -537f)), -2019f, _wgslsmith_f_op_f32(884f + 986f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1385f)) + _wgslsmith_f_op_f32(f32(-1f) * -255f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1571f, -2382f, 913f, -1196f))))) * vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1145f - 1796f), _wgslsmith_f_op_f32(1026f + 371f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-133f)), _wgslsmith_f_op_f32(max(184f, 136f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(195f, 1803f, false)) + -1354f))));
    let var_1 = Struct_1(var_0.yw);
    let var_2 = select(vec3<bool>(true, true, true), func_3(var_1.a.x, ~17839u, select(1u, 80845u, false), true), vec3<bool>(false, select(all(vec2<bool>(true, true)), false, any(vec3<bool>(false, true, false)) || all(vec4<bool>(false, true, true, false))), !(!any(vec2<bool>(true, false)))));
    let var_3 = Struct_2(~(-arg_0.x));
    let var_4 = i32(-1i) * -10216i;
    return var_3.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = 114317u;
    let var_1 = select(-min(arg_1, arg_1), _wgslsmith_mod_vec3_i32(~vec3<i32>(abs(arg_1.x), 2147483647i, ~u_input.c), _wgslsmith_div_vec3_i32(arg_1 & vec3<i32>(u_input.a, 17871i, arg_2.x), arg_2 << (vec3<u32>(var_0, 1u, var_0) % vec3<u32>(32u))) << (vec3<u32>(var_0, var_0 >> (1u % 32u), 53292u) % vec3<u32>(32u))), true);
    let var_2 = vec4<bool>(!(var_0 != 44922u), false, !(!(!all(vec4<bool>(true, true, true, false)))), true == all(vec2<bool>(true, true)));
    let var_3 = -((~countOneBits(vec4<i32>(-2147483647i, 2147483647i, arg_1.x, u_input.a)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, var_0, 4294967295u), vec4<u32>(var_0, 1u, var_0, 1u)) % vec4<u32>(32u))) >> (abs(vec4<u32>(_wgslsmith_add_u32(var_0, 0u), 19916u, abs(0u), 63566u)) % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_3.a.x)), -1000f) - _wgslsmith_div_vec2_f32(vec2<f32>(1355f, arg_0.x), _wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(231f, arg_0.x)))), arg_0));
    return Struct_2(-49633i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-926f - 170f), _wgslsmith_f_op_f32(f32(-1f) * -878f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-520f, -140f) * vec2<f32>(-1353f, 492f))) - vec2<f32>(_wgslsmith_f_op_f32(-207f - 733f), _wgslsmith_f_op_f32(919f + 1255f)))), vec3<i32>(u_input.a, 1i, firstTrailingBit(func_1(u_input.b))) & vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, 56225i, 4062i, u_input.b.x), ~vec4<i32>(u_input.b.x, u_input.a, -1i, u_input.c)), min(u_input.c, u_input.b.x), -(~u_input.c)), ~vec3<i32>(select(u_input.c, 35284i, true), u_input.a, ~u_input.c) & ~select(abs(vec3<i32>(u_input.c, 2147483647i, -8813i)), select(vec3<i32>(u_input.b.x, u_input.c, 1678i), vec3<i32>(2147483647i, -36437i, -42592i), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(151f, 754f)))), vec2<f32>(-2479f, _wgslsmith_f_op_f32(step(-1203f, -236f)))))));
    var_0 = Struct_2(_wgslsmith_sub_i32(var_0.a, 0i));
    let var_1 = vec2<i32>(var_0.a >> (~_wgslsmith_sub_u32(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(40571u, 70996u, 68257u, 31680u), vec4<u32>(17784u, 1u, 42493u, 0u))) % 32u), 0i);
    var_0 = Struct_2(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(var_1, var_1), vec2<i32>(0i, countOneBits(-2147483647i))));
    var_0 = Struct_2(-12854i);
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -883f), -569f, true))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(543f, -2605f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-537f, 650f))) + vec2<f32>(-1849f, _wgslsmith_f_op_f32(ceil(-1378f))))), _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a, var_0.a, 14917i), vec3<i32>(-2147483647i, var_0.a, 2147483647i)), vec3<i32>(_wgslsmith_div_i32(u_input.c, -5258i), 12601i, -29467i)) & vec3<i32>(39748i, -abs(u_input.a), ~(~var_1.x)), _wgslsmith_div_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_0.a, -19188i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, var_1.x, var_1.x), vec3<i32>(var_1.x, u_input.a, 1i))), vec3<i32>(var_1.x, 2114i, abs(var_1.x)), true), vec3<i32>(-1i) * -reverseBits(vec3<i32>(0i, var_1.x, u_input.c))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-499f, -743f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-804f, 273f)))))));
    var_0 = Struct_2(var_1.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-206f, _wgslsmith_f_op_f32(-303f + -786f), _wgslsmith_f_op_f32(min(-1000f, -1200f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-584f, 1246f, 1248f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-151f, 717f, 143f))))) - vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1154f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(796f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1538f - -1929f) - _wgslsmith_f_op_f32(244f - 544f)) + -851f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, 20487i);
}

