struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<i32> {
    return ((-reverseBits(vec2<i32>(-947i, -3973i)) << (vec2<u32>(arg_1, 0u) % vec2<u32>(32u))) | (_wgslsmith_mult_vec2_i32(select(vec2<i32>(-18249i, -51434i), vec2<i32>(-2147483647i, 43823i), vec2<bool>(arg_0, arg_0)), max(vec2<i32>(23931i, 13606i), vec2<i32>(26031i, 3476i))) ^ abs(vec2<i32>(1i, 1i)))) & vec2<i32>(-2147483647i, -1i);
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_div_f32(-1068f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1094f))))), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1151f, var_0, _wgslsmith_f_op_f32(-var_0), var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, var_0, -1114f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-902f, 410f, var_0, var_0), vec4<f32>(314f, var_0, var_0, var_0)))))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(122f, 2409f, false))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-315f)) + _wgslsmith_f_op_f32(var_1.x + -1439f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 504f) + -1130f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1724f))), _wgslsmith_f_op_f32(abs(365f)));
    let var_2 = Struct_2(Struct_1(0i, vec4<i32>(1i, _wgslsmith_dot_vec2_i32(func_1(false, 26393u), vec2<i32>(1i, 26712i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(40114i, 40007i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-24356i, -2147483647i), vec2<i32>(-2147483647i, 1i), vec2<i32>(-40147i, 0i))), ~min(0i, -2147483647i)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 0i, -32764i, 2147483647i)), _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -2147483647i, ~15128i), 40325i)), Struct_1(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-67966i, -14832i), vec2<i32>(-1i, 2147483647i)), 24439i), vec4<i32>(1i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-26080i, -736i, -29085i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -4365i, 8043i), vec3<i32>(-1i, 45497i, -1i))), -1i, 1i), vec4<i32>(45999i, func_1(any(vec3<bool>(true, true, false)), 1u).x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(31340i, -2147483647i), vec2<i32>(21363i, -747i))), min(1i, ~(-14105i)))));
    var var_3 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(var_0)));
    return vec3<bool>(true, any(vec4<bool>(!(var_1.x == var_1.x), true, select(any(vec3<bool>(false, false, true)), true, true), any(vec2<bool>(false, true)))), !(!(var_2.b != var_2.c.c.x)) && all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true)))));
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = func_3();
    let var_1 = select(vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(4336i, 0i), vec2<i32>(29326i, 2147483647i)), vec2<i32>(-31714i, -60502i))), reverseBits(1i), ~1i, 1i), vec4<i32>(firstTrailingBit(1i), countOneBits(i32(-1i) * -14189i), _wgslsmith_sub_i32(42083i << (u_input.a % 32u), ~35263i), func_1(false, 0u).x) >> (~(~vec4<u32>(38782u, arg_0.x, arg_0.x, 2107u) << ((vec4<u32>(arg_0.x, 0u, 25112u, arg_0.x) << (vec4<u32>(u_input.a, 1u, arg_0.x, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<bool>(true, true, true, true));
    let var_2 = vec3<i32>(func_1(!(!(!var_0.x)), _wgslsmith_add_u32(abs(~u_input.a), arg_0.x)).x, 0i, 1i);
    let var_3 = var_0.x;
    var var_4 = -575f;
    return max(var_1.ywz, abs(select(firstTrailingBit(var_2), vec3<i32>(-50599i, 2147483647i, -32215i), all(vec4<bool>(var_0.x, true, false, true))))) >> (vec3<u32>(u_input.a | _wgslsmith_div_u32(1u, firstLeadingBit(arg_0.x)), ~1u, ~u_input.a) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a ^ u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a), 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(53857u, 0u), ~u_input.a, ~u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(3603u, u_input.a, u_input.a, 4294967295u), vec4<u32>(0u, u_input.a, u_input.a, 1u)), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 21892u, u_input.a, 37199u), vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 107299u))))), ~(~(vec4<u32>(u_input.a, 20467u, 4294967295u, u_input.a) >> (abs(vec4<u32>(u_input.a, u_input.a, 0u, 43783u)) % vec4<u32>(32u)))), func_3().x);
    let var_1 = ~firstTrailingBit(~firstLeadingBit(_wgslsmith_sub_vec2_u32(var_0.wx, vec2<u32>(u_input.a, u_input.a))));
    let var_2 = !(!any(vec4<bool>(true, true, true, select(false, false, false))));
    let var_3 = var_0;
    var var_4 = true;
    return Struct_1(-2147483647i, ~(~(select(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(78463i, 0i, arg_0.x, arg_0.x), vec4<bool>(false, var_2, var_2, var_2)) << (var_3 % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(36556i, countOneBits(arg_0.x), arg_0.x, arg_0.x) | (~vec4<i32>(arg_0.x, arg_0.x, 53902i, arg_0.x) >> (vec4<u32>(var_1.x, var_0.x, var_3.x, var_0.x) % vec4<u32>(32u))), vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_add_i32(arg_0.x, ~arg_0.x), arg_0.x), vec4<i32>(arg_0.x, -2147483647i, i32(-1i) * -2147483647i, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = vec3<i32>(-2147483647i, select(-1163i, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -1i, -37793i), _wgslsmith_add_vec3_i32(vec3<i32>(46876i, 2147483647i, 60757i), vec3<i32>(20963i, -1i, 1i))), firstTrailingBit(0u) > countOneBits(max(u_input.a, u_input.a))), _wgslsmith_div_i32(-(~max(-1558i, 365i)), -_wgslsmith_mult_i32(-10225i, min(-1i, -888i))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(-345f, _wgslsmith_f_op_f32(f32(-1f) * -460f)), _wgslsmith_f_op_f32(890f + _wgslsmith_f_op_f32(ceil(1743f)))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(f32(-1f) * -1536f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(865f, _wgslsmith_f_op_f32(-680f + 382f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1186f - 754f), 569f)))));
    var var_3 = _wgslsmith_sub_vec2_i32(var_1.xy | abs(vec2<i32>(-5533i & var_1.x, -16018i)), abs(firstTrailingBit(~func_1(false, 0u))));
    var var_4 = func_4(func_2(firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(10174u, 114890u) % vec2<u32>(32u))))));
    var var_5 = !all(vec3<bool>(true, true, true));
    var_5 = !(!func_3().x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~reverseBits(404i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1391f, 851f, var_2)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1000f, var_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -1010f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 132f, var_2) * vec3<f32>(-885f, var_2, -1104f))))) + vec3<f32>(1048f, _wgslsmith_f_op_f32(-1614f + var_2), 917f)));
}

