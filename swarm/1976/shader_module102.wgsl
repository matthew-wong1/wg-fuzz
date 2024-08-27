struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(-1611i, -919f, false, Struct_1(vec4<bool>(false, false, true, true))), Struct_4(-15697i, 1008f, false, Struct_1(vec4<bool>(false, false, false, false))), Struct_4(0i, 481f, false, Struct_1(vec4<bool>(false, false, true, false))), Struct_4(-36770i, 411f, false, Struct_1(vec4<bool>(true, false, true, true))), Struct_4(2147483647i, -312f, true, Struct_1(vec4<bool>(true, false, true, true))), Struct_4(0i, 205f, true, Struct_1(vec4<bool>(true, true, false, true))), Struct_4(i32(-2147483648), 1000f, true, Struct_1(vec4<bool>(false, false, false, true))), Struct_4(26654i, -242f, true, Struct_1(vec4<bool>(true, false, true, false))), Struct_4(-12691i, -1529f, false, Struct_1(vec4<bool>(true, false, false, true))), Struct_4(5565i, 2069f, true, Struct_1(vec4<bool>(true, false, false, true))), Struct_4(i32(-2147483648), 1459f, true, Struct_1(vec4<bool>(false, true, true, false))), Struct_4(12410i, -399f, true, Struct_1(vec4<bool>(true, false, false, false))), Struct_4(1i, -323f, true, Struct_1(vec4<bool>(false, true, false, true))), Struct_4(67016i, -557f, true, Struct_1(vec4<bool>(true, false, false, true))), Struct_4(-1i, 682f, false, Struct_1(vec4<bool>(false, false, false, true))), Struct_4(-1i, -664f, true, Struct_1(vec4<bool>(true, false, true, false))), Struct_4(i32(-2147483648), -1116f, false, Struct_1(vec4<bool>(true, false, false, false))), Struct_4(-47895i, 447f, false, Struct_1(vec4<bool>(false, true, false, false))), Struct_4(2147483647i, -1248f, true, Struct_1(vec4<bool>(true, true, false, true))), Struct_4(-9743i, -1000f, false, Struct_1(vec4<bool>(false, true, true, true))), Struct_4(66048i, 356f, true, Struct_1(vec4<bool>(true, true, false, true))), Struct_4(-14162i, -1987f, true, Struct_1(vec4<bool>(false, true, false, true))), Struct_4(2147483647i, -265f, true, Struct_1(vec4<bool>(true, false, false, true))));

var<private> global1: Struct_2 = Struct_2(true);

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-7973i, -1i, -1i, 1i), vec4<i32>(-1i, -26663i, i32(-2147483648), -8262i), vec4<i32>(1i, i32(-2147483648), 5499i, i32(-2147483648)), vec4<i32>(1i, 46922i, 2147483647i, -1i), vec4<i32>(-7169i, -1i, -22443i, -1i), vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i), vec4<i32>(2830i, i32(-2147483648), -6432i, -16106i), vec4<i32>(-57873i, -7090i, 42694i, 13642i), vec4<i32>(14056i, -38775i, 2147483647i, 2147483647i), vec4<i32>(-18815i, -24711i, 2344i, i32(-2147483648)), vec4<i32>(-9372i, 2907i, -1i, -10947i), vec4<i32>(i32(-2147483648), 44853i, -32958i, -25542i), vec4<i32>(27814i, 27094i, 28150i, -30813i), vec4<i32>(33252i, 0i, 15028i, 1i), vec4<i32>(i32(-2147483648), -13775i, -1i, -1i), vec4<i32>(-11744i, -52379i, -1i, 2147483647i), vec4<i32>(5207i, 5926i, 0i, 0i), vec4<i32>(-1788i, 0i, i32(-2147483648), -1i), vec4<i32>(0i, -1i, 1i, i32(-2147483648)), vec4<i32>(-1i, 10i, -3900i, i32(-2147483648)), vec4<i32>(0i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(-9362i, -39174i, 1i, i32(-2147483648)), vec4<i32>(-17700i, -1i, 8363i, 0i), vec4<i32>(i32(-2147483648), -9008i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), -8152i, 1i, -5120i), vec4<i32>(-28829i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(22971i, 3027i, 0i, 55052i), vec4<i32>(1i, -1i, 2147483647i, 0i), vec4<i32>(-3171i, 1i, -2657i, 1i), vec4<i32>(2147483647i, 70712i, -57839i, -15480i), vec4<i32>(2147483647i, 40145i, 49646i, -3202i), vec4<i32>(-1i, -47969i, 0i, i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: f32, arg_3: u32) -> vec4<bool> {
    global0 = array<Struct_4, 23>();
    var var_0 = vec2<f32>(-275f, _wgslsmith_f_op_f32(round(arg_2)));
    var var_1 = select(!(!select(vec4<bool>(false, global1.a, global1.a, false), select(vec4<bool>(true, global1.a, true, false), vec4<bool>(false, false, false, false), vec4<bool>(global1.a, false, global1.a, global1.a)), true)), select(vec4<bool>(select(global1.a, true, !global1.a), true, !all(vec3<bool>(global1.a, true, global1.a)), true), select(select(select(vec4<bool>(global1.a, global1.a, true, true), vec4<bool>(global1.a, global1.a, global1.a, global1.a), global1.a), vec4<bool>(global1.a, global1.a, true, false), true), select(vec4<bool>(global1.a, false, true, global1.a), !vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(global1.a, global1.a, global1.a, false)), select(vec4<bool>(global1.a, global1.a, global1.a, true), select(vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(true, global1.a, true, global1.a), vec4<bool>(true, false, false, global1.a)), vec4<bool>(global1.a, global1.a, false, global1.a))), any(select(vec3<bool>(true, global1.a, global1.a), vec3<bool>(false, true, true), true))), global1.a);
    global3 = array<vec4<i32>, 32>();
    var var_2 = 73332u << (countOneBits(firstLeadingBit(_wgslsmith_mult_u32(~4466u, arg_3 << (global2.x % 32u)))) % 32u);
    return !select(!select(vec4<bool>(global1.a, true, true, var_1.x), !vec4<bool>(false, global1.a, var_1.x, global1.a), vec4<bool>(var_1.x, var_1.x, global1.a, true)), select(!select(vec4<bool>(false, var_1.x, var_1.x, global1.a), vec4<bool>(true, false, false, false), global1.a), select(select(vec4<bool>(global1.a, global1.a, true, true), vec4<bool>(true, true, true, false), true), !vec4<bool>(var_1.x, global1.a, global1.a, var_1.x), vec4<bool>(false, true, global1.a, false)), global1.a), all(!var_1.yxz) == false);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: u32) -> vec2<f32> {
    var var_0 = arg_2.b;
    let var_1 = Struct_3(_wgslsmith_mult_vec3_i32(max(-vec3<i32>(-47898i, arg_1.x, u_input.b.x), vec3<i32>(arg_2.a, arg_2.a, -2147483647i) >> (vec3<u32>(global2.x, 73629u, global2.x) % vec3<u32>(32u))) | firstTrailingBit(-vec3<i32>(-738i, arg_2.a, arg_2.a)), -firstTrailingBit(reverseBits(vec3<i32>(-46494i, 28358i, u_input.a)))), vec4<bool>(func_1(min(vec4<u32>(arg_3, 1u, arg_3, arg_3), _wgslsmith_mult_vec4_u32(vec4<u32>(17955u, 1u, global2.x, 5645u), vec4<u32>(4294967295u, arg_3, 4294967295u, arg_3))), ~arg_3, -291f, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 31677u, arg_3), vec3<u32>(global2.x, global2.x, arg_3))).x, false, arg_2.b != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -944f), 128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1895f - _wgslsmith_div_f32(arg_2.b, -556f)))));
    global0 = array<Struct_4, 23>();
    var var_2 = all(arg_2.d.a.xw);
    let var_3 = _wgslsmith_f_op_f32(-var_1.c.x);
    return vec2<f32>(658f, var_3);
}

