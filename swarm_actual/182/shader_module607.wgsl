struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = vec4<u32>(1u, ~(~arg_3.c.x), _wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(0u, 1u)), ~reverseBits(u_input.b)), abs(~_wgslsmith_mod_u32(arg_3.c.x, 1u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(arg_0.a)));
    var_1 = Struct_2(var_1.a);
    var_0 = abs(vec4<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(22189u, arg_3.c.x, 4294967295u, u_input.b), vec4<u32>(arg_3.c.x, 22632u, var_0.x, 53578u))), 41412u, min(var_0.x, 0u), 80527u));
    var_1 = Struct_2(var_1.a);
    return !arg_1;
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = func_3(arg_0, true, arg_0, Struct_1(_wgslsmith_f_op_f32(-arg_0.a.x), 0i, ~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(79424u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 26404u))), u_input.b));
    var var_1 = var_0 == true;
    let var_2 = arg_0.a.yy;
    var var_3 = vec3<u32>(4294967295u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(80968u, 0u), vec2<u32>(4294967295u, 48748u))), ~reverseBits(vec3<u32>(u_input.b, u_input.b, 65264u)))), countOneBits(abs(u_input.b)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - var_2.x));
    return 0u;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0.a))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1052f, _wgslsmith_f_op_f32(-1231f * -426f), _wgslsmith_f_op_f32(max(-244f, arg_0.a.x)), _wgslsmith_f_op_f32(abs(arg_0.a.x))))))));
    let var_1 = ~57888u;
    let var_2 = ~(~90041u);
    var var_3 = vec4<u32>(0u, _wgslsmith_add_u32(func_2(Struct_2(arg_0.a)) & (_wgslsmith_div_u32(var_1, u_input.b) >> (_wgslsmith_mod_u32(29026u, 1u) % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2, 70833u) & vec2<u32>(13424u, 61816u), abs(vec2<u32>(arg_2, 55418u)))), _wgslsmith_div_u32(~var_2, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, var_2), 0u)) << (var_2 % 32u), ~firstTrailingBit(abs(56159u)) & func_2(arg_0));
    var_3 = _wgslsmith_sub_vec4_u32(~(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, var_1, 34455u, var_2), vec4<u32>(var_1, u_input.b, var_1, 77023u)))), firstLeadingBit(select(select(vec4<u32>(var_3.x, var_1, 12107u, var_3.x) & vec4<u32>(16467u, 28976u, 57675u, var_1), ~vec4<u32>(0u, var_2, 2089u, var_3.x), true), select(~vec4<u32>(757u, 94903u, 45482u, arg_2), ~vec4<u32>(33497u, var_2, 0u, 1u), true), vec4<bool>(true, true, true, true))));
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), _wgslsmith_f_op_f32(max(-1280f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + -1277f) * 1058f) - 1000f))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)));
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = false;
    let var_2 = !func_3(arg_0, true, Struct_2(var_0.a), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -687f), u_input.a, abs(vec3<u32>(72860u, u_input.b, 2017u)) & (vec3<u32>(1u, u_input.b, 0u) | vec3<u32>(u_input.b, 4294967295u, 1u)), 1u));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-1485f, -521f), arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1744f)))));
    return -vec3<i32>(~1i, 1i, ~(~(-42824i) << (u_input.b % 32u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_i32(abs(reverseBits(firstTrailingBit(vec2<i32>(arg_0.x, u_input.a)))), select(arg_0.zx, func_4(arg_1).yy, vec2<bool>(false, ~1411i == arg_0.x)));
    var_0 = -vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_0.x, -15088i)) & _wgslsmith_mult_vec2_i32(arg_0.xz, vec2<i32>(1i, -1i)), vec2<i32>(~32432i, 402i)), firstTrailingBit(arg_0.x ^ var_0.x) ^ ~_wgslsmith_sub_i32(u_input.a, 35793i));
    var_0 = arg_0.zy;
    var var_1 = ~countOneBits(~func_4(arg_2).xz);
    var_0 = firstTrailingBit(arg_0.yy);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1575f, arg_2.a.x)), -11394i, _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, max(arg_3, arg_3), _wgslsmith_sub_u32(u_input.b, 35492u)), select(abs(~vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(~u_input.b, 1u, ~u_input.b), false)), ~_wgslsmith_div_u32(0u, 22414u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_vec3_i32(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec4<f32>(-142f, 395f, -203f, -664f)), vec2<i32>(-2147483647i, -45860i), u_input.b, vec4<i32>(28156i, u_input.a, 1i, u_input.a))))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 1i), vec3<i32>(u_input.a, 1i, 0i)), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, 2147483647i))), Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(146f, -1209f, -109f, 199f) + vec4<f32>(-326f, 569f, -1752f, -1981f)))))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, 130f, 1463f, -121f)), vec4<f32>(517f, -506f, -1052f, -1320f), vec4<bool>(true, true, true, true))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-811f)), _wgslsmith_div_f32(-2247f, -265f), _wgslsmith_div_f32(1320f, 669f), 155f))), 1u);
    let var_1 = _wgslsmith_f_op_f32(2367f * var_0.a) != _wgslsmith_f_op_f32(120f * -1440f);
    var_0 = func_5(~countOneBits(_wgslsmith_mult_vec3_i32(max(vec3<i32>(var_0.b, -54219i, u_input.a), vec3<i32>(var_0.b, var_0.b, u_input.a)), ~vec3<i32>(var_0.b, -3071i, u_input.a))), Struct_2(vec4<f32>(-206f, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.a), var_0.a)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a, -553f)), _wgslsmith_f_op_f32(abs(var_0.a)), var_0.a, _wgslsmith_f_op_f32(min(976f, -533f))))), _wgslsmith_add_u32(~var_0.d, _wgslsmith_div_u32(4294967295u, var_0.c.x)));
    var var_2 = vec4<bool>(var_1, all(!(!vec3<bool>(true, var_1, var_1))) && var_1, false, false);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec4<f32>(-1657f, -305f, var_0.a, 1744f)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(var_0.b, u_input.a)), 4294967295u, vec4<i32>(-6919i, 1i, 2203i, -23977i))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2577f, 485f, var_0.a, var_0.a))), var_1)));
    var_2 = select(!select(select(vec4<bool>(var_1, true, var_1, var_2.x), vec4<bool>(true, var_2.x, true, var_1), select(vec4<bool>(false, false, var_1, var_2.x), vec4<bool>(true, var_2.x, false, true), true)), select(!vec4<bool>(var_2.x, var_2.x, true, true), !vec4<bool>(var_1, var_2.x, false, true), select(vec4<bool>(var_2.x, var_2.x, false, var_1), vec4<bool>(true, true, var_1, true), false)), select(u_input.b, 0u, true) >= _wgslsmith_mod_u32(var_0.c.x, 20474u)), select(vec4<bool>((var_0.b <= 0i) | true, _wgslsmith_mod_u32(var_0.c.x, u_input.b) > 4294967295u, _wgslsmith_f_op_vec4_f32(func_1(Struct_2(var_3.a), vec2<i32>(12647i, u_input.a), 1u, vec4<i32>(72205i, u_input.a, 0i, u_input.a))).x <= var_3.a.x, _wgslsmith_sub_u32(4294967295u, var_0.d) >= 0u), vec4<bool>(true, true, select(any(vec4<bool>(var_2.x, false, true, true)), true, true), !all(vec4<bool>(false, var_1, true, true))), select(!select(vec4<bool>(false, var_1, var_1, false), vec4<bool>(var_1, var_1, var_1, true), var_1), vec4<bool>(u_input.b <= var_0.c.x, all(var_2.zwz), any(vec2<bool>(var_2.x, true)), all(vec3<bool>(false, false, false))), vec4<bool>(var_0.a <= var_3.a.x, func_3(Struct_2(var_3.a), var_1, Struct_2(vec4<f32>(var_3.a.x, 231f, var_3.a.x, -1000f)), Struct_1(var_3.a.x, -8282i, vec3<u32>(0u, 4294967295u, 19552u), var_0.d)), true, !var_1))), var_2.x);
    let var_4 = vec2<i32>(0i, var_0.b);
    var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 988f, -1203f, var_0.a) + var_3.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_0.a, var_0.a, var_3.a.x) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, -416f, var_0.a, 225f)))))));
    var_3 = Struct_2(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.a.x))));
}

