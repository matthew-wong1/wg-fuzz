struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, firstLeadingBit(3729i)), _wgslsmith_mult_vec2_i32(vec2<i32>(~(-u_input.e.x), ~(~u_input.e.x)), u_input.e.zw ^ ~u_input.e.yw));
    let var_1 = vec4<i32>(16183i, u_input.e.x, u_input.e.x >> (~abs(6374u) % 32u), arg_0.c.x);
    var var_2 = arg_0;
    var var_3 = arg_0;
    var var_4 = Struct_2(arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-246f, 254f, arg_0.a), vec3<f32>(arg_3.x, var_3.a, var_3.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, -1000f, -1598f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, 463f, arg_0.b), vec3<f32>(var_2.b, var_3.a, arg_3.x))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), -172f, _wgslsmith_f_op_f32(exp2(var_3.a))))));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_4.b)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_3 {
    let var_0 = u_input.d;
    let var_1 = Struct_3(Struct_2(Struct_1(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) * arg_2), u_input.e.wxx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_2, 2420f, u_input.e.zwz), vec4<u32>(88419u, 72585u, 4294967295u, 4294967295u), _wgslsmith_clamp_u32(4294967295u, var_0, 32042u), vec2<f32>(arg_2, -376f))))), Struct_1(arg_2, arg_2, _wgslsmith_div_vec3_i32(vec3<i32>(0i, abs(-47383i), arg_1), vec3<i32>(-arg_0, _wgslsmith_sub_i32(7338i, arg_1), abs(6637i)))), Struct_1(_wgslsmith_f_op_f32(trunc(528f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2))), u_input.e.yzw));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_2 * 426f), _wgslsmith_div_f32(-278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.a.b.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(710f * arg_2), -224f))), var_1.a.a.c);
    var var_3 = ~(~var_0);
    var_3 = 1u;
    return Struct_3(var_1.a, var_1.a.a, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b))))), var_2.a, var_2.c));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = reverseBits(vec4<u32>(arg_2.x ^ arg_2.x, 22612u, ~0u, ~(~(~u_input.a.x))));
    var var_1 = func_2(-19316i ^ arg_0.a.c.x, -select(55378i, 2147483647i, 0u < (6516u >> (arg_2.x % 32u))), arg_3.b.x);
    let var_2 = select(vec3<bool>(u_input.e.x <= -u_input.e.x, true, arg_3.b.x > arg_1), !select(vec3<bool>(false, select(true, true, false), true), vec3<bool>(true, true, true), true), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_3 = Struct_3(Struct_2(var_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-120f, arg_1)), arg_0.a.a, arg_1))), func_2(var_1.c.c.x, ~var_1.c.c.x, 155f).a.a, arg_3.a);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -262f), -1000f, ~_wgslsmith_add_vec3_i32(~vec3<i32>(0i, -2147483647i, var_1.c.c.x) | func_2(u_input.e.x, 41223i, var_1.b.b).a.a.c, vec3<i32>(-2147483647i, 1i, 1i)));
    return var_0.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = ~(~u_input.e);
    let var_1 = u_input.a.xy;
    let var_2 = (firstTrailingBit(13413i) & var_0.x) & -2147483647i;
    var var_3 = select(select(vec4<bool>(true | all(vec4<bool>(true, false, false, true)), true, !(var_0.x > var_2), all(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(true, true, true, any(vec4<bool>(false, false, false, true))), vec4<bool>(true, true, all(vec2<bool>(false, false)), !(arg_2 >= arg_2)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)))), false);
    var_3 = select(!(!(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), !vec4<bool>(!(var_3.x | var_3.x), !var_3.x & true, var_3.x, !any(vec4<bool>(var_3.x, var_3.x, true, true))), !(!var_3.x));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_add_i32(-arg_0.c.x | (2147483647i << (select(4294967295u, arg_2.x, !arg_1.x) % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i ^ u_input.e.x, _wgslsmith_div_i32(arg_0.c.x, 18456i), -9179i >> (u_input.c % 32u), _wgslsmith_div_i32(14814i, 4397i)), u_input.e) << (u_input.c % 32u));
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.a.zy, ~(reverseBits(firstTrailingBit(arg_2)) & reverseBits(arg_2)));
    let var_2 = -825f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b))), _wgslsmith_div_f32(-1000f, 1000f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(func_2(arg_0.c.x, u_input.e.x, -1237f).a.a.a, -892f, _wgslsmith_f_op_f32(-arg_0.b))))));
    let var_4 = var_3.xx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) - -291f) * _wgslsmith_f_op_vec3_f32(func_3(func_2(~u_input.e.x, ~u_input.e.x, _wgslsmith_f_op_f32(-arg_0.b)).c, _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, var_1.x, 1u, var_1.x)), ~vec4<u32>(4294967295u, 0u, 0u, arg_2.x)), var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, var_4.x) + var_3.yy)))).x) + arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-181f, 693f)) * _wgslsmith_f_op_f32(round(1649f))), _wgslsmith_f_op_f32(-763f * 1638f), vec3<i32>(u_input.e.x, u_input.e.x, ~u_input.e.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-620f)) - -1944f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-644f - 270f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1153f, -267f)) * _wgslsmith_f_op_f32(f32(-1f) * -1331f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-170f, _wgslsmith_f_op_f32(round(1134f))))), _wgslsmith_f_op_f32(func_5(func_4(func_1(Struct_2(Struct_1(1190f, -131f, vec3<i32>(u_input.e.x, -15978i, u_input.e.x)), vec3<f32>(-612f, 462f, -802f)), 2292f, u_input.a.xx, Struct_2(Struct_1(1158f, 678f, vec3<i32>(u_input.e.x, 1i, -1i)), vec3<f32>(-1168f, -1371f, 561f))), Struct_1(-278f, 279f, vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -117f)), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(22059u, u_input.a.x, u_input.c), u_input.a)))), firstLeadingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(4983i, 2147483647i, 53031i), u_input.e.zwz))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1139f, 307f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1585f)))), 390f, vec3<i32>(firstTrailingBit(-51782i << (u_input.a.x % 32u)), -1i, 1546i)));
    var var_1 = func_2(_wgslsmith_div_i32(~var_0.b.c.x, abs(_wgslsmith_dot_vec3_i32(u_input.e.zzy, vec3<i32>(u_input.e.x, 73585i, var_0.a.a.c.x))) >> ((u_input.d & u_input.a.x) % 32u)), countOneBits(-_wgslsmith_clamp_i32(-13207i, -23628i, -2147483647i)) << (4294967295u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f - var_0.a.b.x)), -878f))).a.a;
    let var_2 = -1202f;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(428f - -695f), _wgslsmith_f_op_f32(sign(var_2)));
    let var_4 = func_2(0i, -34036i, _wgslsmith_f_op_f32(-var_0.a.a.b)).a;
    var_1 = func_4(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(func_1(var_0.a, var_0.c.b, vec2<u32>(u_input.a.x, 77079u), Struct_2(var_4.a, vec3<f32>(var_3.x, 897f, var_3.x))), ~u_input.d), abs(u_input.c))), Struct_1(-691f, -1000f, -var_4.a.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-815f, _wgslsmith_f_op_f32(382f * var_4.b.x)) + var_4.b.x), _wgslsmith_div_f32(-573f, _wgslsmith_f_op_f32(exp2(var_3.x)))));
    var var_5 = ~(~(~(~30152u)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(reverseBits(vec4<u32>(0u, 0u, u_input.b, u_input.d))), abs(vec3<u32>(~27205u, 0u, ~1u)) >> (~u_input.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(-var_2));
}