fn func_2(arg_0: f32) -> vec4<bool> {
    let var_0 = false;
    var var_1 = (true != global1.a) & true;
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(!any(vec3<bool>(false, global1.a, global1.a)), vec2<i32>(~5145i, u_input.a), Struct_4(u_input.a, _wgslsmith_f_op_f32(-arg_0), !global1.a, Struct_1(vec4<bool>(var_0, true, true, false))), global2.x)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_div_f32(434f, arg_0))), Struct_2(!global1.a & false), ~(~u_input.a), any(!vec3<bool>(!global1.a, 1581f <= arg_0, var_0)), ~(~(~(~(-2147483647i)))));
    var var_3 = reverseBits(vec3<u32>(1u, (_wgslsmith_clamp_u32(1u, global2.x, global2.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 115847u, global2.x), vec3<u32>(1u, 0u, 1u))) & 0u, global2.x));
    let var_4 = Struct_1(!select(select(!vec4<bool>(false, false, var_0, var_0), !vec4<bool>(global1.a, global1.a, var_0, global1.a), any(vec2<bool>(global1.a, true))), vec4<bool>(var_0, var_0, true, false & var_0), vec4<bool>(all(vec3<bool>(true, var_0, global1.a)), var_3.x >= global2.x, global1.a, !global1.a)));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(vec4<u32>(0u, global2.x, global2.x, 1405u));
    let var_1 = select(select(!vec4<bool>(false, global1.a, global1.a, !global1.a), select(!vec4<bool>(true, false, false, global1.a), vec4<bool>(true, true, global1.a && false, global1.a), global1.a && global1.a), func_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(107533u, var_0.x, var_0.x, 0u), vec4<u32>(var_0.x, 4294967295u, 0u, global2.x)), vec4<u32>(var_0.x, global2.x, 4294967295u, global2.x) | vec4<u32>(16550u, var_0.x, global2.x, 13918u), min(vec4<u32>(global2.x, global2.x, 47404u, var_0.x), vec4<u32>(3677u, var_0.x, global2.x, 3702u))), global2.x, -1337f, var_0.x)), !(!vec4<bool>(func_1(vec4<u32>(global2.x, 0u, global2.x, 1u), var_0.x, -967f, 16391u).x, any(vec2<bool>(true, global1.a)), true, global1.a)), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-704f, -572f, -2129f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(403f, -1449f, 407f))))));
    let var_3 = Struct_1(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1317f)))));
    let var_4 = Struct_2(global1.a);
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(var_0.yy, countOneBits(vec2<u32>(var_0.x, 5207u))), firstTrailingBit(~4294967295u), 1u), vec4<u32>(72931u, 13983u, ~5663u, ~var_0.x)) | ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 83281u, var_0.x, 0u), vec4<u32>(global2.x, 1u, var_0.x, 4294967295u))));
    global1 = Struct_2(global1.a);
    global1 = Struct_2(all(var_3.a));
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(vec4<u32>(var_0.x, 102445u, 43752u, 66570u) | vec4<u32>(1u, 28500u, global2.x, global2.x))), vec3<u32>(_wgslsmith_div_u32(~var_0.x, global2.x), (~global2.x & _wgslsmith_sub_u32(4294967295u, 48441u)) >> (abs(~1u) % 32u), ~72270u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x), -613f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) + _wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(sign(var_2.x)))));
}

