struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = 1986f;
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, 183f, false)) + arg_0) - var_0), select(vec3<i32>(-2147483647i, min(firstLeadingBit(-2147483647i), 1i), abs(~(-2598i))), u_input.d.xzz << (select(~vec3<u32>(u_input.a.x, u_input.a.x, 20722u), abs(vec3<u32>(57155u, arg_1.x, arg_1.x)), any(vec4<bool>(true, true, true, var_1))) % vec3<u32>(32u)), any(select(!vec4<bool>(true, false, var_1, true), select(vec4<bool>(true, true, true, var_1), vec4<bool>(false, var_1, var_1, false), vec4<bool>(true, var_1, true, var_1)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, var_1, false), false)))), !var_1, vec3<i32>(u_input.d.x, abs(u_input.d.x), 0i), u_input.a.x);
    var var_3 = 16010i;
    var var_4 = var_2.b.x;
    return select(!(!select(vec3<bool>(false, var_1, true), select(vec3<bool>(false, var_1, false), vec3<bool>(true, true, false), var_1), vec3<bool>(var_2.c, true, true))), select(!select(select(vec3<bool>(var_2.c, var_2.c, true), vec3<bool>(var_1, true, var_2.c), var_1), !vec3<bool>(true, var_2.c, false), !vec3<bool>(false, var_1, var_1)), !(!vec3<bool>(var_2.c, true, var_2.c)), !(!(false | var_2.c))), vec3<bool>(0u >= (20711u | _wgslsmith_dot_vec3_u32(vec3<u32>(69093u, 15098u, 59013u), vec3<u32>(4294967295u, 64301u, 4294967295u))), var_2.c, var_1));
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(-1000f, u_input.d.xyy, any(func_3(-464f, ~u_input.a)), ~u_input.d.zyy, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 59592u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1942f, _wgslsmith_f_op_f32(floor(-1503f)), any(vec4<bool>(false, true, false, false)))), 572f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(743f + -169f) - _wgslsmith_f_op_f32(f32(-1f) * -346f)))), Struct_1(127f, reverseBits(_wgslsmith_add_vec3_i32(u_input.d.yyz, -u_input.d.zzw)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true))), firstLeadingBit(u_input.d.xzz), firstTrailingBit(~(~u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-405f, 2039f, -417f, -349f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-111f, -832f, -1528f, 1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-797f * 1261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1443f) + -1383f), -680f, 882f)));
    let var_1 = Struct_1(1230f, reverseBits(max(abs(vec3<i32>(-14523i, 368i, -1i)) | -var_0.a.b, -u_input.d.wzw)), (var_0.a.e >= (~var_0.c.e | ~u_input.a.x)) && !var_0.a.c, -_wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(38524i, 15816i, 0i), vec3<i32>(1i, 1i, var_0.a.b.x))), u_input.d.yzx << (_wgslsmith_add_vec3_u32(vec3<u32>(76973u, 23959u, u_input.a.x), vec3<u32>(u_input.a.x, 6430u, 29247u)) % vec3<u32>(32u))), countOneBits(~(~_wgslsmith_add_u32(var_0.a.e, 1u))));
    var_0 = Struct_2(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(826f))))), var_0.c, var_0.d);
    let var_2 = 22789i;
    let var_3 = Struct_2(var_1, var_1.a, var_1, _wgslsmith_f_op_vec4_f32(var_0.d - vec4<f32>(-1022f, 1499f, _wgslsmith_f_op_f32(var_0.b * 1f), var_1.a)));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<u32>) -> bool {
    var var_0 = vec2<bool>(true, func_2());
    let var_1 = u_input.d.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(438f)), _wgslsmith_f_op_f32(-arg_0))) * arg_0), ~u_input.d.yww, any(!vec3<bool>(true, u_input.c < -1i, var_0.x)), (u_input.d.yyz >> (vec3<u32>(reverseBits(4294967295u), _wgslsmith_add_u32(u_input.a.x, arg_2.x), u_input.a.x) % vec3<u32>(32u))) ^ abs(vec3<i32>(var_1, var_1, -9424i) | -u_input.d.wwy), ~u_input.a.x);
    var_0 = vec2<bool>(var_0.x, ~arg_2.x < u_input.a.x);
    var var_3 = -(-_wgslsmith_mult_i32(u_input.c, 1i) >> (max(77950u, ~(~4294967295u)) % 32u));
    return !any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, var_0.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = Struct_2(arg_3, arg_3.a, arg_3, vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a), 1298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.a - -2148f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(f32(-1f) * -1375f)))));
    let var_1 = vec2<f32>(arg_3.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)))), _wgslsmith_f_op_f32(-var_0.d.x))));
    var var_2 = abs(~(-(~arg_1) >> (~(~1u) % 32u)));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -221f) + -620f));
    return firstLeadingBit(select(u_input.d, abs(u_input.d), !(!vec4<bool>(var_3, false, arg_3.c, arg_3.c))) & _wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(1i, ~(-13923i), 2147483647i << (arg_3.e % 32u), abs(0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true & any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)) | true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), true);
    let var_1 = func_4(select(vec3<bool>(!(-61695i >= u_input.c), !any(vec2<bool>(false, var_0.x)), select(any(vec3<bool>(var_0.x, false, var_0.x)), var_0.x, !var_0.x)), vec3<bool>(var_0.x == false, func_1(_wgslsmith_div_f32(2070f, 548f), vec4<f32>(1000f, 1062f, 651f, -2335f), ~vec4<u32>(u_input.a.x, 0u, 0u, 34611u)), true), vec3<bool>(false, !(!var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.d.x, -40827i), vec4<i32>(u_input.c, u_input.c, u_input.e, 16057i)) > -22040i)), ~(~1i), vec2<u32>(~(~u_input.a.x), ~1u) ^ _wgslsmith_clamp_vec2_u32(~(~u_input.a), vec2<u32>(28372u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3493f) - _wgslsmith_f_op_f32(floor(-783f)))), ~vec3<i32>(u_input.b, -29627i, u_input.e), all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)) != (firstTrailingBit(u_input.e) > -39967i), u_input.d.yzy, u_input.a.x));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1483f * 129f), var_1.ywz, true, var_1.yxz, max(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 28799u), abs(u_input.a.x)), max(countOneBits(u_input.a.x), 4294967295u))), 187f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1020f)) + -1417f), var_1.wxw, !all(vec3<bool>(var_0.x, true, var_0.x)) && any(!vec3<bool>(false, false, var_0.x)), abs(vec3<i32>(_wgslsmith_div_i32(44908i, var_1.x), u_input.e, -2147483647i)), ~(~u_input.a.x << (u_input.a.x % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2055f, -849f, -1347f, -1657f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-634f, -1863f, 136f, 478f) + vec4<f32>(629f, -415f, -846f, 703f)), !var_0))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(991f, 1000f, 1007f, -2351f) - vec4<f32>(891f, -901f, -666f, -416f))), vec4<bool>(var_0.x, all(var_0.xz), true, true)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2.d.wx);
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(449f * -362f) + _wgslsmith_f_op_f32(-var_2.c.a)), -1000f) * -423f), var_2.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.c.a)), -983f, _wgslsmith_f_op_f32(step(-231f, _wgslsmith_f_op_f32(-var_2.c.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.c.a, var_3.x)) + var_2.b)));
    let var_4 = u_input.a.x;
    var var_5 = _wgslsmith_f_op_f32(min(var_3.x, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -351f)))), var_2.b));
}

