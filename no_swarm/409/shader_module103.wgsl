struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: bool) -> vec3<u32> {
    global0 = firstLeadingBit(reverseBits(vec2<i32>(0i, 9128i)));
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(arg_0.x * -167f);
    var_1 = -211f;
    global0 = vec2<i32>(firstTrailingBit(~(~(-13507i))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, -45137i, -1597i), select(~vec3<i32>(u_input.e, global0.x, u_input.e), -vec3<i32>(global0.x, -17924i, global0.x), all(vec3<bool>(arg_2, arg_1, arg_1)))), u_input.e));
    return vec3<u32>(u_input.d, abs(_wgslsmith_mod_u32(~u_input.d, ~(~u_input.b.x))), ~abs(~var_0));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(135f, 538f, true)))), _wgslsmith_f_op_f32(step(764f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1021f, 1000f)))), _wgslsmith_f_op_f32(1f + 1282f))));
    global0 = vec2<i32>(_wgslsmith_mod_i32(arg_0.x ^ global0.x, arg_0.x), -32251i);
    let var_1 = select(!(!(!select(vec2<bool>(arg_1.a.b, false), vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(arg_1.a.b, arg_1.a.b)))), vec2<bool>(global0.x <= _wgslsmith_clamp_i32(-2729i, 1i, ~u_input.e), all(!(!vec3<bool>(true, arg_1.a.b, arg_1.a.b)))), !(!(!vec2<bool>(false, arg_1.a.b))));
    global0 = vec2<i32>(u_input.e, 9709i) ^ ~vec2<i32>(reverseBits(countOneBits(arg_1.a.a.x)), ~_wgslsmith_mod_i32(-68127i, -42471i));
    global0 = min(_wgslsmith_add_vec2_i32(max(vec2<i32>(_wgslsmith_mult_i32(0i, arg_0.x), 1i), vec2<i32>(abs(u_input.e), u_input.e | -24163i)), vec2<i32>(arg_0.x, _wgslsmith_sub_i32(~20075i, arg_0.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(~arg_0.x, global0.x) << (select(vec2<u32>(arg_3.a, arg_2.x), select(vec2<u32>(20830u, 27972u), u_input.b.zy, var_1), select(var_1, vec2<bool>(false, var_1.x), false)) % vec2<u32>(32u)), max(arg_0.xx, abs(vec2<i32>(-2147483647i, 1i)))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.a.x, 0i, arg_0.x, arg_1.a.a.x), ~vec4<i32>(global0.x, global0.x, -22558i, -73914i)) >> ((u_input.b << (_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(1u, arg_2.x, arg_3.a, arg_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), select(firstTrailingBit(vec4<i32>(u_input.e, arg_1.a.a.x, arg_1.a.a.x, -10905i)), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-13577i, -44696i, 1i, 3969i)), vec4<i32>(global0.x, 28098i, 29490i, 1i)), vec4<bool>(true, true, true, true))), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.a.x, -26130i, u_input.e, -1i) ^ vec4<i32>(21068i, arg_1.a.a.x, 66829i, u_input.e), countOneBits(vec4<i32>(global0.x, 8551i, arg_0.x, -12317i))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> Struct_4 {
    global0 = arg_2.a.a;
    var var_0 = i32(-1i) * -func_4(-vec3<i32>(global0.x, u_input.e, -32428i) | vec3<i32>(global0.x, 0i, u_input.e), arg_2, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 377f)), true, true), Struct_2(_wgslsmith_div_u32(u_input.b.x, 7796u)));
    var var_1 = vec4<bool>(any(vec2<bool>(arg_2.a.b, all(!vec4<bool>(arg_2.a.b, arg_2.a.b, true, true)))), all(!select(!vec3<bool>(true, arg_2.a.b, true), !vec3<bool>(true, arg_2.a.b, arg_2.a.b), select(vec3<bool>(arg_2.a.b, false, false), vec3<bool>(arg_2.a.b, false, true), vec3<bool>(true, arg_2.a.b, true)))), all(!select(select(vec2<bool>(true, arg_2.a.b), vec2<bool>(arg_2.a.b, arg_2.a.b), vec2<bool>(arg_2.a.b, false)), select(vec2<bool>(arg_2.a.b, arg_2.a.b), vec2<bool>(true, false), arg_2.a.b), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -799f), all(vec2<bool>(true, false))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)));
    var var_2 = Struct_4(Struct_1(countOneBits(vec2<i32>(arg_1, 16897i >> (u_input.d % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), ~u_input.a.zx) < _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.c)));
    var_2 = Struct_4(var_2.a);
    return arg_2;
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_4) -> Struct_4 {
    global0 = min(firstLeadingBit(-vec2<i32>(arg_0.x, global0.x)) >> (countOneBits(vec2<u32>(u_input.a.x, min(u_input.b.x, 29349u))) % vec2<u32>(32u)), func_2(15746i, global0.x, func_2(602i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 0i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, global0.x, -1i), arg_0)), func_2(_wgslsmith_add_i32(18890i, global0.x), 0i, arg_2, _wgslsmith_div_f32(-798f, -1164f)), -1069f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(676f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -376f), -896f)))).a.a);
    global0 = vec2<i32>(arg_1, global0.x);
    let var_0 = arg_1 < -abs(-1i);
    var var_1 = reverseBits(arg_2.a.a.x & abs(~arg_2.a.a.x));
    global0 = arg_2.a.a;
    return func_2(1i, -(~(-2147483647i)), arg_2, -1000f);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    let var_0 = Struct_2(countOneBits(~arg_1.x));
    var var_1 = func_5(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-6792i, -25168i, -2147483647i, -1i)), vec4<i32>(-1i) * -reverseBits(vec4<i32>(global0.x, -5804i, global0.x, 78354i))), 60400i, func_2(2147483647i, -76056i, Struct_4(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(-33713i, arg_0), arg_2.a), true)), _wgslsmith_f_op_f32(-634f * _wgslsmith_f_op_f32(round(-355f)))));
    let var_2 = !(!var_1.a.b);
    global0 = abs(~vec2<i32>(_wgslsmith_sub_i32(~arg_0, _wgslsmith_mult_i32(36986i, arg_2.a.x)), 19421i));
    let var_3 = !(~(~_wgslsmith_mod_u32(var_0.a, 11077u)) >= (_wgslsmith_div_u32(~23846u, ~27505u) ^ countOneBits(arg_1.x)));
    return -select(-2147483647i >> (~var_0.a % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.a.x, 0i, 14622i), abs(vec3<i32>(arg_0, -63166i, -25820i))), true && arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-func_1(u_input.e, reverseBits(u_input.b.zy), Struct_1(vec2<i32>(-1i, 1i), true), vec2<bool>(true, true)), u_input.e), min(~_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(u_input.e, global0.x)), ~vec2<i32>(u_input.e, 15268i)), func_5(firstLeadingBit(-vec4<i32>(34821i, u_input.e, 7720i, global0.x)), global0.x, Struct_4(Struct_1(vec2<i32>(-31637i, u_input.e), false))).a.a));
    global0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, -20896i, u_input.e, global0.x), ~vec4<i32>(-727i, u_input.e, u_input.e, 0i) | max(vec4<i32>(21297i, global0.x, u_input.e, -1i), vec4<i32>(-34345i, -1i, 20126i, u_input.e))), 2147483647i), -_wgslsmith_add_vec2_i32(-(vec2<i32>(-1i, global0.x) >> (u_input.b.xw % vec2<u32>(32u))), vec2<i32>(u_input.e, abs(global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(551f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1682f) * 1350f), -121f, _wgslsmith_f_op_f32(abs(1299f)), -767f), min(select(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, 2147483647i, -2147483647i), vec3<i32>(-15239i, -1i, global0.x)), abs(vec3<i32>(1i, 15237i, 40542i)), true) | _wgslsmith_add_vec3_i32(min(vec3<i32>(-16887i, global0.x, 24310i), vec3<i32>(3610i, global0.x, u_input.e)), select(vec3<i32>(u_input.e, 0i, 10346i), vec3<i32>(-2147483647i, u_input.e, -21730i), vec3<bool>(true, false, false))), abs(~vec3<i32>(-1i, -1i, global0.x))), global0.x, -843f);
}

